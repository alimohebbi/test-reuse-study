.class Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/NoneProbeArrayStrategy;
.super Ljava/lang/Object;
.source "NoneProbeArrayStrategy.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMembers(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;I)V
    .locals 0
    .param p1, "delegate"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;
    .param p2, "probeCount"    # I

    .prologue
    .line 29
    return-void
.end method

.method public storeInstance(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;I)I
    .locals 1
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .param p2, "variable"    # I

    .prologue
    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
