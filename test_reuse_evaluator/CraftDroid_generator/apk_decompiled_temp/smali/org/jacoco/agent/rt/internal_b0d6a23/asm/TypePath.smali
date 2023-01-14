.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
.super Ljava/lang/Object;
.source "TypePath.java"


# static fields
.field public static final ARRAY_ELEMENT:I = 0x0

.field public static final INNER_TYPE:I = 0x1

.field public static final TYPE_ARGUMENT:I = 0x3

.field public static final WILDCARD_BOUND:I = 0x2


# instance fields
.field b:[B

.field offset:I


# direct methods
.method constructor <init>([BI)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->b:[B

    .line 86
    iput p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->offset:I

    .line 87
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .locals 10
    .param p0, "typePath"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x39

    const/16 v7, 0x30

    const/4 v8, 0x0

    .line 135
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 136
    :cond_0
    const/4 v6, 0x0

    .line 159
    :goto_0
    return-object v6

    .line 138
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 139
    .local v3, "n":I
    new-instance v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v4, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>(I)V

    .line 140
    .local v4, "out":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    invoke-virtual {v4, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByte(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 141
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_7

    .line 142
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 143
    .local v0, "c":C
    const/16 v6, 0x5b

    if-ne v0, v6, :cond_3

    .line 144
    invoke-virtual {v4, v8, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put11(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    :cond_2
    :goto_2
    move v2, v1

    .line 157
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 145
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_3
    const/16 v6, 0x2e

    if-ne v0, v6, :cond_4

    .line 146
    const/4 v6, 0x1

    invoke-virtual {v4, v6, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put11(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_2

    .line 147
    :cond_4
    const/16 v6, 0x2a

    if-ne v0, v6, :cond_5

    .line 148
    const/4 v6, 0x2

    invoke-virtual {v4, v6, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put11(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_2

    .line 149
    :cond_5
    if-lt v0, v7, :cond_2

    if-gt v0, v9, :cond_2

    .line 150
    add-int/lit8 v5, v0, -0x30

    .line 151
    .local v5, "typeArg":I
    :goto_3
    if-ge v1, v3, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v7, :cond_6

    if-gt v0, v9, :cond_6

    .line 152
    mul-int/lit8 v6, v5, 0xa

    add-int/2addr v6, v0

    add-int/lit8 v5, v6, -0x30

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 155
    :cond_6
    const/4 v6, 0x3

    invoke-virtual {v4, v6, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->put11(II)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto :goto_2

    .line 158
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v5    # "typeArg":I
    .restart local v2    # "i":I
    :cond_7
    iget-object v6, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    iget v7, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    div-int/lit8 v7, v7, 0x2

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    .line 159
    new-instance v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    iget-object v7, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    invoke-direct {v6, v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;-><init>([BI)V

    goto :goto_0
.end method


# virtual methods
.method public getLength()I
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->b:[B

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->offset:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public getStep(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->b:[B

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->offset:I

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public getStepArgument(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->b:[B

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->offset:I

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->getLength()I

    move-result v1

    .line 172
    .local v1, "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v1, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 173
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 174
    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->getStep(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 188
    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :pswitch_0
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 179
    :pswitch_1
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 182
    :pswitch_2
    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 185
    :pswitch_3
    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;->getStepArgument(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 191
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
