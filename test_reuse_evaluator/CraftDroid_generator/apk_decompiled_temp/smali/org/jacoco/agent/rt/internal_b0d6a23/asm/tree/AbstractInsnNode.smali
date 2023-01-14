.class public abstract Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
.super Ljava/lang/Object;
.source "AbstractInsnNode.java"


# static fields
.field public static final FIELD_INSN:I = 0x4

.field public static final FRAME:I = 0xe

.field public static final IINC_INSN:I = 0xa

.field public static final INSN:I = 0x0

.field public static final INT_INSN:I = 0x1

.field public static final INVOKE_DYNAMIC_INSN:I = 0x6

.field public static final JUMP_INSN:I = 0x7

.field public static final LABEL:I = 0x8

.field public static final LDC_INSN:I = 0x9

.field public static final LINE:I = 0xf

.field public static final LOOKUPSWITCH_INSN:I = 0xc

.field public static final METHOD_INSN:I = 0x5

.field public static final MULTIANEWARRAY_INSN:I = 0xd

.field public static final TABLESWITCH_INSN:I = 0xb

.field public static final TYPE_INSN:I = 0x3

.field public static final VAR_INSN:I = 0x2


# instance fields
.field index:I

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

.field next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

.field protected opcode:I

.field prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

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
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "opcode"    # I

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->opcode:I

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->index:I

    .line 180
    return-void
.end method

.method static clone(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .locals 1
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;",
            "Ljava/util/Map",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;",
            ">;)",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    return-object v0
.end method

.method static clone(Ljava/util/List;Ljava/util/Map;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;",
            ">;)[",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "labels":Ljava/util/List;, "Ljava/util/List<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .line 289
    .local v0, "clones":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 290
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    aput-object v2, v0, v1

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
.end method

.method protected final acceptAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 8
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    if-nez v4, :cond_0

    move v2, v3

    .line 238
    .local v2, "n":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 239
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;

    .line 240
    .local v0, "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    iget v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    iget-object v6, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {p1, v4, v5, v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsnAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 236
    .end local v0    # "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    .line 237
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 243
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_1
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-nez v4, :cond_2

    move v2, v3

    .line 245
    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_3

    .line 246
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;

    .line 247
    .restart local v0    # "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    iget v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    iget-object v6, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsnAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)V

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 243
    .end local v0    # "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    :cond_2
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 244
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_2

    .line 250
    :cond_3
    return-void
.end method

.method public abstract clone(Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
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
.end method

.method protected final cloneAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .locals 6
    .param p1, "insn"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .prologue
    .line 304
    iget-object v3, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 305
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    .line 306
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 307
    iget-object v3, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;

    .line 308
    .local v2, "src":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;

    iget v3, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v4, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    iget-object v5, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;)V

    .line 310
    .local v0, "ann":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    invoke-virtual {v2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)V

    .line 311
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v0    # "ann":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    .end local v1    # "i":I
    .end local v2    # "src":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    :cond_0
    iget-object v3, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 315
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 316
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 317
    iget-object v3, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;

    .line 318
    .restart local v2    # "src":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;

    iget v3, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v4, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    iget-object v5, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;)V

    .line 320
    .restart local v0    # "ann":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    invoke-virtual {v2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)V

    .line 321
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 324
    .end local v0    # "ann":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    .end local v1    # "i":I
    .end local v2    # "src":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
    :cond_1
    return-object p0
.end method

.method public getNext()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public getOpcode()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->opcode:I

    return v0
.end method

.method public getPrevious()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public abstract getType()I
.end method
