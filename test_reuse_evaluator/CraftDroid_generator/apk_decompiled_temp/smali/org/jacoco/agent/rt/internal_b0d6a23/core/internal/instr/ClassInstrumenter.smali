.class public Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ClassInstrumenter;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;
.source "ClassInstrumenter.java"


# instance fields
.field private className:Ljava/lang/String;

.field private final probeArrayStrategy:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;


# direct methods
.method public constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;)V
    .locals 0
    .param p1, "probeArrayStrategy"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;
    .param p2, "cv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;

    .prologue
    .line 40
    invoke-direct {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;)V

    .line 41
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ClassInstrumenter;->probeArrayStrategy:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;

    .line 42
    return-void
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .prologue
    .line 48
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ClassInstrumenter;->className:Ljava/lang/String;

    .line 49
    invoke-super/range {p0 .. p6}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;
    .locals 1
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ClassInstrumenter;->className:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/InstrSupport;->assertNotInstrumented(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-super/range {p0 .. p5}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # [Ljava/lang/String;

    .prologue
    .line 23
    invoke-virtual/range {p0 .. p5}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ClassInstrumenter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;
    .locals 9
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ClassInstrumenter;->className:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/InstrSupport;->assertNotInstrumented(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ClassInstrumenter;->cv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    move-result-object v7

    .line 68
    .local v7, "mv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    if-nez v7, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 71
    :cond_0
    new-instance v6, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;

    invoke-direct {v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 72
    .local v6, "frameEliminator":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    new-instance v8, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ClassInstrumenter;->probeArrayStrategy:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;

    invoke-direct {v8, p1, p3, v6, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;-><init>(ILjava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;)V

    .line 74
    .local v8, "probeVariableInserter":Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/MethodInstrumenter;

    invoke-direct {v0, v8, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/MethodInstrumenter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeInserter;)V

    goto :goto_0
.end method

.method public visitTotalProbeCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ClassInstrumenter;->probeArrayStrategy:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ClassInstrumenter;->cv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;

    invoke-interface {v0, v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;->addMembers(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;I)V

    .line 81
    return-void
.end method
