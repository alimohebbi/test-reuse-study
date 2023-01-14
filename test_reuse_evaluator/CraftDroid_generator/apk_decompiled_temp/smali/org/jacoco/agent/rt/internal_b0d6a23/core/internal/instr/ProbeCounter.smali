.class Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;
.source "ProbeCounter.java"


# instance fields
.field private count:I

.field private methods:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;-><init>()V

    .line 26
    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;->count:I

    .line 27
    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;->methods:Z

    .line 28
    return-void
.end method


# virtual methods
.method getCount()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;->count:I

    return v0
.end method

.method hasMethods()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;->methods:Z

    return v0
.end method

.method public bridge synthetic visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # [Ljava/lang/String;

    .prologue
    .line 20
    invoke-virtual/range {p0 .. p5}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;
    .locals 1
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "<clinit>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;->methods:Z

    .line 36
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitTotalProbeCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 41
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;->count:I

    .line 42
    return-void
.end method
