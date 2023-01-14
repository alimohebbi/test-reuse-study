.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
.source "TableSwitchInsnNode.java"


# instance fields
.field public dflt:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

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

.field public max:I

.field public min:I


# direct methods
.method public varargs constructor <init>(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)V
    .locals 2
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .param p4, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .prologue
    .line 84
    const/16 v0, 0xaa

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 85
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->min:I

    .line 86
    iput p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->max:I

    .line 87
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->dflt:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    .line 89
    if-eqz p4, :cond_0

    .line 90
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 5
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 101
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 102
    .local v1, "labels":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 103
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v2

    aput-object v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->min:I

    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->max:I

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->dflt:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 106
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->acceptAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 107
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
    .line 111
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;>;"
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->min:I

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->max:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->dflt:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-static {v3, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->clone(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v3

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-static {v4, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->clone(Ljava/util/List;Ljava/util/Map;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;-><init>(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)V

    .line 112
    invoke-virtual {v0, p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->cloneAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0xb

    return v0
.end method
