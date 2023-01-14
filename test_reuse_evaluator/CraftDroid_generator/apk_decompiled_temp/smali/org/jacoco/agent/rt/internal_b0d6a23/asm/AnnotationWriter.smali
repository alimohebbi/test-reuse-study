.class final Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
.source "AnnotationWriter.java"


# instance fields
.field private final bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

.field private final cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

.field private final named:Z

.field next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

.field private final offset:I

.field private final parent:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

.field prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

.field private size:I


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;I)V
    .locals 1
    .param p1, "cw"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;
    .param p2, "named"    # Z
    .param p3, "bv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    .param p4, "parent"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    .param p5, "offset"    # I

    .prologue
    .line 107
    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;-><init>(I)V

    .line 108
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    .line 109
    iput-boolean p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->named:Z

    .line 110
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 111
    iput-object p4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->parent:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 112
    iput p5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->offset:I

    .line 113
    return-void
.end method

.method static put([Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;ILorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V
    .locals 8
    .param p0, "panns"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
    .param p1, "off"    # I
    .param p2, "out"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .prologue
    const/4 v6, 0x0

    .line 294
    array-length v5, p0

    sub-int/2addr v5, p1

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v4, v5, 0x1

    .line 295
    .local v4, "size":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_1

    .line 296
    aget-object v5, p0, v1

    if-nez v5, :cond_0

    move v5, v6

    :goto_1
    add-int/2addr v4, v5

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_0
    aget-object v5, p0, v1

    invoke-virtual {v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->getSize()I

    move-result v5

    goto :goto_1

    .line 298
    :cond_1
    invoke-virtual {p2, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v5

    array-length v7, p0

    sub-int/2addr v7, p1

    invoke-virtual {v5, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 299
    move v1, p1

    :goto_2
    array-length v5, p0

    if-ge v1, v5, :cond_4

    .line 300
    aget-object v0, p0, v1

    .line 301
    .local v0, "aw":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
    const/4 v2, 0x0

    .line 302
    .local v2, "last":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
    const/4 v3, 0x0

    .line 303
    .local v3, "n":I
    :goto_3
    if-eqz v0, :cond_2

    .line 304
    add-int/lit8 v3, v3, 0x1

    .line 305
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->visitEnd()V

    .line 306
    iput-object v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 307
    move-object v2, v0

    .line 308
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    goto :goto_3

    .line 310
    :cond_2
    invoke-virtual {p2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 311
    move-object v0, v2

    .line 312
    :goto_4
    if-eqz v0, :cond_3

    .line 313
    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v5, v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    iget-object v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v7, v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-virtual {p2, v5, v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 314
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    goto :goto_4

    .line 299
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 317
    .end local v0    # "aw":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
    .end local v2    # "last":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
    .end local v3    # "n":I
    :cond_4
    return-void
.end method

.method static putTarget(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V
    .locals 3
    .param p0, "typeRef"    # I
    .param p1, "typePath"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .param p2, "out"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .prologue
    .line 333
    ushr-int/lit8 v1, p0, 0x18

    sparse-switch v1, :sswitch_data_0

    .line 361
    ushr-int/lit8 v1, p0, 0x18

    const v2, 0xffff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    invoke-virtual {p2, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 364
    :goto_0
    if-nez p1, :cond_0

    .line 365
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 370
    :goto_1
    return-void

    .line 337
    :sswitch_0
    ushr-int/lit8 v1, p0, 0x10

    invoke-virtual {p2, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_0

    .line 342
    :sswitch_1
    ushr-int/lit8 v1, p0, 0x18

    invoke-virtual {p2, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_0

    .line 349
    :sswitch_2
    invoke-virtual {p2, p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_0

    .line 367
    :cond_0
    iget-object v1, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->b:[B

    iget v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->offset:I

    aget-byte v1, v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x1

    .line 368
    .local v0, "length":I
    iget-object v1, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->b:[B

    iget v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->offset:I

    invoke-virtual {p2, v1, v2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_1

    .line 333
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
        0x47 -> :sswitch_2
        0x48 -> :sswitch_2
        0x49 -> :sswitch_2
        0x4a -> :sswitch_2
        0x4b -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method getSize()I
    .locals 3

    .prologue
    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "size":I
    move-object v0, p0

    .line 246
    .local v0, "aw":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
    :goto_0
    if-eqz v0, :cond_0

    .line 247
    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/2addr v1, v2

    .line 248
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    goto :goto_0

    .line 250
    :cond_0
    return v1
.end method

.method put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V
    .locals 7
    .param p1, "out"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .prologue
    .line 261
    const/4 v2, 0x0

    .line 262
    .local v2, "n":I
    const/4 v3, 0x2

    .line 263
    .local v3, "size":I
    move-object v0, p0

    .line 264
    .local v0, "aw":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
    const/4 v1, 0x0

    .line 265
    .local v1, "last":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;
    :goto_0
    if-eqz v0, :cond_0

    .line 266
    add-int/lit8 v2, v2, 0x1

    .line 267
    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v4, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/2addr v3, v4

    .line 268
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->visitEnd()V

    .line 269
    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    .line 270
    move-object v1, v0

    .line 271
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {p1, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 274
    invoke-virtual {p1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 275
    move-object v0, v1

    .line 276
    :goto_1
    if-eqz v0, :cond_1

    .line 277
    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v4, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v6, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-virtual {p1, v4, v5, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 278
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    goto :goto_1

    .line 280
    :cond_1
    return-void
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/16 v8, 0x43

    const/16 v7, 0x42

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v6, 0x5b

    .line 121
    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->size:I

    .line 122
    iget-boolean v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->named:Z

    if-eqz v4, :cond_0

    .line 123
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v5, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 125
    :cond_0
    instance-of v4, p2, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 126
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v3, 0x73

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v4, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 190
    :cond_1
    :goto_0
    return-void

    .line 127
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, p2, Ljava/lang/Byte;

    if-eqz v4, :cond_3

    .line 128
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    check-cast p2, Ljava/lang/Byte;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v3

    iget v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v2, v7, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_0

    .line 129
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v4, p2, Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    .line 130
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 131
    .local v1, "v":I
    :goto_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v3, 0x5a

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v4, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v4

    iget v4, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_0

    .end local v1    # "v":I
    :cond_4
    move v1, v3

    .line 130
    goto :goto_1

    .line 132
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v4, p2, Ljava/lang/Character;

    if-eqz v4, :cond_6

    .line 133
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    check-cast p2, Ljava/lang/Character;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v3

    iget v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v2, v8, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_0

    .line 134
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v4, p2, Ljava/lang/Short;

    if-eqz v4, :cond_7

    .line 135
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v3, 0x53

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    check-cast p2, Ljava/lang/Short;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v5

    invoke-virtual {v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v4

    iget v4, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_0

    .line 136
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v4, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    if-eqz v4, :cond_8

    .line 137
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v3, 0x63

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    check-cast p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto/16 :goto_0

    .line 138
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v4, p2, [B

    if-eqz v4, :cond_9

    .line 139
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, [B

    .line 140
    .local v1, "v":[B
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    array-length v3, v1

    invoke-virtual {v2, v6, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 142
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    aget-byte v4, v1, v0

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v3

    iget v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v2, v7, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 144
    .end local v0    # "i":I
    .end local v1    # "v":[B
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v4, p2, [Z

    if-eqz v4, :cond_b

    .line 145
    check-cast p2, [Z

    .end local p2    # "value":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, [Z

    .line 146
    .local v1, "v":[Z
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    array-length v5, v1

    invoke-virtual {v4, v6, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 147
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 148
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v6, 0x5a

    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    aget-boolean v4, v1, v0

    if-eqz v4, :cond_a

    move v4, v2

    :goto_4
    invoke-virtual {v7, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v4

    iget v4, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v5, v6, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    move v4, v3

    .line 148
    goto :goto_4

    .line 150
    .end local v0    # "i":I
    .end local v1    # "v":[Z
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v2, p2, [S

    if-eqz v2, :cond_c

    .line 151
    check-cast p2, [S

    .end local p2    # "value":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, [S

    .line 152
    .local v1, "v":[S
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    array-length v3, v1

    invoke-virtual {v2, v6, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 153
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 154
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v3, 0x53

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    aget-short v5, v1, v0

    invoke-virtual {v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v4

    iget v4, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 156
    .end local v0    # "i":I
    .end local v1    # "v":[S
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v2, p2, [C

    if-eqz v2, :cond_d

    .line 157
    check-cast p2, [C

    .end local p2    # "value":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, [C

    .line 158
    .local v1, "v":[C
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    array-length v3, v1

    invoke-virtual {v2, v6, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 159
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 160
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    aget-char v4, v1, v0

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v3

    iget v3, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v2, v8, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 162
    .end local v0    # "i":I
    .end local v1    # "v":[C
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_d
    instance-of v2, p2, [I

    if-eqz v2, :cond_e

    .line 163
    check-cast p2, [I

    .end local p2    # "value":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, [I

    .line 164
    .local v1, "v":[I
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    array-length v3, v1

    invoke-virtual {v2, v6, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 165
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 166
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v3, 0x49

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    aget v5, v1, v0

    invoke-virtual {v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newInteger(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v4

    iget v4, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 168
    .end local v0    # "i":I
    .end local v1    # "v":[I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_e
    instance-of v2, p2, [J

    if-eqz v2, :cond_f

    .line 169
    check-cast p2, [J

    .end local p2    # "value":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, [J

    .line 170
    .local v1, "v":[J
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    array-length v3, v1

    invoke-virtual {v2, v6, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 171
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 172
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v3, 0x4a

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    aget-wide v6, v1, v0

    invoke-virtual {v4, v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newLong(J)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v4

    iget v4, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 174
    .end local v0    # "i":I
    .end local v1    # "v":[J
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_f
    instance-of v2, p2, [F

    if-eqz v2, :cond_10

    .line 175
    check-cast p2, [F

    .end local p2    # "value":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, [F

    .line 176
    .local v1, "v":[F
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    array-length v3, v1

    invoke-virtual {v2, v6, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 177
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 178
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v3, 0x46

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    aget v5, v1, v0

    invoke-virtual {v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newFloat(F)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v4

    iget v4, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 180
    .end local v0    # "i":I
    .end local v1    # "v":[F
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_10
    instance-of v2, p2, [D

    if-eqz v2, :cond_11

    .line 181
    check-cast p2, [D

    .end local p2    # "value":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, [D

    .line 182
    .local v1, "v":[D
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    array-length v3, v1

    invoke-virtual {v2, v6, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 183
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 184
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v3, 0x44

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    aget-wide v6, v1, v0

    invoke-virtual {v4, v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newDouble(D)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v4

    iget v4, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 187
    .end local v0    # "i":I
    .end local v1    # "v":[D
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v2, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newConstItem(Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    move-result-object v0

    .line 188
    .local v0, "i":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const-string v3, ".s.IFJDCS"

    iget v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    invoke-virtual {v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto/16 :goto_0
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 205
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->size:I

    .line 206
    iget-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->named:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v1, 0x40

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v2, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 211
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v5, v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v5, v5, -0x2

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;I)V

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 216
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->size:I

    .line 217
    iget-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->named:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 222
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget v5, v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v5, v5, -0x2

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;I)V

    return-object v0
.end method

.method public visitEnd()V
    .locals 3

    .prologue
    .line 227
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->parent:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->parent:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    .line 229
    .local v0, "data":[B
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->offset:I

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->size:I

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 230
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->offset:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->size:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 232
    .end local v0    # "data":[B
    :cond_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 195
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->size:I

    .line 196
    iget-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->named:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->bv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    const/16 v1, 0x65

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v2, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    invoke-virtual {v1, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 200
    return-void
.end method
