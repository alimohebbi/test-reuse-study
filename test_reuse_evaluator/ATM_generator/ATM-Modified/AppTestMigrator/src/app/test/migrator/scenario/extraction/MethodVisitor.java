package app.test.migrator.scenario.extraction;

import com.github.javaparser.JavaParser;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.stmt.BlockStmt;
import com.github.javaparser.ast.stmt.Statement;
import com.github.javaparser.ast.visitor.VoidVisitorAdapter;

public class MethodVisitor extends VoidVisitorAdapter {

    public static boolean fileChanged = false;

    @Override
    public void visit(MethodDeclaration m, Object arg) {
        if (m.getAnnotations().size() > 0) {
            for (AnnotationExpr annotation : m.getAnnotations()) {
                if (annotation.toString() != null && annotation.toString().trim().equals("@Test")) {
                    addInstrumentationStatements(m);
                }
            }
        } else if (m.getNameAsString().toLowerCase().contains("test")) {
            addInstrumentationStatements(m);
        }
    }

    private void addInstrumentationStatements(MethodDeclaration m) {
        String methodName = m.getNameAsString();
        BlockStmt blockStmt = m.getBody().get();
        NodeList<Statement> stmts = blockStmt.getStmts();

        Statement printWriterDeclStatement = JavaParser.parseStatement("PrintWriter out = null;");
        Statement printWriterStatement = JavaParser.parseStatement(
                "try { out = new PrintWriter(new FileWriter(Environment.getExternalStorageDirectory()" +
                        ".getAbsolutePath" + "() + \"/log\"" + ", true)); } catch (IOException e) { System.out" +
                        ".println(e.getMessage()); }");
        Statement startInstrStatement =
                JavaParser.parseStatement("out.println(\"START\" + " + "\" \" + \"" + methodName + "\");");
        Statement printWriterFlushStatement = JavaParser.parseStatement("out.flush();");
        Statement endInstrStatement = JavaParser.parseStatement("out.println(\"END\");");
        Statement printWriterCloseStatement = JavaParser.parseStatement("out.close();");
        Statement sleepStatment = JavaParser.parseStatement("try{sleep(3000);} catch " +
                "(Exception e) { e.printStackTrace();}\n");

        blockStmt.addStatement(0, printWriterFlushStatement);
        blockStmt.addStatement(0, startInstrStatement);
        blockStmt.addStatement(0, printWriterStatement);
        blockStmt.addStatement(0, printWriterDeclStatement);
        blockStmt.addStatement(0, sleepStatment);
        blockStmt.addStatement(0, sleepStatment);
        blockStmt.addStatement(0, sleepStatment);
        blockStmt.addStatement(0, sleepStatment);
        blockStmt.addStatement(0, sleepStatment);
        blockStmt.addStatement(stmts.size(), endInstrStatement);
        blockStmt.addStatement(stmts.size(), printWriterCloseStatement);
        addNewStatements(blockStmt);

        fileChanged = true;
    }


    public static void addNewStatements(BlockStmt blockStmt) {
        NodeList<Statement> stmts = blockStmt.getStmts();
        for (int i = 0; i < stmts.size(); i++) {
            Statement st = stmts.get(i);
            if (st.toString().contains("perform") || st.toString().contains("check")) {
                stmts.add(i - 1, JavaParser.parseStatement("writeActivityName();"));
                i++;
            }
        }
    }
}
