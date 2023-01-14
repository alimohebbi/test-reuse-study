.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
.source "FieldInsnNode.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public owner:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 78
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;->owner:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;->name:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;->desc:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 4
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 101
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;->opcode:I

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;->owner:Ljava/lang/String;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;->acceptAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 103
    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .locals 5
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
    .line 107
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;>;"
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;->opcode:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;->owner:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;->desc:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0, p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;->cloneAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x4

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .prologue
    .line 91
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;->opcode:I

    .line 92
    return-void
.end method
