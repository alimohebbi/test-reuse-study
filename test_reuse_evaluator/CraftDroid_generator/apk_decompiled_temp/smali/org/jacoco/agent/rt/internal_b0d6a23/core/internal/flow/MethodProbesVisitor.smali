.class public abstract Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
.source "MethodProbesVisitor.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 1
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 38
    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 39
    return-void
.end method


# virtual methods
.method public visitInsnWithProbe(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "probeId"    # I

    .prologue
    .line 94
    return-void
.end method

.method public visitJumpInsnWithProbe(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;ILorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/IFrame;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p3, "probeId"    # I
    .param p4, "frame"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/IFrame;

    .prologue
    .line 77
    return-void
.end method

.method public visitLookupSwitchInsnWithProbes(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/IFrame;)V
    .locals 0
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p4, "frame"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/IFrame;

    .prologue
    .line 148
    return-void
.end method

.method public visitProbe(I)V
    .locals 0
    .param p1, "probeId"    # I

    .prologue
    .line 50
    return-void
.end method

.method public visitTableSwitchInsnWithProbes(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/IFrame;)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p4, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p5, "frame"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/IFrame;

    .prologue
    .line 122
    return-void
.end method
