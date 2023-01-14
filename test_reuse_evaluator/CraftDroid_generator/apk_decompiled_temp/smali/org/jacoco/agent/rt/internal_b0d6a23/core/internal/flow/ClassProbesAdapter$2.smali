.class Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter$2;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodSanitizer;
.source "ClassProbesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;

.field final synthetic val$methodProbes:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;)V
    .locals 7
    .param p2, "x0"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .param p3, "x1"    # I
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Ljava/lang/String;
    .param p6, "x4"    # Ljava/lang/String;
    .param p7, "x5"    # [Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter$2;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;

    iput-object p8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter$2;->val$methodProbes:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodSanitizer;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 6

    .prologue
    .line 78
    invoke-super {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodSanitizer;->visitEnd()V

    .line 79
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->markLabels(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;)V

    .line 80
    new-instance v5, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesAdapter;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter$2;->val$methodProbes:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter$2;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;

    invoke-direct {v5, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesAdapter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/IProbeIdGenerator;)V

    .line 82
    .local v5, "probesAdapter":Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesAdapter;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter$2;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;->access$000(Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter$2;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;->access$100(Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter$2;->access:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter$2;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter$2;->desc:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 86
    .local v0, "analyzer":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;
    invoke-virtual {v5, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesAdapter;->setAnalyzer(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;)V

    .line 87
    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter$2;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 91
    .end local v0    # "analyzer":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter$2;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    goto :goto_0
.end method
