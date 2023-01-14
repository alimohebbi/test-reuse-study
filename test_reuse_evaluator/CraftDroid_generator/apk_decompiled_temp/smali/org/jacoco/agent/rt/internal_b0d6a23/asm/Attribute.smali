.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"


# instance fields
.field next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

.field public final type:Ljava/lang/String;

.field value:[B


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->type:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method final getCount()I
    .locals 2

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, "count":I
    move-object v0, p0

    .line 175
    .local v0, "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    :goto_0
    if-eqz v0, :cond_0

    .line 176
    add-int/lit8 v1, v1, 0x1

    .line 177
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    goto :goto_0

    .line 179
    :cond_0
    return v1
.end method

.method protected getLabels()[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method final getSize(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;[BIII)I
    .locals 7
    .param p1, "cw"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;
    .param p2, "code"    # [B
    .param p3, "len"    # I
    .param p4, "maxStack"    # I
    .param p5, "maxLocals"    # I

    .prologue
    .line 209
    move-object v0, p0

    .line 210
    .local v0, "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    const/4 v6, 0x0

    .line 211
    .local v6, "size":I
    :goto_0
    if-eqz v0, :cond_0

    .line 212
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 213
    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->write(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;[BIII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    iget v1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v6, v1

    .line 214
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    goto :goto_0

    .line 216
    :cond_0
    return v6
.end method

.method public isCodeAttribute()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public isUnknown()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method final put(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;[BIIILorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;)V
    .locals 7
    .param p1, "cw"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;
    .param p2, "code"    # [B
    .param p3, "len"    # I
    .param p4, "maxStack"    # I
    .param p5, "maxLocals"    # I
    .param p6, "out"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .prologue
    .line 247
    move-object v0, p0

    .line 248
    .local v0, "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    :goto_0
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 249
    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->write(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;[BIII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v6

    .line 250
    .local v6, "b":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p6, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-result-object v1

    iget v2, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 251
    iget-object v1, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    const/4 v2, 0x0

    iget v3, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    invoke-virtual {p6, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 252
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .line 253
    goto :goto_0

    .line 254
    .end local v6    # "b":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    :cond_0
    return-void
.end method

.method protected read(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;II[CI[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    .locals 4
    .param p1, "cr"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "buf"    # [C
    .param p5, "codeOff"    # I
    .param p6, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 128
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->type:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    new-array v1, p3, [B

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->value:[B

    .line 130
    iget-object v1, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->value:[B

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    return-object v0
.end method

.method protected write(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;[BIII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    .locals 2
    .param p1, "cw"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;
    .param p2, "code"    # [B
    .param p3, "len"    # I
    .param p4, "maxStack"    # I
    .param p5, "maxLocals"    # I

    .prologue
    .line 161
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>()V

    .line 162
    .local v0, "v":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->value:[B

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->data:[B

    .line 163
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->value:[B

    array-length v1, v1

    iput v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->length:I

    .line 164
    return-object v0
.end method
