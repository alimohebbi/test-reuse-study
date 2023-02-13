package app.test.migrator.scenario.extraction;

import com.github.javaparser.JavaParser;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.imports.ImportDeclaration;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Paths;
import java.util.ArrayList;

public class ClassChanger {

    public static void addImports(NodeList<ImportDeclaration> imports) {
        NodeList<ImportDeclaration> importsToRemove = new NodeList<ImportDeclaration>();
        for (ImportDeclaration im : imports) {
            if (im.toString().contains("com.checkdroid.crema.EspressoPlus")) {
                importsToRemove.add(im);
            }
        }

        for (ImportDeclaration importToRemove : importsToRemove) {
            imports.remove(importToRemove);
        }

        ImportDeclaration fileWriterImport = JavaParser.parseImport("import java.io.FileWriter;");
        ImportDeclaration printWriterImport = JavaParser.parseImport("import java.io.PrintWriter;");
        ImportDeclaration ioexceptionImport = JavaParser.parseImport("import java.io.IOException;");
        ImportDeclaration environmentImport = JavaParser.parseImport("import android.os.Environment;");
        ImportDeclaration sleepImport = JavaParser.parseImport("import static java.lang.Thread.sleep;");


        // add comments so that we know which imports to remove during uninstrumentation
        fileWriterImport.setLineComment("Added");
        printWriterImport.setLineComment("Added");
        ioexceptionImport.setLineComment("Added");
        environmentImport.setLineComment("Added");

        if (!imports.contains(sleepImport)) {
            imports.add(sleepImport);
        }
        if (!imports.contains(fileWriterImport)) {
            imports.add(fileWriterImport);
        }
        if (!imports.contains(printWriterImport)) {
            imports.add(printWriterImport);
        }
        if (!imports.contains(ioexceptionImport)) {
            imports.add(ioexceptionImport);
        }
        if (!imports.contains(environmentImport)) {
            imports.add(environmentImport);
        }
        addNewImports(imports);
    }

    private static void addNewImports(NodeList<ImportDeclaration> imports) {
        ArrayList<String> toImport = new ArrayList<>();
        toImport.add("import static android.support.test.runner.lifecycle.Stage.RESUMED;");
        toImport.add("import static android.support.test.InstrumentationRegistry.getInstrumentation;");
        toImport.add("import android.app.Activity;");
        toImport.add("import android.support.test.runner.lifecycle.ActivityLifecycleMonitorRegistry;");
        toImport.add("import java.util.Collection;");
        toImport.forEach(i -> imports.add(JavaParser.parseImport(i)));

    }

    private static ClassOrInterfaceDeclaration getCUClass(CompilationUnit cu) {
        for (Node childNode : cu.getChildNodes()) {
            if (childNode instanceof ClassOrInterfaceDeclaration) {
                return (ClassOrInterfaceDeclaration) childNode;
            }
        }
        return null;
    }


    public static void addMethod(CompilationUnit cu, String usrDir) throws IOException {
        ClassOrInterfaceDeclaration clazz = getCUClass(cu);
        MethodDeclaration tempMethod = getMethod(usrDir);
        MethodDeclaration method = clazz.addMethod(String.valueOf(tempMethod.getName()), Modifier.PUBLIC);
        method.setBody(tempMethod.getBody().get());
        method.setType("void");

    }

    private static MethodDeclaration getMethod(String usrDir) throws IOException {
        CompilationUnit cu = JavaParser.parse(Paths.get(usrDir + "/resources/ActivityWriter.java"), Charset.forName("UTF-8"));
        ClassOrInterfaceDeclaration clazz = getCUClass(cu);
        return clazz.getMethodsByName("writeActivityName").get(0);

    }
}
