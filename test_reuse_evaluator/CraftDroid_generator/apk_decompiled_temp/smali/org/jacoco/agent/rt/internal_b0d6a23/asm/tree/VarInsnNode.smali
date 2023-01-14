.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/VarInsnNode;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
.source "VarInsnNode.java"


# instance fields
.field public var:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 64
    iput p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/VarInsnNode;->var:I

    .line 65
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 2
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 86
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/VarInsnNode;->opcode:I

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/VarInsnNode;->var:I

    invoke-virtual {p1, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitVarInsn(II)V

    .line 87
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/VarInsnNode;->acceptAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 88
    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;",
            ">;)",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;>;"
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/VarInsnNode;

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/VarInsnNode;->opcode:I

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/VarInsnNode;->var:I

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/VarInsnNode;-><init>(II)V

    invoke-virtual {v0, p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/VarInsnNode;->cloneAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x2

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .prologue
    .line 76
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/VarInsnNode;->opcode:I

    .line 77
    return-void
.end method
