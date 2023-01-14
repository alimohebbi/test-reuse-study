.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
.super Ljava/lang/Object;
.source "Label.java"


# static fields
.field static final DEBUG:I = 0x1

.field static final JSR:I = 0x80

.field static final PUSHED:I = 0x8

.field static final REACHABLE:I = 0x40

.field static final RESIZED:I = 0x4

.field static final RESOLVED:I = 0x2

.field static final RET:I = 0x100

.field static final STORE:I = 0x20

.field static final SUBROUTINE:I = 0x200

.field static final TARGET:I = 0x10

.field static final VISITED:I = 0x400

.field static final VISITED2:I = 0x800


# instance fields
.field frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

.field public info:Ljava/lang/Object;

.field inputStackTop:I

.field line:I

.field next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

.field outputStackMax:I

.field position:I

.field private referenceCount:I

.field private srcAndRefPositions:[I

.field status:I

.field successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

.field successors:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    return-void
.end method

.method private addReference(II)V
    .locals 4
    .param p1, "sourcePosition"    # I
    .param p2, "referencePosition"    # I

    .prologue
    const/4 v3, 0x0

    .line 333
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->srcAndRefPositions:[I

    if-nez v1, :cond_0

    .line 334
    const/4 v1, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->srcAndRefPositions:[I

    .line 336
    :cond_0
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->referenceCount:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->srcAndRefPositions:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 337
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->srcAndRefPositions:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x6

    new-array v0, v1, [I

    .line 338
    .local v0, "a":[I
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->srcAndRefPositions:[I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->srcAndRefPositions:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->srcAndRefPositions:[I

    .line 342
    .end local v0    # "a":[I
    :cond_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->srcAndRefPositions:[I

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->referenceCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->referenceCount:I

    aput p1, v1, v2

    .line 343
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->srcAndRefPositions:[I

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->referenceCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->referenceCount:I

    aput p2, v1, v2

    .line 344
    return-void
.end method


# virtual methods
.method addToSubroutine(JI)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "nbSubroutines"    # I

    .prologue
    .line 474
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 475
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 476
    add-int/lit8 v0, p3, -0x1

    div-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->srcAndRefPositions:[I

    .line 478
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->srcAndRefPositions:[I

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aget v2, v0, v1

    long-to-int v3, p1

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 479
    return-void
.end method

.method getFirst()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    if-nez v0, :cond_0

    .end local p0    # "this":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->frame:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;

    iget-object p0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Frame;->owner:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    goto :goto_0
.end method

.method public getOffset()I
    .locals 2

    .prologue
    .line 273
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Label offset position has not been resolved yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    return v0
.end method

.method inSameSubroutine(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Z
    .locals 4
    .param p1, "block"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    const/4 v1, 0x0

    .line 454
    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_0

    iget v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v1

    .line 457
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->srcAndRefPositions:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 458
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->srcAndRefPositions:[I

    aget v2, v2, v0

    iget-object v3, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->srcAndRefPositions:[I

    aget v3, v3, v0

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 459
    const/4 v1, 0x1

    goto :goto_0

    .line 457
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method inSubroutine(J)Z
    .locals 5
    .param p1, "id"    # J

    .prologue
    const/4 v0, 0x0

    .line 438
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->srcAndRefPositions:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aget v1, v1, v2

    long-to-int v2, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 441
    :cond_0
    return v0
.end method

.method put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;IZ)V
    .locals 3
    .param p1, "owner"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;
    .param p2, "out"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    .param p3, "source"    # I
    .param p4, "wideOffset"    # Z

    .prologue
    const/4 v2, -0x1

    .line 301
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 302
    if-eqz p4, :cond_0

    .line 303
    rsub-int/lit8 v0, p3, -0x1

    iget v1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->addReference(II)V

    .line 304
    invoke-virtual {p2, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 316
    :goto_0
    return-void

    .line 306
    :cond_0
    iget v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-direct {p0, p3, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->addReference(II)V

    .line 307
    invoke-virtual {p2, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_0

    .line 310
    :cond_1
    if-eqz p4, :cond_2

    .line 311
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_0

    .line 313
    :cond_2
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_0
.end method

.method resolve(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;I[B)Z
    .locals 10
    .param p1, "owner"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;
    .param p2, "position"    # I
    .param p3, "data"    # [B

    .prologue
    .line 371
    const/4 v2, 0x0

    .line 372
    .local v2, "needUpdate":Z
    iget v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 373
    iput p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "i":I
    :goto_0
    iget v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->referenceCount:I

    if-ge v0, v8, :cond_4

    .line 376
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->srcAndRefPositions:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget v7, v8, v0

    .line 377
    .local v7, "source":I
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->srcAndRefPositions:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v5, v8, v1

    .line 379
    .local v5, "reference":I
    if-ltz v7, :cond_3

    .line 380
    sub-int v3, p2, v7

    .line 381
    .local v3, "offset":I
    const/16 v8, -0x8000

    if-lt v3, v8, :cond_0

    const/16 v8, 0x7fff

    if-le v3, v8, :cond_1

    .line 391
    :cond_0
    add-int/lit8 v8, v5, -0x1

    aget-byte v8, p3, v8

    and-int/lit16 v4, v8, 0xff

    .line 392
    .local v4, "opcode":I
    const/16 v8, 0xa8

    if-gt v4, v8, :cond_2

    .line 394
    add-int/lit8 v8, v5, -0x1

    add-int/lit8 v9, v4, 0x31

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 399
    :goto_1
    const/4 v2, 0x1

    .line 401
    .end local v4    # "opcode":I
    :cond_1
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "reference":I
    .local v6, "reference":I
    ushr-int/lit8 v8, v3, 0x8

    int-to-byte v8, v8

    aput-byte v8, p3, v5

    .line 402
    int-to-byte v8, v3

    aput-byte v8, p3, v6

    move v5, v6

    .end local v6    # "reference":I
    .restart local v5    # "reference":I
    goto :goto_0

    .line 397
    .restart local v4    # "opcode":I
    :cond_2
    add-int/lit8 v8, v5, -0x1

    add-int/lit8 v9, v4, 0x14

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    goto :goto_1

    .line 404
    .end local v3    # "offset":I
    .end local v4    # "opcode":I
    :cond_3
    add-int v8, p2, v7

    add-int/lit8 v3, v8, 0x1

    .line 405
    .restart local v3    # "offset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "reference":I
    .restart local v6    # "reference":I
    ushr-int/lit8 v8, v3, 0x18

    int-to-byte v8, v8

    aput-byte v8, p3, v5

    .line 406
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "reference":I
    .restart local v5    # "reference":I
    ushr-int/lit8 v8, v3, 0x10

    int-to-byte v8, v8

    aput-byte v8, p3, v6

    .line 407
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "reference":I
    .restart local v6    # "reference":I
    ushr-int/lit8 v8, v3, 0x8

    int-to-byte v8, v8

    aput-byte v8, p3, v5

    .line 408
    int-to-byte v8, v3

    aput-byte v8, p3, v6

    move v5, v6

    .end local v6    # "reference":I
    .restart local v5    # "reference":I
    goto :goto_0

    .line 411
    .end local v3    # "offset":I
    .end local v5    # "reference":I
    .end local v7    # "source":I
    :cond_4
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method visitSubroutine(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;JI)V
    .locals 4
    .param p1, "JSR"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p2, "id"    # J
    .param p4, "nbSubroutines"    # I

    .prologue
    .line 499
    move-object v2, p0

    .line 500
    .local v2, "stack":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :cond_0
    if-eqz v2, :cond_5

    .line 502
    move-object v1, v2

    .line 503
    .local v1, "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    iget-object v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 504
    const/4 v3, 0x0

    iput-object v3, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 506
    if-eqz p1, :cond_4

    .line 507
    iget v3, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    and-int/lit16 v3, v3, 0x800

    if-nez v3, :cond_0

    .line 510
    iget v3, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 512
    iget v3, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_1

    .line 513
    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->inSameSubroutine(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 514
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;-><init>()V

    .line 515
    .local v0, "e":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;
    iget v3, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->inputStackTop:I

    iput v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->info:I

    .line 516
    iget-object v3, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    iget-object v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iput-object v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 517
    iget-object v3, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    iput-object v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    .line 518
    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    .line 530
    .end local v0    # "e":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;
    :cond_1
    :goto_0
    iget-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    .line 531
    .restart local v0    # "e":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;
    :goto_1
    if-eqz v0, :cond_0

    .line 535
    iget v3, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    iget-object v3, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->successors:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    iget-object v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    if-eq v0, v3, :cond_3

    .line 537
    :cond_2
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget-object v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-nez v3, :cond_3

    .line 538
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iput-object v2, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 539
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->successor:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 542
    :cond_3
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;

    goto :goto_1

    .line 523
    .end local v0    # "e":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Edge;
    :cond_4
    invoke-virtual {v1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->inSubroutine(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 527
    invoke-virtual {v1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->addToSubroutine(JI)V

    goto :goto_0

    .line 545
    .end local v1    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :cond_5
    return-void
.end method
