.class Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
.source "MethodWriter.java"


# static fields
.field static final ACC_CONSTRUCTOR:I = 0x80000

.field static final APPEND_FRAME:I = 0xfc

.field static final CHOP_FRAME:I = 0xf8

.field private static final FRAMES:I = 0x0

.field static final FULL_FRAME:I = 0xff

.field private static final MAXS:I = 0x1

.field private static final NOTHING:I = 0x2

.field static final RESERVED:I = 0x80

.field static final SAME_FRAME:I = 0x0

.field static final SAME_FRAME_EXTENDED:I = 0xfb

.field static final SAME_LOCALS_1_STACK_ITEM_FRAME:I = 0x40

.field static final SAME_LOCALS_1_STACK_ITEM_FRAME_EXTENDED:I = 0xf7


# instance fields
.field private access:I

.field private annd:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

.field private anns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

.field private attrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

.field private cattrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

.field classReaderLength:I

.field classReaderOffset:I

.field private code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

.field private final compute:I

.field private ctanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

.field private currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

.field private currentLocals:I

.field final cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

.field private final desc:I

.field private final descriptor:Ljava/lang/String;

.field exceptionCount:I

.field exceptions:[I

.field private firstHandler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

.field private frame:[I

.field private frameCount:I

.field private handlerCount:I

.field private ianns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

.field private ictanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

.field private ipanns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

.field private itanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

.field private labels:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

.field private lastCodeOffset:I

.field private lastHandler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

.field private lineNumber:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

.field private lineNumberCount:I

.field private localVar:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

.field private localVarCount:I

.field private localVarType:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

.field private localVarTypeCount:I

.field private maxLocals:I

.field private maxStack:I

.field private maxStackSize:I

.field private methodParameters:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

.field private methodParametersCount:I

.field private final name:I

.field private panns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

.field private previousBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

.field private previousFrame:[I

.field private previousFrameOffset:I

.field private resize:Z

.field signature:Ljava/lang/String;

.field private stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

.field private stackSize:I

.field private subroutines:I

.field private synthetics:I

.field private tanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "cw"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "exceptions"    # [Ljava/lang/String;
    .param p7, "computeMaxs"    # Z
    .param p8, "computeFrames"    # Z

    .prologue
    .line 456
    const/high16 v2, 0x50000

    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;-><init>(I)V

    .line 231
    new-instance v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 457
    iget-object v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->firstMethod:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;

    if-nez v2, :cond_1

    .line 458
    iput-object p0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->firstMethod:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;

    .line 462
    :goto_0
    iput-object p0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->lastMethod:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;

    .line 463
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    .line 464
    iput p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->access:I

    .line 465
    const-string v2, "<init>"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->access:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->access:I

    .line 468
    :cond_0
    invoke-virtual {p1, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->name:I

    .line 469
    invoke-virtual {p1, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->desc:I

    .line 470
    iput-object p4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->descriptor:Ljava/lang/String;

    .line 472
    iput-object p5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->signature:Ljava/lang/String;

    .line 474
    if-eqz p6, :cond_2

    array-length v2, p6

    if-lez v2, :cond_2

    .line 475
    array-length v2, p6

    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->exceptionCount:I

    .line 476
    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->exceptionCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->exceptions:[I

    .line 477
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->exceptionCount:I

    if-ge v0, v2, :cond_2

    .line 478
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->exceptions:[I

    aget-object v3, p6, v0

    invoke-virtual {p1, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 460
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->lastMethod:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;

    iput-object p0, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    goto :goto_0

    .line 481
    :cond_2
    if-eqz p8, :cond_6

    const/4 v2, 0x0

    :goto_2
    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    .line 482
    if-nez p7, :cond_3

    if-eqz p8, :cond_5

    .line 484
    :cond_3
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v2

    shr-int/lit8 v1, v2, 0x2

    .line 485
    .local v1, "size":I
    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_4

    .line 486
    add-int/lit8 v1, v1, -0x1

    .line 488
    :cond_4
    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxLocals:I

    .line 489
    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentLocals:I

    .line 491
    new-instance v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    invoke-direct {v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;-><init>()V

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 492
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v3, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 493
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->visitLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 495
    .end local v1    # "size":I
    :cond_5
    return-void

    .line 481
    :cond_6
    if-eqz p7, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x2

    goto :goto_2
.end method

.method private addSuccessor(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 2
    .param p1, "info"    # I
    .param p2, "successor"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 1668
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;-><init>()V

    .line 1669
    .local v0, "b":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;
    iput p1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->info:I

    .line 1670
    iput-object p2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1672
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    .line 1673
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    .line 1674
    return-void
.end method

.method private endFrame()V
    .locals 1

    .prologue
    .line 1841
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousFrame:[I

    if-eqz v0, :cond_1

    .line 1842
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-nez v0, :cond_0

    .line 1843
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1845
    :cond_0
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->writeFrame()V

    .line 1846
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frameCount:I

    .line 1848
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousFrame:[I

    .line 1849
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    .line 1850
    return-void
.end method

.method static getNewOffset([I[III)I
    .locals 3
    .param p0, "indexes"    # [I
    .param p1, "sizes"    # [I
    .param p2, "begin"    # I
    .param p3, "end"    # I

    .prologue
    .line 2873
    sub-int v1, p3, p2

    .line 2874
    .local v1, "offset":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2875
    aget v2, p0, v0

    if-ge p2, v2, :cond_1

    aget v2, p0, v0

    if-gt v2, p3, :cond_1

    .line 2877
    aget v2, p1, v0

    add-int/2addr v1, v2

    .line 2874
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2878
    :cond_1
    aget v2, p0, v0

    if-ge p3, v2, :cond_0

    aget v2, p0, v0

    if-gt v2, p2, :cond_0

    .line 2880
    aget v2, p1, v0

    sub-int/2addr v1, v2

    goto :goto_1

    .line 2883
    :cond_2
    return v1
.end method

.method static getNewOffset([I[ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 2
    .param p0, "indexes"    # [I
    .param p1, "sizes"    # [I
    .param p2, "label"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 2908
    iget v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2909
    const/4 v0, 0x0

    iget v1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    invoke-static {p0, p1, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v0

    iput v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    .line 2910
    iget v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 2912
    :cond_0
    return-void
.end method

.method private noSuccessor()V
    .locals 3

    .prologue
    .line 1681
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    if-nez v1, :cond_0

    .line 1682
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;-><init>()V

    .line 1683
    .local v0, "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;-><init>()V

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    .line 1684
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->owner:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1685
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    invoke-virtual {v0, p0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->resolve(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;I[B)Z

    .line 1686
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1687
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1691
    .end local v0    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1692
    return-void

    .line 1689
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    iput v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->outputStackMax:I

    goto :goto_0
.end method

.method static readInt([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "index"    # I

    .prologue
    .line 2825
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static readShort([BI)S
    .locals 2
    .param p0, "b"    # [B
    .param p1, "index"    # I

    .prologue
    .line 2812
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method static readUnsignedShort([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "index"    # I

    .prologue
    .line 2799
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private resizeInstructions()V
    .locals 29

    .prologue
    .line 2373
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    .line 2401
    .local v7, "b":[B
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v4, v0, [I

    .line 2402
    .local v4, "allIndexes":[I
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v5, v0, [I

    .line 2406
    .local v5, "allSizes":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [Z

    move-object/from16 v22, v0

    .line 2409
    .local v22, "resize":[Z
    const/16 v23, 0x3

    .line 2411
    .local v23, "state":I
    :cond_0
    const/16 v26, 0x3

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 2412
    const/16 v23, 0x2

    .line 2414
    :cond_1
    const/16 v24, 0x0

    .line 2415
    .local v24, "u":I
    :cond_2
    :goto_0
    array-length v0, v7

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    .line 2416
    aget-byte v26, v7, v24

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 2417
    .local v21, "opcode":I
    const/4 v11, 0x0

    .line 2419
    .local v11, "insert":I
    sget-object v26, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->TYPE:[B

    aget-byte v26, v26, v21

    packed-switch v26, :pswitch_data_0

    .line 2522
    :pswitch_0
    add-int/lit8 v24, v24, 0x4

    .line 2525
    :goto_1
    if-eqz v11, :cond_2

    .line 2528
    array-length v0, v4

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 2529
    .local v18, "newIndexes":[I
    array-length v0, v5

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 2530
    .local v20, "newSizes":[I
    const/16 v26, 0x0

    const/16 v27, 0x0

    array-length v0, v4

    move/from16 v28, v0

    move/from16 v0, v26

    move-object/from16 v1, v18

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2532
    const/16 v26, 0x0

    const/16 v27, 0x0

    array-length v0, v5

    move/from16 v28, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v5, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2533
    array-length v0, v4

    move/from16 v26, v0

    aput v24, v18, v26

    .line 2534
    array-length v0, v5

    move/from16 v26, v0

    aput v11, v20, v26

    .line 2535
    move-object/from16 v4, v18

    .line 2536
    move-object/from16 v5, v20

    .line 2537
    if-lez v11, :cond_2

    .line 2538
    const/16 v23, 0x3

    goto :goto_0

    .line 2422
    .end local v18    # "newIndexes":[I
    .end local v20    # "newSizes":[I
    :pswitch_1
    add-int/lit8 v24, v24, 0x1

    .line 2423
    goto :goto_1

    .line 2425
    :pswitch_2
    const/16 v26, 0xc9

    move/from16 v0, v21

    move/from16 v1, v26

    if-le v0, v1, :cond_7

    .line 2429
    const/16 v26, 0xda

    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_6

    add-int/lit8 v21, v21, -0x31

    .line 2430
    :goto_2
    add-int/lit8 v26, v24, 0x1

    move/from16 v0, v26

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readUnsignedShort([BI)I

    move-result v26

    add-int v15, v24, v26

    .line 2434
    .local v15, "label":I
    :goto_3
    move/from16 v0, v24

    invoke-static {v4, v5, v0, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v19

    .line 2435
    .local v19, "newOffset":I
    const/16 v26, -0x8000

    move/from16 v0, v19

    move/from16 v1, v26

    if-lt v0, v1, :cond_3

    const/16 v26, 0x7fff

    move/from16 v0, v19

    move/from16 v1, v26

    if-le v0, v1, :cond_5

    .line 2437
    :cond_3
    aget-boolean v26, v22, v24

    if-nez v26, :cond_5

    .line 2438
    const/16 v26, 0xa7

    move/from16 v0, v21

    move/from16 v1, v26

    if-eq v0, v1, :cond_4

    const/16 v26, 0xa8

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 2442
    :cond_4
    const/4 v11, 0x2

    .line 2452
    :goto_4
    const/16 v26, 0x1

    aput-boolean v26, v22, v24

    .line 2455
    :cond_5
    add-int/lit8 v24, v24, 0x3

    .line 2456
    goto/16 :goto_1

    .line 2429
    .end local v15    # "label":I
    .end local v19    # "newOffset":I
    :cond_6
    add-int/lit8 v21, v21, -0x14

    goto :goto_2

    .line 2432
    :cond_7
    add-int/lit8 v26, v24, 0x1

    move/from16 v0, v26

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readShort([BI)S

    move-result v26

    add-int v15, v24, v26

    .restart local v15    # "label":I
    goto :goto_3

    .line 2450
    .restart local v19    # "newOffset":I
    :cond_8
    const/4 v11, 0x5

    goto :goto_4

    .line 2458
    .end local v15    # "label":I
    .end local v19    # "newOffset":I
    :pswitch_3
    add-int/lit8 v24, v24, 0x5

    .line 2459
    goto/16 :goto_1

    .line 2461
    :pswitch_4
    const/16 v26, 0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 2469
    const/16 v26, 0x0

    move/from16 v0, v26

    move/from16 v1, v24

    invoke-static {v4, v5, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v19

    .line 2470
    .restart local v19    # "newOffset":I
    and-int/lit8 v26, v19, 0x3

    move/from16 v0, v26

    neg-int v11, v0

    .line 2479
    .end local v19    # "newOffset":I
    :cond_9
    :goto_5
    add-int/lit8 v26, v24, 0x4

    and-int/lit8 v27, v24, 0x3

    sub-int v24, v26, v27

    .line 2480
    add-int/lit8 v26, v24, 0x8

    move/from16 v0, v26

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readInt([BI)I

    move-result v26

    add-int/lit8 v27, v24, 0x4

    move/from16 v0, v27

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readInt([BI)I

    move-result v27

    sub-int v26, v26, v27

    add-int/lit8 v26, v26, 0x1

    mul-int/lit8 v26, v26, 0x4

    add-int/lit8 v26, v26, 0xc

    add-int v24, v24, v26

    .line 2481
    goto/16 :goto_1

    .line 2471
    :cond_a
    aget-boolean v26, v22, v24

    if-nez v26, :cond_9

    .line 2475
    and-int/lit8 v11, v24, 0x3

    .line 2476
    const/16 v26, 0x1

    aput-boolean v26, v22, v24

    goto :goto_5

    .line 2483
    :pswitch_5
    const/16 v26, 0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    .line 2485
    const/16 v26, 0x0

    move/from16 v0, v26

    move/from16 v1, v24

    invoke-static {v4, v5, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v19

    .line 2486
    .restart local v19    # "newOffset":I
    and-int/lit8 v26, v19, 0x3

    move/from16 v0, v26

    neg-int v11, v0

    .line 2493
    .end local v19    # "newOffset":I
    :cond_b
    :goto_6
    add-int/lit8 v26, v24, 0x4

    and-int/lit8 v27, v24, 0x3

    sub-int v24, v26, v27

    .line 2494
    add-int/lit8 v26, v24, 0x4

    move/from16 v0, v26

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readInt([BI)I

    move-result v26

    mul-int/lit8 v26, v26, 0x8

    add-int/lit8 v26, v26, 0x8

    add-int v24, v24, v26

    .line 2495
    goto/16 :goto_1

    .line 2487
    :cond_c
    aget-boolean v26, v22, v24

    if-nez v26, :cond_b

    .line 2489
    and-int/lit8 v11, v24, 0x3

    .line 2490
    const/16 v26, 0x1

    aput-boolean v26, v22, v24

    goto :goto_6

    .line 2497
    :pswitch_6
    add-int/lit8 v26, v24, 0x1

    aget-byte v26, v7, v26

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 2498
    const/16 v26, 0x84

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 2499
    add-int/lit8 v24, v24, 0x6

    goto/16 :goto_1

    .line 2501
    :cond_d
    add-int/lit8 v24, v24, 0x4

    .line 2503
    goto/16 :goto_1

    .line 2507
    :pswitch_7
    add-int/lit8 v24, v24, 0x2

    .line 2508
    goto/16 :goto_1

    .line 2514
    :pswitch_8
    add-int/lit8 v24, v24, 0x3

    .line 2515
    goto/16 :goto_1

    .line 2518
    :pswitch_9
    add-int/lit8 v24, v24, 0x5

    .line 2519
    goto/16 :goto_1

    .line 2542
    .end local v11    # "insert":I
    .end local v21    # "opcode":I
    :cond_e
    const/16 v26, 0x3

    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    .line 2543
    add-int/lit8 v23, v23, -0x1

    .line 2545
    :cond_f
    if-nez v23, :cond_0

    .line 2551
    new-instance v17, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    move/from16 v26, v0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>(I)V

    .line 2553
    .local v17, "newCode":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    const/16 v24, 0x0

    .line 2554
    :cond_10
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_18

    .line 2555
    aget-byte v26, v7, v24

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 2556
    .restart local v21    # "opcode":I
    sget-object v26, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->TYPE:[B

    aget-byte v26, v26, v21

    packed-switch v26, :pswitch_data_1

    .line 2683
    :pswitch_a
    const/16 v26, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v7, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2684
    add-int/lit8 v24, v24, 0x4

    goto :goto_7

    .line 2559
    :pswitch_b
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2560
    add-int/lit8 v24, v24, 0x1

    .line 2561
    goto :goto_7

    .line 2563
    :pswitch_c
    const/16 v26, 0xc9

    move/from16 v0, v21

    move/from16 v1, v26

    if-le v0, v1, :cond_12

    .line 2567
    const/16 v26, 0xda

    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_11

    add-int/lit8 v21, v21, -0x31

    .line 2568
    :goto_8
    add-int/lit8 v26, v24, 0x1

    move/from16 v0, v26

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readUnsignedShort([BI)I

    move-result v26

    add-int v15, v24, v26

    .line 2572
    .restart local v15    # "label":I
    :goto_9
    move/from16 v0, v24

    invoke-static {v4, v5, v0, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v19

    .line 2573
    .restart local v19    # "newOffset":I
    aget-boolean v26, v22, v24

    if-eqz v26, :cond_16

    .line 2579
    const/16 v26, 0xa7

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    .line 2580
    const/16 v26, 0xc8

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2591
    :goto_a
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2596
    :goto_b
    add-int/lit8 v24, v24, 0x3

    .line 2597
    goto :goto_7

    .line 2567
    .end local v15    # "label":I
    .end local v19    # "newOffset":I
    :cond_11
    add-int/lit8 v21, v21, -0x14

    goto :goto_8

    .line 2570
    :cond_12
    add-int/lit8 v26, v24, 0x1

    move/from16 v0, v26

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readShort([BI)S

    move-result v26

    add-int v15, v24, v26

    .restart local v15    # "label":I
    goto :goto_9

    .line 2581
    .restart local v19    # "newOffset":I
    :cond_13
    const/16 v26, 0xa8

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    .line 2582
    const/16 v26, 0xc9

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_a

    .line 2584
    :cond_14
    const/16 v26, 0xa6

    move/from16 v0, v21

    move/from16 v1, v26

    if-gt v0, v1, :cond_15

    add-int/lit8 v26, v21, 0x1

    xor-int/lit8 v26, v26, 0x1

    add-int/lit8 v26, v26, -0x1

    :goto_c
    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2586
    const/16 v26, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2587
    const/16 v26, 0xc8

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2589
    add-int/lit8 v19, v19, -0x3

    goto :goto_a

    .line 2584
    :cond_15
    xor-int/lit8 v26, v21, 0x1

    goto :goto_c

    .line 2593
    :cond_16
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2594
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_b

    .line 2599
    .end local v15    # "label":I
    .end local v19    # "newOffset":I
    :pswitch_d
    add-int/lit8 v26, v24, 0x1

    move/from16 v0, v26

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readInt([BI)I

    move-result v26

    add-int v15, v24, v26

    .line 2600
    .restart local v15    # "label":I
    move/from16 v0, v24

    invoke-static {v4, v5, v0, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v19

    .line 2601
    .restart local v19    # "newOffset":I
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2602
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2603
    add-int/lit8 v24, v24, 0x5

    .line 2604
    goto/16 :goto_7

    .line 2607
    .end local v15    # "label":I
    .end local v19    # "newOffset":I
    :pswitch_e
    move/from16 v25, v24

    .line 2608
    .local v25, "v":I
    add-int/lit8 v26, v24, 0x4

    and-int/lit8 v27, v25, 0x3

    sub-int v24, v26, v27

    .line 2610
    const/16 v26, 0xaa

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2611
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    move/from16 v28, v0

    rem-int/lit8 v28, v28, 0x4

    rsub-int/lit8 v28, v28, 0x4

    rem-int/lit8 v28, v28, 0x4

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2612
    move/from16 v0, v24

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readInt([BI)I

    move-result v26

    add-int v15, v25, v26

    .line 2613
    .restart local v15    # "label":I
    add-int/lit8 v24, v24, 0x4

    .line 2614
    move/from16 v0, v25

    invoke-static {v4, v5, v0, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v19

    .line 2615
    .restart local v19    # "newOffset":I
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2616
    move/from16 v0, v24

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readInt([BI)I

    move-result v13

    .line 2617
    .local v13, "j":I
    add-int/lit8 v24, v24, 0x4

    .line 2618
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2619
    move/from16 v0, v24

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readInt([BI)I

    move-result v26

    sub-int v26, v26, v13

    add-int/lit8 v13, v26, 0x1

    .line 2620
    add-int/lit8 v24, v24, 0x4

    .line 2621
    add-int/lit8 v26, v24, -0x4

    move/from16 v0, v26

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readInt([BI)I

    move-result v26

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2622
    :goto_d
    if-lez v13, :cond_10

    .line 2623
    move/from16 v0, v24

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readInt([BI)I

    move-result v26

    add-int v15, v25, v26

    .line 2624
    add-int/lit8 v24, v24, 0x4

    .line 2625
    move/from16 v0, v25

    invoke-static {v4, v5, v0, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v19

    .line 2626
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2622
    add-int/lit8 v13, v13, -0x1

    goto :goto_d

    .line 2631
    .end local v13    # "j":I
    .end local v15    # "label":I
    .end local v19    # "newOffset":I
    .end local v25    # "v":I
    :pswitch_f
    move/from16 v25, v24

    .line 2632
    .restart local v25    # "v":I
    add-int/lit8 v26, v24, 0x4

    and-int/lit8 v27, v25, 0x3

    sub-int v24, v26, v27

    .line 2634
    const/16 v26, 0xab

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2635
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    move/from16 v28, v0

    rem-int/lit8 v28, v28, 0x4

    rsub-int/lit8 v28, v28, 0x4

    rem-int/lit8 v28, v28, 0x4

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2636
    move/from16 v0, v24

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readInt([BI)I

    move-result v26

    add-int v15, v25, v26

    .line 2637
    .restart local v15    # "label":I
    add-int/lit8 v24, v24, 0x4

    .line 2638
    move/from16 v0, v25

    invoke-static {v4, v5, v0, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v19

    .line 2639
    .restart local v19    # "newOffset":I
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2640
    move/from16 v0, v24

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readInt([BI)I

    move-result v13

    .line 2641
    .restart local v13    # "j":I
    add-int/lit8 v24, v24, 0x4

    .line 2642
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2643
    :goto_e
    if-lez v13, :cond_10

    .line 2644
    move/from16 v0, v24

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readInt([BI)I

    move-result v26

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2645
    add-int/lit8 v24, v24, 0x4

    .line 2646
    move/from16 v0, v24

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readInt([BI)I

    move-result v26

    add-int v15, v25, v26

    .line 2647
    add-int/lit8 v24, v24, 0x4

    .line 2648
    move/from16 v0, v25

    invoke-static {v4, v5, v0, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v19

    .line 2649
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2643
    add-int/lit8 v13, v13, -0x1

    goto :goto_e

    .line 2653
    .end local v13    # "j":I
    .end local v15    # "label":I
    .end local v19    # "newOffset":I
    .end local v25    # "v":I
    :pswitch_10
    add-int/lit8 v26, v24, 0x1

    aget-byte v26, v7, v26

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 2654
    const/16 v26, 0x84

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_17

    .line 2655
    const/16 v26, 0x6

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v7, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2656
    add-int/lit8 v24, v24, 0x6

    goto/16 :goto_7

    .line 2658
    :cond_17
    const/16 v26, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v7, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2659
    add-int/lit8 v24, v24, 0x4

    .line 2661
    goto/16 :goto_7

    .line 2665
    :pswitch_11
    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v7, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2666
    add-int/lit8 v24, v24, 0x2

    .line 2667
    goto/16 :goto_7

    .line 2673
    :pswitch_12
    const/16 v26, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v7, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2674
    add-int/lit8 v24, v24, 0x3

    .line 2675
    goto/16 :goto_7

    .line 2678
    :pswitch_13
    const/16 v26, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v7, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2679
    add-int/lit8 v24, v24, 0x5

    .line 2680
    goto/16 :goto_7

    .line 2690
    .end local v21    # "opcode":I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    move/from16 v26, v0

    if-nez v26, :cond_1c

    .line 2691
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 2692
    .local v14, "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :goto_f
    if-eqz v14, :cond_1a

    .line 2701
    iget v0, v14, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    move/from16 v26, v0

    add-int/lit8 v24, v26, -0x3

    .line 2702
    if-ltz v24, :cond_19

    aget-boolean v26, v22, v24

    if-eqz v26, :cond_19

    .line 2703
    iget v0, v14, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    move/from16 v26, v0

    or-int/lit8 v26, v26, 0x10

    move/from16 v0, v26

    iput v0, v14, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 2705
    :cond_19
    invoke-static {v4, v5, v14}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 2706
    iget-object v14, v14, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    goto :goto_f

    .line 2709
    :cond_1a
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v10, v0, :cond_1d

    .line 2710
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-object/from16 v26, v0

    aget-object v12, v26, v10

    .line 2711
    .local v12, "item":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    if-eqz v12, :cond_1b

    iget v0, v12, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1f

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b

    .line 2712
    const/16 v26, 0x0

    iget v0, v12, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v4, v5, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v26

    move/from16 v0, v26

    iput v0, v12, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    .line 2709
    :cond_1b
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 2718
    .end local v10    # "i":I
    .end local v12    # "item":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .end local v14    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frameCount:I

    move/from16 v26, v0

    if-lez v26, :cond_1d

    .line 2732
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->invalidFrames:Z

    .line 2735
    :cond_1d
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->firstHandler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    .line 2736
    .local v9, "h":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;
    :goto_11
    if-eqz v9, :cond_1e

    .line 2737
    iget-object v0, v9, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v4, v5, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 2738
    iget-object v0, v9, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v4, v5, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 2739
    iget-object v0, v9, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->handler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v4, v5, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 2740
    iget-object v9, v9, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    goto :goto_11

    .line 2744
    :cond_1e
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_12
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v10, v0, :cond_21

    .line 2745
    if-nez v10, :cond_1f

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2746
    .local v8, "bv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    :goto_13
    if-eqz v8, :cond_20

    .line 2747
    iget-object v7, v8, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    .line 2748
    const/16 v24, 0x0

    .line 2749
    :goto_14
    iget v0, v8, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_20

    .line 2750
    move/from16 v0, v24

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readUnsignedShort([BI)I

    move-result v15

    .line 2751
    .restart local v15    # "label":I
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-static {v4, v5, v0, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v19

    .line 2752
    .restart local v19    # "newOffset":I
    move/from16 v0, v24

    move/from16 v1, v19

    invoke-static {v7, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->writeShort([BII)V

    .line 2753
    add-int/lit8 v26, v24, 0x2

    move/from16 v0, v26

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readUnsignedShort([BI)I

    move-result v26

    add-int v15, v15, v26

    .line 2754
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-static {v4, v5, v0, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v26

    sub-int v19, v26, v19

    .line 2756
    add-int/lit8 v26, v24, 0x2

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-static {v7, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->writeShort([BII)V

    .line 2757
    add-int/lit8 v24, v24, 0xa

    goto :goto_14

    .line 2745
    .end local v8    # "bv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    .end local v15    # "label":I
    .end local v19    # "newOffset":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_13

    .line 2744
    .restart local v8    # "bv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    :cond_20
    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    .line 2761
    .end local v8    # "bv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-object/from16 v26, v0

    if-eqz v26, :cond_22

    .line 2762
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    .line 2763
    const/16 v24, 0x0

    .line 2764
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_22

    .line 2765
    const/16 v26, 0x0

    .line 2769
    move/from16 v0, v24

    invoke-static {v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->readUnsignedShort([BI)I

    move-result v27

    .line 2768
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v4, v5, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[III)I

    move-result v26

    .line 2765
    move/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v7, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->writeShort([BII)V

    .line 2770
    add-int/lit8 v24, v24, 0x4

    goto :goto_15

    .line 2774
    :cond_22
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cattrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .line 2775
    .local v6, "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    :goto_16
    if-eqz v6, :cond_24

    .line 2776
    invoke-virtual {v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->getLabels()[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v16

    .line 2777
    .local v16, "labels":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    if-eqz v16, :cond_23

    .line 2778
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v10, v26, -0x1

    :goto_17
    if-ltz v10, :cond_23

    .line 2779
    aget-object v26, v16, v10

    move-object/from16 v0, v26

    invoke-static {v4, v5, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->getNewOffset([I[ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 2778
    add-int/lit8 v10, v10, -0x1

    goto :goto_17

    .line 2782
    :cond_23
    iget-object v6, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .line 2783
    goto :goto_16

    .line 2786
    .end local v16    # "labels":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :cond_24
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2787
    return-void

    .line 2419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 2556
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_b
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_c
        :pswitch_d
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_e
        :pswitch_f
        :pswitch_a
        :pswitch_10
    .end packed-switch
.end method

.method private startFrame(III)I
    .locals 3
    .param p1, "offset"    # I
    .param p2, "nLocal"    # I
    .param p3, "nStack"    # I

    .prologue
    .line 1826
    add-int/lit8 v1, p2, 0x3

    add-int v0, v1, p3

    .line 1827
    .local v0, "n":I
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 1828
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    .line 1830
    :cond_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 1831
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 1832
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    const/4 v2, 0x2

    aput p3, v1, v2

    .line 1833
    const/4 v1, 0x3

    return v1
.end method

.method private visitFrame(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;)V
    .locals 12
    .param p1, "f"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    .prologue
    const v11, 0x1000004

    const v10, 0x1000003

    .line 1706
    const/4 v6, 0x0

    .line 1707
    .local v6, "nTop":I
    const/4 v4, 0x0

    .line 1708
    .local v4, "nLocal":I
    const/4 v5, 0x0

    .line 1709
    .local v5, "nStack":I
    iget-object v3, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputLocals:[I

    .line 1710
    .local v3, "locals":[I
    iget-object v7, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputStack:[I

    .line 1713
    .local v7, "stacks":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v3

    if-ge v2, v9, :cond_3

    .line 1714
    aget v8, v3, v2

    .line 1715
    .local v8, "t":I
    const/high16 v9, 0x1000000

    if-ne v8, v9, :cond_2

    .line 1716
    add-int/lit8 v6, v6, 0x1

    .line 1721
    :goto_1
    if-eq v8, v11, :cond_0

    if-ne v8, v10, :cond_1

    .line 1722
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 1713
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1718
    :cond_2
    add-int/lit8 v9, v6, 0x1

    add-int/2addr v4, v9

    .line 1719
    const/4 v6, 0x0

    goto :goto_1

    .line 1727
    .end local v8    # "t":I
    :cond_3
    const/4 v2, 0x0

    :goto_2
    array-length v9, v7

    if-ge v2, v9, :cond_6

    .line 1728
    aget v8, v7, v2

    .line 1729
    .restart local v8    # "t":I
    add-int/lit8 v5, v5, 0x1

    .line 1730
    if-eq v8, v11, :cond_4

    if-ne v8, v10, :cond_5

    .line 1731
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 1727
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1735
    .end local v8    # "t":I
    :cond_6
    iget-object v9, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->owner:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v9, v9, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    invoke-direct {p0, v9, v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->startFrame(III)I

    move-result v0

    .line 1736
    .local v0, "frameIndex":I
    const/4 v2, 0x0

    move v1, v0

    .end local v0    # "frameIndex":I
    .local v1, "frameIndex":I
    :goto_3
    if-lez v4, :cond_9

    .line 1737
    aget v8, v3, v2

    .line 1738
    .restart local v8    # "t":I
    iget-object v9, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    aput v8, v9, v1

    .line 1739
    if-eq v8, v11, :cond_7

    if-ne v8, v10, :cond_8

    .line 1740
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 1736
    :cond_8
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, -0x1

    move v1, v0

    .end local v0    # "frameIndex":I
    .restart local v1    # "frameIndex":I
    goto :goto_3

    .line 1743
    .end local v8    # "t":I
    :cond_9
    const/4 v2, 0x0

    move v0, v1

    .end local v1    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :goto_4
    array-length v9, v7

    if-ge v2, v9, :cond_c

    .line 1744
    aget v8, v7, v2

    .line 1745
    .restart local v8    # "t":I
    iget-object v9, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v1    # "frameIndex":I
    aput v8, v9, v0

    .line 1746
    if-eq v8, v11, :cond_a

    if-ne v8, v10, :cond_b

    .line 1747
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 1743
    :cond_b
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    .end local v1    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    goto :goto_4

    .line 1750
    .end local v8    # "t":I
    :cond_c
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->endFrame()V

    .line 1751
    return-void
.end method

.method private visitImplicitFirstFrame()V
    .locals 12

    .prologue
    const/16 v11, 0x3b

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/high16 v9, 0x1700000

    .line 1758
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v6, v5, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->startFrame(III)I

    move-result v0

    .line 1759
    .local v0, "frameIndex":I
    iget v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->access:I

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_0

    .line 1760
    iget v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->access:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-nez v5, :cond_1

    .line 1761
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "frameIndex":I
    .local v1, "frameIndex":I
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget-object v7, v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->thisName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v6, v9

    aput v6, v5, v0

    move v0, v1

    .line 1766
    .end local v1    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 1768
    .local v2, "i":I
    :goto_1
    move v4, v2

    .line 1769
    .local v4, "j":I
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->descriptor:Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1810
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    add-int/lit8 v6, v0, -0x3

    aput v6, v5, v10

    .line 1811
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->endFrame()V

    .line 1812
    return-void

    .line 1763
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_1
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v1    # "frameIndex":I
    const/4 v6, 0x6

    aput v6, v5, v0

    move v0, v1

    .end local v1    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    goto :goto_0

    .line 1775
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :sswitch_0
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v1    # "frameIndex":I
    aput v10, v5, v0

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v0, v1

    .line 1776
    .end local v1    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    goto :goto_1

    .line 1778
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_1
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v1    # "frameIndex":I
    const/4 v6, 0x2

    aput v6, v5, v0

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v0, v1

    .line 1779
    .end local v1    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    goto :goto_1

    .line 1781
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_2
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v1    # "frameIndex":I
    const/4 v6, 0x4

    aput v6, v5, v0

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v0, v1

    .line 1782
    .end local v1    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    goto :goto_1

    .line 1784
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_3
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v1    # "frameIndex":I
    const/4 v6, 0x3

    aput v6, v5, v0

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v0, v1

    .line 1785
    .end local v1    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    goto :goto_1

    .line 1787
    :goto_2
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_2

    .line 1788
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1790
    :cond_2
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x4c

    if-ne v5, v6, :cond_3

    .line 1791
    add-int/lit8 v2, v2, 0x1

    .line 1792
    :goto_3
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v11, :cond_3

    .line 1793
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1796
    :cond_3
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v1    # "frameIndex":I
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->descriptor:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    .line 1797
    invoke-virtual {v7, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v6, v9

    aput v6, v5, v0

    move v0, v1

    .line 1798
    .end local v1    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    goto :goto_1

    .line 1800
    :goto_4
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v11, :cond_4

    .line 1801
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1803
    :cond_4
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v1    # "frameIndex":I
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->descriptor:Ljava/lang/String;

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v3, v2, 0x1

    .line 1804
    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v6, v9

    aput v6, v5, v0

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v0, v1

    .line 1805
    .end local v1    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    goto/16 :goto_1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_4
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_5
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_4

    .line 1769
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x44 -> :sswitch_3
        0x46 -> :sswitch_1
        0x49 -> :sswitch_0
        0x4a -> :sswitch_2
        0x4c -> :sswitch_5
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_4
    .end sparse-switch
.end method

.method private visitSwitchInsn(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 5
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p2, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1218
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v1, :cond_2

    .line 1219
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    if-nez v1, :cond_0

    .line 1220
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    const/16 v2, 0xab

    invoke-virtual {v1, v2, v3, v4, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1222
    invoke-direct {p0, v3, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->addSuccessor(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 1223
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->getFirst()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v1

    iget v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 1224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 1225
    aget-object v1, p2, v0

    invoke-direct {p0, v3, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->addSuccessor(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 1226
    aget-object v1, p2, v0

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->getFirst()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v1

    iget v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 1224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1230
    .end local v0    # "i":I
    :cond_0
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    .line 1232
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    invoke-direct {p0, v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->addSuccessor(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 1233
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 1234
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    aget-object v2, p2, v0

    invoke-direct {p0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->addSuccessor(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 1233
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1238
    :cond_1
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->noSuccessor()V

    .line 1240
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private writeFrame()V
    .locals 15

    .prologue
    const/16 v10, 0xf7

    const/16 v9, 0x40

    const/4 v14, 0x3

    const/4 v13, 0x1

    const/4 v8, 0x0

    .line 1857
    iget-object v11, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    aget v0, v11, v13

    .line 1858
    .local v0, "clocalsSize":I
    iget-object v11, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    const/4 v12, 0x2

    aget v1, v11, v12

    .line 1859
    .local v1, "cstackSize":I
    iget-object v11, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget v11, v11, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->version:I

    const v12, 0xffff

    and-int/2addr v11, v12

    const/16 v12, 0x32

    if-ge v11, v12, :cond_0

    .line 1860
    iget-object v9, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    aget v8, v10, v8

    invoke-virtual {v9, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1861
    add-int/lit8 v8, v0, 0x3

    invoke-direct {p0, v14, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->writeFrameTypes(II)V

    .line 1862
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1863
    add-int/lit8 v8, v0, 0x3

    add-int/lit8 v9, v0, 0x3

    add-int/2addr v9, v1

    invoke-direct {p0, v8, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->writeFrameTypes(II)V

    .line 1938
    :goto_0
    return-void

    .line 1866
    :cond_0
    iget-object v11, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousFrame:[I

    aget v6, v11, v13

    .line 1867
    .local v6, "localsSize":I
    const/16 v7, 0xff

    .line 1868
    .local v7, "type":I
    const/4 v4, 0x0

    .line 1870
    .local v4, "k":I
    iget v11, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frameCount:I

    if-nez v11, :cond_3

    .line 1871
    iget-object v11, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    aget v2, v11, v8

    .line 1875
    .local v2, "delta":I
    :goto_1
    if-nez v1, :cond_5

    .line 1876
    sub-int v4, v0, v6

    .line 1877
    packed-switch v4, :pswitch_data_0

    .line 1897
    :cond_1
    :goto_2
    const/16 v8, 0xff

    if-eq v7, v8, :cond_2

    .line 1899
    const/4 v5, 0x3

    .line 1900
    .local v5, "l":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    if-ge v3, v6, :cond_2

    .line 1901
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    aget v8, v8, v5

    iget-object v9, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousFrame:[I

    aget v9, v9, v5

    if-eq v8, v9, :cond_7

    .line 1902
    const/16 v7, 0xff

    .line 1908
    .end local v3    # "j":I
    .end local v5    # "l":I
    :cond_2
    sparse-switch v7, :sswitch_data_0

    .line 1933
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1934
    add-int/lit8 v8, v0, 0x3

    invoke-direct {p0, v14, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->writeFrameTypes(II)V

    .line 1935
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1936
    add-int/lit8 v8, v0, 0x3

    add-int/lit8 v9, v0, 0x3

    add-int/2addr v9, v1

    invoke-direct {p0, v8, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->writeFrameTypes(II)V

    goto :goto_0

    .line 1873
    .end local v2    # "delta":I
    :cond_3
    iget-object v11, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    aget v11, v11, v8

    iget-object v12, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousFrame:[I

    aget v12, v12, v8

    sub-int/2addr v11, v12

    add-int/lit8 v2, v11, -0x1

    .restart local v2    # "delta":I
    goto :goto_1

    .line 1881
    :pswitch_0
    const/16 v7, 0xf8

    .line 1882
    move v6, v0

    .line 1883
    goto :goto_2

    .line 1885
    :pswitch_1
    if-ge v2, v9, :cond_4

    move v7, v8

    .line 1886
    :goto_4
    goto :goto_2

    .line 1885
    :cond_4
    const/16 v7, 0xfb

    goto :goto_4

    .line 1890
    :pswitch_2
    const/16 v7, 0xfc

    goto :goto_2

    .line 1893
    :cond_5
    if-ne v0, v6, :cond_1

    if-ne v1, v13, :cond_1

    .line 1894
    const/16 v8, 0x3f

    if-ge v2, v8, :cond_6

    move v7, v9

    :goto_5
    goto :goto_2

    :cond_6
    move v7, v10

    goto :goto_5

    .line 1905
    .restart local v3    # "j":I
    .restart local v5    # "l":I
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 1900
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1910
    .end local v3    # "j":I
    .end local v5    # "l":I
    :sswitch_0
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v8, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_0

    .line 1913
    :sswitch_1
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    add-int/lit8 v9, v2, 0x40

    invoke-virtual {v8, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1914
    add-int/lit8 v8, v0, 0x3

    add-int/lit8 v9, v0, 0x4

    invoke-direct {p0, v8, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->writeFrameTypes(II)V

    goto/16 :goto_0

    .line 1917
    :sswitch_2
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v8, v10}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1919
    add-int/lit8 v8, v0, 0x3

    add-int/lit8 v9, v0, 0x4

    invoke-direct {p0, v8, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->writeFrameTypes(II)V

    goto/16 :goto_0

    .line 1922
    :sswitch_3
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v9, 0xfb

    invoke-virtual {v8, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto/16 :goto_0

    .line 1925
    :sswitch_4
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    add-int/lit16 v9, v4, 0xfb

    invoke-virtual {v8, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto/16 :goto_0

    .line 1928
    :sswitch_5
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    add-int/lit16 v9, v4, 0xfb

    invoke-virtual {v8, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1929
    add-int/lit8 v8, v6, 0x3

    add-int/lit8 v9, v0, 0x3

    invoke-direct {p0, v8, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->writeFrameTypes(II)V

    goto/16 :goto_0

    .line 1877
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1908
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_1
        0xf7 -> :sswitch_2
        0xf8 -> :sswitch_4
        0xfb -> :sswitch_3
        0xfc -> :sswitch_5
    .end sparse-switch
.end method

.method private writeFrameType(Ljava/lang/Object;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/Object;

    .prologue
    .line 2011
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2012
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "type":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2018
    :goto_0
    return-void

    .line 2013
    .restart local p1    # "type":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 2014
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "type":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_0

    .line 2016
    .restart local p1    # "type":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    check-cast p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .end local p1    # "type":Ljava/lang/Object;
    iget v1, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_0
.end method

.method private writeFrameTypes(II)V
    .locals 12
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/high16 v11, 0xff00000

    const v10, 0xfffff

    const/4 v9, 0x7

    .line 1952
    move v3, p1

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_3

    .line 1953
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    aget v4, v6, v3

    .line 1954
    .local v4, "t":I
    const/high16 v6, -0x10000000

    and-int v1, v4, v6

    .line 1955
    .local v1, "d":I
    if-nez v1, :cond_0

    .line 1956
    and-int v5, v4, v10

    .line 1957
    .local v5, "v":I
    and-int v6, v4, v11

    sparse-switch v6, :sswitch_data_0

    .line 1966
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v6, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1952
    .end local v5    # "v":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1959
    .restart local v5    # "v":I
    :sswitch_0
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v6, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v6

    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget-object v8, v8, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    aget-object v8, v8, v5

    iget-object v8, v8, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    .line 1960
    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v7

    .line 1959
    invoke-virtual {v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_1

    .line 1963
    :sswitch_1
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v6

    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget-object v7, v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    aget-object v7, v7, v5

    iget v7, v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    invoke-virtual {v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_1

    .line 1969
    .end local v5    # "v":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1970
    .local v0, "buf":Ljava/lang/StringBuffer;
    shr-int/lit8 v1, v1, 0x1c

    move v2, v1

    .line 1971
    .end local v1    # "d":I
    .local v2, "d":I
    :goto_2
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    if-lez v2, :cond_1

    .line 1972
    const/16 v6, 0x5b

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    goto :goto_2

    .line 1974
    .end local v2    # "d":I
    .restart local v1    # "d":I
    :cond_1
    and-int v6, v4, v11

    const/high16 v7, 0x1700000

    if-ne v6, v7, :cond_2

    .line 1975
    const/16 v6, 0x4c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1976
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget-object v6, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->typeTable:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    and-int v7, v4, v10

    aget-object v6, v6, v7

    iget-object v6, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1977
    const/16 v6, 0x3b

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2005
    :goto_3
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v6, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v6

    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_1

    .line 1979
    :cond_2
    and-int/lit8 v6, v4, 0xf

    packed-switch v6, :pswitch_data_0

    .line 2002
    :pswitch_0
    const/16 v6, 0x4a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1981
    :pswitch_1
    const/16 v6, 0x49

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1984
    :pswitch_2
    const/16 v6, 0x46

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1987
    :pswitch_3
    const/16 v6, 0x44

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1990
    :pswitch_4
    const/16 v6, 0x5a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1993
    :pswitch_5
    const/16 v6, 0x42

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1996
    :pswitch_6
    const/16 v6, 0x43

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1999
    :pswitch_7
    const/16 v6, 0x53

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 2008
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "d":I
    .end local v4    # "t":I
    :cond_3
    return-void

    .line 1957
    :sswitch_data_0
    .sparse-switch
        0x1700000 -> :sswitch_0
        0x1800000 -> :sswitch_1
    .end sparse-switch

    .line 1979
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static writeShort([BII)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "index"    # I
    .param p2, "s"    # I

    .prologue
    .line 2840
    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 2841
    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 2842
    return-void
.end method


# virtual methods
.method final getSize()I
    .locals 12

    .prologue
    const v11, 0xffff

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2030
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->classReaderOffset:I

    if-eqz v0, :cond_1

    .line 2031
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->classReaderLength:I

    add-int/lit8 v7, v0, 0x6

    .line 2131
    :cond_0
    :goto_0
    return v7

    .line 2033
    :cond_1
    const/16 v7, 0x8

    .line 2034
    .local v7, "size":I
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    if-lez v0, :cond_9

    .line 2035
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    const/high16 v1, 0x10000

    if-le v0, v1, :cond_2

    .line 2036
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method code too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2038
    :cond_2
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2039
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x12

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->handlerCount:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/2addr v7, v0

    .line 2040
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_3

    .line 2041
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "LocalVariableTable"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2042
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    .line 2044
    :cond_3
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_4

    .line 2045
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "LocalVariableTypeTable"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2046
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    .line 2048
    :cond_4
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_5

    .line 2049
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "LineNumberTable"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2050
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    .line 2052
    :cond_5
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_6

    .line 2053
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->version:I

    and-int/2addr v0, v11

    const/16 v1, 0x32

    if-lt v0, v1, :cond_15

    const/4 v8, 0x1

    .line 2054
    .local v8, "zip":Z
    :goto_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    if-eqz v8, :cond_16

    const-string v0, "StackMapTable"

    :goto_2
    invoke-virtual {v1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2055
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    .line 2057
    .end local v8    # "zip":Z
    :cond_6
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_7

    .line 2058
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2059
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    .line 2061
    :cond_7
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_8

    .line 2062
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2063
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    .line 2065
    :cond_8
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cattrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    if-eqz v0, :cond_9

    .line 2066
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cattrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStack:I

    iget v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxLocals:I

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->getSize(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;[BIII)I

    move-result v0

    add-int/2addr v7, v0

    .line 2070
    :cond_9
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->exceptionCount:I

    if-lez v0, :cond_a

    .line 2071
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2072
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->exceptionCount:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    .line 2074
    :cond_a
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->access:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 2075
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->version:I

    and-int/2addr v0, v11

    const/16 v1, 0x31

    if-lt v0, v1, :cond_b

    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->access:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    .line 2077
    :cond_b
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2078
    add-int/lit8 v7, v7, 0x6

    .line 2081
    :cond_c
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->access:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    .line 2082
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2083
    add-int/lit8 v7, v7, 0x6

    .line 2085
    :cond_d
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->signature:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 2086
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2087
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2088
    add-int/lit8 v7, v7, 0x8

    .line 2090
    :cond_e
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_f

    .line 2091
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "MethodParameters"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2092
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x7

    add-int/2addr v7, v0

    .line 2094
    :cond_f
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->annd:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_10

    .line 2095
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "AnnotationDefault"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2096
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->annd:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v7, v0

    .line 2098
    :cond_10
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->anns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_11

    .line 2099
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2100
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->anns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    .line 2102
    :cond_11
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ianns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_12

    .line 2103
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2104
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ianns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    .line 2106
    :cond_12
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->tanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_13

    .line 2107
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2108
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->tanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    .line 2110
    :cond_13
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->itanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_14

    .line 2111
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2112
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->itanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v7, v0

    .line 2114
    :cond_14
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_18

    .line 2115
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2116
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    array-length v0, v0

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->synthetics:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    add-int/2addr v7, v0

    .line 2117
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    array-length v0, v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_3
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->synthetics:I

    if-lt v6, v0, :cond_18

    .line 2118
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    aget-object v0, v0, v6

    if-nez v0, :cond_17

    move v0, v9

    :goto_4
    add-int/2addr v7, v0

    .line 2117
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .end local v6    # "i":I
    :cond_15
    move v8, v9

    .line 2053
    goto/16 :goto_1

    .line 2054
    .restart local v8    # "zip":Z
    :cond_16
    const-string v0, "StackMap"

    goto/16 :goto_2

    .line 2118
    .end local v8    # "zip":Z
    .restart local v6    # "i":I
    :cond_17
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->getSize()I

    move-result v0

    goto :goto_4

    .line 2121
    .end local v6    # "i":I
    :cond_18
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_1a

    .line 2122
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 2123
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    array-length v0, v0

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->synthetics:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    add-int/2addr v7, v0

    .line 2124
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    array-length v0, v0

    add-int/lit8 v6, v0, -0x1

    .restart local v6    # "i":I
    :goto_5
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->synthetics:I

    if-lt v6, v0, :cond_1a

    .line 2125
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    aget-object v0, v0, v6

    if-nez v0, :cond_19

    move v0, v9

    :goto_6
    add-int/2addr v7, v0

    .line 2124
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 2125
    :cond_19
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->getSize()I

    move-result v0

    goto :goto_6

    .line 2128
    .end local v6    # "i":I
    :cond_1a
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->attrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    if-eqz v0, :cond_0

    .line 2129
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->attrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const/4 v2, 0x0

    move v3, v9

    move v4, v10

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->getSize(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;[BIII)I

    move-result v0

    add-int/2addr v7, v0

    goto/16 :goto_0
.end method

.method final put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V
    .locals 14
    .param p1, "out"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .prologue
    .line 2142
    const/16 v7, 0x40

    .line 2143
    .local v7, "FACTOR":I
    const/high16 v0, 0xe0000

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->access:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x40

    or-int v11, v0, v1

    .line 2146
    .local v11, "mask":I
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->access:I

    xor-int/lit8 v1, v11, -0x1

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->name:I

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->desc:I

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2147
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->classReaderOffset:I

    if-eqz v0, :cond_1

    .line 2148
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->cr:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->classReaderOffset:I

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->classReaderLength:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2349
    :cond_0
    :goto_0
    return-void

    .line 2151
    :cond_1
    const/4 v8, 0x0

    .line 2152
    .local v8, "attributeCount":I
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    if-lez v0, :cond_2

    .line 2153
    add-int/lit8 v8, v8, 0x1

    .line 2155
    :cond_2
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->exceptionCount:I

    if-lez v0, :cond_3

    .line 2156
    add-int/lit8 v8, v8, 0x1

    .line 2158
    :cond_3
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->access:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_5

    .line 2159
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->version:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/16 v1, 0x31

    if-lt v0, v1, :cond_4

    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->access:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 2161
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 2164
    :cond_5
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->access:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 2165
    add-int/lit8 v8, v8, 0x1

    .line 2167
    :cond_6
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->signature:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2168
    add-int/lit8 v8, v8, 0x1

    .line 2170
    :cond_7
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_8

    .line 2171
    add-int/lit8 v8, v8, 0x1

    .line 2173
    :cond_8
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->annd:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_9

    .line 2174
    add-int/lit8 v8, v8, 0x1

    .line 2176
    :cond_9
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->anns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_a

    .line 2177
    add-int/lit8 v8, v8, 0x1

    .line 2179
    :cond_a
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ianns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_b

    .line 2180
    add-int/lit8 v8, v8, 0x1

    .line 2182
    :cond_b
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->tanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_c

    .line 2183
    add-int/lit8 v8, v8, 0x1

    .line 2185
    :cond_c
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->itanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_d

    .line 2186
    add-int/lit8 v8, v8, 0x1

    .line 2188
    :cond_d
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_e

    .line 2189
    add-int/lit8 v8, v8, 0x1

    .line 2191
    :cond_e
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_f

    .line 2192
    add-int/lit8 v8, v8, 0x1

    .line 2194
    :cond_f
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->attrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    if-eqz v0, :cond_10

    .line 2195
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->attrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->getCount()I

    move-result v0

    add-int/2addr v8, v0

    .line 2197
    :cond_10
    invoke-virtual {p1, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2198
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    if-lez v0, :cond_26

    .line 2199
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0xc

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->handlerCount:I

    mul-int/lit8 v1, v1, 0x8

    add-int v12, v0, v1

    .line 2200
    .local v12, "size":I
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_11

    .line 2201
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v12, v0

    .line 2203
    :cond_11
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_12

    .line 2204
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v12, v0

    .line 2206
    :cond_12
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_13

    .line 2207
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v12, v0

    .line 2209
    :cond_13
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_14

    .line 2210
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v12, v0

    .line 2212
    :cond_14
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_15

    .line 2213
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v12, v0

    .line 2215
    :cond_15
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_16

    .line 2216
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v12, v0

    .line 2218
    :cond_16
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cattrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    if-eqz v0, :cond_17

    .line 2219
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cattrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStack:I

    iget v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxLocals:I

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->getSize(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;[BIII)I

    move-result v0

    add-int/2addr v12, v0

    .line 2222
    :cond_17
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2223
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStack:I

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxLocals:I

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2224
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2225
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->handlerCount:I

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2226
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->handlerCount:I

    if-lez v0, :cond_18

    .line 2227
    iget-object v9, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->firstHandler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    .line 2228
    .local v9, "h":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;
    :goto_1
    if-eqz v9, :cond_18

    .line 2229
    iget-object v0, v9, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    iget-object v1, v9, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    iget-object v1, v9, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->handler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    .line 2230
    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    iget v1, v9, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->type:I

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2231
    iget-object v9, v9, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    goto :goto_1

    .line 2234
    .end local v9    # "h":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;
    :cond_18
    const/4 v8, 0x0

    .line 2235
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_19

    .line 2236
    add-int/lit8 v8, v8, 0x1

    .line 2238
    :cond_19
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_1a

    .line 2239
    add-int/lit8 v8, v8, 0x1

    .line 2241
    :cond_1a
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_1b

    .line 2242
    add-int/lit8 v8, v8, 0x1

    .line 2244
    :cond_1b
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_1c

    .line 2245
    add-int/lit8 v8, v8, 0x1

    .line 2247
    :cond_1c
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_1d

    .line 2248
    add-int/lit8 v8, v8, 0x1

    .line 2250
    :cond_1d
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_1e

    .line 2251
    add-int/lit8 v8, v8, 0x1

    .line 2253
    :cond_1e
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cattrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    if-eqz v0, :cond_1f

    .line 2254
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cattrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->getCount()I

    move-result v0

    add-int/2addr v8, v0

    .line 2256
    :cond_1f
    invoke-virtual {p1, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2257
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_20

    .line 2258
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "LocalVariableTable"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2259
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarCount:I

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2260
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2262
    :cond_20
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_21

    .line 2263
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "LocalVariableTypeTable"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2264
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarTypeCount:I

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2265
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2267
    :cond_21
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_22

    .line 2268
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "LineNumberTable"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2269
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumberCount:I

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2270
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2272
    :cond_22
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_23

    .line 2273
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->version:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/16 v1, 0x32

    if-lt v0, v1, :cond_27

    const/4 v13, 0x1

    .line 2274
    .local v13, "zip":Z
    :goto_2
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    if-eqz v13, :cond_28

    const-string v0, "StackMapTable"

    :goto_3
    invoke-virtual {v1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2275
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frameCount:I

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2276
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2278
    .end local v13    # "zip":Z
    :cond_23
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_24

    .line 2279
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2280
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 2282
    :cond_24
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_25

    .line 2283
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2284
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 2286
    :cond_25
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cattrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    if-eqz v0, :cond_26

    .line 2287
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cattrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxLocals:I

    iget v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStack:I

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;[BIIILorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 2290
    .end local v12    # "size":I
    :cond_26
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->exceptionCount:I

    if-lez v0, :cond_29

    .line 2291
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->exceptionCount:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2293
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->exceptionCount:I

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2294
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->exceptionCount:I

    if-ge v10, v0, :cond_29

    .line 2295
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->exceptions:[I

    aget v0, v0, v10

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2294
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 2273
    .end local v10    # "i":I
    .restart local v12    # "size":I
    :cond_27
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 2274
    .restart local v13    # "zip":Z
    :cond_28
    const-string v0, "StackMap"

    goto/16 :goto_3

    .line 2298
    .end local v12    # "size":I
    .end local v13    # "zip":Z
    :cond_29
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->access:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2b

    .line 2299
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->version:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/16 v1, 0x31

    if-lt v0, v1, :cond_2a

    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->access:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2b

    .line 2301
    :cond_2a
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2304
    :cond_2b
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->access:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2c

    .line 2305
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "Deprecated"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2307
    :cond_2c
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->signature:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 2308
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->signature:Ljava/lang/String;

    .line 2309
    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2311
    :cond_2d
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_2e

    .line 2312
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "MethodParameters"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2313
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->methodParametersCount:I

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2315
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2317
    :cond_2e
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->annd:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v0, :cond_2f

    .line 2318
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "AnnotationDefault"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2319
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->annd:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2320
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->annd:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->annd:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2322
    :cond_2f
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->anns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_30

    .line 2323
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2324
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->anns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 2326
    :cond_30
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ianns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_31

    .line 2327
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2328
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ianns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 2330
    :cond_31
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->tanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_32

    .line 2331
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2332
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->tanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 2334
    :cond_32
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->itanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_33

    .line 2335
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2336
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->itanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 2338
    :cond_33
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_34

    .line 2339
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2340
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->synthetics:I

    invoke-static {v0, v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->put([Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;ILorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 2342
    :cond_34
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-eqz v0, :cond_35

    .line 2343
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 2344
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->synthetics:I

    invoke-static {v0, v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->put([Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;ILorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 2346
    :cond_35
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->attrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    if-eqz v0, :cond_0

    .line 2347
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->attrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;[BIIILorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    goto/16 :goto_0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 6
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 526
    new-instance v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    .line 528
    .local v3, "bv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 529
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;I)V

    .line 530
    .local v0, "aw":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
    if-eqz p2, :cond_0

    .line 531
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->anns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 532
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->anns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 537
    :goto_0
    return-object v0

    .line 534
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ianns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 535
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ianns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    goto :goto_0
.end method

.method public visitAnnotationDefault()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 516
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->annd:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 517
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->annd:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/4 v4, 0x0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;I)V

    return-object v0
.end method

.method public visitAttribute(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .prologue
    .line 597
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->isCodeAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cattrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .line 599
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cattrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .line 604
    :goto_0
    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->attrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .line 602
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->attrs:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    goto :goto_0
.end method

.method public visitCode()V
    .locals 0

    .prologue
    .line 608
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .prologue
    .line 1652
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/16 v8, 0x4a

    const/16 v7, 0x44

    .line 848
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v6, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iput v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lastCodeOffset:I

    .line 849
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v6, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v1

    .line 851
    .local v1, "i":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v6, :cond_0

    .line 852
    iget v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    if-nez v6, :cond_1

    .line 853
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget-object v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v3, p1, v5, v4, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 881
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v4, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v3, p1, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 882
    return-void

    .line 857
    :cond_1
    invoke-virtual {p4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 858
    .local v0, "c":C
    packed-switch p1, :pswitch_data_0

    .line 870
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    if-eq v0, v7, :cond_2

    if-ne v0, v8, :cond_3

    :cond_2
    const/4 v4, -0x3

    :cond_3
    add-int v2, v3, v4

    .line 874
    .local v2, "size":I
    :goto_1
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    if-le v2, v3, :cond_4

    .line 875
    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    .line 877
    :cond_4
    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    goto :goto_0

    .line 860
    .end local v2    # "size":I
    :pswitch_0
    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    if-eq v0, v7, :cond_5

    if-ne v0, v8, :cond_6

    :cond_5
    const/4 v3, 0x2

    :cond_6
    add-int v2, v4, v3

    .line 861
    .restart local v2    # "size":I
    goto :goto_1

    .line 863
    .end local v2    # "size":I
    :pswitch_1
    iget v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    if-eq v0, v7, :cond_7

    if-ne v0, v8, :cond_8

    :cond_7
    move v3, v4

    :goto_2
    add-int v2, v5, v3

    .line 864
    .restart local v2    # "size":I
    goto :goto_1

    .line 863
    .end local v2    # "size":I
    :cond_8
    const/4 v3, -0x1

    goto :goto_2

    .line 866
    :pswitch_2
    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    if-eq v0, v7, :cond_9

    if-ne v0, v8, :cond_a

    :cond_9
    :goto_3
    add-int v2, v4, v3

    .line 867
    .restart local v2    # "size":I
    goto :goto_1

    .end local v2    # "size":I
    :cond_a
    move v3, v5

    .line 866
    goto :goto_3

    .line 858
    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .prologue
    const/high16 v9, 0x1800000

    const/high16 v8, 0x1700000

    const/16 v6, 0x40

    .line 613
    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    if-nez v4, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    const/4 v4, -0x1

    if-ne p1, v4, :cond_9

    .line 618
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousFrame:[I

    if-nez v4, :cond_2

    .line 619
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->visitImplicitFirstFrame()V

    .line 621
    :cond_2
    iput p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentLocals:I

    .line 622
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v4, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-direct {p0, v4, p2, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->startFrame(III)I

    move-result v1

    .line 623
    .local v1, "frameIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v2, v1

    .end local v1    # "frameIndex":I
    .local v2, "frameIndex":I
    :goto_1
    if-ge v3, p2, :cond_5

    .line 624
    aget-object v4, p3, v3

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 625
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "frameIndex":I
    .restart local v1    # "frameIndex":I
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    aget-object v4, p3, v3

    check-cast v4, Ljava/lang/String;

    .line 626
    invoke-virtual {v6, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v4, v8

    aput v4, v5, v2

    .line 623
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "frameIndex":I
    .restart local v2    # "frameIndex":I
    goto :goto_1

    .line 627
    :cond_3
    aget-object v4, p3, v3

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 628
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "frameIndex":I
    .restart local v1    # "frameIndex":I
    aget-object v4, p3, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v5, v2

    goto :goto_2

    .line 630
    .end local v1    # "frameIndex":I
    .restart local v2    # "frameIndex":I
    :cond_4
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "frameIndex":I
    .restart local v1    # "frameIndex":I
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v7, ""

    aget-object v4, p3, v3

    check-cast v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v4, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    .line 631
    invoke-virtual {v6, v7, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addUninitializedType(Ljava/lang/String;I)I

    move-result v4

    or-int/2addr v4, v9

    aput v4, v5, v2

    goto :goto_2

    .line 635
    .end local v1    # "frameIndex":I
    .restart local v2    # "frameIndex":I
    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-ge v3, p4, :cond_8

    .line 636
    aget-object v4, p5, v3

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 637
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "frameIndex":I
    .restart local v1    # "frameIndex":I
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    aget-object v4, p5, v3

    check-cast v4, Ljava/lang/String;

    .line 638
    invoke-virtual {v6, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v4, v8

    aput v4, v5, v2

    .line 635
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "frameIndex":I
    .restart local v2    # "frameIndex":I
    goto :goto_3

    .line 639
    :cond_6
    aget-object v4, p5, v3

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 640
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "frameIndex":I
    .restart local v1    # "frameIndex":I
    aget-object v4, p5, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v5, v2

    goto :goto_4

    .line 642
    .end local v1    # "frameIndex":I
    .restart local v2    # "frameIndex":I
    :cond_7
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "frameIndex":I
    .restart local v1    # "frameIndex":I
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const-string v7, ""

    aget-object v4, p5, v3

    check-cast v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v4, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    .line 643
    invoke-virtual {v6, v7, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addUninitializedType(Ljava/lang/String;I)I

    move-result v4

    or-int/2addr v4, v9

    aput v4, v5, v2

    goto :goto_4

    .line 647
    .end local v1    # "frameIndex":I
    .restart local v2    # "frameIndex":I
    :cond_8
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->endFrame()V

    .line 709
    .end local v2    # "frameIndex":I
    .end local v3    # "i":I
    :goto_5
    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStack:I

    invoke-static {v4, p4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStack:I

    .line 710
    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxLocals:I

    iget v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentLocals:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxLocals:I

    goto/16 :goto_0

    .line 650
    :cond_9
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-nez v4, :cond_c

    .line 651
    new-instance v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    iput-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 652
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v0, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 664
    .local v0, "delta":I
    :cond_a
    packed-switch p1, :pswitch_data_0

    .line 705
    :cond_b
    :goto_6
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v4, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iput v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousFrameOffset:I

    .line 706
    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frameCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frameCount:I

    goto :goto_5

    .line 654
    .end local v0    # "delta":I
    :cond_c
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v4, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iget v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousFrameOffset:I

    sub-int/2addr v4, v5

    add-int/lit8 v0, v4, -0x1

    .line 655
    .restart local v0    # "delta":I
    if-gez v0, :cond_a

    .line 656
    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    .line 659
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 666
    :pswitch_0
    iput p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentLocals:I

    .line 667
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v4

    invoke-virtual {v4, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 668
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7
    if-ge v3, p2, :cond_d

    .line 669
    aget-object v4, p3, v3

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->writeFrameType(Ljava/lang/Object;)V

    .line 668
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 671
    :cond_d
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v4, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 672
    const/4 v3, 0x0

    :goto_8
    if-ge v3, p4, :cond_b

    .line 673
    aget-object v4, p5, v3

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->writeFrameType(Ljava/lang/Object;)V

    .line 672
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 677
    .end local v3    # "i":I
    :pswitch_1
    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentLocals:I

    add-int/2addr v4, p2

    iput v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentLocals:I

    .line 678
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    add-int/lit16 v5, p2, 0xfb

    invoke-virtual {v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 679
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_9
    if-ge v3, p2, :cond_b

    .line 680
    aget-object v4, p3, v3

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->writeFrameType(Ljava/lang/Object;)V

    .line 679
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 684
    .end local v3    # "i":I
    :pswitch_2
    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentLocals:I

    sub-int/2addr v4, p2

    iput v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentLocals:I

    .line 685
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    rsub-int v5, p2, 0xfb

    invoke-virtual {v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_6

    .line 688
    :pswitch_3
    if-ge v0, v6, :cond_e

    .line 689
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v4, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_6

    .line 691
    :cond_e
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v5, 0xfb

    invoke-virtual {v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto/16 :goto_6

    .line 695
    :pswitch_4
    if-ge v0, v6, :cond_f

    .line 696
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    add-int/lit8 v5, v0, 0x40

    invoke-virtual {v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 701
    :goto_a
    const/4 v4, 0x0

    aget-object v4, p5, v4

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->writeFrameType(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 698
    :cond_f
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackMap:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v5, 0xf7

    invoke-virtual {v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v4

    .line 699
    invoke-virtual {v4, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_a

    .line 664
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public visitIincInsn(II)V
    .locals 4
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x84

    .line 1159
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lastCodeOffset:I

    .line 1160
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v1, :cond_0

    .line 1161
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    if-nez v1, :cond_0

    .line 1162
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    invoke-virtual {v1, v3, p1, v2, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1165
    :cond_0
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1167
    add-int/lit8 v0, p1, 0x1

    .line 1168
    .local v0, "n":I
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxLocals:I

    if-le v0, v1, :cond_1

    .line 1169
    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxLocals:I

    .line 1173
    .end local v0    # "n":I
    :cond_1
    const/16 v1, 0xff

    if-gt p1, v1, :cond_2

    const/16 v1, 0x7f

    if-gt p2, v1, :cond_2

    const/16 v1, -0x80

    if-ge p2, v1, :cond_3

    .line 1174
    :cond_2
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v2, 0xc4

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    .line 1175
    invoke-virtual {v1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1179
    :goto_0
    return-void

    .line 1177
    :cond_3
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v1, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put11(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_0
.end method

.method public visitInsn(I)V
    .locals 4
    .param p1, "opcode"    # I

    .prologue
    const/4 v3, 0x0

    .line 715
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lastCodeOffset:I

    .line 717
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 720
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v1, :cond_2

    .line 721
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    if-nez v1, :cond_3

    .line 722
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v3, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 732
    :goto_0
    const/16 v1, 0xac

    if-lt p1, v1, :cond_0

    const/16 v1, 0xb1

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v1, 0xbf

    if-ne p1, v1, :cond_2

    .line 734
    :cond_1
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->noSuccessor()V

    .line 737
    :cond_2
    return-void

    .line 725
    :cond_3
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    sget-object v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->SIZE:[I

    aget v2, v2, p1

    add-int v0, v1, v2

    .line 726
    .local v0, "size":I
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    if-le v0, v1, :cond_4

    .line 727
    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    .line 729
    :cond_4
    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    goto :goto_0
.end method

.method public visitInsnAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 6
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .prologue
    .line 1266
    new-instance v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    .line 1268
    .local v3, "bv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    const v1, -0xffff01

    and-int/2addr v1, p1

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lastCodeOffset:I

    shl-int/lit8 v2, v2, 0x8

    or-int p1, v1, v2

    .line 1269
    invoke-static {p1, p2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->putTarget(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 1271
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v1, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1272
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const/4 v2, 0x1

    iget v4, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v5, v4, -0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;I)V

    .line 1274
    .local v0, "aw":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
    if-eqz p4, :cond_0

    .line 1275
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 1276
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 1281
    :goto_0
    return-object v0

    .line 1278
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 1279
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    goto :goto_0
.end method

.method public visitIntInsn(II)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .prologue
    const/4 v2, 0x0

    .line 741
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lastCodeOffset:I

    .line 743
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v1, :cond_0

    .line 744
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    if-nez v1, :cond_1

    .line 745
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    invoke-virtual {v1, p1, p2, v2, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 757
    :cond_0
    :goto_0
    const/16 v1, 0x11

    if-ne p1, v1, :cond_3

    .line 758
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 762
    :goto_1
    return-void

    .line 746
    :cond_1
    const/16 v1, 0xbc

    if-eq p1, v1, :cond_0

    .line 749
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    add-int/lit8 v0, v1, 0x1

    .line 750
    .local v0, "size":I
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    if-le v0, v1, :cond_2

    .line 751
    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    .line 753
    :cond_2
    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    goto :goto_0

    .line 760
    .end local v0    # "size":I
    :cond_3
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v1, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put11(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_1
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .prologue
    const/16 v6, 0xba

    const/4 v5, 0x0

    .line 939
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iput v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lastCodeOffset:I

    .line 940
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v3, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newInvokeDynamicItem(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;[Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v1

    .line 941
    .local v1, "i":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    .line 943
    .local v0, "argSize":I
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v3, :cond_0

    .line 944
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    if-nez v3, :cond_1

    .line 945
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget-object v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v3, v6, v5, v4, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 973
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v4, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v3, v6, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 974
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v3, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 975
    return-void

    .line 955
    :cond_1
    if-nez v0, :cond_2

    .line 958
    invoke-static {p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    .line 961
    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    .line 963
    :cond_2
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    shr-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    and-int/lit8 v4, v0, 0x3

    add-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 966
    .local v2, "size":I
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    if-le v2, v3, :cond_3

    .line 967
    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    .line 969
    :cond_3
    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    goto :goto_0
.end method

.method public visitJumpInsn(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0xc8

    const/16 v5, 0xa8

    const/16 v4, 0xa7

    const/4 v3, 0x0

    .line 979
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lastCodeOffset:I

    .line 980
    const/4 v0, 0x0

    .line 982
    .local v0, "nextInsn":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v1, :cond_0

    .line 983
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    if-nez v1, :cond_3

    .line 984
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    invoke-virtual {v1, p1, v3, v2, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 986
    invoke-virtual {p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->getFirst()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v1

    iget v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 988
    invoke-direct {p0, v3, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->addSuccessor(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 989
    if-eq p1, v4, :cond_0

    .line 991
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .end local v0    # "nextInsn":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;-><init>()V

    .line 1019
    .restart local v0    # "nextInsn":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :cond_0
    :goto_0
    iget v1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    iget v1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    sub-int/2addr v1, v2

    const/16 v2, -0x8000

    if-ge v1, v2, :cond_a

    .line 1028
    if-ne p1, v4, :cond_6

    .line 1029
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v1, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1043
    :goto_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {p2, p0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;IZ)V

    .line 1054
    :goto_2
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v1, :cond_2

    .line 1055
    if-eqz v0, :cond_1

    .line 1060
    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->visitLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 1062
    :cond_1
    if-ne p1, v4, :cond_2

    .line 1063
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->noSuccessor()V

    .line 1066
    :cond_2
    return-void

    .line 994
    :cond_3
    if-ne p1, v5, :cond_5

    .line 995
    iget v1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_4

    .line 996
    iget v1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 997
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->subroutines:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->subroutines:I

    .line 999
    :cond_4
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 1000
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->addSuccessor(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 1002
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .end local v0    # "nextInsn":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;-><init>()V

    .restart local v0    # "nextInsn":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    goto :goto_0

    .line 1013
    :cond_5
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    sget-object v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->SIZE:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    .line 1014
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    invoke-direct {p0, v1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->addSuccessor(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    goto :goto_0

    .line 1030
    :cond_6
    if-ne p1, v5, :cond_7

    .line 1031
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_1

    .line 1035
    :cond_7
    if-eqz v0, :cond_8

    .line 1036
    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 1038
    :cond_8
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v1, 0xa6

    if-gt p1, v1, :cond_9

    add-int/lit8 v1, p1, 0x1

    xor-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    invoke-virtual {v2, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1040
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1041
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v1, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_1

    .line 1038
    :cond_9
    xor-int/lit8 v1, p1, 0x1

    goto :goto_3

    .line 1051
    :cond_a
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1052
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, p0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;IZ)V

    goto/16 :goto_2
.end method

.method public visitLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 4
    .param p1, "label"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    const/4 v3, 0x0

    .line 1071
    iget-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->resize:Z

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    invoke-virtual {p1, p0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->resolve(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;I[B)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->resize:Z

    .line 1073
    iget v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1076
    :cond_1
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    if-nez v0, :cond_7

    .line 1077
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v0, :cond_3

    .line 1078
    iget v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    if-ne v0, v1, :cond_2

    .line 1080
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    iget v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 1081
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    goto :goto_0

    .line 1085
    :cond_2
    invoke-direct {p0, v3, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->addSuccessor(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 1088
    :cond_3
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1089
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    if-nez v0, :cond_4

    .line 1090
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;-><init>()V

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    .line 1091
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->owner:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1094
    :cond_4
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v0, :cond_6

    .line 1095
    iget v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    if-ne v0, v1, :cond_5

    .line 1096
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    iget v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 1097
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    .line 1098
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    goto :goto_0

    .line 1101
    :cond_5
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1103
    :cond_6
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    goto :goto_0

    .line 1104
    :cond_7
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1105
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v0, :cond_8

    .line 1107
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    iput v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->outputStackMax:I

    .line 1108
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->addSuccessor(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 1111
    :cond_8
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1113
    iput v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    .line 1114
    iput v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    .line 1116
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v0, :cond_9

    .line 1117
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1119
    :cond_9
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->previousBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    goto/16 :goto_0
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 9
    .param p1, "cst"    # Ljava/lang/Object;

    .prologue
    const/16 v8, 0x12

    const/4 v7, 0x6

    const/4 v6, 0x5

    .line 1125
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iput v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lastCodeOffset:I

    .line 1126
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v3, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newConstItem(Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1128
    .local v0, "i":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v3, :cond_0

    .line 1129
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    if-nez v3, :cond_2

    .line 1130
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget-object v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v3, v8, v4, v5, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1147
    :cond_0
    :goto_0
    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    .line 1148
    .local v1, "index":I
    iget v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    if-eq v3, v6, :cond_1

    iget v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    if-ne v3, v7, :cond_6

    .line 1149
    :cond_1
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v4, 0x14

    invoke-virtual {v3, v4, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1155
    :goto_1
    return-void

    .line 1134
    .end local v1    # "index":I
    :cond_2
    iget v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    if-eq v3, v6, :cond_3

    iget v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    if-ne v3, v7, :cond_5

    .line 1135
    :cond_3
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    add-int/lit8 v2, v3, 0x2

    .line 1140
    .local v2, "size":I
    :goto_2
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    if-le v2, v3, :cond_4

    .line 1141
    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    .line 1143
    :cond_4
    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    goto :goto_0

    .line 1137
    .end local v2    # "size":I
    :cond_5
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "size":I
    goto :goto_2

    .line 1150
    .end local v2    # "size":I
    .restart local v1    # "index":I
    :cond_6
    const/16 v3, 0x100

    if-lt v1, v3, :cond_7

    .line 1151
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v4, 0x13

    invoke-virtual {v3, v4, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_1

    .line 1153
    :cond_7
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v3, v8, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put11(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_1
.end method

.method public visitLineNumber(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 1394
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-nez v0, :cond_0

    .line 1395
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1397
    :cond_0
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumberCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumberCount:I

    .line 1398
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1399
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lineNumber:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1400
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;I)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p5, "end"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p6, "index"    # I

    .prologue
    const/4 v2, 0x2

    .line 1329
    if-eqz p3, :cond_1

    .line 1330
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-nez v3, :cond_0

    .line 1331
    new-instance v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1333
    :cond_0
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarTypeCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarTypeCount:I

    .line 1334
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarType:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v4, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v3

    iget v4, p5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    iget v5, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    sub-int/2addr v4, v5

    .line 1335
    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v3

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    .line 1336
    invoke-virtual {v4, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v3

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v4, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v3

    .line 1337
    invoke-virtual {v3, p6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1339
    :cond_1
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-nez v3, :cond_2

    .line 1340
    new-instance v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1342
    :cond_2
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVarCount:I

    .line 1343
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->localVar:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v4, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v3

    iget v4, p5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    iget v5, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    sub-int/2addr v4, v5

    .line 1344
    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v3

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    .line 1345
    invoke-virtual {v4, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v3

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v4, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v3

    .line 1346
    invoke-virtual {v3, p6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1347
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    if-eq v3, v2, :cond_4

    .line 1349
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1350
    .local v0, "c":C
    const/16 v3, 0x4a

    if-eq v0, v3, :cond_3

    const/16 v3, 0x44

    if-ne v0, v3, :cond_5

    :cond_3
    :goto_0
    add-int v1, p6, v2

    .line 1351
    .local v1, "n":I
    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxLocals:I

    if-le v1, v2, :cond_4

    .line 1352
    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxLocals:I

    .line 1355
    .end local v0    # "c":C
    .end local v1    # "n":I
    :cond_4
    return-void

    .line 1350
    .restart local v0    # "c":C
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
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
    const/4 v5, 0x0

    .line 1364
    new-instance v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    .line 1366
    .local v3, "bv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    ushr-int/lit8 v1, p1, 0x18

    invoke-virtual {v3, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1367
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v1, p3

    if-ge v6, v1, :cond_0

    .line 1368
    aget-object v1, p3, v6

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    invoke-virtual {v3, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    aget-object v2, p4, v6

    iget v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    aget-object v4, p3, v6

    iget v4, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    sub-int/2addr v2, v4

    .line 1369
    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    aget v2, p5, v6

    .line 1370
    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1367
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1372
    :cond_0
    if-nez p2, :cond_1

    .line 1373
    invoke-virtual {v3, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1379
    :goto_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v1, p6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1380
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const/4 v2, 0x1

    iget v4, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v5, v4, -0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;I)V

    .line 1382
    .local v0, "aw":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
    if-eqz p7, :cond_2

    .line 1383
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 1384
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 1389
    :goto_2
    return-object v0

    .line 1375
    .end local v0    # "aw":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
    :cond_1
    iget-object v1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->b:[B

    iget v2, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->offset:I

    aget-byte v1, v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v7, v1, 0x1

    .line 1376
    .local v7, "length":I
    iget-object v1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->b:[B

    iget v2, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->offset:I

    invoke-virtual {v3, v1, v2, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_1

    .line 1386
    .end local v7    # "length":I
    .restart local v0    # "aw":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
    :cond_2
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 1387
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    goto :goto_2
.end method

.method public visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 7
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    const/4 v6, 0x1

    .line 1201
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lastCodeOffset:I

    .line 1203
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v1, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 1204
    .local v1, "source":I
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v3, 0xab

    invoke-virtual {v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1205
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v5, v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    rem-int/lit8 v5, v5, 0x4

    rsub-int/lit8 v5, v5, 0x4

    rem-int/lit8 v5, v5, 0x4

    invoke-virtual {v2, v3, v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1206
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {p1, p0, v2, v1, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;IZ)V

    .line 1207
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    array-length v3, p3

    invoke-virtual {v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 1209
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1210
    aget-object v2, p3, v0

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v2, p0, v3, v1, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;IZ)V

    .line 1208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1213
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->visitSwitchInsn(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 1214
    return-void
.end method

.method public visitMaxs(II)V
    .locals 35
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .prologue
    .line 1404
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->resize:Z

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 1407
    invoke-direct/range {p0 .. p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->resizeInstructions()V

    .line 1412
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    move/from16 v29, v0

    if-nez v29, :cond_f

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->firstHandler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    move-object/from16 v17, v0

    .line 1415
    .local v17, "handler":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;
    :goto_0
    if-eqz v17, :cond_3

    .line 1416
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->getFirst()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v22

    .line 1417
    .local v22, "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->handler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->getFirst()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v16

    .line 1418
    .local v16, "h":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->getFirst()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v12

    .line 1420
    .local v12, "e":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->desc:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_1

    const-string v28, "java/lang/Throwable"

    .line 1422
    .local v28, "t":Ljava/lang/String;
    :goto_1
    const/high16 v29, 0x1700000

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v30

    or-int v21, v29, v30

    .line 1424
    .local v21, "kind":I
    move-object/from16 v0, v16

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x10

    move/from16 v0, v29

    move-object/from16 v1, v16

    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 1426
    :goto_2
    move-object/from16 v0, v22

    if-eq v0, v12, :cond_2

    .line 1428
    new-instance v8, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    invoke-direct {v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;-><init>()V

    .line 1429
    .local v8, "b":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;
    move/from16 v0, v21

    iput v0, v8, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->info:I

    .line 1430
    move-object/from16 v0, v16

    iput-object v0, v8, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1432
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v8, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    .line 1433
    move-object/from16 v0, v22

    iput-object v8, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    .line 1435
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v22, v0

    .line 1436
    goto :goto_2

    .line 1420
    .end local v8    # "b":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;
    .end local v21    # "kind":I
    .end local v28    # "t":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->desc:Ljava/lang/String;

    move-object/from16 v28, v0

    goto :goto_1

    .line 1437
    .restart local v21    # "kind":I
    .restart local v28    # "t":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    move-object/from16 v17, v0

    .line 1438
    goto :goto_0

    .line 1441
    .end local v12    # "e":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .end local v16    # "h":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .end local v21    # "kind":I
    .end local v22    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .end local v28    # "t":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    .line 1442
    .local v14, "f":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->descriptor:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v7

    .line 1443
    .local v7, "args":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->access:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxLocals:I

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v14, v0, v1, v7, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->initInputFrame(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;I)V

    .line 1444
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->visitFrame(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;)V

    .line 1452
    const/16 v23, 0x0

    .line 1453
    .local v23, "max":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1454
    .local v11, "changed":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :cond_4
    if-eqz v11, :cond_8

    .line 1456
    move-object/from16 v22, v11

    .line 1457
    .restart local v22    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    iget-object v11, v11, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1458
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1459
    move-object/from16 v0, v22

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    .line 1461
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x10

    if-eqz v29, :cond_5

    .line 1462
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x20

    move/from16 v0, v29

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 1465
    :cond_5
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x40

    move/from16 v0, v29

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 1467
    iget-object v0, v14, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->inputStack:[I

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->outputStackMax:I

    move/from16 v30, v0

    add-int v9, v29, v30

    .line 1468
    .local v9, "blockMax":I
    move/from16 v0, v23

    if-le v9, v0, :cond_6

    .line 1469
    move/from16 v23, v9

    .line 1472
    :cond_6
    move-object/from16 v0, v22

    iget-object v12, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    .line 1473
    .local v12, "e":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;
    :goto_3
    if-eqz v12, :cond_4

    .line 1474
    iget-object v0, v12, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->getFirst()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v24

    .line 1475
    .local v24, "n":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    move-object/from16 v30, v0

    iget v0, v12, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->info:I

    move/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v14, v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->merge(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;I)Z

    move-result v10

    .line 1476
    .local v10, "change":Z
    if-eqz v10, :cond_7

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v29, v0

    if-nez v29, :cond_7

    .line 1479
    move-object/from16 v0, v24

    iput-object v11, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1480
    move-object/from16 v11, v24

    .line 1482
    :cond_7
    iget-object v12, v12, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    .line 1483
    goto :goto_3

    .line 1487
    .end local v9    # "blockMax":I
    .end local v10    # "change":Z
    .end local v12    # "e":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;
    .end local v22    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .end local v24    # "n":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v22, v0

    .line 1488
    .restart local v22    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :goto_4
    if-eqz v22, :cond_d

    .line 1489
    move-object/from16 v0, v22

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    .line 1490
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x20

    if-eqz v29, :cond_9

    .line 1491
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->visitFrame(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;)V

    .line 1493
    :cond_9
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x40

    if-nez v29, :cond_c

    .line 1495
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v20, v0

    .line 1496
    .local v20, "k":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    move/from16 v26, v0

    .line 1497
    .local v26, "start":I
    if-nez v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    move/from16 v29, v0

    :goto_5
    add-int/lit8 v13, v29, -0x1

    .line 1499
    .local v13, "end":I
    move/from16 v0, v26

    if-lt v13, v0, :cond_c

    .line 1500
    const/16 v29, 0x1

    move/from16 v0, v23

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 1502
    move/from16 v18, v26

    .local v18, "i":I
    :goto_6
    move/from16 v0, v18

    if-ge v0, v13, :cond_b

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-byte v30, v29, v18

    .line 1502
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 1497
    .end local v13    # "end":I
    .end local v18    # "i":I
    :cond_a
    move-object/from16 v0, v20

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    move/from16 v29, v0

    goto :goto_5

    .line 1505
    .restart local v13    # "end":I
    .restart local v18    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    move-object/from16 v29, v0

    const/16 v30, -0x41

    aput-byte v30, v29, v13

    .line 1507
    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->startFrame(III)I

    move-result v15

    .line 1508
    .local v15, "frameIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->frame:[I

    move-object/from16 v29, v0

    const/high16 v30, 0x1700000

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    move-object/from16 v31, v0

    const-string v32, "java/lang/Throwable"

    .line 1509
    invoke-virtual/range {v31 .. v32}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->addType(Ljava/lang/String;)I

    move-result v31

    or-int v30, v30, v31

    aput v30, v29, v15

    .line 1510
    invoke-direct/range {p0 .. p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->endFrame()V

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->firstHandler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->remove(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->firstHandler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    .line 1516
    .end local v13    # "end":I
    .end local v15    # "frameIndex":I
    .end local v18    # "i":I
    .end local v20    # "k":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .end local v26    # "start":I
    :cond_c
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v22, v0

    goto/16 :goto_4

    .line 1519
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->firstHandler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    move-object/from16 v17, v0

    .line 1520
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->handlerCount:I

    .line 1521
    :goto_7
    if-eqz v17, :cond_e

    .line 1522
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->handlerCount:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->handlerCount:I

    .line 1523
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    move-object/from16 v17, v0

    goto :goto_7

    .line 1526
    :cond_e
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStack:I

    .line 1648
    .end local v7    # "args":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .end local v11    # "changed":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .end local v14    # "f":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;
    .end local v17    # "handler":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;
    .end local v22    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .end local v23    # "max":I
    :goto_8
    return-void

    .line 1527
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1e

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->firstHandler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    move-object/from16 v17, v0

    .line 1530
    .restart local v17    # "handler":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;
    :goto_9
    if-eqz v17, :cond_12

    .line 1531
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v22, v0

    .line 1532
    .restart local v22    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->handler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v16, v0

    .line 1533
    .restart local v16    # "h":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    move-object/from16 v0, v17

    iget-object v12, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1535
    .local v12, "e":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :goto_a
    move-object/from16 v0, v22

    if-eq v0, v12, :cond_11

    .line 1537
    new-instance v8, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    invoke-direct {v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;-><init>()V

    .line 1538
    .restart local v8    # "b":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;
    const v29, 0x7fffffff

    move/from16 v0, v29

    iput v0, v8, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->info:I

    .line 1539
    move-object/from16 v0, v16

    iput-object v0, v8, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1541
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x80

    move/from16 v29, v0

    if-nez v29, :cond_10

    .line 1542
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v8, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    .line 1543
    move-object/from16 v0, v22

    iput-object v8, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    .line 1552
    :goto_b
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v22, v0

    .line 1553
    goto :goto_a

    .line 1548
    :cond_10
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v0, v8, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    .line 1549
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iput-object v8, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    goto :goto_b

    .line 1554
    .end local v8    # "b":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;
    :cond_11
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    move-object/from16 v17, v0

    .line 1555
    goto :goto_9

    .line 1557
    .end local v12    # "e":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .end local v16    # "h":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .end local v22    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->subroutines:I

    move/from16 v29, v0

    if-lez v29, :cond_17

    .line 1564
    const/16 v19, 0x0

    .line 1565
    .local v19, "id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-wide/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->subroutines:I

    move/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->visitSubroutine(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;JI)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v22, v0

    .line 1568
    .restart local v22    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :goto_c
    if-eqz v22, :cond_14

    .line 1569
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x80

    move/from16 v29, v0

    if-eqz v29, :cond_13

    .line 1571
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v27, v0

    .line 1573
    .local v27, "subroutine":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    move-object/from16 v0, v27

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x400

    move/from16 v29, v0

    if-nez v29, :cond_13

    .line 1575
    add-int/lit8 v19, v19, 0x1

    .line 1576
    const/16 v29, 0x0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x20

    div-long v30, v30, v32

    const/16 v32, 0x20

    shl-long v30, v30, v32

    const-wide/16 v32, 0x1

    rem-int/lit8 v34, v19, 0x20

    shl-long v32, v32, v34

    or-long v30, v30, v32

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->subroutines:I

    move/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->visitSubroutine(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;JI)V

    .line 1580
    .end local v27    # "subroutine":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :cond_13
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v22, v0

    goto :goto_c

    .line 1583
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v22, v0

    .line 1584
    :goto_d
    if-eqz v22, :cond_17

    .line 1585
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x80

    move/from16 v29, v0

    if-eqz v29, :cond_16

    .line 1586
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1587
    .local v6, "L":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :goto_e
    if-eqz v6, :cond_15

    .line 1588
    iget v0, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v0, v0, -0x801

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 1589
    iget-object v6, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    goto :goto_e

    .line 1592
    :cond_15
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v27, v0

    .line 1593
    .restart local v27    # "subroutine":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    const-wide/16 v30, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->subroutines:I

    move/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    move-wide/from16 v2, v30

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->visitSubroutine(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;JI)V

    .line 1595
    .end local v6    # "L":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .end local v27    # "subroutine":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :cond_16
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v22, v0

    goto :goto_d

    .line 1609
    .end local v19    # "id":I
    .end local v22    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :cond_17
    const/16 v23, 0x0

    .line 1610
    .restart local v23    # "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->labels:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v25, v0

    .line 1611
    .local v25, "stack":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :cond_18
    if-eqz v25, :cond_1d

    .line 1613
    move-object/from16 v22, v25

    .line 1614
    .restart local v22    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v25, v0

    .line 1616
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->inputStackTop:I

    move/from16 v26, v0

    .line 1617
    .restart local v26    # "start":I
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->outputStackMax:I

    move/from16 v29, v0

    add-int v9, v26, v29

    .line 1619
    .restart local v9    # "blockMax":I
    move/from16 v0, v23

    if-le v9, v0, :cond_19

    .line 1620
    move/from16 v23, v9

    .line 1623
    :cond_19
    move-object/from16 v0, v22

    iget-object v8, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    .line 1624
    .restart local v8    # "b":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    move/from16 v29, v0

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x80

    move/from16 v29, v0

    if-eqz v29, :cond_1a

    .line 1626
    iget-object v8, v8, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    .line 1628
    :cond_1a
    :goto_f
    if-eqz v8, :cond_18

    .line 1629
    iget-object v0, v8, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v22, v0

    .line 1631
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x8

    if-nez v29, :cond_1b

    .line 1633
    iget v0, v8, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->info:I

    move/from16 v29, v0

    const v30, 0x7fffffff

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1c

    const/16 v29, 0x1

    :goto_10
    move/from16 v0, v29

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->inputStackTop:I

    .line 1636
    move-object/from16 v0, v22

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x8

    move/from16 v0, v29

    move-object/from16 v1, v22

    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 1637
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1638
    move-object/from16 v25, v22

    .line 1640
    :cond_1b
    iget-object v8, v8, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    goto :goto_f

    .line 1633
    :cond_1c
    iget v0, v8, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->info:I

    move/from16 v29, v0

    add-int v29, v29, v26

    goto :goto_10

    .line 1643
    .end local v8    # "b":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;
    .end local v9    # "blockMax":I
    .end local v22    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .end local v26    # "start":I
    :cond_1d
    move/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStack:I

    goto/16 :goto_8

    .line 1645
    .end local v17    # "handler":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;
    .end local v23    # "max":I
    .end local v25    # "stack":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :cond_1e
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStack:I

    .line 1646
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxLocals:I

    goto/16 :goto_8
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .prologue
    const/16 v6, 0xb9

    const/4 v5, 0x0

    .line 887
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iput v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lastCodeOffset:I

    .line 888
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v3, p2, p3, p4, p5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v1

    .line 889
    .local v1, "i":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    .line 891
    .local v0, "argSize":I
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v3, :cond_0

    .line 892
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    if-nez v3, :cond_2

    .line 893
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget-object v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v3, p1, v5, v4, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 925
    :cond_0
    :goto_0
    if-ne p1, v6, :cond_6

    .line 926
    if-nez v0, :cond_1

    .line 927
    invoke-static {p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    .line 928
    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    .line 930
    :cond_1
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v4, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v3, v6, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v3

    shr-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put11(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 934
    :goto_1
    return-void

    .line 903
    :cond_2
    if-nez v0, :cond_3

    .line 906
    invoke-static {p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    .line 909
    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    .line 912
    :cond_3
    const/16 v3, 0xb8

    if-ne p1, v3, :cond_5

    .line 913
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    shr-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    and-int/lit8 v4, v0, 0x3

    add-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 918
    .local v2, "size":I
    :goto_2
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    if-le v2, v3, :cond_4

    .line 919
    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    .line 921
    :cond_4
    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    goto :goto_0

    .line 915
    .end local v2    # "size":I
    :cond_5
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    shr-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    and-int/lit8 v4, v0, 0x3

    add-int v2, v3, v4

    .restart local v2    # "size":I
    goto :goto_2

    .line 932
    .end local v2    # "size":I
    :cond_6
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v4, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v3, p1, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_1
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 4
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .prologue
    const/16 v3, 0xc5

    .line 1244
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lastCodeOffset:I

    .line 1245
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 1247
    .local v0, "i":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v1, :cond_0

    .line 1248
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    if-nez v1, :cond_1

    .line 1249
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v1, v3, p2, v2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 1257
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v1, v3, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1258
    return-void

    .line 1253
    :cond_1
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    rsub-int/lit8 v2, p2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    goto :goto_0
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "access"    # I

    .prologue
    .line 503
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 506
    :cond_0
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->methodParametersCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->methodParametersCount:I

    .line 507
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->methodParameters:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    .line 508
    invoke-virtual {v0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 509
    return-void

    .line 507
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 6
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .prologue
    const/4 v2, 0x0

    .line 569
    new-instance v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    .line 570
    .local v3, "bv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    const-string v1, "Ljava/lang/Synthetic;"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->synthetics:I

    add-int/lit8 v4, p1, 0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->synthetics:I

    .line 574
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const/4 v4, 0x0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;I)V

    .line 592
    :goto_0
    return-object v0

    .line 577
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 578
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;I)V

    .line 579
    .local v0, "aw":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
    if-eqz p3, :cond_2

    .line 580
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-nez v1, :cond_1

    .line 581
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 583
    :cond_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    aget-object v1, v1, p1

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 584
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->panns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    aput-object v0, v1, p1

    goto :goto_0

    .line 586
    :cond_2
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    if-nez v1, :cond_3

    .line 587
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 589
    :cond_3
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    aget-object v1, v1, p1

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 590
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ipanns:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    aput-object v0, v1, p1

    goto :goto_0
.end method

.method public varargs visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 7
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p4, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    const/4 v6, 0x1

    .line 1184
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lastCodeOffset:I

    .line 1186
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v1, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 1187
    .local v1, "source":I
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v3, 0xaa

    invoke-virtual {v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1188
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v5, v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    rem-int/lit8 v5, v5, 0x4

    rsub-int/lit8 v5, v5, 0x4

    rem-int/lit8 v5, v5, 0x4

    invoke-virtual {v2, v3, v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1189
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {p3, p0, v2, v1, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;IZ)V

    .line 1190
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v2, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_0

    .line 1192
    aget-object v2, p4, v0

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v2, p0, v3, v1, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;IZ)V

    .line 1191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1195
    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->visitSwitchInsn(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 1196
    return-void
.end method

.method public visitTryCatchAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 6
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .prologue
    .line 1308
    new-instance v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    .line 1310
    .local v3, "bv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    invoke-static {p1, p2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->putTarget(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 1312
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v1, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 1313
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const/4 v2, 0x1

    iget v4, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v5, v4, -0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;I)V

    .line 1315
    .local v0, "aw":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
    if-eqz p4, :cond_0

    .line 1316
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 1317
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ctanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 1322
    :goto_0
    return-object v0

    .line 1319
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 1320
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->ictanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    goto :goto_0
.end method

.method public visitTryCatchBlock(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Ljava/lang/String;)V
    .locals 2
    .param p1, "start"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p2, "end"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p3, "handler"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 1287
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->handlerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->handlerCount:I

    .line 1288
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;-><init>()V

    .line 1289
    .local v0, "h":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;
    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1290
    iput-object p2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1291
    iput-object p3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->handler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1292
    iput-object p4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->desc:Ljava/lang/String;

    .line 1293
    if-eqz p4, :cond_0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v1, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    :goto_0
    iput v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->type:I

    .line 1294
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lastHandler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    if-nez v1, :cond_1

    .line 1295
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->firstHandler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    .line 1299
    :goto_1
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lastHandler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    .line 1300
    return-void

    .line 1293
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1297
    :cond_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lastHandler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    goto :goto_1
.end method

.method public visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 6
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .prologue
    .line 546
    new-instance v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    .line 548
    .local v3, "bv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    invoke-static {p1, p2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->putTarget(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V

    .line 550
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v1, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 551
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const/4 v2, 0x1

    iget v4, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v5, v4, -0x2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;I)V

    .line 553
    .local v0, "aw":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
    if-eqz p4, :cond_0

    .line 554
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->tanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 555
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->tanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 560
    :goto_0
    return-object v0

    .line 557
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->itanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 558
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->itanns:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    goto :goto_0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 825
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lastCodeOffset:I

    .line 826
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v2, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 828
    .local v0, "i":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v2, :cond_0

    .line 829
    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    if-nez v2, :cond_1

    .line 830
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget-object v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v2, p1, v3, v4, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 842
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v2, p1, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 843
    return-void

    .line 831
    :cond_1
    const/16 v2, 0xbb

    if-ne p1, v2, :cond_0

    .line 834
    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    add-int/lit8 v1, v2, 0x1

    .line 835
    .local v1, "size":I
    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    if-le v1, v2, :cond_2

    .line 836
    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    .line 838
    :cond_2
    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    goto :goto_0
.end method

.method public visitVarInsn(II)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0xa9

    const/16 v5, 0x36

    .line 766
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    iput v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->lastCodeOffset:I

    .line 768
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v3, :cond_0

    .line 769
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    if-nez v3, :cond_4

    .line 770
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget-object v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    invoke-virtual {v3, p1, p2, v4, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->execute(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V

    .line 789
    :cond_0
    :goto_0
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 792
    const/16 v3, 0x16

    if-eq p1, v3, :cond_1

    const/16 v3, 0x18

    if-eq p1, v3, :cond_1

    const/16 v3, 0x37

    if-eq p1, v3, :cond_1

    const/16 v3, 0x39

    if-ne p1, v3, :cond_7

    .line 794
    :cond_1
    add-int/lit8 v0, p2, 0x2

    .line 798
    .local v0, "n":I
    :goto_1
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxLocals:I

    if-le v0, v3, :cond_2

    .line 799
    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxLocals:I

    .line 803
    .end local v0    # "n":I
    :cond_2
    const/4 v3, 0x4

    if-ge p2, v3, :cond_9

    if-eq p1, v6, :cond_9

    .line 805
    if-ge p1, v5, :cond_8

    .line 807
    add-int/lit8 v3, p1, -0x15

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1a

    add-int v1, v3, p2

    .line 812
    .local v1, "opt":I
    :goto_2
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v3, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 818
    .end local v1    # "opt":I
    :goto_3
    if-lt p1, v5, :cond_3

    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->compute:I

    if-nez v3, :cond_3

    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->handlerCount:I

    if-lez v3, :cond_3

    .line 819
    new-instance v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    invoke-direct {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;-><init>()V

    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->visitLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 821
    :cond_3
    return-void

    .line 773
    :cond_4
    if-ne p1, v6, :cond_5

    .line 775
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v4, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 778
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->currentBlock:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    iput v4, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->inputStackTop:I

    .line 779
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->noSuccessor()V

    goto :goto_0

    .line 781
    :cond_5
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->SIZE:[I

    aget v4, v4, p1

    add-int v2, v3, v4

    .line 782
    .local v2, "size":I
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    if-le v2, v3, :cond_6

    .line 783
    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->maxStackSize:I

    .line 785
    :cond_6
    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->stackSize:I

    goto :goto_0

    .line 796
    .end local v2    # "size":I
    :cond_7
    add-int/lit8 v0, p2, 0x1

    .restart local v0    # "n":I
    goto :goto_1

    .line 810
    .end local v0    # "n":I
    :cond_8
    add-int/lit8 v3, p1, -0x36

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x3b

    add-int v1, v3, p2

    .restart local v1    # "opt":I
    goto :goto_2

    .line 813
    .end local v1    # "opt":I
    :cond_9
    const/16 v3, 0x100

    if-lt p2, v3, :cond_a

    .line 814
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v4, 0xc4

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_3

    .line 816
    :cond_a
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->code:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-virtual {v3, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put11(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_3
.end method
