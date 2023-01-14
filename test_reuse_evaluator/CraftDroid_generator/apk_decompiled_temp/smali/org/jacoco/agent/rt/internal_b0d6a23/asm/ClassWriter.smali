.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;
.source "ClassWriter.java"


# static fields
.field static final ACC_SYNTHETIC_ATTRIBUTE:I = 0x40000

.field static final BSM:I = 0x21

.field static final CLASS:I = 0x7

.field public static final COMPUTE_FRAMES:I = 0x2

.field public static final COMPUTE_MAXS:I = 0x1

.field static final DOUBLE:I = 0x6

.field static final FIELD:I = 0x9

.field static final FIELDORMETH_INSN:I = 0x6

.field static final FLOAT:I = 0x4

.field static final HANDLE:I = 0xf

.field static final HANDLE_BASE:I = 0x14

.field static final IINC_INSN:I = 0xd

.field static final IMETH:I = 0xb

.field static final IMPLVAR_INSN:I = 0x4

.field static final INDY:I = 0x12

.field static final INDYMETH_INSN:I = 0x8

.field static final INT:I = 0x3

.field static final ITFMETH_INSN:I = 0x7

.field static final LABELW_INSN:I = 0xa

.field static final LABEL_INSN:I = 0x9

.field static final LDCW_INSN:I = 0xc

.field static final LDC_INSN:I = 0xb

.field static final LONG:I = 0x5

.field static final LOOK_INSN:I = 0xf

.field static final MANA_INSN:I = 0x10

.field static final METH:I = 0xa

.field static final MTYPE:I = 0x10

.field static final NAME_TYPE:I = 0xc

.field static final NOARG_INSN:I = 0x0

.field static final SBYTE_INSN:I = 0x1

.field static final SHORT_INSN:I = 0x2

.field static final STR:I = 0x8

.field static final TABL_INSN:I = 0xe

.field static final TO_ACC_SYNTHETIC:I = 0x40

