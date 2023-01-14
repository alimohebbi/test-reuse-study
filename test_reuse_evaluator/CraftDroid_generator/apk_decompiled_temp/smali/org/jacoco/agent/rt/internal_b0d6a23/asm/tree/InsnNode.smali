.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnNode;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
.source "InsnNode.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "opcode"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 1
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 80
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnNode;->opcode:I

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 81
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnNode;->acceptAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 82
    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .locals 2
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
    .line 86
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;>;"
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnNode;

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnNode;->opcode:I

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnNode;-><init>(I)V

    invoke-virtual {v0, p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnNode;->cloneAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method
