.class final Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# static fields
.field static final ARRAY_OF:I = 0x10000000

.field static final BASE:I = 0x1000000

.field static final BASE_KIND:I = 0xff00000

.field static final BASE_VALUE:I = 0xfffff

.field static final BOOLEAN:I = 0x1000009

.field static final BYTE:I = 0x100000a

.field static final CHAR:I = 0x100000b

.field static final DIM:I = -0x10000000

.field static final DOUBLE:I = 0x1000003

.field static final ELEMENT_OF:I = -0x10000000

.field static final FLOAT:I = 0x1000002

.field static final INTEGER:I = 0x1000001

.field static final KIND:I = 0xf000000

.field private static final LOCAL:I = 0x2000000

.field static final LONG:I = 0x1000004

.field static final NULL:I = 0x1000005

.field static final OBJECT:I = 0x1700000

.field static final SHORT:I = 0x100000c

.field static final SIZE:[I

.field private static final STACK:I = 0x3000000

.field static final TOP:I = 0x1000000

.field static final TOP_IF_LONG_OR_DOUBLE:I = 0x800000

.field static final UNINITIALIZED:I = 0x1800000

.field static final UNINITIALIZED_THIS:I = 0x1000006

.field static final VALUE:I = 0x7fffff


# instance fields
.field private initializationCount:I

.field private initializations:[I

.field inputLocals:[I

.field inputStack:[I

.field private outputLocals:[I

.field private outputStack:[I

.field private outputStackTop:I

.field owner:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 239
    const/16 v3, 0xca

    new-array v0, v3, [I

    .line 240
    .local v0, "b":[I
    const-string v2, "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE"

    .line 244
    .local v2, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 245
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x45

    aput v3, v0, v1

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_0
    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->SIZE:[I

    .line 461
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private get(I)I
    .locals 3
    .param p1, "local"    # I

    .prologue
    const/high16 v2, 0x2000000

    .line 531
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputLocals:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputLocals:[I

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 534
    :cond_0
    or-int v0, v2, p1

    .line 542
    :cond_1
    :goto_0
    return v0

    .line 536
    :cond_2
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputLocals:[I

    aget v0, v1, p1

    .line 537
    .local v0, "type":I
    if-nez v0, :cond_1

    .line 540
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputLocals:[I

    or-int v0, v2, p1

    aput v0, v1, p1

    goto :goto_0
.end method

.method private init(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;I)I
    .locals 10
    .param p1, "cw"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;
    .param p2, "t"    # I

    .prologue
    const/high16 v8, 0x1700000

    const v9, 0x7fffff

    .line 775
    const v6, 0x1000006

    if-ne p2, v6, :cond_2

    .line 776
    iget-object v6, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->thisName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v6

    or-int v3, v8, v6

    .line 783
    .local v3, "s":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->initializationCount:I

    if-ge v1, v6, :cond_1

    .line 784
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->initializations:[I

    aget v5, v6, v1

    .line 785
    .local v5, "u":I
    const/high16 v6, -0x10000000

    and-int v0, v5, v6

    .line 786
    .local v0, "dim":I
    const/high16 v6, 0xf000000

    and-int v2, v5, v6

    .line 787
    .local v2, "kind":I
    const/high16 v6, 0x2000000

    if-ne v2, v6, :cond_3

    .line 788
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputLocals:[I

    and-int v7, v5, v9

    aget v6, v6, v7

    add-int v5, v0, v6

    .line 792
    :cond_0
    :goto_2
    if-ne p2, v5, :cond_4

    move p2, v3

    .line 796
    .end local v0    # "dim":I
    .end local v1    # "j":I
    .end local v2    # "kind":I
    .end local v3    # "s":I
    .end local v5    # "u":I
    .end local p2    # "t":I
    :cond_1
    return p2

    .line 777
    .restart local p2    # "t":I
    :cond_2
    const/high16 v6, -0x100000

    and-int/2addr v6, p2

    const/high16 v7, 0x1800000

    if-ne v6, v7, :cond_1

    .line 778
    iget-object v6, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    const v7, 0xfffff

    and-int/2addr v7, p2

    aget-object v6, v6, v7

    iget-object v4, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    .line 779
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v6

    or-int v3, v8, v6

    .line 780
    .restart local v3    # "s":I
    goto :goto_0

    .line 789
    .end local v4    # "type":Ljava/lang/String;
    .restart local v0    # "dim":I
    .restart local v1    # "j":I
    .restart local v2    # "kind":I
    .restart local v5    # "u":I
    :cond_3
    const/high16 v6, 0x3000000

    if-ne v2, v6, :cond_0

    .line 790
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputStack:[I

    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputStack:[I

    array-length v7, v7

    and-int v8, v5, v9

    sub-int/2addr v7, v8

    aget v6, v6, v7

    add-int v5, v0, v6

    goto :goto_2

    .line 783
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private init(I)V
    .locals 5
    .param p1, "var"    # I

    .prologue
    const/4 v4, 0x0

    .line 749
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->initializations:[I

    if-nez v2, :cond_0

    .line 750
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->initializations:[I

    .line 752
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->initializations:[I

    array-length v0, v2

    .line 753
    .local v0, "n":I
    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->initializationCount:I

    if-lt v2, v0, :cond_1

    .line 754
    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->initializationCount:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v0, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v1, v2, [I

    .line 755
    .local v1, "t":[I
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->initializations:[I

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 756
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->initializations:[I

    .line 759
    .end local v1    # "t":[I
    :cond_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->initializations:[I

    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->initializationCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->initializationCount:I

    aput p1, v2, v3

    .line 760
    return-void
.end method

.method private static merge(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;I[II)Z
    .locals 10
    .param p0, "cw"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;
    .param p1, "t"    # I
    .param p2, "types"    # [I
    .param p3, "index"    # I

    .prologue
    const/high16 v9, 0xff00000

    const v6, 0x1000005

    const/4 v5, 0x0

    const/high16 v8, -0x10000000

    const/high16 v7, 0x1700000

    .line 1397
    aget v1, p2, p3

    .line 1398
    .local v1, "u":I
    if-ne v1, p1, :cond_1

    .line 1456
    :cond_0
    :goto_0
    return v5

    .line 1402
    :cond_1
    const v4, 0xfffffff

    and-int/2addr v4, p1

    if-ne v4, v6, :cond_2

    .line 1403
    if-eq v1, v6, :cond_0

    .line 1406
    const p1, 0x1000005

    .line 1408
    :cond_2
    if-nez v1, :cond_3

    .line 1410
    aput p1, p2, p3

    .line 1411
    const/4 v5, 0x1

    goto :goto_0

    .line 1414
    :cond_3
    and-int v4, v1, v9

    if-eq v4, v7, :cond_4

    and-int v4, v1, v8

    if-eqz v4, :cond_a

    .line 1416
    :cond_4
    if-eq p1, v6, :cond_0

    .line 1419
    const/high16 v4, -0x100000

    and-int/2addr v4, p1

    const/high16 v6, -0x100000

    and-int/2addr v6, v1

    if-ne v4, v6, :cond_6

    .line 1421
    and-int v4, v1, v9

    if-ne v4, v7, :cond_5

    .line 1425
    and-int v4, p1, v8

    or-int/2addr v4, v7

    const v6, 0xfffff

    and-int/2addr v6, p1

    const v7, 0xfffff

    and-int/2addr v7, v1

    .line 1426
    invoke-virtual {p0, v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->getMergedType(II)I

    move-result v6

    or-int v3, v4, v6

    .line 1452
    .local v3, "v":I
    :goto_1
    if-eq v1, v3, :cond_0

    .line 1453
    aput v3, p2, p3

    .line 1454
    const/4 v5, 0x1

    goto :goto_0

    .line 1430
    .end local v3    # "v":I
    :cond_5
    const-string v4, "java/lang/Object"

    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v4

    or-int v3, v7, v4

    .restart local v3    # "v":I
    goto :goto_1

    .line 1432
    .end local v3    # "v":I
    :cond_6
    and-int v4, p1, v9

    if-eq v4, v7, :cond_7

    and-int v4, p1, v8

    if-eqz v4, :cond_9

    .line 1436
    :cond_7
    and-int v0, p1, v8

    .line 1437
    .local v0, "tdim":I
    and-int v2, v1, v8

    .line 1438
    .local v2, "udim":I
    if-eq v2, v0, :cond_8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_2
    or-int/2addr v4, v7

    const-string v6, "java/lang/Object"

    .line 1439
    invoke-virtual {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v6

    or-int v3, v4, v6

    .line 1440
    .restart local v3    # "v":I
    goto :goto_1

    .end local v3    # "v":I
    :cond_8
    move v4, v5

    .line 1438
    goto :goto_2

    .line 1442
    .end local v0    # "tdim":I
    .end local v2    # "udim":I
    :cond_9
    const/high16 v3, 0x1000000

    .restart local v3    # "v":I
    goto :goto_1

    .line 1444
    .end local v3    # "v":I
    :cond_a
    if-ne v1, v6, :cond_d

    .line 1447
    and-int v4, p1, v9

    if-eq v4, v7, :cond_b

    and-int v4, p1, v8

    if-eqz v4, :cond_c

    :cond_b
    move v3, p1

    .restart local v3    # "v":I
    :goto_3
    goto :goto_1

    .end local v3    # "v":I
    :cond_c
    const/high16 v3, 0x1000000

    goto :goto_3

    .line 1450
    :cond_d
    const/high16 v3, 0x1000000

    .restart local v3    # "v":I
    goto :goto_1
.end method

.method private pop()I
    .locals 3

    .prologue
    .line 695
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStackTop:I

    if-lez v0, :cond_0

    .line 696
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStack:[I

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStackTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStackTop:I

    aget v0, v0, v1

    .line 699
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3000000

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->owner:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->inputStackTop:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->inputStackTop:I

    neg-int v1, v2

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private pop(I)V
    .locals 3
    .param p1, "elements"    # I

    .prologue
    .line 710
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStackTop:I

    if-lt v0, p1, :cond_0

    .line 711
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStackTop:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStackTop:I

    .line 719
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->owner:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->inputStackTop:I

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStackTop:I

    sub-int v2, p1, v2

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->inputStackTop:I

    .line 717
    const/4 v0, 0x0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStackTop:I

    goto :goto_0
.end method

.method private pop(Ljava/lang/String;)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 730
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 731
    .local v0, "c":C
    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 732
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 738
    :goto_0
    return-void

    .line 733
    :cond_0
    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x44

    if-ne v0, v1, :cond_2

    .line 734
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    goto :goto_0

    .line 736
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    goto :goto_0
.end method

.method private push(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    .line 577
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStack:[I

    if-nez v3, :cond_0

    .line 578
    const/16 v3, 0xa

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStack:[I

    .line 580
    :cond_0
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStack:[I

    array-length v0, v3

    .line 581
    .local v0, "n":I
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStackTop:I

    if-lt v3, v0, :cond_1

    .line 582
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStackTop:I

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v0, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [I

    .line 583
    .local v1, "t":[I
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStack:[I

    invoke-static {v3, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStack:[I

    .line 587
    .end local v1    # "t":[I
    :cond_1
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStack:[I

    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStackTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStackTop:I

    aput p1, v3, v4

    .line 589
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->owner:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->inputStackTop:I

    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStackTop:I

    add-int v2, v3, v4

    .line 590
    .local v2, "top":I
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->owner:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->outputStackMax:I

    if-le v2, v3, :cond_2

    .line 591
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->owner:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iput v2, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->outputStackMax:I

    .line 593
    :cond_2
    return-void
.end method

.method private push(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "cw"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 606
    invoke-static {p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->type(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Ljava/lang/String;)I

    move-result v0

    .line 607
    .local v0, "type":I
    if-eqz v0, :cond_1

    .line 608
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 609
    const v1, 0x1000004

    if-eq v0, v1, :cond_0

    const v1, 0x1000003

    if-ne v0, v1, :cond_1

    .line 610
    :cond_0
    const/high16 v1, 0x1000000

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 613
    :cond_1
    return-void
.end method

.method private set(II)V
    .locals 5
    .param p1, "local"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 556
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputLocals:[I

    if-nez v2, :cond_0

    .line 557
    const/16 v2, 0xa

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputLocals:[I

    .line 559
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputLocals:[I

    array-length v0, v2

    .line 560
    .local v0, "n":I
    if-lt p1, v0, :cond_1

    .line 561
    add-int/lit8 v2, p1, 0x1

    mul-int/lit8 v3, v0, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v1, v2, [I

    .line 562
    .local v1, "t":[I
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputLocals:[I

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputLocals:[I

    .line 566
    .end local v1    # "t":[I
    :cond_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputLocals:[I

    aput p2, v2, p1

    .line 567
    return-void
.end method

.method private static type(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Ljava/lang/String;)I
    .locals 8
    .param p0, "cw"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    const/high16 v7, 0x1700000

    const/4 v4, 0x0

    .line 626
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_0

    const/16 v5, 0x29

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 627
    .local v2, "index":I
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 650
    add-int/lit8 v1, v2, 0x1

    .line 651
    .local v1, "dims":I
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_1

    .line 652
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "dims":I
    .end local v2    # "index":I
    :cond_0
    move v2, v4

    .line 626
    goto :goto_0

    .line 635
    .restart local v2    # "index":I
    :sswitch_0
    const v4, 0x1000001

    .line 685
    :goto_2
    :sswitch_1
    return v4

    .line 637
    :sswitch_2
    const v4, 0x1000002

    goto :goto_2

    .line 639
    :sswitch_3
    const v4, 0x1000004

    goto :goto_2

    .line 641
    :sswitch_4
    const v4, 0x1000003

    goto :goto_2

    .line 644
    :sswitch_5
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 645
    .local v3, "t":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v4, v7

    goto :goto_2

    .line 654
    .end local v3    # "t":Ljava/lang/String;
    .restart local v1    # "dims":I
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_1

    .line 682
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 683
    .restart local v3    # "t":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v4

    or-int v0, v7, v4

    .line 685
    .end local v3    # "t":Ljava/lang/String;
    .local v0, "data":I
    :goto_3
    sub-int v4, v1, v2

    shl-int/lit8 v4, v4, 0x1c

    or-int/2addr v4, v0

    goto :goto_2

    .line 656
    .end local v0    # "data":I
    :sswitch_6
    const v0, 0x1000009

    .line 657
    .restart local v0    # "data":I
    goto :goto_3

    .line 659
    .end local v0    # "data":I
    :sswitch_7
    const v0, 0x100000b

    .line 660
    .restart local v0    # "data":I
    goto :goto_3

    .line 662
    .end local v0    # "data":I
    :sswitch_8
    const v0, 0x100000a

    .line 663
    .restart local v0    # "data":I
    goto :goto_3

    .line 665
    .end local v0    # "data":I
    :sswitch_9
    const v0, 0x100000c

    .line 666
    .restart local v0    # "data":I
    goto :goto_3

    .line 668
    .end local v0    # "data":I
    :sswitch_a
    const v0, 0x1000001

    .line 669
    .restart local v0    # "data":I
    goto :goto_3

    .line 671
    .end local v0    # "data":I
    :sswitch_b
    const v0, 0x1000002

    .line 672
    .restart local v0    # "data":I
    goto :goto_3

    .line 674
    .end local v0    # "data":I
    :sswitch_c
    const v0, 0x1000004

    .line 675
    .restart local v0    # "data":I
    goto :goto_3

    .line 677
    .end local v0    # "data":I
    :sswitch_d
    const v0, 0x1000003

    .line 678
    .restart local v0    # "data":I
    goto :goto_3

    .line 627
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x44 -> :sswitch_4
        0x46 -> :sswitch_2
        0x49 -> :sswitch_0
        0x4a -> :sswitch_3
        0x4c -> :sswitch_5
        0x53 -> :sswitch_0
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch

    .line 654
    :sswitch_data_1
    .sparse-switch
        0x42 -> :sswitch_8
        0x43 -> :sswitch_7
        0x44 -> :sswitch_d
        0x46 -> :sswitch_b
        0x49 -> :sswitch_a
        0x4a -> :sswitch_c
        0x53 -> :sswitch_9
        0x5a -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method execute(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V
    .locals 10
    .param p1, "opcode"    # I
    .param p2, "arg"    # I
    .param p3, "cw"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;
    .param p4, "item"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .prologue
    const v9, 0x1000001

    const/4 v8, 0x2

    const v7, 0x1000004

    const/4 v5, 0x1

    const/high16 v6, 0x1000000

    .line 851
    packed-switch p1, :pswitch_data_0

    .line 1265
    :pswitch_0
    invoke-direct {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 1266
    iget-object v5, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Ljava/lang/String;)V

    .line 1269
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 864
    :pswitch_2
    const v5, 0x1000005

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto :goto_0

    .line 876
    :pswitch_3
    invoke-direct {p0, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto :goto_0

    .line 881
    :pswitch_4
    invoke-direct {p0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 882
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto :goto_0

    .line 888
    :pswitch_5
    const v5, 0x1000002

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto :goto_0

    .line 893
    :pswitch_6
    const v5, 0x1000003

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 894
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto :goto_0

    .line 897
    :pswitch_7
    iget v5, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    packed-switch v5, :pswitch_data_1

    .line 923
    :pswitch_8
    const/high16 v5, 0x1700000

    const-string v6, "java/lang/invoke/MethodHandle"

    invoke-virtual {p3, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v5, v6

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto :goto_0

    .line 899
    :pswitch_9
    invoke-direct {p0, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto :goto_0

    .line 902
    :pswitch_a
    invoke-direct {p0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 903
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto :goto_0

    .line 906
    :pswitch_b
    const v5, 0x1000002

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto :goto_0

    .line 909
    :pswitch_c
    const v5, 0x1000003

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 910
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto :goto_0

    .line 913
    :pswitch_d
    const/high16 v5, 0x1700000

    const-string v6, "java/lang/Class"

    invoke-virtual {p3, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v5, v6

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto :goto_0

    .line 916
    :pswitch_e
    const/high16 v5, 0x1700000

    const-string v6, "java/lang/String"

    invoke-virtual {p3, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v5, v6

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto :goto_0

    .line 919
    :pswitch_f
    const/high16 v5, 0x1700000

    const-string v6, "java/lang/invoke/MethodType"

    invoke-virtual {p3, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v5, v6

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto :goto_0

    .line 927
    :pswitch_10
    invoke-direct {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->get(I)I

    move-result v5

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto :goto_0

    .line 933
    :pswitch_11
    invoke-direct {p0, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 934
    invoke-direct {p0, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 938
    :pswitch_12
    invoke-direct {p0, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 939
    invoke-direct {p0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 940
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 943
    :pswitch_13
    invoke-direct {p0, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 944
    const v5, 0x1000002

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 948
    :pswitch_14
    invoke-direct {p0, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 949
    const v5, 0x1000003

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 950
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 953
    :pswitch_15
    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 954
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v1

    .line 955
    .local v1, "t1":I
    const/high16 v5, -0x10000000

    add-int/2addr v5, v1

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 960
    .end local v1    # "t1":I
    :pswitch_16
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v1

    .line 961
    .restart local v1    # "t1":I
    invoke-direct {p0, p2, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->set(II)V

    .line 962
    if-lez p2, :cond_0

    .line 963
    add-int/lit8 v5, p2, -0x1

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->get(I)I

    move-result v2

    .line 965
    .local v2, "t2":I
    if-eq v2, v7, :cond_1

    const v5, 0x1000003

    if-ne v2, v5, :cond_2

    .line 966
    :cond_1
    add-int/lit8 v5, p2, -0x1

    invoke-direct {p0, v5, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->set(II)V

    goto/16 :goto_0

    .line 967
    :cond_2
    const/high16 v5, 0xf000000

    and-int/2addr v5, v2

    if-eq v5, v6, :cond_0

    .line 968
    add-int/lit8 v5, p2, -0x1

    const/high16 v6, 0x800000

    or-int/2addr v6, v2

    invoke-direct {p0, v5, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->set(II)V

    goto/16 :goto_0

    .line 974
    .end local v1    # "t1":I
    .end local v2    # "t2":I
    :pswitch_17
    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 975
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v1

    .line 976
    .restart local v1    # "t1":I
    invoke-direct {p0, p2, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->set(II)V

    .line 977
    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, v5, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->set(II)V

    .line 978
    if-lez p2, :cond_0

    .line 979
    add-int/lit8 v5, p2, -0x1

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->get(I)I

    move-result v2

    .line 981
    .restart local v2    # "t2":I
    if-eq v2, v7, :cond_3

    const v5, 0x1000003

    if-ne v2, v5, :cond_4

    .line 982
    :cond_3
    add-int/lit8 v5, p2, -0x1

    invoke-direct {p0, v5, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->set(II)V

    goto/16 :goto_0

    .line 983
    :cond_4
    const/high16 v5, 0xf000000

    and-int/2addr v5, v2

    if-eq v5, v6, :cond_0

    .line 984
    add-int/lit8 v5, p2, -0x1

    const/high16 v6, 0x800000

    or-int/2addr v6, v2

    invoke-direct {p0, v5, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->set(II)V

    goto/16 :goto_0

    .line 994
    .end local v1    # "t1":I
    .end local v2    # "t2":I
    :pswitch_18
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    goto/16 :goto_0

    .line 998
    :pswitch_19
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    goto/16 :goto_0

    .line 1017
    :pswitch_1a
    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    goto/16 :goto_0

    .line 1030
    :pswitch_1b
    invoke-direct {p0, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    goto/16 :goto_0

    .line 1033
    :pswitch_1c
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v1

    .line 1034
    .restart local v1    # "t1":I
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1035
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1038
    .end local v1    # "t1":I
    :pswitch_1d
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v1

    .line 1039
    .restart local v1    # "t1":I
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v2

    .line 1040
    .restart local v2    # "t2":I
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1041
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1042
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1045
    .end local v1    # "t1":I
    .end local v2    # "t2":I
    :pswitch_1e
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v1

    .line 1046
    .restart local v1    # "t1":I
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v2

    .line 1047
    .restart local v2    # "t2":I
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v3

    .line 1048
    .local v3, "t3":I
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1049
    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1050
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1051
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1054
    .end local v1    # "t1":I
    .end local v2    # "t2":I
    .end local v3    # "t3":I
    :pswitch_1f
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v1

    .line 1055
    .restart local v1    # "t1":I
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v2

    .line 1056
    .restart local v2    # "t2":I
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1057
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1058
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1059
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1062
    .end local v1    # "t1":I
    .end local v2    # "t2":I
    :pswitch_20
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v1

    .line 1063
    .restart local v1    # "t1":I
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v2

    .line 1064
    .restart local v2    # "t2":I
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v3

    .line 1065
    .restart local v3    # "t3":I
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1066
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1067
    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1068
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1069
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1072
    .end local v1    # "t1":I
    .end local v2    # "t2":I
    .end local v3    # "t3":I
    :pswitch_21
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v1

    .line 1073
    .restart local v1    # "t1":I
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v2

    .line 1074
    .restart local v2    # "t2":I
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v3

    .line 1075
    .restart local v3    # "t3":I
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v4

    .line 1076
    .local v4, "t4":I
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1077
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1078
    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1079
    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1080
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1081
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1084
    .end local v1    # "t1":I
    .end local v2    # "t2":I
    .end local v3    # "t3":I
    .end local v4    # "t4":I
    :pswitch_22
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v1

    .line 1085
    .restart local v1    # "t1":I
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v2

    .line 1086
    .restart local v2    # "t2":I
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1087
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1104
    .end local v1    # "t1":I
    .end local v2    # "t2":I
    :pswitch_23
    invoke-direct {p0, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 1105
    invoke-direct {p0, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1115
    :pswitch_24
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 1116
    invoke-direct {p0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1117
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1126
    :pswitch_25
    invoke-direct {p0, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 1127
    const v5, 0x1000002

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1134
    :pswitch_26
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 1135
    const v5, 0x1000003

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1136
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1141
    :pswitch_27
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 1142
    invoke-direct {p0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1143
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1146
    :pswitch_28
    invoke-direct {p0, p2, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->set(II)V

    goto/16 :goto_0

    .line 1150
    :pswitch_29
    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 1151
    invoke-direct {p0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1152
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1155
    :pswitch_2a
    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 1156
    const v5, 0x1000002

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1160
    :pswitch_2b
    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 1161
    const v5, 0x1000003

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    .line 1162
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1167
    :pswitch_2c
    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 1168
    invoke-direct {p0, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1173
    :pswitch_2d
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 1174
    invoke-direct {p0, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1178
    :pswitch_2e
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "JSR/RET are not supported with computeFrames option"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1181
    :pswitch_2f
    iget-object v5, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal3:Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1184
    :pswitch_30
    iget-object v5, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal3:Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1187
    :pswitch_31
    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(I)V

    .line 1188
    iget-object v5, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal3:Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1191
    :pswitch_32
    iget-object v5, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal3:Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(Ljava/lang/String;)V

    .line 1192
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    goto/16 :goto_0

    .line 1198
    :pswitch_33
    iget-object v5, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal3:Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(Ljava/lang/String;)V

    .line 1199
    const/16 v5, 0xb8

    if-eq p1, v5, :cond_5

    .line 1200
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    move-result v1

    .line 1201
    .restart local v1    # "t1":I
    const/16 v5, 0xb7

    if-ne p1, v5, :cond_5

    iget-object v5, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal2:Ljava/lang/String;

    const/4 v6, 0x0

    .line 1202
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_5

    .line 1203
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->init(I)V

    .line 1206
    .end local v1    # "t1":I
    :cond_5
    iget-object v5, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal3:Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1209
    :pswitch_34
    iget-object v5, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal2:Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop(Ljava/lang/String;)V

    .line 1210
    iget-object v5, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal2:Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1213
    :pswitch_35
    const/high16 v5, 0x1800000

    iget-object v6, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {p3, v6, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addUninitializedType(Ljava/lang/String;I)I

    move-result v6

    or-int/2addr v5, v6

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1216
    :pswitch_36
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    .line 1217
    packed-switch p2, :pswitch_data_2

    .line 1241
    const v5, 0x11000004

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1219
    :pswitch_37
    const v5, 0x11000009

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1222
    :pswitch_38
    const v5, 0x1100000b

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1225
    :pswitch_39
    const v5, 0x1100000a

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1228
    :pswitch_3a
    const v5, 0x1100000c

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1231
    :pswitch_3b
    const v5, 0x11000001

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1234
    :pswitch_3c
    const v5, 0x11000002

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1237
    :pswitch_3d
    const v5, 0x11000003

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1246
    :pswitch_3e
    iget-object v0, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    .line 1247
    .local v0, "s":Ljava/lang/String;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    .line 1248
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_6

    .line 1249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p3, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1251
    :cond_6
    const/high16 v5, 0x11700000

    invoke-virtual {p3, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v5, v6

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 1255
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_3f
    iget-object v0, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    .line 1256
    .restart local v0    # "s":Ljava/lang/String;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->pop()I

    .line 1257
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_7

    .line 1258
    invoke-direct {p0, p3, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1260
    :cond_7
    const/high16 v5, 0x1700000

    invoke-virtual {p3, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v5, v6

    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->push(I)V

    goto/16 :goto_0

    .line 851
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_16
        :pswitch_17
        :pswitch_16
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_23
        :pswitch_27
        :pswitch_23
        :pswitch_27
        :pswitch_23
        :pswitch_27
        :pswitch_23
        :pswitch_24
        :pswitch_23
        :pswitch_24
        :pswitch_23
        :pswitch_24
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_23
        :pswitch_25
        :pswitch_14
        :pswitch_2c
        :pswitch_29
        :pswitch_2b
        :pswitch_23
        :pswitch_12
        :pswitch_25
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2d
        :pswitch_23
        :pswitch_23
        :pswitch_2d
        :pswitch_2d
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1
        :pswitch_2e
        :pswitch_2e
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
        :pswitch_1a
        :pswitch_1b
        :pswitch_1a
        :pswitch_1
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_3e
        :pswitch_2c
        :pswitch_1a
        :pswitch_3f
        :pswitch_2c
        :pswitch_1a
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_1a
    .end packed-switch

    .line 897
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_f
    .end packed-switch

    .line 1217
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_37
        :pswitch_38
        :pswitch_3c
        :pswitch_3d
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
    .end packed-switch
.end method

.method initInputFrame(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;I)V
    .locals 8
    .param p1, "cw"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;
    .param p2, "access"    # I
    .param p3, "args"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .param p4, "maxLocals"    # I

    .prologue
    const/high16 v7, 0x1000000

    .line 814
    new-array v4, p4, [I

    iput-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputLocals:[I

    .line 815
    const/4 v4, 0x0

    new-array v4, v4, [I

    iput-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputStack:[I

    .line 816
    const/4 v0, 0x0

    .line 817
    .local v0, "i":I
    and-int/lit8 v4, p2, 0x8

    if-nez v4, :cond_0

    .line 818
    const/high16 v4, 0x80000

    and-int/2addr v4, p2

    if-nez v4, :cond_2

    .line 819
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputLocals:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/high16 v5, 0x1700000

    iget-object v6, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->thisName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v5, v6

    aput v5, v4, v0

    move v0, v1

    .line 824
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v4, p3

    if-ge v2, v4, :cond_5

    .line 825
    aget-object v4, p3, v2

    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->type(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Ljava/lang/String;)I

    move-result v3

    .line 826
    .local v3, "t":I
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputLocals:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput v3, v4, v0

    .line 827
    const v4, 0x1000004

    if-eq v3, v4, :cond_1

    const v4, 0x1000003

    if-ne v3, v4, :cond_4

    .line 828
    :cond_1
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputLocals:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput v7, v4, v1

    .line 824
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 821
    .end local v2    # "j":I
    .end local v3    # "t":I
    :cond_2
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputLocals:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    const v5, 0x1000006

    aput v5, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 831
    .end local v0    # "i":I
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :goto_3
    if-ge v1, p4, :cond_3

    .line 832
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputLocals:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput v7, v4, v1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 834
    :cond_3
    return-void

    .restart local v3    # "t":I
    :cond_4
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_2

    .end local v3    # "t":I
    :cond_5
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_3
.end method

.method merge(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;I)Z
    .locals 12
    .param p1, "cw"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;
    .param p2, "frame"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;
    .param p3, "edge"    # I

    .prologue
    .line 1287
    const/4 v0, 0x0

    .line 1290
    .local v0, "changed":Z
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputLocals:[I

    array-length v6, v10

    .line 1291
    .local v6, "nLocal":I
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputStack:[I

    array-length v7, v10

    .line 1292
    .local v7, "nStack":I
    iget-object v10, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputLocals:[I

    if-nez v10, :cond_0

    .line 1293
    new-array v10, v6, [I

    iput-object v10, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputLocals:[I

    .line 1294
    const/4 v0, 0x1

    .line 1297
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_8

    .line 1298
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputLocals:[I

    if-eqz v10, :cond_7

    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputLocals:[I

    array-length v10, v10

    if-ge v3, v10, :cond_7

    .line 1299
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputLocals:[I

    aget v8, v10, v3

    .line 1300
    .local v8, "s":I
    if-nez v8, :cond_3

    .line 1301
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputLocals:[I

    aget v9, v10, v3

    .line 1322
    .end local v8    # "s":I
    .local v9, "t":I
    :cond_1
    :goto_1
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->initializations:[I

    if-eqz v10, :cond_2

    .line 1323
    invoke-direct {p0, p1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->init(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;I)I

    move-result v9

    .line 1325
    :cond_2
    iget-object v10, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputLocals:[I

    invoke-static {p1, v9, v10, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->merge(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;I[II)Z

    move-result v10

    or-int/2addr v0, v10

    .line 1297
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1303
    .end local v9    # "t":I
    .restart local v8    # "s":I
    :cond_3
    const/high16 v10, -0x10000000

    and-int v2, v8, v10

    .line 1304
    .local v2, "dim":I
    const/high16 v10, 0xf000000

    and-int v4, v8, v10

    .line 1305
    .local v4, "kind":I
    const/high16 v10, 0x1000000

    if-ne v4, v10, :cond_4

    .line 1306
    move v9, v8

    .restart local v9    # "t":I
    goto :goto_1

    .line 1308
    .end local v9    # "t":I
    :cond_4
    const/high16 v10, 0x2000000

    if-ne v4, v10, :cond_6

    .line 1309
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputLocals:[I

    const v11, 0x7fffff

    and-int/2addr v11, v8

    aget v10, v10, v11

    add-int v9, v2, v10

    .line 1313
    .restart local v9    # "t":I
    :goto_2
    const/high16 v10, 0x800000

    and-int/2addr v10, v8

    if-eqz v10, :cond_1

    const v10, 0x1000004

    if-eq v9, v10, :cond_5

    const v10, 0x1000003

    if-ne v9, v10, :cond_1

    .line 1315
    :cond_5
    const/high16 v9, 0x1000000

    goto :goto_1

    .line 1311
    .end local v9    # "t":I
    :cond_6
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputStack:[I

    const v11, 0x7fffff

    and-int/2addr v11, v8

    sub-int v11, v7, v11

    aget v10, v10, v11

    add-int v9, v2, v10

    .restart local v9    # "t":I
    goto :goto_2

    .line 1320
    .end local v2    # "dim":I
    .end local v4    # "kind":I
    .end local v8    # "s":I
    .end local v9    # "t":I
    :cond_7
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputLocals:[I

    aget v9, v10, v3

    .restart local v9    # "t":I
    goto :goto_1

    .line 1328
    .end local v9    # "t":I
    :cond_8
    if-lez p3, :cond_b

    .line 1329
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_9

    .line 1330
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputLocals:[I

    aget v9, v10, v3

    .line 1331
    .restart local v9    # "t":I
    iget-object v10, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputLocals:[I

    invoke-static {p1, v9, v10, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->merge(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;I[II)Z

    move-result v10

    or-int/2addr v0, v10

    .line 1329
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1333
    .end local v9    # "t":I
    :cond_9
    iget-object v10, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputStack:[I

    if-nez v10, :cond_a

    .line 1334
    const/4 v10, 0x1

    new-array v10, v10, [I

    iput-object v10, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputStack:[I

    .line 1335
    const/4 v0, 0x1

    .line 1337
    :cond_a
    iget-object v10, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputStack:[I

    const/4 v11, 0x0

    invoke-static {p1, p3, v10, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->merge(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;I[II)Z

    move-result v10

    or-int/2addr v0, v10

    move v1, v0

    .line 1376
    .end local v0    # "changed":Z
    .local v1, "changed":I
    :goto_4
    return v1

    .line 1341
    .end local v1    # "changed":I
    .restart local v0    # "changed":Z
    :cond_b
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputStack:[I

    array-length v10, v10

    iget-object v11, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->owner:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v11, v11, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->inputStackTop:I

    add-int v5, v10, v11

    .line 1342
    .local v5, "nInputStack":I
    iget-object v10, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputStack:[I

    if-nez v10, :cond_c

    .line 1343
    iget v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStackTop:I

    add-int/2addr v10, v5

    new-array v10, v10, [I

    iput-object v10, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputStack:[I

    .line 1344
    const/4 v0, 0x1

    .line 1347
    :cond_c
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v5, :cond_e

    .line 1348
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputStack:[I

    aget v9, v10, v3

    .line 1349
    .restart local v9    # "t":I
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->initializations:[I

    if-eqz v10, :cond_d

    .line 1350
    invoke-direct {p0, p1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->init(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;I)I

    move-result v9

    .line 1352
    :cond_d
    iget-object v10, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputStack:[I

    invoke-static {p1, v9, v10, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->merge(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;I[II)Z

    move-result v10

    or-int/2addr v0, v10

    .line 1347
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1354
    .end local v9    # "t":I
    :cond_e
    const/4 v3, 0x0

    :goto_6
    iget v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStackTop:I

    if-ge v3, v10, :cond_14

    .line 1355
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->outputStack:[I

    aget v8, v10, v3

    .line 1356
    .restart local v8    # "s":I
    const/high16 v10, -0x10000000

    and-int v2, v8, v10

    .line 1357
    .restart local v2    # "dim":I
    const/high16 v10, 0xf000000

    and-int v4, v8, v10

    .line 1358
    .restart local v4    # "kind":I
    const/high16 v10, 0x1000000

    if-ne v4, v10, :cond_11

    .line 1359
    move v9, v8

    .line 1371
    .restart local v9    # "t":I
    :cond_f
    :goto_7
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->initializations:[I

    if-eqz v10, :cond_10

    .line 1372
    invoke-direct {p0, p1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->init(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;I)I

    move-result v9

    .line 1374
    :cond_10
    iget-object v10, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputStack:[I

    add-int v11, v5, v3

    invoke-static {p1, v9, v10, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->merge(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;I[II)Z

    move-result v10

    or-int/2addr v0, v10

    .line 1354
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1361
    .end local v9    # "t":I
    :cond_11
    const/high16 v10, 0x2000000

    if-ne v4, v10, :cond_13

    .line 1362
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputLocals:[I

    const v11, 0x7fffff

    and-int/2addr v11, v8

    aget v10, v10, v11

    add-int v9, v2, v10

    .line 1366
    .restart local v9    # "t":I
    :goto_8
    const/high16 v10, 0x800000

    and-int/2addr v10, v8

    if-eqz v10, :cond_f

    const v10, 0x1000004

    if-eq v9, v10, :cond_12

    const v10, 0x1000003

    if-ne v9, v10, :cond_f

    .line 1368
    :cond_12
    const/high16 v9, 0x1000000

    goto :goto_7

    .line 1364
    .end local v9    # "t":I
    :cond_13
    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputStack:[I

    const v11, 0x7fffff

    and-int/2addr v11, v8

    sub-int v11, v7, v11

    aget v10, v10, v11

    add-int v9, v2, v10

    .restart local v9    # "t":I
    goto :goto_8

    .end local v2    # "dim":I
    .end local v4    # "kind":I
    .end local v8    # "s":I
    .end local v9    # "t":I
    :cond_14
    move v1, v0

    .line 1376
    .restart local v1    # "changed":I
    goto/16 :goto_4
.end method