.field static final TYPE:[B

.field static final TYPE_INSN:I = 0x5

.field static final TYPE_MERGED:I = 0x20

.field static final TYPE_NORMAL:I = 0x1e

.field static final TYPE_UNINIT:I = 0x1f

.field static final UTF8:I = 0x1

.field static final VAR_INSN:I = 0x3

.field static final WIDE_INSN:I = 0x11


# instance fields
.field private access:I

.field private anns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

.field private attrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

.field bootstrapMethods:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

.field bootstrapMethodsCount:I

.field private computeFrames:Z

.field private computeMaxs:Z

.field cr:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;

.field private enclosingMethod:I

.field private enclosingMethodOwner:I

.field firstField:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;

.field firstMethod:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;

.field private ianns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

.field index:I

.field private innerClasses:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

.field private innerClassesCount:I

.field private interfaceCount:I

.field private interfaces:[I

.field invalidFrames:Z

.field private itanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

.field items:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

.field final key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

.field final key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

.field final key3:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

.field final key4:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

.field lastField:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;

.field lastMethod:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;

.field private name:I

.field final pool:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

.field private signature:I

.field private sourceDebug:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

.field private sourceFile:I

.field private superName:I

.field private tanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

.field thisName:Ljava/lang/String;

.field threshold:I

.field private typeCount:S

.field typeTable:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

.field version:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 516
    const/16 v3, 0xdc

    new-array v0, v3, [B

    .line 517
    .local v0, "b":[B
    const-string v2, "AAAAAAAAAAAAAAAABCLMMDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAAAAAAAAAAAJJJJJJJJJJJJJJJJDOPAAAAAAGGGGGGGHIFBFAAFFAARQJJKKJJJJJJJJJJJJJJJJJJ"

    .line 521
    .local v2, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 522
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x41

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_0
    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->TYPE:[B

    .line 593
    return-void
.end method

.method public constructor <init>(I)V
    .locals 8
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 608
    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;-><init>(I)V

    .line 609
    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    .line 610
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 611
    const/16 v0, 0x100

    new-array v0, v0, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 612
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    array-length v0, v0

    int-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->threshold:I

    .line 613
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 614
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 615
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 616
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key4:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 617
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->computeMaxs:Z

    .line 618
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->computeFrames:Z

    .line 619
    return-void

    :cond_0
    move v0, v2

    .line 617
    goto :goto_0

    :cond_1
    move v1, v2

    .line 618
    goto :goto_1
.end method

.method public constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;I)V
    .locals 0
    .param p1, "classReader"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;
    .param p2, "flags"    # I

    .prologue
    .line 654
    invoke-direct {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;-><init>(I)V

    .line 655
    invoke-virtual {p1, p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->copyPool(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;)V

    .line 656
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->cr:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;

    .line 657
    return-void
.end method

.method private addType(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .locals 5
    .param p1, "item"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .prologue
    const/4 v4, 0x0

    .line 1619
    iget-short v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeCount:S

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeCount:S

    .line 1620
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    iget-short v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeCount:S

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1621
    .local v1, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1622
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    if-nez v2, :cond_0

    .line 1623
    const/16 v2, 0x10

    new-array v2, v2, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 1625
    :cond_0
    iget-short v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeCount:S

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 1626
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 1627
    .local v0, "newTable":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1628
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 1630
    .end local v0    # "newTable":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    :cond_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    iget-short v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeCount:S

    aput-object v1, v2, v3

    .line 1631
    return-object v1
.end method

.method private get(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .locals 4
    .param p1, "key"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .prologue
    .line 1712
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    iget v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 1713
    .local v0, "i":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    iget v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->isEqualTo(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1714
    :cond_0
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    goto :goto_0

    .line 1716
    :cond_1
    return-object v0
.end method

.method private newString(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 1522
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-virtual {v1, v3, p1, v2, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1524
    .local v0, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    if-nez v0, :cond_0

    .line 1525
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1526
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .end local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1527
    .restart local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1529
    :cond_0
    return-object v0
.end method

.method private put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V
    .locals 12
    .param p1, "i"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .prologue
    .line 1727
    iget v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    iget-short v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeCount:S

    add-int/2addr v7, v8

    iget v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->threshold:I

    if-le v7, v8, :cond_2

    .line 1728
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    array-length v4, v7

    .line 1729
    .local v4, "ll":I
    mul-int/lit8 v7, v4, 0x2

    add-int/lit8 v6, v7, 0x1

    .line 1730
    .local v6, "nl":I
    new-array v5, v6, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 1731
    .local v5, "newItems":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    add-int/lit8 v3, v4, -0x1

    .local v3, "l":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1732
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    aget-object v1, v7, v3

    .line 1733
    .local v1, "j":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    :goto_1
    if-eqz v1, :cond_0

    .line 1734
    iget v7, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    array-length v8, v5

    rem-int v0, v7, v8

    .line 1735
    .local v0, "index":I
    iget-object v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 1736
    .local v2, "k":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    aget-object v7, v5, v0

    iput-object v7, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 1737
    aput-object v1, v5, v0

    .line 1738
    move-object v1, v2

    .line 1739
    goto :goto_1

    .line 1731
    .end local v0    # "index":I
    .end local v2    # "k":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1741
    .end local v1    # "j":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    :cond_1
    iput-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 1742
    int-to-double v8, v6

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->threshold:I

    .line 1744
    .end local v3    # "l":I
    .end local v4    # "ll":I
    .end local v5    # "newItems":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .end local v6    # "nl":I
    :cond_2
    iget v7, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    array-length v8, v8

    rem-int v0, v7, v8

    .line 1745
    .restart local v0    # "index":I
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    aget-object v7, v7, v0

    iput-object v7, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 1746
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    aput-object p1, v7, v0

    .line 1747
    return-void
.end method

.method private put112(III)V
    .locals 1
    .param p1, "b1"    # I
    .param p2, "b2"    # I
    .param p3, "s"    # I

    .prologue
    .line 1774
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put11(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1775
    return-void
.end method

.method private put122(III)V
    .locals 1
    .param p1, "b"    # I
    .param p2, "s1"    # I
    .param p3, "s2"    # I

    .prologue
    .line 1760
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1761
    return-void
.end method


# virtual methods
.method addType(Ljava/lang/String;)I
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1578
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, p1, v3, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1580
    .local v0, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    if-nez v0, :cond_0

    .line 1581
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1583
    :cond_0
    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    return v1
.end method

.method addUninitializedType(Ljava/lang/String;I)I
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 1599
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    const/16 v2, 0x1f

    iput v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    .line 1600
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    iput p2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    .line 1601
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    iput-object p1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    .line 1602
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    const v2, 0x7fffffff

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, p2

    and-int/2addr v2, v3

    iput v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    .line 1603
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1604
    .local v0, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    if-nez v0, :cond_0

    .line 1605
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1607
    :cond_0
    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    return v1
.end method

.method protected getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "type1"    # Ljava/lang/String;
    .param p2, "type2"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2f

    const/16 v6, 0x2e

    .line 1679
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1681
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const/16 v4, 0x2f

    const/16 v5, 0x2e

    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1682
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1686
    .local v2, "d":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1698
    .end local p1    # "type1":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1683
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "d":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "type1":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1684
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1689
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "d":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object p1, p2

    .line 1690
    goto :goto_0

    .line 1692
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1693
    :cond_2
    const-string p1, "java/lang/Object"

    goto :goto_0

    .line 1696
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1697
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1698
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method getMergedType(II)I
    .locals 9
    .param p1, "type1"    # I
    .param p2, "type2"    # I

    .prologue
    const/16 v8, 0x20

    .line 1647
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    iput v8, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    .line 1648
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    int-to-long v4, p1

    int-to-long v6, p2

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    iput-wide v4, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->longVal:J

    .line 1649
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    const v4, 0x7fffffff

    add-int/lit8 v5, p1, 0x20

    add-int/2addr v5, p2

    and-int/2addr v4, v5

    iput v4, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    .line 1650
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1651
    .local v0, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    if-nez v0, :cond_0

    .line 1652
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    aget-object v3, v3, p1

    iget-object v1, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    .line 1653
    .local v1, "t":Ljava/lang/String;
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    aget-object v3, v3, p2

    iget-object v2, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    .line 1654
    .local v2, "u":Ljava/lang/String;
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-virtual {p0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    .line 1655
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .end local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v0, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1656
    .restart local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1658
    .end local v1    # "t":Ljava/lang/String;
    .end local v2    # "u":Ljava/lang/String;
    :cond_0
    iget v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    return v3
.end method

.method public newClass(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1131
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    return v0
.end method

.method newClassItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x7

    .line 1110
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-virtual {v1, v3, p1, v2, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1112
    .local v0, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    if-nez v0, :cond_0

    .line 1113
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1114
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .end local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1115
    .restart local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1117
    :cond_0
    return-object v0
.end method

.method public newConst(Ljava/lang/Object;)I
    .locals 1
    .param p1, "cst"    # Ljava/lang/Object;

    .prologue
    .line 1075
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newConstItem(Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    return v0
.end method

.method newConstItem(Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .locals 9
    .param p1, "cst"    # Ljava/lang/Object;

    .prologue
    .line 1017
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 1018
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "cst":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1019
    .local v4, "val":I
    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v3

    .line 1055
    .end local v4    # "val":I
    :goto_0
    return-object v3

    .line 1020
    .restart local p1    # "cst":Ljava/lang/Object;
    :cond_0
    instance-of v3, p1, Ljava/lang/Byte;

    if-eqz v3, :cond_1

    .line 1021
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "cst":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result v4

    .line 1022
    .restart local v4    # "val":I
    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v3

    goto :goto_0

    .line 1023
    .end local v4    # "val":I
    .restart local p1    # "cst":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Ljava/lang/Character;

    if-eqz v3, :cond_2

    .line 1024
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "cst":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v4

    .line 1025
    .restart local v4    # "val":I
    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v3

    goto :goto_0

    .line 1026
    .end local v4    # "val":I
    .restart local p1    # "cst":Ljava/lang/Object;
    :cond_2
    instance-of v3, p1, Ljava/lang/Short;

    if-eqz v3, :cond_3

    .line 1027
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "cst":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result v4

    .line 1028
    .restart local v4    # "val":I
    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v3

    goto :goto_0

    .line 1029
    .end local v4    # "val":I
    .restart local p1    # "cst":Ljava/lang/Object;
    :cond_3
    instance-of v3, p1, Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    .line 1030
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "cst":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    .line 1031
    .restart local v4    # "val":I
    :goto_1
    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v3

    goto :goto_0

    .line 1030
    .end local v4    # "val":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 1032
    .restart local p1    # "cst":Ljava/lang/Object;
    :cond_5
    instance-of v3, p1, Ljava/lang/Float;

    if-eqz v3, :cond_6

    .line 1033
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "cst":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1034
    .local v4, "val":F
    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newFloat(F)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v3

    goto :goto_0

    .line 1035
    .end local v4    # "val":F
    .restart local p1    # "cst":Ljava/lang/Object;
    :cond_6
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_7

    .line 1036
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "cst":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1037
    .local v4, "val":J
    invoke-virtual {p0, v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newLong(J)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v3

    goto :goto_0

    .line 1038
    .end local v4    # "val":J
    .restart local p1    # "cst":Ljava/lang/Object;
    :cond_7
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_8

    .line 1039
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "cst":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 1040
    .local v4, "val":D
    invoke-virtual {p0, v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newDouble(D)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v3

    goto :goto_0

    .line 1041
    .end local v4    # "val":D
    .restart local p1    # "cst":Ljava/lang/Object;
    :cond_8
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1042
    check-cast p1, Ljava/lang/String;

    .end local p1    # "cst":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newString(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v3

    goto :goto_0

    .line 1043
    .restart local p1    # "cst":Ljava/lang/Object;
    :cond_9
    instance-of v3, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    if-eqz v3, :cond_c

    move-object v2, p1

    .line 1044
    check-cast v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    .line 1045
    .local v2, "t":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getSort()I

    move-result v1

    .line 1046
    .local v1, "s":I
    const/16 v3, 0xa

    if-ne v1, v3, :cond_a

    .line 1047
    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v3

    goto/16 :goto_0

    .line 1048
    :cond_a
    const/16 v3, 0xb

    if-ne v1, v3, :cond_b

    .line 1049
    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newMethodTypeItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v3

    goto/16 :goto_0

    .line 1051
    :cond_b
    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v3

    goto/16 :goto_0

    .line 1053
    .end local v1    # "s":I
    .end local v2    # "t":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    :cond_c
    instance-of v3, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;

    if-eqz v3, :cond_d

    move-object v0, p1

    .line 1054
    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;

    .line 1055
    .local v0, "h":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;
    iget v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;->tag:I

    iget-object v6, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;->owner:Ljava/lang/String;

    iget-object v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;->name:Ljava/lang/String;

    iget-object v8, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;->desc:Ljava/lang/String;

    invoke-virtual {p0, v3, v6, v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newHandleItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v3

    goto/16 :goto_0

    .line 1057
    .end local v0    # "h":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;
    :cond_d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method newDouble(D)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .locals 5
    .param p1, "value"    # D

    .prologue
    .line 1502
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-virtual {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(D)V

    .line 1503
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1504
    .local v0, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    if-nez v0, :cond_0

    .line 1505
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    iget-wide v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->longVal:J

    invoke-virtual {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putLong(J)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1506
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .end local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1507
    .restart local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    .line 1508
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1510
    :cond_0
    return-object v0
.end method

.method public newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    .line 1384
    invoke-virtual {p0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    return v0
.end method

.method newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .locals 4
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x9

    .line 1359
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-virtual {v1, v3, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1361
    .local v0, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    if-nez v0, :cond_0

    .line 1362
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v3, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put122(III)V

    .line 1363
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .end local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1364
    .restart local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1366
    :cond_0
    return-object v0
.end method

.method newFloat(F)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 1463
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(F)V

    .line 1464
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1465
    .local v0, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    if-nez v0, :cond_0

    .line 1466
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1467
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .end local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1468
    .restart local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1470
    :cond_0
    return-object v0
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .prologue
    .line 1236
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newHandleItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    return v0
.end method

.method newHandleItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .locals 4
    .param p1, "tag"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xf

    .line 1194
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key4:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    add-int/lit8 v2, p1, 0x14

    invoke-virtual {v1, v2, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key4:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1196
    .local v0, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    if-nez v0, :cond_0

    .line 1197
    const/4 v1, 0x4

    if-gt p1, v1, :cond_1

    .line 1198
    invoke-virtual {p0, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v3, p1, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put112(III)V

    .line 1205
    :goto_0
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .end local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key4:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1206
    .restart local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1208
    :cond_0
    return-object v0

    .line 1200
    :cond_1
    const/16 v1, 0x9

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    .line 1202
    :goto_1
    invoke-virtual {p0, p2, p3, p4, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    .line 1200
    invoke-direct {p0, v3, p1, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put112(III)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method newInteger(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1444
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(I)V

    .line 1445
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1446
    .local v0, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    if-nez v0, :cond_0

    .line 1447
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1448
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .end local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1449
    .restart local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1451
    :cond_0
    return-object v0
.end method

.method public varargs newInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;[Ljava/lang/Object;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .prologue
    .line 1343
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newInvokeDynamicItem(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;[Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    return v0
.end method

.method varargs newInvokeDynamicItem(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;[Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .locals 21
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .prologue
    .line 1259
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1260
    .local v7, "bootstrapMethods":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    if-nez v7, :cond_0

    .line 1261
    new-instance v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .end local v7    # "bootstrapMethods":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    invoke-direct {v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1264
    .restart local v7    # "bootstrapMethods":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    :cond_0
    iget v14, v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 1266
    .local v14, "position":I
    invoke-virtual/range {p3 .. p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;->hashCode()I

    move-result v10

    .line 1267
    .local v10, "hashCode":I
    move-object/from16 v0, p3

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;->tag:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;->owner:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;->desc:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1270
    move-object/from16 v0, p4

    array-length v5, v0

    .line 1271
    .local v5, "argsLength":I
    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1273
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v5, :cond_1

    .line 1274
    aget-object v8, p4, v11

    .line 1275
    .local v8, "bsmArg":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v17

    xor-int v10, v10, v17

    .line 1276
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newConst(Ljava/lang/Object;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1273
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1279
    .end local v8    # "bsmArg":Ljava/lang/Object;
    :cond_1
    iget-object v9, v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    .line 1280
    .local v9, "data":[B
    add-int/lit8 v17, v5, 0x2

    shl-int/lit8 v12, v17, 0x1

    .line 1281
    .local v12, "length":I
    const v17, 0x7fffffff

    and-int v10, v10, v17

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    rem-int v18, v10, v18

    aget-object v15, v17, v18

    .line 1283
    .local v15, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    :goto_1
    if-eqz v15, :cond_5

    .line 1284
    iget v0, v15, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    move/from16 v17, v0

    const/16 v18, 0x21

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    iget v0, v15, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v10, :cond_3

    .line 1285
    :cond_2
    iget-object v15, v15, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 1286
    goto :goto_1

    .line 1291
    :cond_3
    iget v0, v15, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    move/from16 v16, v0

    .line 1292
    .local v16, "resultPosition":I
    const/4 v13, 0x0

    .local v13, "p":I
    :goto_2
    if-ge v13, v12, :cond_5

    .line 1293
    add-int v17, v14, v13

    aget-byte v17, v9, v17

    add-int v18, v16, v13

    aget-byte v18, v9, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 1294
    iget-object v15, v15, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 1295
    goto :goto_1

    .line 1292
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1302
    .end local v13    # "p":I
    .end local v16    # "resultPosition":I
    :cond_5
    if-eqz v15, :cond_7

    .line 1303
    iget v6, v15, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    .line 1304
    .local v6, "bootstrapMethodIndex":I
    iput v14, v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 1313
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v15

    .line 1315
    if-nez v15, :cond_6

    .line 1316
    const/16 v17, 0x12

    invoke-virtual/range {p0 .. p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v6, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put122(III)V

    .line 1317
    new-instance v15, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .end local v15    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1318
    .restart local v15    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1320
    :cond_6
    return-object v15

    .line 1306
    .end local v6    # "bootstrapMethodIndex":I
    :cond_7
    move-object/from16 v0, p0

    iget v6, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->bootstrapMethodsCount:I

    add-int/lit8 v17, v6, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->bootstrapMethodsCount:I

    .line 1307
    .restart local v6    # "bootstrapMethodIndex":I
    new-instance v15, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .end local v15    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    invoke-direct {v15, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>(I)V

    .line 1308
    .restart local v15    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    invoke-virtual {v15, v14, v10}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(II)V

    .line 1309
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    goto :goto_3
.end method

.method newLong(J)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 1482
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-virtual {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(J)V

    .line 1483
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1484
    .local v0, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    if-nez v0, :cond_0

    .line 1485
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putLong(J)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1486
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .end local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1487
    .restart local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    .line 1488
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1490
    :cond_0
    return-object v0
.end method

.method public newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "itf"    # Z

    .prologue
    .line 1432
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    return v0
.end method

.method newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .locals 4
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "itf"    # Z

    .prologue
    .line 1403
    if-eqz p4, :cond_1

    const/16 v1, 0xb

    .line 1404
    .local v1, "type":I
    :goto_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-virtual {v2, v1, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1406
    .local v0, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    if-nez v0, :cond_0

    .line 1407
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put122(III)V

    .line 1408
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .end local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key3:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v0, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1409
    .restart local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1411
    :cond_0
    return-object v0

    .line 1403
    .end local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .end local v1    # "type":I
    :cond_1
    const/16 v1, 0xa

    goto :goto_0
.end method

.method public newMethodType(Ljava/lang/String;)I
    .locals 1
    .param p1, "methodDesc"    # Ljava/lang/String;

    .prologue
    .line 1167
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newMethodTypeItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    return v0
.end method

.method newMethodTypeItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .locals 4
    .param p1, "methodDesc"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x10

    .line 1145
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-virtual {v1, v3, p1, v2, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1147
    .local v0, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    if-nez v0, :cond_0

    .line 1148
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1149
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .end local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1150
    .restart local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1152
    :cond_0
    return-object v0
.end method

.method public newNameType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 1545
    invoke-virtual {p0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    return v0
.end method

.method newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xc

    .line 1559
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, p2, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1561
    .local v0, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    if-nez v0, :cond_0

    .line 1562
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v3, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put122(III)V

    .line 1563
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .end local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key2:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1564
    .restart local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1566
    :cond_0
    return-object v0
.end method

.method public newUTF8(Ljava/lang/String;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1089
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-virtual {v1, v2, p1, v3, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->get(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1091
    .local v0, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    if-nez v0, :cond_0

    .line 1092
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putUTF8(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1093
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .end local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->key:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1094
    .restart local v0    # "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1096
    :cond_0
    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    return v1
.end method

.method public toByteArray()[B
    .locals 17

    .prologue
    .line 811
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    const v2, 0xffff

    if-le v1, v2, :cond_0

    .line 812
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Class file too large!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 815
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->interfaceCount:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v16, v1, 0x18

    .line 816
    .local v16, "size":I
    const/4 v14, 0x0

    .line 817
    .local v14, "nbFields":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->firstField:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;

    .line 818
    .local v9, "fb":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;
    :goto_0
    if-eqz v9, :cond_1

    .line 819
    add-int/lit8 v14, v14, 0x1

    .line 820
    invoke-virtual {v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;->getSize()I

    move-result v1

    add-int v16, v16, v1

    .line 821
    iget-object v9, v9, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;->fv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;

    .end local v9    # "fb":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;
    check-cast v9, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;

    .restart local v9    # "fb":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;
    goto :goto_0

    .line 823
    :cond_1
    const/4 v15, 0x0

    .line 824
    .local v15, "nbMethods":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->firstMethod:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;

    .line 825
    .local v13, "mb":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;
    :goto_1
    if-eqz v13, :cond_2

    .line 826
    add-int/lit8 v15, v15, 0x1

    .line 827
    invoke-virtual {v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getSize()I

    move-result v1

    add-int v16, v16, v1

    .line 828
    iget-object v13, v13, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .end local v13    # "mb":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;
    check-cast v13, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;

    .restart local v13    # "mb":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;
    goto :goto_1

    .line 830
    :cond_2
    const/4 v8, 0x0

    .line 831
    .local v8, "attributeCount":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v1, :cond_3

    .line 834
    add-int/lit8 v8, v8, 0x1

    .line 835
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int v16, v16, v1

    .line 836
    const-string v1, "BootstrapMethods"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 838
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->signature:I

    if-eqz v1, :cond_4

    .line 839
    add-int/lit8 v8, v8, 0x1

    .line 840
    add-int/lit8 v16, v16, 0x8

    .line 841
    const-string v1, "Signature"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 843
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->sourceFile:I

    if-eqz v1, :cond_5

    .line 844
    add-int/lit8 v8, v8, 0x1

    .line 845
    add-int/lit8 v16, v16, 0x8

    .line 846
    const-string v1, "SourceFile"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 848
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->sourceDebug:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v1, :cond_6

    .line 849
    add-int/lit8 v8, v8, 0x1

    .line 850
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->sourceDebug:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x6

    add-int v16, v16, v1

    .line 851
    const-string v1, "SourceDebugExtension"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 853
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->enclosingMethodOwner:I

    if-eqz v1, :cond_7

    .line 854
    add-int/lit8 v8, v8, 0x1

    .line 855
    add-int/lit8 v16, v16, 0xa

    .line 856
    const-string v1, "EnclosingMethod"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 858
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->access:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    .line 859
    add-int/lit8 v8, v8, 0x1

    .line 860
    add-int/lit8 v16, v16, 0x6

    .line 861
    const-string v1, "Deprecated"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 863
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->access:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_a

    .line 864
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->version:I

    const v2, 0xffff

    and-int/2addr v1, v2

    const/16 v2, 0x31

    if-lt v1, v2, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->access:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    .line 866
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 867
    add-int/lit8 v16, v16, 0x6

    .line 868
    const-string v1, "Synthetic"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 871
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v1, :cond_b

    .line 872
    add-int/lit8 v8, v8, 0x1

    .line 873
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int v16, v16, v1

    .line 874
    const-string v1, "InnerClasses"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 876
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->anns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v1, :cond_c

    .line 877
    add-int/lit8 v8, v8, 0x1

    .line 878
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->anns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int v16, v16, v1

    .line 879
    const-string v1, "RuntimeVisibleAnnotations"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 881
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->ianns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v1, :cond_d

    .line 882
    add-int/lit8 v8, v8, 0x1

    .line 883
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->ianns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int v16, v16, v1

    .line 884
    const-string v1, "RuntimeInvisibleAnnotations"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 886
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->tanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v1, :cond_e

    .line 887
    add-int/lit8 v8, v8, 0x1

    .line 888
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->tanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int v16, v16, v1

    .line 889
    const-string v1, "RuntimeVisibleTypeAnnotations"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 891
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->itanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v1, :cond_f

    .line 892
    add-int/lit8 v8, v8, 0x1

    .line 893
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->itanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int v16, v16, v1

    .line 894
    const-string v1, "RuntimeInvisibleTypeAnnotations"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 896
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->attrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    if-eqz v1, :cond_10

    .line 897
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->attrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->getCount()I

    move-result v1

    add-int/2addr v8, v1

    .line 898
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->attrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->getSize(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;[BIII)I

    move-result v1

    add-int v16, v16, v1

    .line 900
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int v16, v16, v1

    .line 903
    new-instance v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move/from16 v0, v16

    invoke-direct {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>(I)V

    .line 904
    .local v7, "out":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    const v1, -0x35014542    # -8346975.0f

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->version:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 905
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v4, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 906
    const/high16 v1, 0x60000

    move-object/from16 v0, p0

    iget v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->access:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x40

    or-int v12, v1, v2

    .line 908
    .local v12, "mask":I
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->access:I

    xor-int/lit8 v2, v12, -0x1

    and-int/2addr v1, v2

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->name:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->superName:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 909
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->interfaceCount:I

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 910
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->interfaceCount:I

    if-ge v10, v1, :cond_11

    .line 911
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->interfaces:[I

    aget v1, v1, v10

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 910
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 913
    :cond_11
    invoke-virtual {v7, v14}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 914
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->firstField:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;

    .line 915
    :goto_3
    if-eqz v9, :cond_12

    .line 916
    invoke-virtual {v9, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 917
    iget-object v9, v9, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;->fv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;

    .end local v9    # "fb":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;
    check-cast v9, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;

    .restart local v9    # "fb":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;
    goto :goto_3

    .line 919
    :cond_12
    invoke-virtual {v7, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 920
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->firstMethod:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;

    .line 921
    :goto_4
    if-eqz v13, :cond_13

    .line 922
    invoke-virtual {v13, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 923
    iget-object v13, v13, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .end local v13    # "mb":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;
    check-cast v13, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;

    .restart local v13    # "mb":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;
    goto :goto_4

    .line 925
    :cond_13
    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 926
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v1, :cond_14

    .line 927
    const-string v1, "BootstrapMethods"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 928
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->bootstrapMethodsCount:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 930
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-virtual {v7, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 932
    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->signature:I

    if-eqz v1, :cond_15

    .line 933
    const-string v1, "Signature"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->signature:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 935
    :cond_15
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->sourceFile:I

    if-eqz v1, :cond_16

    .line 936
    const-string v1, "SourceFile"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->sourceFile:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 938
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->sourceDebug:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v1, :cond_17

    .line 939
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->sourceDebug:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v11, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 940
    .local v11, "len":I
    const-string v1, "SourceDebugExtension"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 941
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->sourceDebug:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 943
    .end local v11    # "len":I
    :cond_17
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->enclosingMethodOwner:I

    if-eqz v1, :cond_18

    .line 944
    const-string v1, "EnclosingMethod"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 945
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->enclosingMethodOwner:I

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->enclosingMethod:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 947
    :cond_18
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->access:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_19

    .line 948
    const-string v1, "Deprecated"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 950
    :cond_19
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->access:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1b

    .line 951
    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->version:I

    const v2, 0xffff

    and-int/2addr v1, v2

    const/16 v2, 0x31

    if-lt v1, v2, :cond_1a

    move-object/from16 v0, p0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->access:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1b

    .line 953
    :cond_1a
    const-string v1, "Synthetic"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 956
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v1, :cond_1c

    .line 957
    const-string v1, "InnerClasses"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 958
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->innerClassesCount:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 959
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-virtual {v7, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 961
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->anns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v1, :cond_1d

    .line 962
    const-string v1, "RuntimeVisibleAnnotations"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 963
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->anns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v1, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 965
    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->ianns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v1, :cond_1e

    .line 966
    const-string v1, "RuntimeInvisibleAnnotations"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 967
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->ianns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v1, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 969
    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->tanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v1, :cond_1f

    .line 970
    const-string v1, "RuntimeVisibleTypeAnnotations"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 971
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->tanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v1, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 973
    :cond_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->itanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v1, :cond_20

    .line 974
    const-string v1, "RuntimeInvisibleTypeAnnotations"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 975
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->itanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v1, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 977
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->attrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    if-eqz v1, :cond_21

    .line 978
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->attrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;[BIIILorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 980
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->invalidFrames:Z

    if-eqz v1, :cond_22

    .line 981
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->anns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 982
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->ianns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 983
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->attrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .line 984
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->innerClassesCount:I

    .line 985
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 986
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->bootstrapMethodsCount:I

    .line 987
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 988
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->firstField:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;

    .line 989
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->lastField:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;

    .line 990
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->firstMethod:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;

    .line 991
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->lastMethod:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;

    .line 992
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->computeMaxs:Z

    .line 993
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->computeFrames:Z

    .line 994
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->invalidFrames:Z

    .line 995
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;

    iget-object v2, v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    invoke-direct {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;-><init>([B)V

    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;I)V

    .line 996
    invoke-virtual/range {p0 .. p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->toByteArray()[B

    move-result-object v1

    .line 998
    :goto_5
    return-object v1

    :cond_22
    iget-object v1, v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    goto :goto_5
.end method

.method public final visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .prologue
    .line 667
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->version:I

    .line 668
    iput p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->access:I

    .line 669
    invoke-virtual {p0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->name:I

    .line 670
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->thisName:Ljava/lang/String;

    .line 671
    if-eqz p4, :cond_0

    .line 672
    invoke-virtual {p0, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->signature:I

    .line 674
    :cond_0
    if-nez p5, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->superName:I

    .line 675
    if-eqz p6, :cond_2

    array-length v1, p6

    if-lez v1, :cond_2

    .line 676
    array-length v1, p6

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->interfaceCount:I

    .line 677
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->interfaceCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->interfaces:[I

    .line 678
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->interfaceCount:I

    if-ge v0, v1, :cond_2

    .line 679
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->interfaces:[I

    aget-object v2, p6, v0

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 674
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0, p5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 682
    :cond_2
    return-void
.end method

.method public final visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 6
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 710
    new-instance v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    .line 712
    .local v3, "bv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 713
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;I)V

    .line 714
    .local v0, "aw":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
    if-eqz p2, :cond_0

    .line 715
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->anns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 716
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->anns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 721
    :goto_0
    return-object v0

    .line 718
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->ianns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 719
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->ianns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    goto :goto_0
.end method

.method public final visitAttribute(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .prologue
    .line 749
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->attrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .line 750
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->attrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .line 751
    return-void
.end method

.method public final visitEnd()V
    .locals 0

    .prologue
    .line 799
    return-void
.end method

.method public final visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;
    .locals 7
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .prologue
    .line 787
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldWriter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .prologue
    const/4 v2, 0x0

    .line 756
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-nez v1, :cond_0

    .line 757
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 769
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 770
    .local v0, "nameItem":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    if-nez v1, :cond_1

    .line 771
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->innerClassesCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->innerClassesCount:I

    .line 772
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 773
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-nez p2, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 774
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-nez p3, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 775
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->innerClasses:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v1, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 776
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->innerClassesCount:I

    iput v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    .line 782
    :cond_1
    return-void

    .line 773
    :cond_2
    invoke-virtual {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 774
    :cond_3
    invoke-virtual {p0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    goto :goto_1
.end method

.method public final visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .locals 9
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .prologue
    .line 793
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;

    iget-boolean v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->computeMaxs:Z

    iget-boolean v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->computeFrames:Z

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public final visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    .line 698
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->enclosingMethodOwner:I

    .line 699
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 700
    invoke-virtual {p0, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->enclosingMethod:I

    .line 702
    :cond_0
    return-void
.end method

.method public final visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .prologue
    .line 686
    if-eqz p1, :cond_0

    .line 687
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->sourceFile:I

    .line 689
    :cond_0
    if-eqz p2, :cond_1

    .line 690
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, p2, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->encodeUTF8(Ljava/lang/String;II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->sourceDebug:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 693
    :cond_1
    return-void
.end method

.method public final visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 6
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .prologue
    .line 730
    new-instance v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    .line 732
    .local v3, "bv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    invoke-static {p1, p2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->putTarget(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 734
    invoke-virtual {p0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 735
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    const/4 v2, 0x1

    iget v1, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v5, v1, -0x2

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;I)V

    .line 737
    .local v0, "aw":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
    if-eqz p4, :cond_0

    .line 738
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->tanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 739
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->tanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 744
    :goto_0
    return-object v0

    .line 741
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->itanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 742
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->itanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    goto :goto_0
.end method
