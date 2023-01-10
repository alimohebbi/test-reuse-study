package presto.android.gui.graph;

public class JsonRel {
  private String rel_id;
  private String startNode;
  private String endNode;
  private String widget_id;
  private String text;
  private String clazz;
  private String action;
  private String type;
  
  public JsonRel(String rel_id, String startNode, String endNode, String widget_id, String text, String clazz, String action, String type) {
    this.rel_id = rel_id;
    this.startNode = startNode;
    this.endNode = endNode;
    this.widget_id = widget_id;
    this.text = text;
    this.clazz = clazz;
    this.action = action;
    this.type = type;
  }
  
  public String getRelId() { return rel_id; }
  public String getstartNode() { return startNode; }
  public String getEndNode() { return endNode; }
  public String getWidgetId() { return widget_id; }
  public String getText() { return text; }
  public String getClazz() { return clazz; }
  public String getAction() { return action; }
  public String getType() { return type; }
}
