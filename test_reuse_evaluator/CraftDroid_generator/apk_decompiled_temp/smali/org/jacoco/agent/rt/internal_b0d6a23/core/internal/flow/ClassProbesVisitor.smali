.class public abstract Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;
.source "ClassProbesVisitor.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;)V
    .locals 1
    .param p1, "cv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;

    .prologue
    .line 37
    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;)V

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # [Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual/range {p0 .. p5}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;

    move-result-object v0

    return-object v0
.end method

.method public abstract visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;
.end method

.method public abstract visitTotalProbeCount(I)V
.end method
