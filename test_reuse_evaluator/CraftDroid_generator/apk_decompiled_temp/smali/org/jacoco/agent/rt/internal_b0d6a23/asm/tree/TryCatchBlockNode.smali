.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;
.super Ljava/lang/Object;
.source "TryCatchBlockNode.java"


# instance fields
.field public end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

.field public handler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

.field public invisibleTypeAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

.field public type:Ljava/lang/String;

.field public visibleTypeAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .param p2, "end"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .param p3, "handler"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .line 101
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .line 102
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->handler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .line 103
    iput-object p4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 8
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    const/4 v4, 0x0

    .line 136
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-virtual {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v5

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-virtual {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v6

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->handler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 137
    :goto_0
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    .line 136
    invoke-virtual {p1, v5, v6, v3, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTryCatchBlock(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v3, :cond_1

    move v2, v4

    .line 140
    .local v2, "n":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 141
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;

    .line 142
    .local v0, "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    iget v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    iget-object v6, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {p1, v3, v5, v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTryCatchAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)V

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 136
    .end local v0    # "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->handler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .line 137
    invoke-virtual {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v3

    goto :goto_0

    .line 138
    :cond_1
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    .line 139
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .line 145
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_2
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v3, :cond_3

    move v2, v4

    .line 147
    :goto_3
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_4

    .line 148
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;

    .line 149
    .restart local v0    # "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    iget v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    iget-object v6, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v3, v5, v6, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTryCatchAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 145
    .end local v0    # "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    :cond_3
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 146
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_3

    .line 152
    :cond_4
    return-void
.end method

.method public updateIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 116
    const/high16 v2, 0x42000000    # 32.0f

    shl-int/lit8 v3, p1, 0x8

    or-int v0, v2, v3

    .line 117
    .local v0, "newTypeRef":I
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;

    .line 119
    .local v1, "tan":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typeRef:I

    goto :goto_0

    .line 122
    .end local v1    # "tan":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;

    .line 124
    .restart local v1    # "tan":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typeRef:I

    goto :goto_1

    .line 127
    .end local v1    # "tan":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    :cond_1
    return-void
.end method
