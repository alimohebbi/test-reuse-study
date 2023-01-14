.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
.source "MethodNode.java"


# instance fields
.field public access:I

.field public annotationDefault:Ljava/lang/Object;

.field public attrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public desc:Ljava/lang/String;

.field public exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

.field public invisibleAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public invisibleLocalVariableAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public invisibleParameterAnnotations:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field

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

.field public localVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;",
            ">;"
        }
    .end annotation
.end field

.field public maxLocals:I

.field public maxStack:I

.field public name:Ljava/lang/String;

.field public parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/ParameterNode;",
            ">;"
        }
    .end annotation
.end field

.field public signature:Ljava/lang/String;

.field public tryCatchBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;",
            ">;"
        }
    .end annotation
.end field

.field public visibleAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public visibleLocalVariableAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public visibleParameterAnnotations:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field

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

.field private visited:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 223
    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;-><init>(I)V

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;

    if-eq v0, v1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 227
    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "api"    # I

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;-><init>(I)V

    .line 238
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    .line 239
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "api"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "exceptions"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 294
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;-><init>(I)V

    .line 295
    iput p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->access:I

    .line 296
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->name:Ljava/lang/String;

    .line 297
    iput-object p4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->desc:Ljava/lang/String;

    .line 298
    iput-object p5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->signature:Ljava/lang/String;

    .line 299
    new-instance v3, Ljava/util/ArrayList;

    if-nez p6, :cond_2

    move v1, v2

    :goto_0
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->exceptions:Ljava/util/List;

    .line 301
    and-int/lit16 v1, p2, 0x400

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 302
    .local v0, "isAbstract":Z
    :goto_1
    if-nez v0, :cond_0

    .line 303
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    .line 305
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    .line 306
    if-eqz p6, :cond_1

    .line 307
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->exceptions:Ljava/util/List;

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 309
    :cond_1
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;-><init>()V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    .line 310
    return-void

    .line 299
    .end local v0    # "isAbstract":Z
    :cond_2
    array-length v1, p6

    goto :goto_0

    :cond_3
    move v0, v2

    .line 301
    goto :goto_1
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .prologue
    .line 265
    const/high16 v1, 0x50000

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;

    if-eq v0, v1, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 269
    :cond_0
    return-void
.end method

