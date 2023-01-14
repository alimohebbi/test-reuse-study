.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LdcInsnNode;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
.source "LdcInsnNode.java"


# instance fields
.field public cst:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "cst"    # Ljava/lang/Object;

    .prologue
    .line 60
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 61
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    .line 62
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 1
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LdcInsnNode;->acceptAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 73
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
    .line 77
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;>;"
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LdcInsnNode;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LdcInsnNode;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LdcInsnNode;->cloneAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x9

    return v0
.end method
