.class public Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AbstractRuntime;
.source "ModifiedSystemClassRuntime.java"


# static fields
.field private static final ACCESS_FIELD_TYPE:Ljava/lang/String; = "Ljava/lang/Object;"


# instance fields
.field private final accessFieldName:Ljava/lang/String;

.field private final systemClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final systemClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .param p2, "accessFieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "systemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AbstractRuntime;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime;->systemClass:Ljava/lang/Class;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime;->systemClassName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime;->accessFieldName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime;->createDataField(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;Ljava/lang/String;)V

    return-void
.end method

.method private static createDataField(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;Ljava/lang/String;)V
    .locals 6
    .param p0, "visitor"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;
    .param p1, "dataField"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 173
    const/16 v1, 0x1089

    const-string v3, "Ljava/lang/Object;"

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;

    .line 176
    return-void
.end method

.method public static createFor(Ljava/lang/instrument/Instrumentation;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRuntime;
    .locals 1
    .param p0, "inst"    # Ljava/lang/instrument/Instrumentation;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 100
    const-string v0, "$jacocoAccess"

    invoke-static {p0, p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime;->createFor(Ljava/lang/instrument/Instrumentation;Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRuntime;

    move-result-object v0

    return-object v0
.end method

.method public static createFor(Ljava/lang/instrument/Instrumentation;Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRuntime;
    .locals 7
    .param p0, "inst"    # Ljava/lang/instrument/Instrumentation;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "accessFieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v2, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime$1;

    invoke-direct {v2, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v2, "transformer":Ljava/lang/instrument/ClassFileTransformer;
    invoke-interface {p0, v2}, Ljava/lang/instrument/Instrumentation;->addTransformer(Ljava/lang/instrument/ClassFileTransformer;)V

    .line 134
    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 135
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0, v2}, Ljava/lang/instrument/Instrumentation;->removeTransformer(Ljava/lang/instrument/ClassFileTransformer;)Z

    .line 137
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    new-instance v3, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime;

    invoke-direct {v3, v0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v3

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Class %s could not be instrumented."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static instrument([BLjava/lang/String;)[B
    .locals 4
    .param p0, "source"    # [B
    .param p1, "accessFieldName"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;

    invoke-direct {v0, p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;-><init>([B)V

    .line 158
    .local v0, "reader":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;I)V

    .line 159
    .local v1, "writer":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;
    new-instance v2, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime$2;

    const/high16 v3, 0x50000

    invoke-direct {v2, v3, v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime$2;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;I)V

    .line 168
    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public generateDataAccessor(JLjava/lang/String;ILorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)I
    .locals 5
    .param p1, "classid"    # J
    .param p3, "classname"    # Ljava/lang/String;
    .param p4, "probecount"    # I
    .param p5, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 76
    const/16 v0, 0xb2

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime;->systemClassName:Ljava/lang/String;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime;->accessFieldName:Ljava/lang/String;

    const-string v3, "Ljava/lang/Object;"

    invoke-virtual {p5, v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {p1, p2, p3, p4, p5}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->generateAccessCall(JLjava/lang/String;ILorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 81
    const/4 v0, 0x6

    return v0
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public startup(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;)V
    .locals 3
    .param p1, "data"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    invoke-super {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AbstractRuntime;->startup(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;)V

    .line 65
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime;->systemClass:Ljava/lang/Class;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime;->accessFieldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 66
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    return-void
.end method
