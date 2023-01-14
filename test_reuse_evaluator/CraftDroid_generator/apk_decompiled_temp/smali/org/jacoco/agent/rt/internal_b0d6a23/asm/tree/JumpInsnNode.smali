.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
.source "JumpInsnNode.java"


# instance fields
.field public label:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;


# direct methods
.method public constructor <init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 65
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;->label:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .line 66
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 2
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 88
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;->opcode:I

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;->label:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 89
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;->acceptAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 90
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
    .line 94
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;>;"
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;->opcode:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;->label:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-static {v2, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;->clone(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)V

    .line 95
    invoke-virtual {v0, p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;->cloneAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x7

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .prologue
    .line 78
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;->opcode:I

    .line 79
    return-void
.end method
