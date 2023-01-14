.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
.source "LookupSwitchInsnNode.java"


# instance fields
.field public dflt:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

.field public keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;[I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)V
    .locals 4
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .prologue
    const/4 v2, 0x0

    .line 77
    const/16 v1, 0xab

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 78
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->dflt:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    if-nez p2, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    if-nez p3, :cond_1

    :goto_1
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    .line 82
    if-eqz p2, :cond_2

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 84
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    new-instance v2, Ljava/lang/Integer;

    aget v3, p2, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 79
    .end local v0    # "i":I
    :cond_0
    array-length v1, p2

    goto :goto_0

    .line 80
    :cond_1
    array-length v2, p3

    goto :goto_1

    .line 87
    :cond_2
    if-eqz p3, :cond_3

    .line 88
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    :cond_3
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 4
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 99
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [I

    .line 100
    .local v1, "keys":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 101
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 104
    .local v2, "labels":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 105
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-virtual {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v3

    aput-object v3, v2, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_1
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->dflt:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-virtual {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v3

    invoke-virtual {p1, v3, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 108
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->acceptAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 109
    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .locals 4
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
    .line 113
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;>;"
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->dflt:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-static {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->clone(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    .line 114
    invoke-static {v3, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->clone(Ljava/util/List;Ljava/util/Map;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;[I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)V

    .line 115
    .local v0, "clone":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    invoke-virtual {v0, p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->cloneAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v1

    return-object v1
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0xc

    return v0
.end method
