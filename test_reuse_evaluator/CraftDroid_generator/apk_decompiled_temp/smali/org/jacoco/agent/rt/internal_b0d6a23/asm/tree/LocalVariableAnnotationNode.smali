.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
.source "LocalVariableAnnotationNode.java"


# instance fields
.field public end:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;",
            ">;"
        }
    .end annotation
.end field

.field public index:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public start:Ljava/util/List;
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
.method public constructor <init>(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;[ILjava/lang/String;)V
    .locals 5
    .param p1, "api"    # I
    .param p2, "typeRef"    # I
    .param p3, "typePath"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .param p4, "start"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .param p5, "end"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .param p6, "index"    # [I
    .param p7, "desc"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3, p7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;-><init>(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;)V

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;->start:Ljava/util/List;

    .line 128
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;->start:Ljava/util/List;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;->end:Ljava/util/List;

    .line 130
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;->end:Ljava/util/List;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p6

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;->index:Ljava/util/List;

    .line 132
    array-length v2, p6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p6, v1

    .line 133
    .local v0, "i":I
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;->index:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;[ILjava/lang/String;)V
    .locals 8
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .param p3, "start"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .param p4, "end"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .param p5, "index"    # [I
    .param p6, "desc"    # Ljava/lang/String;

    .prologue
    .line 96
    const/high16 v1, 0x50000

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;-><init>(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;[ILjava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;Z)V
    .locals 9
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .param p2, "visible"    # Z

    .prologue
    .line 146
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;->start:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 147
    .local v3, "start":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;->end:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 148
    .local v4, "end":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;->index:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [I

    .line 149
    .local v5, "index":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v3

    if-ge v8, v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;->start:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v0

    aput-object v0, v3, v8

    .line 151
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;->end:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v0

    aput-object v0, v4, v8

    .line 152
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;->index:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v8

    .line 149
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 154
    :cond_0
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;->typeRef:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;->desc:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)V

    .line 156
    return-void
.end method