.method private getLabelNodes([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 638
    array-length v3, p1

    new-array v1, v3, [Ljava/lang/Object;

    .line 639
    .local v1, "nodes":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 640
    aget-object v2, p1, v0

    .line 641
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v3, :cond_0

    .line 642
    check-cast v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v2

    .line 644
    :cond_0
    aput-object v2, v1, v0

    .line 639
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 646
    :cond_1
    return-object v1
.end method

.method private getLabelNodes([Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .locals 3
    .param p1, "l"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 630
    array-length v2, p1

    new-array v1, v2, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .line 631
    .local v1, "nodes":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 632
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v2

    aput-object v2, v1, v0

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    :cond_0
    return-object v1
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;)V
    .locals 7
    .param p1, "cv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;

    .prologue
    .line 720
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    .line 721
    .local v5, "exceptions":[Ljava/lang/String;
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->exceptions:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 722
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->access:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->desc:Ljava/lang/String;

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->signature:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    move-result-object v6

    .line 724
    .local v6, "mv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    if-eqz v6, :cond_0

    .line 725
    invoke-virtual {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 727
    :cond_0
    return-void
.end method

.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 12
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 738
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->parameters:Ljava/util/List;

    if-nez v7, :cond_0

    move v5, v8

    .line 739
    .local v5, "n":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 740
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->parameters:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/ParameterNode;

    .line 741
    .local v6, "parameter":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/ParameterNode;
    iget-object v7, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/ParameterNode;->name:Ljava/lang/String;

    iget v9, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/ParameterNode;->access:I

    invoke-virtual {p1, v7, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    .line 739
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 738
    .end local v2    # "i":I
    .end local v5    # "n":I
    .end local v6    # "parameter":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/ParameterNode;
    :cond_0
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->parameters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    .line 744
    .restart local v2    # "i":I
    .restart local v5    # "n":I
    :cond_1
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->annotationDefault:Ljava/lang/Object;

    if-eqz v7, :cond_2

    .line 745
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitAnnotationDefault()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v1

    .line 746
    .local v1, "av":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    const/4 v7, 0x0

    iget-object v9, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->annotationDefault:Ljava/lang/Object;

    invoke-static {v1, v7, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 747
    if-eqz v1, :cond_2

    .line 748
    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visitEnd()V

    .line 751
    .end local v1    # "av":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    :cond_2
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    if-nez v7, :cond_3

    move v5, v8

    .line 752
    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_4

    .line 753
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;

    .line 754
    .local v0, "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;
    iget-object v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v7, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)V

    .line 752
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 751
    .end local v0    # "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;
    :cond_3
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_2

    .line 756
    :cond_4
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v7, :cond_5

    move v5, v8

    .line 757
    :goto_4
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_6

    .line 758
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;

    .line 759
    .restart local v0    # "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;
    iget-object v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)V

    .line 757
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 756
    .end local v0    # "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;
    :cond_5
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_4

    .line 761
    :cond_6
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v7, :cond_7

    move v5, v8

    .line 762
    :goto_6
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v5, :cond_8

    .line 763
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;

    .line 764
    .local v0, "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    iget v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v9, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    iget-object v10, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v7, v9, v10, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)V

    .line 762
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 761
    .end local v0    # "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    :cond_7
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_6

    .line 767
    :cond_8
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v7, :cond_9

    move v5, v8

    .line 769
    :goto_8
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v5, :cond_a

    .line 770
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;

    .line 771
    .restart local v0    # "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    iget v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v9, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    iget-object v10, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v7, v9, v10, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)V

    .line 769
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 767
    .end local v0    # "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    :cond_9
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 768
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_8

    .line 774
    :cond_a
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    if-nez v7, :cond_c

    move v5, v8

    .line 776
    :goto_a
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v5, :cond_e

    .line 777
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    aget-object v4, v7, v2

    .line 778
    .local v4, "l":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez v4, :cond_d

    .line 776
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 774
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_c
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    array-length v5, v7

    goto :goto_a

    .line 781
    .restart local v4    # "l":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_d
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_b

    .line 782
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;

    .line 783
    .local v0, "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;
    iget-object v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v2, v7, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)V

    .line 781
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 786
    .end local v0    # "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;
    .end local v3    # "j":I
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_e
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    if-nez v7, :cond_10

    move v5, v8

    .line 788
    :goto_d
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v5, :cond_12

    .line 789
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    aget-object v4, v7, v2

    .line 790
    .restart local v4    # "l":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez v4, :cond_11

    .line 788
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 786
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_10
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    array-length v5, v7

    goto :goto_d

    .line 793
    .restart local v4    # "l":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_11
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_f

    .line 794
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;

    .line 795
    .restart local v0    # "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;
    iget-object v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v2, v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)V

    .line 793
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 798
    .end local v0    # "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;
    .end local v3    # "j":I
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_12
    iget-boolean v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visited:Z

    if-eqz v7, :cond_13

    .line 799
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->resetLabels()V

    .line 801
    :cond_13
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->attrs:Ljava/util/List;

    if-nez v7, :cond_14

    move v5, v8

    .line 802
    :goto_10
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v5, :cond_15

    .line 803
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->attrs:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    invoke-virtual {p1, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitAttribute(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;)V

    .line 802
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 801
    :cond_14
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->attrs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_10

    .line 806
    :cond_15
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size()I

    move-result v7

    if-lez v7, :cond_1e

    .line 807
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitCode()V

    .line 809
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    if-nez v7, :cond_16

    move v5, v8

    .line 810
    :goto_12
    const/4 v2, 0x0

    :goto_13
    if-ge v2, v5, :cond_17

    .line 811
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;

    invoke-virtual {v7, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->updateIndex(I)V

    .line 812
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;

    invoke-virtual {v7, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 810
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 809
    :cond_16
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_12

    .line 815
    :cond_17
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v7, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 817
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    if-nez v7, :cond_18

    move v5, v8

    .line 818
    :goto_14
    const/4 v2, 0x0

    :goto_15
    if-ge v2, v5, :cond_19

    .line 819
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;

    invoke-virtual {v7, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 818
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 817
    :cond_18
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_14

    .line 822
    :cond_19
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    if-nez v7, :cond_1a

    move v5, v8

    .line 824
    :goto_16
    const/4 v2, 0x0

    :goto_17
    if-ge v2, v5, :cond_1b

    .line 825
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;

    invoke-virtual {v7, p1, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;Z)V

    .line 824
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 822
    :cond_1a
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    .line 823
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_16

    .line 827
    :cond_1b
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    if-nez v7, :cond_1c

    move v5, v8

    .line 829
    :goto_18
    const/4 v2, 0x0

    :goto_19
    if-ge v2, v5, :cond_1d

    .line 830
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;

    invoke-virtual {v7, p1, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;Z)V

    .line 829
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 827
    :cond_1c
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    .line 828
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_18

    .line 833
    :cond_1d
    iget v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->maxStack:I

    iget v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->maxLocals:I

    invoke-virtual {p1, v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMaxs(II)V

    .line 834
    iput-boolean v11, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visited:Z

    .line 836
    :cond_1e
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitEnd()V

    .line 837
    return-void
.end method

.method public check(I)V
    .locals 8
    .param p1, "api"    # I

    .prologue
    const/4 v6, 0x0

    .line 664
    const/high16 v5, 0x40000

    if-ne p1, v5, :cond_c

    .line 665
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    .line 666
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 667
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 669
    :cond_0
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 670
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 671
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 673
    :cond_1
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    if-nez v5, :cond_2

    move v3, v6

    .line 674
    .local v3, "n":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_5

    .line 675
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;

    .line 676
    .local v4, "tcb":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;
    iget-object v5, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    .line 677
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 678
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 673
    .end local v0    # "i":I
    .end local v3    # "n":I
    .end local v4    # "tcb":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;
    :cond_2
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 680
    .restart local v0    # "i":I
    .restart local v3    # "n":I
    .restart local v4    # "tcb":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;
    :cond_3
    iget-object v5, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 681
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 682
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 674
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 685
    .end local v4    # "tcb":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;
    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size()I

    move-result v5

    if-ge v0, v5, :cond_a

    .line 686
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v5, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->get(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v1

    .line 687
    .local v1, "insn":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    iget-object v5, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v5, :cond_6

    iget-object v5, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    .line 688
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 689
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 691
    :cond_6
    iget-object v5, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v5, :cond_7

    iget-object v5, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 692
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 693
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 695
    :cond_7
    instance-of v5, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodInsnNode;

    if-eqz v5, :cond_9

    move-object v5, v1

    .line 696
    check-cast v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodInsnNode;

    iget-boolean v2, v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodInsnNode;->itf:Z

    .line 697
    .local v2, "itf":Z
    iget v5, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->opcode:I

    const/16 v7, 0xb9

    if-ne v5, v7, :cond_8

    const/4 v5, 0x1

    :goto_3
    if-eq v2, v5, :cond_9

    .line 698
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    :cond_8
    move v5, v6

    .line 697
    goto :goto_3

    .line 685
    .end local v2    # "itf":Z
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 702
    .end local v1    # "insn":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    :cond_a
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    .line 703
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 704
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 706
    :cond_b
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    .line 707
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 708
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 711
    .end local v0    # "i":I
    .end local v3    # "n":I
    :cond_c
    return-void
.end method

.method protected getLabelNode(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .locals 1
    .param p1, "l"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 623
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->info:Ljava/lang/Object;

    instance-of v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    if-nez v0, :cond_0

    .line 624
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;-><init>()V

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->info:Ljava/lang/Object;

    .line 626
    :cond_0
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->info:Ljava/lang/Object;

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    const/4 v2, 0x1

    .line 338
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;

    invoke-direct {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;
    if-eqz p2, :cond_1

    .line 340
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    if-nez v1, :cond_0

    .line 341
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    .line 343
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :goto_0
    return-object v0

    .line 345
    :cond_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    if-nez v1, :cond_2

    .line 346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    .line 348
    :cond_2
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public visitAnnotationDefault()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 3

    .prologue
    .line 326
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;

    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode$1;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;I)V

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public visitAttribute(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;)V
    .locals 2
    .param p1, "attr"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .prologue
    .line 401
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->attrs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->attrs:Ljava/util/List;

    .line 404
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->attrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    return-void
.end method

.method public visitCode()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .prologue
    .line 610
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .prologue
    .line 442
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FieldInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 443
    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 414
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;

    if-nez p3, :cond_0

    move-object v3, v5

    .line 415
    :goto_0
    if-nez p5, :cond_1

    :goto_1
    move v1, p1

    move v2, p2

    move v4, p4

    .line 416
    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;-><init>(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 414
    invoke-virtual {v6, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 417
    return-void

    .line 415
    :cond_0
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->getLabelNodes([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 416
    :cond_1
    invoke-direct {p0, p5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->getLabelNodes([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_1
.end method

.method public visitIincInsn(II)V
    .locals 2
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .prologue
    .line 489
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/IincInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/IincInsnNode;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 490
    return-void
.end method

.method public visitInsn(I)V
    .locals 2
    .param p1, "opcode"    # I

    .prologue
    .line 421
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnNode;

    invoke-direct {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnNode;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 422
    return-void
.end method

.method public visitInsnAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 5
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .prologue
    const/4 v4, 0x1

    .line 516
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->getLast()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v1

    .line 517
    .local v1, "insn":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    :goto_0
    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 518
    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->getPrevious()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v1

    goto :goto_0

    .line 521
    :cond_0
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;)V

    .line 522
    .local v0, "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    if-eqz p4, :cond_2

    .line 523
    iget-object v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v2, :cond_1

    .line 524
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    .line 527
    :cond_1
    iget-object v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    :goto_1
    return-object v0

    .line 529
    :cond_2
    iget-object v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v2, :cond_3

    .line 530
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 533
    :cond_3
    iget-object v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public visitIntInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .prologue
    .line 426
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/IntInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/IntInsnNode;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 427
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .prologue
    .line 469
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InvokeDynamicInsnNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 470
    return-void
.end method

.method public visitJumpInsn(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 474
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;

    invoke-virtual {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 475
    return-void
.end method

.method public visitLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 2
    .param p1, "label"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 479
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 480
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 2
    .param p1, "cst"    # Ljava/lang/Object;

    .prologue
    .line 484
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LdcInsnNode;

    invoke-direct {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LdcInsnNode;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 485
    return-void
.end method

.method public visitLineNumber(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 3
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 599
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LineNumberNode;

    invoke-virtual {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LineNumberNode;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 600
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;I)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p5, "end"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p6, "index"    # I

    .prologue
    .line 570
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;

    .line 571
    invoke-virtual {p0, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v4

    invoke-virtual {p0, p5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;I)V

    .line 570
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    return-void
.end method

.method public visitLocalVariableAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 8
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .param p3, "start"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p4, "end"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p5, "index"    # [I
    .param p6, "desc"    # Ljava/lang/String;
    .param p7, "visible"    # Z

    .prologue
    const/4 v7, 0x1

    .line 578
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;

    .line 579
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->getLabelNodes([Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v3

    invoke-direct {p0, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->getLabelNodes([Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v4

    move v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;[ILjava/lang/String;)V

    .line 581
    .local v0, "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableAnnotationNode;
    if-eqz p7, :cond_1

    .line 582
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    if-nez v1, :cond_0

    .line 583
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    .line 586
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    :goto_0
    return-object v0

    .line 588
    :cond_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    if-nez v1, :cond_2

    .line 589
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    .line 592
    :cond_2
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 4
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 502
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v2

    .line 503
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->getLabelNodes([Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;[I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)V

    .line 502
    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 504
    return-void
.end method

.method public visitMaxs(II)V
    .locals 0
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .prologue
    .line 604
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->maxStack:I

    .line 605
    iput p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->maxLocals:I

    .line 606
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 449
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    .line 450
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodInsnNode;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    goto :goto_0
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .prologue
    .line 459
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    .line 460
    invoke-super/range {p0 .. p5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 464
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodInsnNode;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    goto :goto_0
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .prologue
    .line 508
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MultiANewArrayInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MultiANewArrayInsnNode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 509
    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "access"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->parameters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->parameters:Ljava/util/List;

    .line 321
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->parameters:Ljava/util/List;

    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/ParameterNode;

    invoke-direct {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/ParameterNode;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 5
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .prologue
    const/4 v4, 0x1

    .line 374
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;

    invoke-direct {v0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    .line 375
    .local v0, "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;
    if-eqz p3, :cond_2

    .line 376
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    if-nez v2, :cond_0

    .line 377
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->desc:Ljava/lang/String;

    invoke-static {v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v2

    array-length v1, v2

    .line 378
    .local v1, "params":I
    new-array v2, v1, [Ljava/util/List;

    check-cast v2, [Ljava/util/List;

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    .line 380
    .end local v1    # "params":I
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    aget-object v2, v2, p1

    if-nez v2, :cond_1

    .line 381
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v3, v2, p1

    .line 384
    :cond_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    aget-object v2, v2, p1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    :goto_0
    return-object v0

    .line 386
    :cond_2
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    if-nez v2, :cond_3

    .line 387
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->desc:Ljava/lang/String;

    invoke-static {v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v2

    array-length v1, v2

    .line 388
    .restart local v1    # "params":I
    new-array v2, v1, [Ljava/util/List;

    check-cast v2, [Ljava/util/List;

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    .line 390
    .end local v1    # "params":I
    :cond_3
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    aget-object v2, v2, p1

    if-nez v2, :cond_4

    .line 391
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v3, v2, p1

    .line 394
    :cond_4
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    aget-object v2, v2, p1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public varargs visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 4
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p4, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 495
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;

    invoke-virtual {p0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v2

    .line 496
    invoke-direct {p0, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->getLabelNodes([Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v3

    invoke-direct {v1, p1, p2, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;-><init>(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)V

    .line 495
    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 497
    return-void
.end method

.method public visitTryCatchAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 5
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .prologue
    const/4 v4, 0x1

    .line 548
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    const v3, 0xffff00

    and-int/2addr v3, p1

    shr-int/lit8 v3, v3, 0x8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;

    .line 549
    .local v1, "tcb":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;)V

    .line 550
    .local v0, "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    if-eqz p4, :cond_1

    .line 551
    iget-object v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v2, :cond_0

    .line 552
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    .line 555
    :cond_0
    iget-object v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :goto_0
    return-object v0

    .line 557
    :cond_1
    iget-object v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v2, :cond_2

    .line 558
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 561
    :cond_2
    iget-object v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public visitTryCatchBlock(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Ljava/lang/String;)V
    .locals 5
    .param p1, "start"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p2, "end"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p3, "handler"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 541
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v2

    .line 542
    invoke-virtual {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->getLabelNode(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Ljava/lang/String;)V

    .line 541
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    return-void
.end method

.method public visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 3
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .prologue
    const/4 v2, 0x1

    .line 356
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;)V

    .line 357
    .local v0, "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    if-eqz p4, :cond_1

    .line 358
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v1, :cond_0

    .line 359
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    .line 361
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :goto_0
    return-object v0

    .line 363
    :cond_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v1, :cond_2

    .line 364
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 366
    :cond_2
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 436
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeInsnNode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 437
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .prologue
    .line 431
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/VarInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/VarInsnNode;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 432
    return-void
.end method
