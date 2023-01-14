.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
.source "InvokeDynamicInsnNode.java"


# instance fields
.field public bsm:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;

.field public bsmArgs:[Ljava/lang/Object;

.field public desc:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .prologue
    .line 79
    const/16 v0, 0xba

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 80
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;->name:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;->desc:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;->bsm:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;

    .line 83
    iput-object p4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;->bsmArgs:[Ljava/lang/Object;

    .line 84
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 4
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;->desc:Ljava/lang/String;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;->bsm:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;->bsmArgs:[Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;[Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;->acceptAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 95
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
    .line 99
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;>;"
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;->desc:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;->bsm:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;->bsmArgs:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v0, p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;->cloneAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x6

    return v0
.end method
