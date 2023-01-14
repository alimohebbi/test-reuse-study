.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
.super Ljava/lang/Object;
.source "ByteVector.java"


# instance fields
.field data:[B

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    .line 67
    return-void
.end method

.method private enlarge(I)V
    .locals 6
    .param p1, "size"    # I

    .prologue
    const/4 v5, 0x0

    .line 333
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    array-length v3, v3

    mul-int/lit8 v0, v3, 0x2

    .line 334
    .local v0, "length1":I
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int v1, v3, p1

    .line 335
    .local v1, "length2":I
    if-le v0, v1, :cond_0

    .end local v0    # "length1":I
    :goto_0
    new-array v2, v0, [B

    .line 336
    .local v2, "newData":[B
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    .line 338
    return-void

    .end local v2    # "newData":[B
    .restart local v0    # "length1":I
    :cond_0
    move v0, v1

    .line 335
    goto :goto_0
.end method


# virtual methods
.method encodeUTF8(Ljava/lang/String;II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    .locals 10
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "maxByteLength"    # I

    .prologue
    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 260
    .local v2, "charLength":I
    move v0, p2

    .line 262
    .local v0, "byteLength":I
    move v3, p2

    .local v3, "j":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 263
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 264
    .local v1, "c":C
    const/4 v7, 0x1

    if-lt v1, v7, :cond_0

    const/16 v7, 0x7f

    if-gt v1, v7, :cond_0

    .line 265
    add-int/lit8 v0, v0, 0x1

    .line 262
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 266
    :cond_0
    const/16 v7, 0x7ff

    if-le v1, v7, :cond_1

    .line 267
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 269
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 272
    .end local v1    # "c":C
    :cond_2
    if-le v0, p3, :cond_3

    .line 273
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 275
    :cond_3
    iget v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    sub-int/2addr v7, p2

    add-int/lit8 v6, v7, -0x2

    .line 276
    .local v6, "start":I
    if-ltz v6, :cond_4

    .line 277
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    ushr-int/lit8 v8, v0, 0x8

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    .line 278
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    add-int/lit8 v8, v6, 0x1

    int-to-byte v9, v0

    aput-byte v9, v7, v8

    .line 280
    :cond_4
    iget v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/2addr v7, v0

    sub-int/2addr v7, p2

    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    array-length v8, v8

    if-le v7, v8, :cond_5

    .line 281
    sub-int v7, v0, p2

    invoke-direct {p0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->enlarge(I)V

    .line 283
    :cond_5
    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 284
    .local v4, "len":I
    move v3, p2

    move v5, v4

    .end local v4    # "len":I
    .local v5, "len":I
    :goto_2
    if-ge v3, v2, :cond_8

    .line 285
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 286
    .restart local v1    # "c":C
    const/4 v7, 0x1

    if-lt v1, v7, :cond_6

    const/16 v7, 0x7f

    if-gt v1, v7, :cond_6

    .line 287
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "len":I
    .restart local v4    # "len":I
    int-to-byte v8, v1

    aput-byte v8, v7, v5

    .line 284
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "len":I
    .restart local v5    # "len":I
    goto :goto_2

    .line 288
    :cond_6
    const/16 v7, 0x7ff

    if-le v1, v7, :cond_7

    .line 289
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "len":I
    .restart local v4    # "len":I
    shr-int/lit8 v8, v1, 0xc

    and-int/lit8 v8, v8, 0xf

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v7, v5

    .line 290
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "len":I
    .restart local v5    # "len":I
    shr-int/lit8 v8, v1, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v7, v4

    .line 291
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "len":I
    .restart local v4    # "len":I
    and-int/lit8 v8, v1, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v7, v5

    goto :goto_3

    .line 293
    .end local v4    # "len":I
    .restart local v5    # "len":I
    :cond_7
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "len":I
    .restart local v4    # "len":I
    shr-int/lit8 v8, v1, 0x6

    and-int/lit8 v8, v8, 0x1f

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v7, v5

    .line 294
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "len":I
    .restart local v5    # "len":I
    and-int/lit8 v8, v1, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v7, v4

    move v4, v5

    .end local v5    # "len":I
    .restart local v4    # "len":I
    goto :goto_3

    .line 297
    .end local v1    # "c":C
    .end local v4    # "len":I
    .restart local v5    # "len":I
    :cond_8
    iput v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 298
    return-object p0
.end method

.method put11(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    .locals 5
    .param p1, "b1"    # I
    .param p2, "b2"    # I

    .prologue
    .line 98
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 99
    .local v1, "length":I
    add-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 100
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->enlarge(I)V

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    .line 103
    .local v0, "data":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "length":I
    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 104
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "length":I
    .restart local v1    # "length":I
    int-to-byte v3, p2

    aput-byte v3, v0, v2

    .line 105
    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 106
    return-object p0
.end method

.method put12(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    .locals 5
    .param p1, "b"    # I
    .param p2, "s"    # I

    .prologue
    .line 140
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 141
    .local v1, "length":I
    add-int/lit8 v3, v1, 0x3

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 142
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->enlarge(I)V

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    .line 145
    .local v0, "data":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "length":I
    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 146
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "length":I
    .restart local v1    # "length":I
    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 147
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "length":I
    .restart local v2    # "length":I
    int-to-byte v3, p2

    aput-byte v3, v0, v1

    .line 148
    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 149
    return-object p0
.end method

.method public putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    .locals 4
    .param p1, "b"    # I

    .prologue
    .line 78
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 79
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 80
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->enlarge(I)V

    .line 82
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "length":I
    .local v1, "length":I
    int-to-byte v3, p1

    aput-byte v3, v2, v0

    .line 83
    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 84
    return-object p0
.end method

.method public putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 315
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 316
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->enlarge(I)V

    .line 318
    :cond_0
    if-eqz p1, :cond_1

    .line 319
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    :cond_1
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 322
    return-object p0
.end method

.method public putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 161
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 162
    .local v1, "length":I
    add-int/lit8 v3, v1, 0x4

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 163
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->enlarge(I)V

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    .line 166
    .local v0, "data":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "length":I
    .local v2, "length":I
    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 167
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "length":I
    .restart local v1    # "length":I
    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 168
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "length":I
    .restart local v2    # "length":I
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 169
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "length":I
    .restart local v1    # "length":I
    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 170
    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 171
    return-object p0
.end method

.method public putLong(J)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    .locals 7
    .param p1, "l"    # J

    .prologue
    .line 183
    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 184
    .local v2, "length":I
    add-int/lit8 v4, v2, 0x8

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    array-length v5, v5

    if-le v4, v5, :cond_0

    .line 185
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->enlarge(I)V

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    .line 188
    .local v0, "data":[B
    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v1, v4

    .line 189
    .local v1, "i":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "length":I
    .local v3, "length":I
    ushr-int/lit8 v4, v1, 0x18

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 190
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "length":I
    .restart local v2    # "length":I
    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 191
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "length":I
    .restart local v3    # "length":I
    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 192
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "length":I
    .restart local v2    # "length":I
    int-to-byte v4, v1

    aput-byte v4, v0, v3

    .line 193
    long-to-int v1, p1

    .line 194
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "length":I
    .restart local v3    # "length":I
    ushr-int/lit8 v4, v1, 0x18

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 195
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "length":I
    .restart local v2    # "length":I
    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 196
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "length":I
    .restart local v3    # "length":I
    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 197
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "length":I
    .restart local v2    # "length":I
    int-to-byte v4, v1

    aput-byte v4, v0, v3

    .line 198
    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 199
    return-object p0
.end method

.method public putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    .locals 5
    .param p1, "s"    # I

    .prologue
    .line 118
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 119
    .local v1, "length":I
    add-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    array-length v4, v4

    if-le v3, v4, :cond_0

    .line 120
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->enlarge(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    .line 123
    .local v0, "data":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "length":I
    .local v2, "length":I
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 124
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "length":I
    .restart local v1    # "length":I
    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 125
    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 126
    return-object p0
.end method

.method public putUTF8(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    .locals 9
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const v8, 0xffff

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 212
    .local v1, "charLength":I
    if-le v1, v8, :cond_0

    .line 213
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 215
    :cond_0
    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 216
    .local v4, "len":I
    add-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v1

    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    array-length v7, v7

    if-le v6, v7, :cond_1

    .line 217
    add-int/lit8 v6, v1, 0x2

    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->enlarge(I)V

    .line 219
    :cond_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    .line 226
    .local v2, "data":[B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "len":I
    .local v5, "len":I
    ushr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    .line 227
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "len":I
    .restart local v4    # "len":I
    int-to-byte v6, v1

    aput-byte v6, v2, v5

    .line 228
    const/4 v3, 0x0

    .local v3, "i":I
    move v5, v4

    .end local v4    # "len":I
    .restart local v5    # "len":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 229
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 230
    .local v0, "c":C
    const/4 v6, 0x1

    if-lt v0, v6, :cond_2

    const/16 v6, 0x7f

    if-gt v0, v6, :cond_2

    .line 231
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "len":I
    .restart local v4    # "len":I
    int-to-byte v6, v0

    aput-byte v6, v2, v5

    .line 228
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "len":I
    .restart local v5    # "len":I
    goto :goto_0

    .line 233
    :cond_2
    iput v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 234
    invoke-virtual {p0, p1, v3, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->encodeUTF8(Ljava/lang/String;II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object p0

    .line 238
    .end local v0    # "c":C
    .end local p0    # "this":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    :goto_1
    return-object p0

    .line 237
    .restart local p0    # "this":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    :cond_3
    iput v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    goto :goto_1
.end method
