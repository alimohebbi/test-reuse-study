package presto.android.gui.clients;

import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import presto.android.Logger;
import presto.android.gui.GUIAnalysisClient;
import presto.android.gui.GUIAnalysisOutput;
import presto.android.gui.clients.energy.VarUtil;
import presto.android.gui.wtg.WTGAnalysisOutput;
import presto.android.gui.wtg.WTGBuilder;
import presto.android.gui.wtg.ds.WTG;
import presto.android.gui.wtg.ds.WTGEdge;
import presto.android.gui.wtg.ds.WTGNode;
import presto.android.xml.XMLParser;
import presto.android.gui.graph.JsonNode;
import presto.android.gui.graph.JsonRel;
import presto.android.gui.graph.NNode;
import presto.android.gui.graph.NStringConstantNode;
import presto.android.gui.graph.NStringIdNode;

public class WTGClient implements GUIAnalysisClient {
  private List<JsonNode> jsonNodes = new ArrayList<JsonNode>();
  private List<JsonRel> jsonRels = new ArrayList<JsonRel>();

  @Override
  public void run(GUIAnalysisOutput output) {
    VarUtil.v().guiOutput = output;
    WTGBuilder wtgBuilder = new WTGBuilder();
    wtgBuilder.build(output);
    WTGAnalysisOutput wtgAO = new WTGAnalysisOutput(output, wtgBuilder);
    WTG wtg = wtgAO.getWTG();

    for (WTGNode node : wtg.getNodes()) {
      String nodeStr = node.toString();
      if (nodeStr != null) {
        int beginIndex = nodeStr.indexOf("[");
        int endIndex = nodeStr.indexOf("]");
        if (beginIndex > 0 && endIndex > 0) {
          String type = nodeStr.substring(0, beginIndex);
          String activityName = nodeStr.substring(beginIndex + 1, endIndex);
          String id = String.valueOf(node.getId());

          jsonNodes.add(new JsonNode(id, activityName, type));
        }
      }
    }

    int rel_id = 0;
    for (WTGEdge edge : wtg.getEdges()) {
      if(edge.getEventType().name().contains("implicit"))  continue;

      rel_id++;
      String startNode, endNode, clazz = "", widget_id = "", text = "", action ="", type = "";
      WTGNode source_node = edge.getSourceNode();
      WTGNode target_node = edge.getTargetNode();
      startNode = String.valueOf(source_node.getId());
      endNode = String.valueOf(target_node.getId());
      String guiWidget = edge.getGUIWidget().toString();
      int beginIndex = guiWidget.indexOf("[");
      int endIndex = guiWidget.indexOf("]");
      if (beginIndex > 0 && endIndex > 0) {
        guiWidget = guiWidget.substring(beginIndex + 1, endIndex);
        int separatorIndex = guiWidget.indexOf(",");
        if (separatorIndex > 0) {
          clazz = guiWidget.substring(0, separatorIndex);
          widget_id = guiWidget.substring(guiWidget.indexOf("|") + 1, guiWidget.length());
        }
      }
      Iterator<NNode> textNodes = edge.getGUIWidget().getTextNodes();
      if (textNodes.hasNext())  text = textNodeToString(textNodes.next());
      action = edge.getEventType().name();
      type = "can_access";

      //Logger.verb("Edge1", String.valueOf(rel_id) + " " + startNode + " " + endNode + " " + widget_id + " " + text + " " + clazz + " " + action + " " + type);
      jsonRels.add(new JsonRel(String.valueOf(rel_id), startNode, endNode, widget_id, text, clazz, action, type));
    }
    
    try {
      FileWriter fw = new FileWriter(System.getProperty("user.dir") + "/db.json");
      fw.write(generateJson());
      fw.close();
    } catch (IOException e) {
      Logger.verb("Error", "Unable to generate db.json" + e.getMessage());
    }
  }

  private String textNodeToString(NNode textNode) {
    XMLParser xml = XMLParser.Factory.getXMLParser();
    if (textNode instanceof NStringConstantNode) {
      return ((NStringConstantNode)textNode).value;
    } else if (textNode instanceof NStringIdNode) {
      Integer stringId = ((NStringIdNode)textNode).getIdValue();
      if (stringId == null) {
        return null;
      }
      return xml.getStringValue(stringId);
    } else {
      throw new RuntimeException("Unknown textNode " + textNode);
    }
  }

  private String generateJson() {
    StringBuilder json = new StringBuilder();
    json.append("{\n");
    json.append("\t\"graph\": {\n");

    json.append("\t\t\"nodes\": [\n");
    for (int i = 0; i < jsonNodes.size(); i++) {
      json.append("\t\t\t{\n");
      JsonNode jsonNode = jsonNodes.get(i);
      json.append("\t\t\t\t\"id\": \"" + jsonNode.getId() + "\",\n");
      json.append("\t\t\t\t\"properties\": {\n");
      json.append("\t\t\t\t\t\"type\": \"" + jsonNode.getType() + "\",\n");
      json.append("\t\t\t\t\t\"ActivityName\": \"" + jsonNode.getActivityName() + "\"\n");
      json.append("\t\t\t\t}\n");
      if (i == jsonNodes.size() - 1)  json.append("\t\t\t}\n");
      else json.append("\t\t\t},\n");
    }
    if (jsonRels.size() > 0) json.append("\t\t],\n");
    else json.append("\t\t]");

    json.append("\t\t\"relationships\": [\n");
    for (int i = 0; i < jsonRels.size(); i++) {
      json.append("\t\t\t{\n");
      JsonRel jsonRel = jsonRels.get(i);
      json.append("\t\t\t\t\"id\": \"" + jsonRel.getRelId() + "\",\n");
      json.append("\t\t\t\t\"type\": \"" + jsonRel.getType() + "\",\n");
      json.append("\t\t\t\t\"startNode\": \"" + jsonRel.getstartNode() + "\",\n");
      json.append("\t\t\t\t\"endNode\": \"" + jsonRel.getEndNode() + "\",\n");
      json.append("\t\t\t\t\"properties\": {\n");
      json.append("\t\t\t\t\t\"id\": \"" + jsonRel.getWidgetId() + "\",\n");
      json.append("\t\t\t\t\t\"class\": \"" + jsonRel.getClazz() + "\",\n");
      json.append("\t\t\t\t\t\"text\": \"" + jsonRel.getText() + "\",\n");
      json.append("\t\t\t\t\t\"action\": \"" + jsonRel.getAction() + "\"\n");
      json.append("\t\t\t\t}\n");
      if (i == jsonRels.size() - 1)  json.append("\t\t\t}\n");
      else json.append("\t\t\t},\n");
    }
    json.append("\t\t]\n");

    json.append("\t}\n");
    json.append("}");
    
    return json.toString();
  }
}
