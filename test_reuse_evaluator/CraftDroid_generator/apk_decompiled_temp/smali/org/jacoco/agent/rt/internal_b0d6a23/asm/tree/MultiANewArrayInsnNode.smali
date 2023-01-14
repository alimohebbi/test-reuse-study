.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MultiANewArrayInsnNode;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
.source "MultiANewArrayInsnNode.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public dims:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .prologue
    .line 63
    const/16 v0, 0xc5

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 64
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MultiANewArrayInsnNode;->desc:Ljava/lang/String;

    .line 65
    iput p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MultiANewArrayInsnNode;->dims:I

    .line 66
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 2
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MultiANewArrayInsnNode;->desc:Ljava/lang/String;

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MultiANewArrayInsnNode;->dims:I

    invoke-virtual {p1, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 76
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MultiANewArrayInsnNode;->acceptAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 77
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
    .line 81
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;>;"
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MultiANewArrayInsnNode;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MultiANewArrayInsnNode;->desc:Ljava/lang/String;

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MultiANewArrayInsnNode;->dims:I

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MultiANewArrayInsnNode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MultiANewArrayInsnNode;->cloneAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0xd

    return v0
.end method
