.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;
.super Ljava/lang/Object;
.source "ClassReader.java"


# static fields
.field static final ANNOTATIONS:Z = true

.field public static final EXPAND_FRAMES:I = 0x8

.field static final FRAMES:Z = true

.field static final RESIZE:Z = true

.field static final SIGNATURES:Z = true

.field public static final SKIP_CODE:I = 0x1

.field public static final SKIP_DEBUG:I = 0x2

.field public static final SKIP_FRAMES:I = 0x4

.field static final WRITER:Z = true


# instance fields
.field public final b:[B

.field public final header:I

.field private final items:[I

.field private final maxStringLength:I

.field private final strings:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(Ljava/io/InputStream;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;-><init>([B)V

    .line 425
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    .line 437
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x1

    .line 436
    invoke-static {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(Ljava/io/InputStream;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;-><init>([B)V

    .line 439
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 153
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;-><init>([BII)V

    .line 154
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    .line 169
    add-int/lit8 v5, p2, 0x6

    invoke-virtual {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readShort(I)S

    move-result v5

    const/16 v6, 0x34

    if-le v5, v6, :cond_0

    .line 170
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 173
    :cond_0
    add-int/lit8 v5, p2, 0x8

    invoke-virtual {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    .line 174
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    array-length v3, v5

    .line 175
    .local v3, "n":I
    new-array v5, v3, [Ljava/lang/String;

    iput-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->strings:[Ljava/lang/String;

    .line 176
    const/4 v2, 0x0

    .line 177
    .local v2, "max":I
    add-int/lit8 v1, p2, 0xa

    .line 178
    .local v1, "index":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 179
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    add-int/lit8 v6, v1, 0x1

    aput v6, v5, v0

    .line 181
    aget-byte v5, p1, v1

    packed-switch v5, :pswitch_data_0

    .line 209
    :pswitch_0
    const/4 v4, 0x3

    .line 212
    .local v4, "size":I
    :cond_1
    :goto_1
    add-int/2addr v1, v4

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v4    # "size":I
    :pswitch_1
    const/4 v4, 0x5

    .line 190
    .restart local v4    # "size":I
    goto :goto_1

    .line 193
    .end local v4    # "size":I
    :pswitch_2
    const/16 v4, 0x9

    .line 194
    .restart local v4    # "size":I
    add-int/lit8 v0, v0, 0x1

    .line 195
    goto :goto_1

    .line 197
    .end local v4    # "size":I
    :pswitch_3
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v4, v5, 0x3

    .line 198
    .restart local v4    # "size":I
    if-le v4, v2, :cond_1

    .line 199
    move v2, v4

    goto :goto_1

    .line 203
    .end local v4    # "size":I
    :pswitch_4
    const/4 v4, 0x4

    .line 204
    .restart local v4    # "size":I
    goto :goto_1

    .line 214
    .end local v4    # "size":I
    :cond_2
    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->maxStringLength:I

    .line 216
    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->header:I

    .line 217
    return-void

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private copyBootstrapMethods(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;[C)V
    .locals 20
    .param p1, "classWriter"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;
    .param p2, "items"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .param p3, "c"    # [C

    .prologue
    .line 379
    invoke-direct/range {p0 .. p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->getAttributes()I

    move-result v15

    .line 380
    .local v15, "u":I
    const/4 v7, 0x0

    .line 381
    .local v7, "found":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    .local v9, "i":I
    :goto_0
    if-lez v9, :cond_0

    .line 382
    add-int/lit8 v17, v15, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, "attrName":Ljava/lang/String;
    const-string v17, "BootstrapMethods"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 384
    const/4 v7, 0x1

    .line 389
    .end local v3    # "attrName":Ljava/lang/String;
    :cond_0
    if-nez v7, :cond_2

    .line 413
    :goto_1
    return-void

    .line 387
    .restart local v3    # "attrName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v17, v15, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v17

    add-int/lit8 v17, v17, 0x6

    add-int v15, v15, v17

    .line 381
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 393
    .end local v3    # "attrName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v17, v15, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .line 394
    .local v5, "boostrapMethodCount":I
    const/4 v12, 0x0

    .local v12, "j":I
    add-int/lit8 v16, v15, 0xa

    .local v16, "v":I
    :goto_2
    if-ge v12, v5, :cond_4

    .line 395
    sub-int v17, v16, v15

    add-int/lit8 v14, v17, -0xa

    .line 396
    .local v14, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    move-result v8

    .line 397
    .local v8, "hashCode":I
    add-int/lit8 v17, v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v13

    .local v13, "k":I
    :goto_3
    if-lez v13, :cond_3

    .line 398
    add-int/lit8 v17, v16, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    move-result v17

    xor-int v8, v8, v17

    .line 399
    add-int/lit8 v16, v16, 0x2

    .line 397
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 401
    :cond_3
    add-int/lit8 v16, v16, 0x4

    .line 402
    new-instance v11, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v11, v12}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>(I)V

    .line 403
    .local v11, "item":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    const v17, 0x7fffffff

    and-int v17, v17, v8

    move/from16 v0, v17

    invoke-virtual {v11, v14, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(II)V

    .line 404
    iget v0, v11, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    rem-int v10, v17, v18

    .line 405
    .local v10, "index":I
    aget-object v17, p2, v10

    move-object/from16 v0, v17

    iput-object v0, v11, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 406
    aput-object v11, p2, v10

    .line 394
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 408
    .end local v8    # "hashCode":I
    .end local v10    # "index":I
    .end local v11    # "item":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .end local v13    # "k":I
    .end local v14    # "position":I
    :cond_4
    add-int/lit8 v17, v15, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v4

    .line 409
    .local v4, "attrSize":I
    new-instance v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    add-int/lit8 v17, v4, 0x3e

    move/from16 v0, v17

    invoke-direct {v6, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;-><init>(I)V

    .line 410
    .local v6, "bootstrapMethods":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    move-object/from16 v17, v0

    add-int/lit8 v18, v15, 0xa

    add-int/lit8 v19, v4, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 411
    move-object/from16 v0, p1

    iput v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->bootstrapMethodsCount:I

    .line 412
    move-object/from16 v0, p1

    iput-object v6, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    goto/16 :goto_1
.end method

.method private getAttributes()I
    .locals 5

    .prologue
    .line 2187
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->header:I

    add-int/lit8 v3, v3, 0x8

    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->header:I

    add-int/lit8 v4, v4, 0x6

    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 2189
    .local v2, "u":I
    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 2190
    add-int/lit8 v3, v2, 0x8

    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .local v1, "j":I
    :goto_1
    if-lez v1, :cond_0

    .line 2191
    add-int/lit8 v3, v2, 0xc

    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    .line 2190
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2193
    :cond_0
    add-int/lit8 v2, v2, 0x8

    .line 2189
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2195
    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x2

    .line 2196
    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    :goto_2
    if-lez v0, :cond_3

    .line 2197
    add-int/lit8 v3, v2, 0x8

    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .restart local v1    # "j":I
    :goto_3
    if-lez v1, :cond_2

    .line 2198
    add-int/lit8 v3, v2, 0xc

    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    .line 2197
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2200
    :cond_2
    add-int/lit8 v2, v2, 0x8

    .line 2196
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2203
    .end local v1    # "j":I
    :cond_3
    add-int/lit8 v3, v2, 0x2

    return v3
.end method

.method private getImplicitFrame(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;)V
    .locals 10
    .param p1, "frame"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;

    .prologue
    const/16 v9, 0x3b

    .line 1964
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->desc:Ljava/lang/String;

    .line 1965
    .local v0, "desc":Ljava/lang/String;
    iget-object v6, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->local:[Ljava/lang/Object;

    .line 1966
    .local v6, "locals":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1967
    .local v4, "local":I
    iget v7, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->access:I

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_0

    .line 1968
    const-string v7, "<init>"

    iget-object v8, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1969
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "local":I
    .local v5, "local":I
    sget-object v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v7, v6, v4

    move v4, v5

    .line 1974
    .end local v5    # "local":I
    .restart local v4    # "local":I
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 1976
    .local v1, "i":I
    :goto_1
    move v3, v1

    .line 1977
    .local v3, "j":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 2016
    iput v4, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->localCount:I

    .line 2017
    return-void

    .line 1971
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "local":I
    .restart local v5    # "local":I
    iget v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->header:I

    add-int/lit8 v7, v7, 0x2

    iget-object v8, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->buffer:[C

    invoke-virtual {p0, v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    move v4, v5

    .end local v5    # "local":I
    .restart local v4    # "local":I
    goto :goto_0

    .line 1983
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    :sswitch_0
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "local":I
    .restart local v5    # "local":I
    sget-object v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v7, v6, v4

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v4, v5

    .line 1984
    .end local v5    # "local":I
    .restart local v4    # "local":I
    goto :goto_1

    .line 1986
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "local":I
    .restart local v5    # "local":I
    sget-object v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v7, v6, v4

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v4, v5

    .line 1987
    .end local v5    # "local":I
    .restart local v4    # "local":I
    goto :goto_1

    .line 1989
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_2
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "local":I
    .restart local v5    # "local":I
    sget-object v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v7, v6, v4

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v4, v5

    .line 1990
    .end local v5    # "local":I
    .restart local v4    # "local":I
    goto :goto_1

    .line 1992
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_3
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "local":I
    .restart local v5    # "local":I
    sget-object v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v7, v6, v4

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v4, v5

    .line 1993
    .end local v5    # "local":I
    .restart local v4    # "local":I
    goto :goto_1

    .line 1995
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5b

    if-ne v7, v8, :cond_2

    .line 1996
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1998
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x4c

    if-ne v7, v8, :cond_3

    .line 1999
    add-int/lit8 v1, v1, 0x1

    .line 2000
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_3

    .line 2001
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2004
    :cond_3
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "local":I
    .restart local v5    # "local":I
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    move v4, v5

    .line 2005
    .end local v5    # "local":I
    .restart local v4    # "local":I
    goto :goto_1

    .line 2007
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_4

    .line 2008
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2010
    :cond_4
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "local":I
    .restart local v5    # "local":I
    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v4, v5

    .line 2011
    .end local v5    # "local":I
    .restart local v4    # "local":I
    goto/16 :goto_1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_4
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_5
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_4

    .line 1977
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

.method private readAnnotationTarget(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;I)I
    .locals 9
    .param p1, "context"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;
    .param p2, "u"    # I

    .prologue
    const/high16 v6, -0x1000000

    .line 1652
    invoke-virtual {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v5

    .line 1653
    .local v5, "target":I
    ushr-int/lit8 v7, v5, 0x18

    sparse-switch v7, :sswitch_data_0

    .line 1702
    ushr-int/lit8 v7, v5, 0x18

    const/16 v8, 0x43

    if-ge v7, v8, :cond_0

    const/16 v6, -0x100

    :cond_0
    and-int/2addr v5, v6

    .line 1703
    add-int/lit8 p2, p2, 0x3

    .line 1706
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readByte(I)I

    move-result v3

    .line 1707
    .local v3, "pathLength":I
    iput v5, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typeRef:I

    .line 1708
    if-nez v3, :cond_2

    const/4 v6, 0x0

    :goto_1
    iput-object v6, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    .line 1709
    add-int/lit8 v6, p2, 0x1

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v6, v7

    return v6

    .line 1657
    .end local v3    # "pathLength":I
    :sswitch_0
    const/high16 v6, -0x10000

    and-int/2addr v5, v6

    .line 1658
    add-int/lit8 p2, p2, 0x2

    .line 1659
    goto :goto_0

    .line 1663
    :sswitch_1
    and-int/2addr v5, v6

    .line 1664
    add-int/lit8 p2, p2, 0x1

    .line 1665
    goto :goto_0

    .line 1668
    :sswitch_2
    and-int/2addr v5, v6

    .line 1669
    add-int/lit8 v6, p2, 0x1

    invoke-virtual {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1670
    .local v2, "n":I
    new-array v6, v2, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iput-object v6, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->start:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1671
    new-array v6, v2, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iput-object v6, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->end:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1672
    new-array v6, v2, [I

    iput-object v6, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->index:[I

    .line 1673
    add-int/lit8 p2, p2, 0x3

    .line 1674
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_1

    .line 1675
    invoke-virtual {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 1676
    .local v4, "start":I
    add-int/lit8 v6, p2, 0x2

    invoke-virtual {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1677
    .local v1, "length":I
    iget-object v6, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->start:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget-object v7, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->labels:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    invoke-virtual {p0, v4, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v7

    aput-object v7, v6, v0

    .line 1678
    iget-object v6, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->end:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    add-int v7, v4, v1

    iget-object v8, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->labels:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    invoke-virtual {p0, v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v7

    aput-object v7, v6, v0

    .line 1679
    iget-object v6, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->index:[I

    add-int/lit8 v7, p2, 0x4

    invoke-virtual {p0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    aput v7, v6, v0

    .line 1680
    add-int/lit8 p2, p2, 0x6

    .line 1674
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1689
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "n":I
    .end local v4    # "start":I
    :sswitch_3
    const v6, -0xffff01

    and-int/2addr v5, v6

    .line 1690
    add-int/lit8 p2, p2, 0x4

    .line 1691
    goto :goto_0

    .line 1708
    .restart local v3    # "pathLength":I
    :cond_2
    new-instance v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    invoke-direct {v6, v7, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;-><init>([BI)V

    goto :goto_1

    .line 1653
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
        0x40 -> :sswitch_2
        0x41 -> :sswitch_2
        0x47 -> :sswitch_3
        0x48 -> :sswitch_3
        0x49 -> :sswitch_3
        0x4a -> :sswitch_3
        0x4b -> :sswitch_3
    .end sparse-switch
.end method

.method private readAnnotationValue(I[CLjava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I
    .locals 16
    .param p1, "v"    # I
    .param p2, "buf"    # [C
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "av"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    .prologue
    .line 1810
    if-nez p4, :cond_0

    .line 1811
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    aget-byte v13, v13, p1

    and-int/lit16 v13, v13, 0xff

    sparse-switch v13, :sswitch_data_0

    .line 1819
    add-int/lit8 v13, p1, 0x3

    .line 1953
    :goto_0
    return v13

    .line 1813
    :sswitch_0
    add-int/lit8 v13, p1, 0x5

    goto :goto_0

    .line 1815
    :sswitch_1
    add-int/lit8 v13, p1, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v1, v14, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result v13

    goto :goto_0

    .line 1817
    :sswitch_2
    add-int/lit8 v13, p1, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v1, v14, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result v13

    goto :goto_0

    .line 1822
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    add-int/lit8 v11, p1, 0x1

    .end local p1    # "v":I
    .local v11, "v":I
    aget-byte v13, v13, p1

    and-int/lit16 v13, v13, 0xff

    sparse-switch v13, :sswitch_data_1

    move/from16 p1, v11

    .end local v11    # "v":I
    .restart local p1    # "v":I
    :goto_1
    move/from16 v13, p1

    .line 1953
    goto :goto_0

    .line 1827
    .end local p1    # "v":I
    .restart local v11    # "v":I
    :sswitch_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1828
    add-int/lit8 p1, v11, 0x2

    .line 1829
    .end local v11    # "v":I
    .restart local p1    # "v":I
    goto :goto_1

    .line 1831
    .end local p1    # "v":I
    .restart local v11    # "v":I
    :sswitch_4
    new-instance v13, Ljava/lang/Byte;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    .line 1832
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v15

    aget v14, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v14

    int-to-byte v14, v14

    invoke-direct {v13, v14}, Ljava/lang/Byte;-><init>(B)V

    .line 1831
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1833
    add-int/lit8 p1, v11, 0x2

    .line 1834
    .end local v11    # "v":I
    .restart local p1    # "v":I
    goto :goto_1

    .line 1836
    .end local p1    # "v":I
    .restart local v11    # "v":I
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    .line 1837
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    aget v13, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v13

    if-nez v13, :cond_1

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1836
    :goto_2
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1839
    add-int/lit8 p1, v11, 0x2

    .line 1840
    .end local v11    # "v":I
    .restart local p1    # "v":I
    goto :goto_1

    .line 1837
    .end local p1    # "v":I
    .restart local v11    # "v":I
    :cond_1
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 1842
    :sswitch_6
    new-instance v13, Ljava/lang/Short;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    .line 1843
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v15

    aget v14, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v14

    int-to-short v14, v14

    invoke-direct {v13, v14}, Ljava/lang/Short;-><init>(S)V

    .line 1842
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1844
    add-int/lit8 p1, v11, 0x2

    .line 1845
    .end local v11    # "v":I
    .restart local p1    # "v":I
    goto/16 :goto_1

    .line 1847
    .end local p1    # "v":I
    .restart local v11    # "v":I
    :sswitch_7
    new-instance v13, Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    .line 1848
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v15

    aget v14, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v14

    int-to-char v14, v14

    invoke-direct {v13, v14}, Ljava/lang/Character;-><init>(C)V

    .line 1847
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1849
    add-int/lit8 p1, v11, 0x2

    .line 1850
    .end local v11    # "v":I
    .restart local p1    # "v":I
    goto/16 :goto_1

    .line 1852
    .end local p1    # "v":I
    .restart local v11    # "v":I
    :sswitch_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1853
    add-int/lit8 p1, v11, 0x2

    .line 1854
    .end local v11    # "v":I
    .restart local p1    # "v":I
    goto/16 :goto_1

    .line 1856
    .end local p1    # "v":I
    .restart local v11    # "v":I
    :sswitch_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v14, v11, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13, v14}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    add-int/lit8 p1, v11, 0x4

    .line 1858
    .end local v11    # "v":I
    .restart local p1    # "v":I
    goto/16 :goto_1

    .line 1860
    .end local p1    # "v":I
    .restart local v11    # "v":I
    :sswitch_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v13

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1861
    add-int/lit8 p1, v11, 0x2

    .line 1862
    .end local v11    # "v":I
    .restart local p1    # "v":I
    goto/16 :goto_1

    .line 1864
    .end local p1    # "v":I
    .restart local v11    # "v":I
    :sswitch_b
    add-int/lit8 v13, v11, 0x2

    const/4 v14, 0x1

    .line 1865
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v15

    .line 1864
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v1, v14, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result p1

    .line 1866
    .end local v11    # "v":I
    .restart local p1    # "v":I
    goto/16 :goto_1

    .line 1868
    .end local p1    # "v":I
    .restart local v11    # "v":I
    :sswitch_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    .line 1869
    .local v9, "size":I
    add-int/lit8 p1, v11, 0x2

    .line 1870
    .end local v11    # "v":I
    .restart local p1    # "v":I
    if-nez v9, :cond_2

    .line 1871
    add-int/lit8 v13, p1, -0x2

    const/4 v14, 0x0

    .line 1872
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v15

    .line 1871
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v1, v14, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result v13

    goto/16 :goto_0

    .line 1874
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    add-int/lit8 v11, p1, 0x1

    .end local p1    # "v":I
    .restart local v11    # "v":I
    aget-byte v13, v13, p1

    and-int/lit16 v13, v13, 0xff

    sparse-switch v13, :sswitch_data_2

    .line 1950
    add-int/lit8 v13, v11, -0x3

    const/4 v14, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v1, v14, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result p1

    .end local v11    # "v":I
    .restart local p1    # "v":I
    goto/16 :goto_1

    .line 1876
    .end local p1    # "v":I
    .restart local v11    # "v":I
    :sswitch_d
    new-array v2, v9, [B

    .line 1877
    .local v2, "bv":[B
    const/4 v6, 0x0

    .local v6, "i":I
    move/from16 p1, v11

    .end local v11    # "v":I
    .restart local p1    # "v":I
    :goto_3
    if-ge v6, v9, :cond_3

    .line 1878
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    invoke-virtual/range {p0 .. p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    aget v13, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v2, v6

    .line 1879
    add-int/lit8 p1, p1, 0x3

    .line 1877
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1881
    :cond_3
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1882
    add-int/lit8 p1, p1, -0x1

    .line 1883
    goto/16 :goto_1

    .line 1885
    .end local v2    # "bv":[B
    .end local v6    # "i":I
    .end local p1    # "v":I
    .restart local v11    # "v":I
    :sswitch_e
    new-array v12, v9, [Z

    .line 1886
    .local v12, "zv":[Z
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move/from16 p1, v11

    .end local v11    # "v":I
    .restart local p1    # "v":I
    :goto_4
    if-ge v6, v9, :cond_5

    .line 1887
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    invoke-virtual/range {p0 .. p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    aget v13, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    :goto_5
    aput-boolean v13, v12, v6

    .line 1888
    add-int/lit8 p1, p1, 0x3

    .line 1886
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1887
    :cond_4
    const/4 v13, 0x0

    goto :goto_5

    .line 1890
    :cond_5
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1891
    add-int/lit8 p1, p1, -0x1

    .line 1892
    goto/16 :goto_1

    .line 1894
    .end local v6    # "i":I
    .end local v12    # "zv":[Z
    .end local p1    # "v":I
    .restart local v11    # "v":I
    :sswitch_f
    new-array v10, v9, [S

    .line 1895
    .local v10, "sv":[S
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move/from16 p1, v11

    .end local v11    # "v":I
    .restart local p1    # "v":I
    :goto_6
    if-ge v6, v9, :cond_6

    .line 1896
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    invoke-virtual/range {p0 .. p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    aget v13, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v13

    int-to-short v13, v13

    aput-short v13, v10, v6

    .line 1897
    add-int/lit8 p1, p1, 0x3

    .line 1895
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1899
    :cond_6
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v10}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1900
    add-int/lit8 p1, p1, -0x1

    .line 1901
    goto/16 :goto_1

    .line 1903
    .end local v6    # "i":I
    .end local v10    # "sv":[S
    .end local p1    # "v":I
    .restart local v11    # "v":I
    :sswitch_10
    new-array v3, v9, [C

    .line 1904
    .local v3, "cv":[C
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move/from16 p1, v11

    .end local v11    # "v":I
    .restart local p1    # "v":I
    :goto_7
    if-ge v6, v9, :cond_7

    .line 1905
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    invoke-virtual/range {p0 .. p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    aget v13, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v13

    int-to-char v13, v13

    aput-char v13, v3, v6

    .line 1906
    add-int/lit8 p1, p1, 0x3

    .line 1904
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1908
    :cond_7
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1909
    add-int/lit8 p1, p1, -0x1

    .line 1910
    goto/16 :goto_1

    .line 1912
    .end local v3    # "cv":[C
    .end local v6    # "i":I
    .end local p1    # "v":I
    .restart local v11    # "v":I
    :sswitch_11
    new-array v7, v9, [I

    .line 1913
    .local v7, "iv":[I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move/from16 p1, v11

    .end local v11    # "v":I
    .restart local p1    # "v":I
    :goto_8
    if-ge v6, v9, :cond_8

    .line 1914
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    invoke-virtual/range {p0 .. p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    aget v13, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v13

    aput v13, v7, v6

    .line 1915
    add-int/lit8 p1, p1, 0x3

    .line 1913
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 1917
    :cond_8
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1918
    add-int/lit8 p1, p1, -0x1

    .line 1919
    goto/16 :goto_1

    .line 1921
    .end local v6    # "i":I
    .end local v7    # "iv":[I
    .end local p1    # "v":I
    .restart local v11    # "v":I
    :sswitch_12
    new-array v8, v9, [J

    .line 1922
    .local v8, "lv":[J
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move/from16 p1, v11

    .end local v11    # "v":I
    .restart local p1    # "v":I
    :goto_9
    if-ge v6, v9, :cond_9

    .line 1923
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    invoke-virtual/range {p0 .. p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    aget v13, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLong(I)J

    move-result-wide v14

    aput-wide v14, v8, v6

    .line 1924
    add-int/lit8 p1, p1, 0x3

    .line 1922
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1926
    :cond_9
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1927
    add-int/lit8 p1, p1, -0x1

    .line 1928
    goto/16 :goto_1

    .line 1930
    .end local v6    # "i":I
    .end local v8    # "lv":[J
    .end local p1    # "v":I
    .restart local v11    # "v":I
    :sswitch_13
    new-array v5, v9, [F

    .line 1931
    .local v5, "fv":[F
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move/from16 p1, v11

    .end local v11    # "v":I
    .restart local p1    # "v":I
    :goto_a
    if-ge v6, v9, :cond_a

    .line 1932
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    .line 1933
    invoke-virtual/range {p0 .. p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    aget v13, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    aput v13, v5, v6

    .line 1934
    add-int/lit8 p1, p1, 0x3

    .line 1931
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 1936
    :cond_a
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1937
    add-int/lit8 p1, p1, -0x1

    .line 1938
    goto/16 :goto_1

    .line 1940
    .end local v5    # "fv":[F
    .end local v6    # "i":I
    .end local p1    # "v":I
    .restart local v11    # "v":I
    :sswitch_14
    new-array v4, v9, [D

    .line 1941
    .local v4, "dv":[D
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move/from16 p1, v11

    .end local v11    # "v":I
    .restart local p1    # "v":I
    :goto_b
    if-ge v6, v9, :cond_b

    .line 1942
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    .line 1943
    invoke-virtual/range {p0 .. p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v14

    aget v13, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    aput-wide v14, v4, v6

    .line 1944
    add-int/lit8 p1, p1, 0x3

    .line 1941
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 1946
    :cond_b
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1947
    add-int/lit8 p1, p1, -0x1

    .line 1948
    goto/16 :goto_1

    .line 1811
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x5b -> :sswitch_2
        0x65 -> :sswitch_0
    .end sparse-switch

    .line 1822
    :sswitch_data_1
    .sparse-switch
        0x40 -> :sswitch_b
        0x42 -> :sswitch_4
        0x43 -> :sswitch_7
        0x44 -> :sswitch_3
        0x46 -> :sswitch_3
        0x49 -> :sswitch_3
        0x4a -> :sswitch_3
        0x53 -> :sswitch_6
        0x5a -> :sswitch_5
        0x5b -> :sswitch_c
        0x63 -> :sswitch_a
        0x65 -> :sswitch_9
        0x73 -> :sswitch_8
    .end sparse-switch

    .line 1874
    :sswitch_data_2
    .sparse-switch
        0x42 -> :sswitch_d
        0x43 -> :sswitch_10
        0x44 -> :sswitch_14
        0x46 -> :sswitch_13
        0x49 -> :sswitch_11
        0x4a -> :sswitch_12
        0x53 -> :sswitch_f
        0x5a -> :sswitch_e
    .end sparse-switch
.end method

.method private readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I
    .locals 3
    .param p1, "v"    # I
    .param p2, "buf"    # [C
    .param p3, "named"    # Z
    .param p4, "av"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    .prologue
    .line 1774
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 1775
    .local v0, "i":I
    add-int/lit8 p1, p1, 0x2

    .line 1776
    if-eqz p3, :cond_0

    .line 1777
    :goto_0
    if-lez v0, :cond_1

    .line 1778
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValue(I[CLjava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result p1

    .line 1777
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1781
    :cond_0
    :goto_1
    if-lez v0, :cond_1

    .line 1782
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValue(I[CLjava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result p1

    .line 1781
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1785
    :cond_1
    if-eqz p4, :cond_2

    .line 1786
    invoke-virtual {p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visitEnd()V

    .line 1788
    :cond_2
    return p1
.end method

.method private readAttribute([Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;Ljava/lang/String;II[CI[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    .locals 8
    .param p1, "attrs"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "buf"    # [C
    .param p6, "codeOff"    # I
    .param p7, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    const/4 v4, 0x0

    .line 2242
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, p1

    if-ge v7, v0, :cond_1

    .line 2243
    aget-object v0, p1, v7

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2244
    aget-object v0, p1, v7

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->read(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;II[CI[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    move-result-object v0

    .line 2247
    :goto_1
    return-object v0

    .line 2242
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2247
    :cond_1
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    invoke-direct {v0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;-><init>(Ljava/lang/String;)V

    const/4 v5, -0x1

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->read(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;II[CI[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    move-result-object v0

    goto :goto_1
.end method

.method private static readClass(Ljava/io/InputStream;Z)[B
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    if-nez p0, :cond_0

    .line 455
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Class not found"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 458
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v7

    new-array v0, v7, [B

    .line 459
    .local v0, "b":[B
    const/4 v4, 0x0

    .line 461
    .local v4, "len":I
    :cond_1
    :goto_0
    array-length v7, v0

    sub-int/2addr v7, v4

    invoke-virtual {p0, v0, v4, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 462
    .local v6, "n":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 463
    array-length v7, v0

    if-ge v4, v7, :cond_2

    .line 464
    new-array v2, v4, [B

    .line 465
    .local v2, "c":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v7, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    move-object v0, v2

    .line 483
    .end local v2    # "c":[B
    :cond_2
    if-eqz p1, :cond_3

    .line 484
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_3
    move-object v1, v0

    .end local v0    # "b":[B
    .local v1, "b":[B
    :goto_1
    return-object v1

    .line 470
    .end local v1    # "b":[B
    .restart local v0    # "b":[B
    :cond_4
    add-int/2addr v4, v6

    .line 471
    :try_start_1
    array-length v7, v0

    if-ne v4, v7, :cond_1

    .line 472
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 473
    .local v3, "last":I
    if-gez v3, :cond_6

    .line 483
    if-eqz p1, :cond_5

    .line 484
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_5
    move-object v1, v0

    .end local v0    # "b":[B
    .restart local v1    # "b":[B
    goto :goto_1

    .line 476
    .end local v1    # "b":[B
    .restart local v0    # "b":[B
    :cond_6
    :try_start_2
    array-length v7, v0

    add-int/lit16 v7, v7, 0x3e8

    new-array v2, v7, [B

    .line 477
    .restart local v2    # "c":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v7, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "len":I
    .local v5, "len":I
    int-to-byte v7, v3

    aput-byte v7, v2, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 479
    move-object v0, v2

    move v4, v5

    .end local v5    # "len":I
    .restart local v4    # "len":I
    goto :goto_0

    .line 483
    .end local v0    # "b":[B
    .end local v2    # "c":[B
    .end local v3    # "last":I
    .end local v4    # "len":I
    .end local v6    # "n":I
    :catchall_0
    move-exception v7

    if-eqz p1, :cond_7

    .line 484
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v7
.end method

.method private readCode(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;I)V
    .locals 79
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .param p2, "context"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;
    .param p3, "u"    # I

    .prologue
    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    move-object/from16 v36, v0

    .line 1039
    .local v36, "b":[B
    move-object/from16 v0, p2

    iget-object v9, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->buffer:[C

    .line 1040
    .local v9, "c":[C
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v60

    .line 1041
    .local v60, "maxStack":I
    add-int/lit8 v5, p3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v59

    .line 1042
    .local v59, "maxLocals":I
    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v42

    .line 1043
    .local v42, "codeLength":I
    add-int/lit8 p3, p3, 0x8

    .line 1046
    move/from16 v43, p3

    .line 1047
    .local v43, "codeStart":I
    add-int v41, p3, v42

    .line 1048
    .local v41, "codeEnd":I
    add-int/lit8 v5, v42, 0x2

    new-array v11, v5, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v0, p2

    iput-object v11, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->labels:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1049
    .local v11, "labels":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    add-int/lit8 v5, v42, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1050
    :goto_0
    move/from16 v0, p3

    move/from16 v1, v41

    if-ge v0, v1, :cond_3

    .line 1051
    sub-int v64, p3, v43

    .line 1052
    .local v64, "offset":I
    aget-byte v5, v36, p3

    and-int/lit16 v13, v5, 0xff

    .line 1053
    .local v13, "opcode":I
    sget-object v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->TYPE:[B

    aget-byte v5, v5, v13

    packed-switch v5, :pswitch_data_0

    .line 1114
    :pswitch_0
    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    .line 1056
    :pswitch_1
    add-int/lit8 p3, p3, 0x1

    .line 1057
    goto :goto_0

    .line 1059
    :pswitch_2
    add-int/lit8 v5, p3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readShort(I)S

    move-result v5

    add-int v5, v5, v64

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1060
    add-int/lit8 p3, p3, 0x3

    .line 1061
    goto :goto_0

    .line 1063
    :pswitch_3
    add-int/lit8 v5, p3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v5

    add-int v5, v5, v64

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1064
    add-int/lit8 p3, p3, 0x5

    .line 1065
    goto :goto_0

    .line 1067
    :pswitch_4
    add-int/lit8 v5, p3, 0x1

    aget-byte v5, v36, v5

    and-int/lit16 v13, v5, 0xff

    .line 1068
    const/16 v5, 0x84

    if-ne v13, v5, :cond_0

    .line 1069
    add-int/lit8 p3, p3, 0x6

    goto :goto_0

    .line 1071
    :cond_0
    add-int/lit8 p3, p3, 0x4

    .line 1073
    goto :goto_0

    .line 1076
    :pswitch_5
    add-int/lit8 v5, p3, 0x4

    and-int/lit8 v6, v64, 0x3

    sub-int p3, v5, v6

    .line 1078
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v5

    add-int v5, v5, v64

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1079
    add-int/lit8 v5, p3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v5

    add-int/lit8 v6, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v49, v5, 0x1

    .local v49, "i":I
    :goto_1
    if-lez v49, :cond_1

    .line 1080
    add-int/lit8 v5, p3, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v5

    add-int v5, v5, v64

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1081
    add-int/lit8 p3, p3, 0x4

    .line 1079
    add-int/lit8 v49, v49, -0x1

    goto :goto_1

    .line 1083
    :cond_1
    add-int/lit8 p3, p3, 0xc

    .line 1084
    goto/16 :goto_0

    .line 1087
    .end local v49    # "i":I
    :pswitch_6
    add-int/lit8 v5, p3, 0x4

    and-int/lit8 v6, v64, 0x3

    sub-int p3, v5, v6

    .line 1089
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v5

    add-int v5, v5, v64

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1090
    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v49

    .restart local v49    # "i":I
    :goto_2
    if-lez v49, :cond_2

    .line 1091
    add-int/lit8 v5, p3, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v5

    add-int v5, v5, v64

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1092
    add-int/lit8 p3, p3, 0x8

    .line 1090
    add-int/lit8 v49, v49, -0x1

    goto :goto_2

    .line 1094
    :cond_2
    add-int/lit8 p3, p3, 0x8

    .line 1095
    goto/16 :goto_0

    .line 1099
    .end local v49    # "i":I
    :pswitch_7
    add-int/lit8 p3, p3, 0x2

    .line 1100
    goto/16 :goto_0

    .line 1106
    :pswitch_8
    add-int/lit8 p3, p3, 0x3

    .line 1107
    goto/16 :goto_0

    .line 1110
    :pswitch_9
    add-int/lit8 p3, p3, 0x5

    .line 1111
    goto/16 :goto_0

    .line 1120
    .end local v13    # "opcode":I
    .end local v64    # "offset":I
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v49

    .restart local v49    # "i":I
    :goto_3
    if-lez v49, :cond_4

    .line 1121
    add-int/lit8 v5, p3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v67

    .line 1122
    .local v67, "start":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v45

    .line 1123
    .local v45, "end":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    add-int/lit8 v5, p3, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v48

    .line 1124
    .local v48, "handler":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    add-int/lit8 v6, p3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v5, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v71

    .line 1125
    .local v71, "type":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v67

    move-object/from16 v2, v45

    move-object/from16 v3, v48

    move-object/from16 v4, v71

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTryCatchBlock(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Ljava/lang/String;)V

    .line 1126
    add-int/lit8 p3, p3, 0x8

    .line 1120
    add-int/lit8 v49, v49, -0x1

    goto :goto_3

    .line 1128
    .end local v45    # "end":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .end local v48    # "handler":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .end local v67    # "start":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .end local v71    # "type":Ljava/lang/String;
    :cond_4
    add-int/lit8 p3, p3, 0x2

    .line 1131
    const/16 v70, 0x0

    .line 1132
    .local v70, "tanns":[I
    const/16 v51, 0x0

    .line 1133
    .local v51, "itanns":[I
    const/16 v69, 0x0

    .line 1134
    .local v69, "tann":I
    const/16 v50, 0x0

    .line 1135
    .local v50, "itann":I
    const/16 v63, -0x1

    .line 1136
    .local v63, "ntoff":I
    const/16 v62, -0x1

    .line 1137
    .local v62, "nitoff":I
    const/16 v76, 0x0

    .line 1138
    .local v76, "varTable":I
    const/16 v77, 0x0

    .line 1139
    .local v77, "varTypeTable":I
    const/16 v78, 0x1

    .line 1140
    .local v78, "zip":Z
    move-object/from16 v0, p2

    iget v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_7

    const/16 v73, 0x1

    .line 1141
    .local v73, "unzip":Z
    :goto_4
    const/16 v65, 0x0

    .line 1142
    .local v65, "stackMap":I
    const/16 v66, 0x0

    .line 1143
    .local v66, "stackMapSize":I
    const/16 v47, 0x0

    .line 1144
    .local v47, "frameCount":I
    const/16 v46, 0x0

    .line 1145
    .local v46, "frame":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;
    const/16 v35, 0x0

    .line 1147
    .local v35, "attributes":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v49

    :goto_5
    if-lez v49, :cond_16

    .line 1148
    add-int/lit8 v5, p3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v34

    .line 1149
    .local v34, "attrName":Ljava/lang/String;
    const-string v5, "LocalVariableTable"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1150
    move-object/from16 v0, p2

    iget v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_9

    .line 1151
    add-int/lit8 v76, p3, 0x8

    .line 1152
    add-int/lit8 v5, p3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v52

    .local v52, "j":I
    move/from16 v74, p3

    .local v74, "v":I
    :goto_6
    if-lez v52, :cond_9

    .line 1153
    add-int/lit8 v5, v74, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v55

    .line 1154
    .local v55, "label":I
    aget-object v5, v11, v55

    if-nez v5, :cond_5

    .line 1155
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v5

    iget v6, v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 1157
    :cond_5
    add-int/lit8 v5, v74, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int v55, v55, v5

    .line 1158
    aget-object v5, v11, v55

    if-nez v5, :cond_6

    .line 1159
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v5

    iget v6, v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 1161
    :cond_6
    add-int/lit8 v74, v74, 0xa

    .line 1152
    add-int/lit8 v52, v52, -0x1

    goto :goto_6

    .line 1140
    .end local v34    # "attrName":Ljava/lang/String;
    .end local v35    # "attributes":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    .end local v46    # "frame":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;
    .end local v47    # "frameCount":I
    .end local v52    # "j":I
    .end local v55    # "label":I
    .end local v65    # "stackMap":I
    .end local v66    # "stackMapSize":I
    .end local v73    # "unzip":Z
    .end local v74    # "v":I
    :cond_7
    const/16 v73, 0x0

    goto :goto_4

    .line 1164
    .restart local v34    # "attrName":Ljava/lang/String;
    .restart local v35    # "attributes":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    .restart local v46    # "frame":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;
    .restart local v47    # "frameCount":I
    .restart local v65    # "stackMap":I
    .restart local v66    # "stackMapSize":I
    .restart local v73    # "unzip":Z
    :cond_8
    const-string v5, "LocalVariableTypeTable"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1165
    add-int/lit8 v77, p3, 0x8

    .line 1235
    :cond_9
    :goto_7
    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    add-int p3, p3, v5

    .line 1147
    add-int/lit8 v49, v49, -0x1

    goto/16 :goto_5

    .line 1166
    :cond_a
    const-string v5, "LineNumberTable"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1167
    move-object/from16 v0, p2

    iget v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_9

    .line 1168
    add-int/lit8 v5, p3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v52

    .restart local v52    # "j":I
    move/from16 v74, p3

    .restart local v74    # "v":I
    :goto_8
    if-lez v52, :cond_9

    .line 1169
    add-int/lit8 v5, v74, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v55

    .line 1170
    .restart local v55    # "label":I
    aget-object v5, v11, v55

    if-nez v5, :cond_b

    .line 1171
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v5

    iget v6, v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->status:I

    .line 1173
    :cond_b
    aget-object v5, v11, v55

    add-int/lit8 v6, v74, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    iput v6, v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->line:I

    .line 1174
    add-int/lit8 v74, v74, 0x4

    .line 1168
    add-int/lit8 v52, v52, -0x1

    goto :goto_8

    .line 1177
    .end local v52    # "j":I
    .end local v55    # "label":I
    .end local v74    # "v":I
    :cond_c
    const-string v5, "RuntimeVisibleTypeAnnotations"

    .line 1178
    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1179
    add-int/lit8 v5, p3, 0x8

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readTypeAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;IZ)[I

    move-result-object v70

    .line 1180
    move-object/from16 v0, v70

    array-length v5, v0

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    aget v5, v70, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readByte(I)I

    move-result v5

    const/16 v6, 0x43

    if-ge v5, v6, :cond_e

    :cond_d
    const/16 v63, -0x1

    .line 1181
    :goto_9
    goto/16 :goto_7

    .line 1180
    :cond_e
    const/4 v5, 0x0

    aget v5, v70, v5

    add-int/lit8 v5, v5, 0x1

    .line 1181
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v63

    goto :goto_9

    .line 1182
    :cond_f
    const-string v5, "RuntimeInvisibleTypeAnnotations"

    .line 1183
    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1184
    add-int/lit8 v5, p3, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readTypeAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;IZ)[I

    move-result-object v51

    .line 1185
    move-object/from16 v0, v51

    array-length v5, v0

    if-eqz v5, :cond_10

    const/4 v5, 0x0

    aget v5, v51, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readByte(I)I

    move-result v5

    const/16 v6, 0x43

    if-ge v5, v6, :cond_11

    :cond_10
    const/16 v62, -0x1

    .line 1186
    :goto_a
    goto/16 :goto_7

    .line 1185
    :cond_11
    const/4 v5, 0x0

    aget v5, v51, v5

    add-int/lit8 v5, v5, 0x1

    .line 1186
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v62

    goto :goto_a

    .line 1187
    :cond_12
    const-string v5, "StackMapTable"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1188
    move-object/from16 v0, p2

    iget v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_9

    .line 1189
    add-int/lit8 v65, p3, 0xa

    .line 1190
    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v66

    .line 1191
    add-int/lit8 v5, p3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v47

    goto/16 :goto_7

    .line 1211
    :cond_13
    const-string v5, "StackMap"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1212
    move-object/from16 v0, p2

    iget v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_9

    .line 1213
    const/16 v78, 0x0

    .line 1214
    add-int/lit8 v65, p3, 0xa

    .line 1215
    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v66

    .line 1216
    add-int/lit8 v5, p3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v47

    goto/16 :goto_7

    .line 1224
    :cond_14
    const/16 v52, 0x0

    .restart local v52    # "j":I
    :goto_b
    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->attrs:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    array-length v5, v5

    move/from16 v0, v52

    if-ge v0, v5, :cond_9

    .line 1225
    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->attrs:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    aget-object v5, v5, v52

    iget-object v5, v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->type:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1226
    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->attrs:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    aget-object v5, v5, v52

    add-int/lit8 v7, p3, 0x8

    add-int/lit8 v6, p3, 0x4

    .line 1227
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v8

    add-int/lit8 v10, v43, -0x8

    move-object/from16 v6, p0

    .line 1226
    invoke-virtual/range {v5 .. v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->read(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;II[CI[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    move-result-object v33

    .line 1228
    .local v33, "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    if-eqz v33, :cond_15

    .line 1229
    move-object/from16 v0, v35

    move-object/from16 v1, v33

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .line 1230
    move-object/from16 v35, v33

    .line 1224
    .end local v33    # "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    :cond_15
    add-int/lit8 v52, v52, 0x1

    goto :goto_b

    .line 1237
    .end local v34    # "attrName":Ljava/lang/String;
    .end local v52    # "j":I
    :cond_16
    add-int/lit8 p3, p3, 0x2

    .line 1240
    if-eqz v65, :cond_19

    .line 1246
    move-object/from16 v46, p2

    .line 1247
    const/4 v5, -0x1

    move-object/from16 v0, v46

    iput v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->offset:I

    .line 1248
    const/4 v5, 0x0

    move-object/from16 v0, v46

    iput v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->mode:I

    .line 1249
    const/4 v5, 0x0

    move-object/from16 v0, v46

    iput v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->localCount:I

    .line 1250
    const/4 v5, 0x0

    move-object/from16 v0, v46

    iput v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->localDiff:I

    .line 1251
    const/4 v5, 0x0

    move-object/from16 v0, v46

    iput v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->stackCount:I

    .line 1252
    move/from16 v0, v59

    new-array v5, v0, [Ljava/lang/Object;

    move-object/from16 v0, v46

    iput-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->local:[Ljava/lang/Object;

    .line 1253
    move/from16 v0, v60

    new-array v5, v0, [Ljava/lang/Object;

    move-object/from16 v0, v46

    iput-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->stack:[Ljava/lang/Object;

    .line 1254
    if-eqz v73, :cond_17

    .line 1255
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->getImplicitFrame(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;)V

    .line 1268
    :cond_17
    move/from16 v49, v65

    :goto_c
    add-int v5, v65, v66

    add-int/lit8 v5, v5, -0x2

    move/from16 v0, v49

    if-ge v0, v5, :cond_19

    .line 1269
    aget-byte v5, v36, v49

    const/16 v6, 0x8

    if-ne v5, v6, :cond_18

    .line 1270
    add-int/lit8 v5, v49, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v74

    .line 1271
    .restart local v74    # "v":I
    if-ltz v74, :cond_18

    move/from16 v0, v74

    move/from16 v1, v42

    if-ge v0, v1, :cond_18

    .line 1272
    add-int v5, v43, v74

    aget-byte v5, v36, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xbb

    if-ne v5, v6, :cond_18

    .line 1273
    move-object/from16 v0, p0

    move/from16 v1, v74

    invoke-virtual {v0, v1, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1268
    .end local v74    # "v":I
    :cond_18
    add-int/lit8 v49, v49, 0x1

    goto :goto_c

    .line 1281
    :cond_19
    move/from16 p3, v43

    .line 1282
    :cond_1a
    move/from16 v0, p3

    move/from16 v1, v41

    if-ge v0, v1, :cond_31

    .line 1283
    sub-int v64, p3, v43

    .line 1286
    .restart local v64    # "offset":I
    aget-object v54, v11, v64

    .line 1287
    .local v54, "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    if-eqz v54, :cond_1b

    .line 1288
    move-object/from16 v0, p1

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 1289
    move-object/from16 v0, p2

    iget v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1b

    move-object/from16 v0, v54

    iget v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->line:I

    if-lez v5, :cond_1b

    .line 1290
    move-object/from16 v0, v54

    iget v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->line:I

    move-object/from16 v0, p1

    move-object/from16 v1, v54

    invoke-virtual {v0, v5, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLineNumber(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 1295
    :cond_1b
    :goto_d
    if-eqz v46, :cond_21

    move-object/from16 v0, v46

    iget v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->offset:I

    move/from16 v0, v64

    if-eq v5, v0, :cond_1c

    move-object/from16 v0, v46

    iget v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->offset:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_21

    .line 1299
    :cond_1c
    move-object/from16 v0, v46

    iget v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->offset:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1e

    .line 1300
    if-eqz v78, :cond_1d

    if-eqz v73, :cond_1f

    .line 1301
    :cond_1d
    const/4 v13, -0x1

    move-object/from16 v0, v46

    iget v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->localCount:I

    move-object/from16 v0, v46

    iget-object v15, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->local:[Ljava/lang/Object;

    move-object/from16 v0, v46

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->stackCount:I

    move/from16 v16, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->stack:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 1308
    :cond_1e
    :goto_e
    if-lez v47, :cond_20

    .line 1309
    move-object/from16 v0, p0

    move/from16 v1, v65

    move/from16 v2, v78

    move/from16 v3, v73

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readFrame(IZZLorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;)I

    move-result v65

    .line 1310
    add-int/lit8 v47, v47, -0x1

    goto :goto_d

    .line 1304
    :cond_1f
    move-object/from16 v0, v46

    iget v13, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->mode:I

    move-object/from16 v0, v46

    iget v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->localDiff:I

    move-object/from16 v0, v46

    iget-object v15, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->local:[Ljava/lang/Object;

    move-object/from16 v0, v46

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->stackCount:I

    move/from16 v16, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->stack:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_e

    .line 1312
    :cond_20
    const/16 v46, 0x0

    goto :goto_d

    .line 1317
    :cond_21
    aget-byte v5, v36, p3

    and-int/lit16 v13, v5, 0xff

    .line 1318
    .restart local v13    # "opcode":I
    sget-object v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->TYPE:[B

    aget-byte v5, v5, v13

    packed-switch v5, :pswitch_data_1

    .line 1453
    :pswitch_a
    add-int/lit8 v5, p3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, p3, 0x3

    aget-byte v6, v36, v6

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 1454
    add-int/lit8 p3, p3, 0x4

    .line 1459
    :goto_f
    if-eqz v70, :cond_2d

    move-object/from16 v0, v70

    array-length v5, v0

    move/from16 v0, v69

    if-ge v0, v5, :cond_2d

    move/from16 v0, v63

    move/from16 v1, v64

    if-gt v0, v1, :cond_2d

    .line 1460
    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_22

    .line 1461
    aget v5, v70, v69

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;I)I

    move-result v74

    .line 1462
    .restart local v74    # "v":I
    add-int/lit8 v5, v74, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p2

    iget v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typeRef:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    .line 1464
    move-object/from16 v0, p0

    move/from16 v1, v74

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    .line 1463
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v10, v12}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsnAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v7

    .line 1462
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    .line 1466
    .end local v74    # "v":I
    :cond_22
    add-int/lit8 v69, v69, 0x1

    move-object/from16 v0, v70

    array-length v5, v0

    move/from16 v0, v69

    if-ge v0, v5, :cond_23

    aget v5, v70, v69

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readByte(I)I

    move-result v5

    const/16 v6, 0x43

    if-ge v5, v6, :cond_2c

    :cond_23
    const/16 v63, -0x1

    .line 1467
    :goto_10
    goto :goto_f

    .line 1320
    :pswitch_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 1321
    add-int/lit8 p3, p3, 0x1

    .line 1322
    goto :goto_f

    .line 1324
    :pswitch_c
    const/16 v5, 0x36

    if-le v13, v5, :cond_24

    .line 1325
    add-int/lit8 v13, v13, -0x3b

    .line 1326
    shr-int/lit8 v5, v13, 0x2

    add-int/lit8 v5, v5, 0x36

    and-int/lit8 v6, v13, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1332
    :goto_11
    add-int/lit8 p3, p3, 0x1

    .line 1333
    goto :goto_f

    .line 1329
    :cond_24
    add-int/lit8 v13, v13, -0x1a

    .line 1330
    shr-int/lit8 v5, v13, 0x2

    add-int/lit8 v5, v5, 0x15

    and-int/lit8 v6, v13, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_11

    .line 1335
    :pswitch_d
    add-int/lit8 v5, p3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readShort(I)S

    move-result v5

    add-int v5, v5, v64

    aget-object v5, v11, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 1336
    add-int/lit8 p3, p3, 0x3

    .line 1337
    goto/16 :goto_f

    .line 1339
    :pswitch_e
    add-int/lit8 v5, v13, -0x21

    add-int/lit8 v6, p3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int v6, v6, v64

    aget-object v6, v11, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 1340
    add-int/lit8 p3, p3, 0x5

    .line 1341
    goto/16 :goto_f

    .line 1343
    :pswitch_f
    add-int/lit8 v5, p3, 0x1

    aget-byte v5, v36, v5

    and-int/lit16 v13, v5, 0xff

    .line 1344
    const/16 v5, 0x84

    if-ne v13, v5, :cond_25

    .line 1345
    add-int/lit8 v5, p3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/lit8 v6, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readShort(I)S

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitIincInsn(II)V

    .line 1346
    add-int/lit8 p3, p3, 0x6

    goto/16 :goto_f

    .line 1348
    :cond_25
    add-int/lit8 v5, p3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1349
    add-int/lit8 p3, p3, 0x4

    .line 1351
    goto/16 :goto_f

    .line 1354
    :pswitch_10
    add-int/lit8 v5, p3, 0x4

    and-int/lit8 v6, v64, 0x3

    sub-int p3, v5, v6

    .line 1356
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v5

    add-int v55, v64, v5

    .line 1357
    .restart local v55    # "label":I
    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v61

    .line 1358
    .local v61, "min":I
    add-int/lit8 v5, p3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v58

    .line 1359
    .local v58, "max":I
    sub-int v5, v58, v61

    add-int/lit8 v5, v5, 0x1

    new-array v0, v5, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v68, v0

    .line 1360
    .local v68, "table":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    add-int/lit8 p3, p3, 0xc

    .line 1361
    const/16 v49, 0x0

    :goto_12
    move-object/from16 v0, v68

    array-length v5, v0

    move/from16 v0, v49

    if-ge v0, v5, :cond_26

    .line 1362
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v5

    add-int v5, v5, v64

    aget-object v5, v11, v5

    aput-object v5, v68, v49

    .line 1363
    add-int/lit8 p3, p3, 0x4

    .line 1361
    add-int/lit8 v49, v49, 0x1

    goto :goto_12

    .line 1365
    :cond_26
    aget-object v5, v11, v55

    move-object/from16 v0, p1

    move/from16 v1, v61

    move/from16 v2, v58

    move-object/from16 v3, v68

    invoke-virtual {v0, v1, v2, v5, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    goto/16 :goto_f

    .line 1370
    .end local v55    # "label":I
    .end local v58    # "max":I
    .end local v61    # "min":I
    .end local v68    # "table":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :pswitch_11
    add-int/lit8 v5, p3, 0x4

    and-int/lit8 v6, v64, 0x3

    sub-int p3, v5, v6

    .line 1372
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v5

    add-int v55, v64, v5

    .line 1373
    .restart local v55    # "label":I
    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v56

    .line 1374
    .local v56, "len":I
    move/from16 v0, v56

    new-array v0, v0, [I

    move-object/from16 v53, v0

    .line 1375
    .local v53, "keys":[I
    move/from16 v0, v56

    new-array v0, v0, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v75, v0

    .line 1376
    .local v75, "values":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    add-int/lit8 p3, p3, 0x8

    .line 1377
    const/16 v49, 0x0

    :goto_13
    move/from16 v0, v49

    move/from16 v1, v56

    if-ge v0, v1, :cond_27

    .line 1378
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v5

    aput v5, v53, v49

    .line 1379
    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v5

    add-int v5, v5, v64

    aget-object v5, v11, v5

    aput-object v5, v75, v49

    .line 1380
    add-int/lit8 p3, p3, 0x8

    .line 1377
    add-int/lit8 v49, v49, 0x1

    goto :goto_13

    .line 1382
    :cond_27
    aget-object v5, v11, v55

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    move-object/from16 v2, v75

    invoke-virtual {v0, v5, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    goto/16 :goto_f

    .line 1386
    .end local v53    # "keys":[I
    .end local v55    # "label":I
    .end local v56    # "len":I
    .end local v75    # "values":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :pswitch_12
    add-int/lit8 v5, p3, 0x1

    aget-byte v5, v36, v5

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1387
    add-int/lit8 p3, p3, 0x2

    .line 1388
    goto/16 :goto_f

    .line 1390
    :pswitch_13
    add-int/lit8 v5, p3, 0x1

    aget-byte v5, v36, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitIntInsn(II)V

    .line 1391
    add-int/lit8 p3, p3, 0x2

    .line 1392
    goto/16 :goto_f

    .line 1394
    :pswitch_14
    add-int/lit8 v5, p3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readShort(I)S

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitIntInsn(II)V

    .line 1395
    add-int/lit8 p3, p3, 0x3

    .line 1396
    goto/16 :goto_f

    .line 1398
    :pswitch_15
    add-int/lit8 v5, p3, 0x1

    aget-byte v5, v36, v5

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1399
    add-int/lit8 p3, p3, 0x2

    .line 1400
    goto/16 :goto_f

    .line 1402
    :pswitch_16
    add-int/lit8 v5, p3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1403
    add-int/lit8 p3, p3, 0x3

    .line 1404
    goto/16 :goto_f

    .line 1407
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    add-int/lit8 v6, p3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v44, v5, v6

    .line 1408
    .local v44, "cpIndex":I
    add-int/lit8 v5, v44, -0x1

    aget-byte v5, v36, v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_28

    const/16 v17, 0x1

    .line 1409
    .local v17, "itf":Z
    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v14

    .line 1410
    .local v14, "iowner":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    add-int/lit8 v6, v44, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v44, v5, v6

    .line 1411
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    .line 1412
    .local v15, "iname":Ljava/lang/String;
    add-int/lit8 v5, v44, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v16

    .line 1413
    .local v16, "idesc":Ljava/lang/String;
    const/16 v5, 0xb6

    if-ge v13, v5, :cond_29

    .line 1414
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :goto_15
    const/16 v5, 0xb9

    if-ne v13, v5, :cond_2a

    .line 1419
    add-int/lit8 p3, p3, 0x5

    goto/16 :goto_f

    .line 1408
    .end local v14    # "iowner":Ljava/lang/String;
    .end local v15    # "iname":Ljava/lang/String;
    .end local v16    # "idesc":Ljava/lang/String;
    .end local v17    # "itf":Z
    :cond_28
    const/16 v17, 0x0

    goto :goto_14

    .restart local v14    # "iowner":Ljava/lang/String;
    .restart local v15    # "iname":Ljava/lang/String;
    .restart local v16    # "idesc":Ljava/lang/String;
    .restart local v17    # "itf":Z
    :cond_29
    move-object/from16 v12, p1

    .line 1416
    invoke-virtual/range {v12 .. v17}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_15

    .line 1421
    :cond_2a
    add-int/lit8 p3, p3, 0x3

    .line 1423
    goto/16 :goto_f

    .line 1426
    .end local v14    # "iowner":Ljava/lang/String;
    .end local v15    # "iname":Ljava/lang/String;
    .end local v16    # "idesc":Ljava/lang/String;
    .end local v17    # "itf":Z
    .end local v44    # "cpIndex":I
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    add-int/lit8 v6, p3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v44, v5, v6

    .line 1427
    .restart local v44    # "cpIndex":I
    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->bootstrapMethods:[I

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v40, v5, v6

    .line 1428
    .local v40, "bsmIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;

    .line 1429
    .local v37, "bsm":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;
    add-int/lit8 v5, v40, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v38

    .line 1430
    .local v38, "bsmArgCount":I
    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    .line 1431
    .local v39, "bsmArgs":[Ljava/lang/Object;
    add-int/lit8 v40, v40, 0x4

    .line 1432
    const/16 v49, 0x0

    :goto_16
    move/from16 v0, v49

    move/from16 v1, v38

    if-ge v0, v1, :cond_2b

    .line 1433
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v39, v49

    .line 1434
    add-int/lit8 v40, v40, 0x2

    .line 1432
    add-int/lit8 v49, v49, 0x1

    goto :goto_16

    .line 1436
    :cond_2b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    add-int/lit8 v6, v44, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v44, v5, v6

    .line 1437
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    .line 1438
    .restart local v15    # "iname":Ljava/lang/String;
    add-int/lit8 v5, v44, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v16

    .line 1439
    .restart local v16    # "idesc":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v37

    move-object/from16 v3, v39

    invoke-virtual {v0, v15, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;[Ljava/lang/Object;)V

    .line 1440
    add-int/lit8 p3, p3, 0x5

    .line 1441
    goto/16 :goto_f

    .line 1444
    .end local v15    # "iname":Ljava/lang/String;
    .end local v16    # "idesc":Ljava/lang/String;
    .end local v37    # "bsm":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;
    .end local v38    # "bsmArgCount":I
    .end local v39    # "bsmArgs":[Ljava/lang/Object;
    .end local v40    # "bsmIndex":I
    .end local v44    # "cpIndex":I
    :pswitch_19
    add-int/lit8 v5, p3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1445
    add-int/lit8 p3, p3, 0x3

    .line 1446
    goto/16 :goto_f

    .line 1448
    :pswitch_1a
    add-int/lit8 v5, p3, 0x1

    aget-byte v5, v36, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, p3, 0x2

    aget-byte v6, v36, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitIincInsn(II)V

    .line 1449
    add-int/lit8 p3, p3, 0x3

    .line 1450
    goto/16 :goto_f

    .line 1466
    :cond_2c
    aget v5, v70, v69

    add-int/lit8 v5, v5, 0x1

    .line 1467
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v63

    goto/16 :goto_10

    .line 1469
    :cond_2d
    :goto_17
    if-eqz v51, :cond_1a

    move-object/from16 v0, v51

    array-length v5, v0

    move/from16 v0, v50

    if-ge v0, v5, :cond_1a

    move/from16 v0, v62

    move/from16 v1, v64

    if-gt v0, v1, :cond_1a

    .line 1470
    move/from16 v0, v62

    move/from16 v1, v64

    if-ne v0, v1, :cond_2e

    .line 1471
    aget v5, v51, v50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;I)I

    move-result v74

    .line 1472
    .restart local v74    # "v":I
    add-int/lit8 v5, v74, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p2

    iget v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typeRef:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    .line 1474
    move-object/from16 v0, p0

    move/from16 v1, v74

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    .line 1473
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v10, v12}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsnAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v7

    .line 1472
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    .line 1476
    .end local v74    # "v":I
    :cond_2e
    add-int/lit8 v50, v50, 0x1

    move-object/from16 v0, v51

    array-length v5, v0

    move/from16 v0, v50

    if-ge v0, v5, :cond_2f

    aget v5, v51, v50

    .line 1477
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readByte(I)I

    move-result v5

    const/16 v6, 0x43

    if-ge v5, v6, :cond_30

    :cond_2f
    const/16 v62, -0x1

    .line 1478
    :goto_18
    goto :goto_17

    .line 1477
    :cond_30
    aget v5, v51, v50

    add-int/lit8 v5, v5, 0x1

    .line 1478
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v62

    goto :goto_18

    .line 1481
    .end local v13    # "opcode":I
    .end local v54    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .end local v64    # "offset":I
    :cond_31
    aget-object v5, v11, v42

    if-eqz v5, :cond_32

    .line 1482
    aget-object v5, v11, v42

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 1486
    :cond_32
    move-object/from16 v0, p2

    iget v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_36

    if-eqz v76, :cond_36

    .line 1487
    const/16 v72, 0x0

    .line 1488
    .local v72, "typeTable":[I
    if-eqz v77, :cond_33

    .line 1489
    add-int/lit8 p3, v77, 0x2

    .line 1490
    move-object/from16 v0, p0

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    new-array v0, v5, [I

    move-object/from16 v72, v0

    .line 1491
    move-object/from16 v0, v72

    array-length v0, v0

    move/from16 v49, v0

    :goto_19
    if-lez v49, :cond_33

    .line 1492
    add-int/lit8 v49, v49, -0x1

    add-int/lit8 v5, p3, 0x6

    aput v5, v72, v49

    .line 1493
    add-int/lit8 v49, v49, -0x1

    add-int/lit8 v5, p3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aput v5, v72, v49

    .line 1494
    add-int/lit8 v49, v49, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aput v5, v72, v49

    .line 1495
    add-int/lit8 p3, p3, 0xa

    goto :goto_19

    .line 1498
    :cond_33
    add-int/lit8 p3, v76, 0x2

    .line 1499
    move-object/from16 v0, p0

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v49

    :goto_1a
    if-lez v49, :cond_36

    .line 1500
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v67

    .line 1501
    .local v67, "start":I
    add-int/lit8 v5, p3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v57

    .line 1502
    .local v57, "length":I
    add-int/lit8 v5, p3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v24

    .line 1503
    .local v24, "index":I
    const/16 v21, 0x0

    .line 1504
    .local v21, "vsignature":Ljava/lang/String;
    if-eqz v72, :cond_34

    .line 1505
    const/16 v52, 0x0

    .restart local v52    # "j":I
    :goto_1b
    move-object/from16 v0, v72

    array-length v5, v0

    move/from16 v0, v52

    if-ge v0, v5, :cond_34

    .line 1506
    aget v5, v72, v52

    move/from16 v0, v67

    if-ne v5, v0, :cond_35

    add-int/lit8 v5, v52, 0x1

    aget v5, v72, v5

    move/from16 v0, v24

    if-ne v5, v0, :cond_35

    .line 1507
    add-int/lit8 v5, v52, 0x2

    aget v5, v72, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v21

    .line 1512
    .end local v52    # "j":I
    :cond_34
    add-int/lit8 v5, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v5, p3, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v20

    aget-object v22, v11, v67

    add-int v5, v67, v57

    aget-object v23, v11, v5

    move-object/from16 v18, p1

    invoke-virtual/range {v18 .. v24}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;I)V

    .line 1515
    add-int/lit8 p3, p3, 0xa

    .line 1499
    add-int/lit8 v49, v49, -0x1

    goto :goto_1a

    .line 1505
    .restart local v52    # "j":I
    :cond_35
    add-int/lit8 v52, v52, 0x3

    goto :goto_1b

    .line 1520
    .end local v21    # "vsignature":Ljava/lang/String;
    .end local v24    # "index":I
    .end local v52    # "j":I
    .end local v57    # "length":I
    .end local v67    # "start":I
    .end local v72    # "typeTable":[I
    :cond_36
    if-eqz v70, :cond_38

    .line 1521
    const/16 v49, 0x0

    :goto_1c
    move-object/from16 v0, v70

    array-length v5, v0

    move/from16 v0, v49

    if-ge v0, v5, :cond_38

    .line 1522
    aget v5, v70, v49

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readByte(I)I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_37

    .line 1523
    aget v5, v70, v49

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;I)I

    move-result v74

    .line 1524
    .restart local v74    # "v":I
    add-int/lit8 v5, v74, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p2

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typeRef:I

    move/from16 v26, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->start:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v28, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->end:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v29, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->index:[I

    move-object/from16 v30, v0

    .line 1527
    move-object/from16 v0, p0

    move/from16 v1, v74

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    move-object/from16 v25, p1

    .line 1525
    invoke-virtual/range {v25 .. v32}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v7

    .line 1524
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    .line 1521
    .end local v74    # "v":I
    :cond_37
    add-int/lit8 v49, v49, 0x1

    goto :goto_1c

    .line 1532
    :cond_38
    if-eqz v51, :cond_3a

    .line 1533
    const/16 v49, 0x0

    :goto_1d
    move-object/from16 v0, v51

    array-length v5, v0

    move/from16 v0, v49

    if-ge v0, v5, :cond_3a

    .line 1534
    aget v5, v51, v49

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readByte(I)I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_39

    .line 1535
    aget v5, v51, v49

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;I)I

    move-result v74

    .line 1536
    .restart local v74    # "v":I
    add-int/lit8 v5, v74, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p2

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typeRef:I

    move/from16 v26, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->start:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v28, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->end:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-object/from16 v29, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->index:[I

    move-object/from16 v30, v0

    .line 1539
    move-object/from16 v0, p0

    move/from16 v1, v74

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v25, p1

    .line 1537
    invoke-virtual/range {v25 .. v32}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v7

    .line 1536
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    .line 1533
    .end local v74    # "v":I
    :cond_39
    add-int/lit8 v49, v49, 0x1

    goto :goto_1d

    .line 1546
    :cond_3a
    :goto_1e
    if-eqz v35, :cond_3b

    .line 1547
    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    move-object/from16 v33, v0

    .line 1548
    .restart local v33    # "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    const/4 v5, 0x0

    move-object/from16 v0, v35

    iput-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .line 1549
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitAttribute(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;)V

    .line 1550
    move-object/from16 v35, v33

    .line 1551
    goto :goto_1e

    .line 1554
    .end local v33    # "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    :cond_3b
    move-object/from16 v0, p1

    move/from16 v1, v60

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMaxs(II)V

    .line 1555
    return-void

    .line 1053
    nop

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
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 1318
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_13
        :pswitch_14
        :pswitch_12
        :pswitch_c
        :pswitch_19
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_d
        :pswitch_e
        :pswitch_15
        :pswitch_16
        :pswitch_1a
        :pswitch_10
        :pswitch_11
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method private readField(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;I)I
    .locals 27
    .param p1, "classVisitor"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;
    .param p2, "context"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;
    .param p3, "u"    # I

    .prologue
    .line 714
    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->buffer:[C

    .line 715
    .local v8, "c":[C
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v15

    .line 716
    .local v15, "access":I
    add-int/lit8 v3, p3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v11

    .line 717
    .local v11, "name":Ljava/lang/String;
    add-int/lit8 v3, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    .line 718
    .local v12, "desc":Ljava/lang/String;
    add-int/lit8 p3, p3, 0x6

    .line 721
    const/4 v13, 0x0

    .line 722
    .local v13, "signature":Ljava/lang/String;
    const/16 v16, 0x0

    .line 723
    .local v16, "anns":I
    const/16 v21, 0x0

    .line 724
    .local v21, "ianns":I
    const/16 v24, 0x0

    .line 725
    .local v24, "tanns":I
    const/16 v22, 0x0

    .line 726
    .local v22, "itanns":I
    const/16 v26, 0x0

    .line 727
    .local v26, "value":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 729
    .local v18, "attributes":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v20

    .local v20, "i":I
    move-object/from16 v14, v26

    .end local v26    # "value":Ljava/lang/Object;
    :goto_0
    if-lez v20, :cond_a

    .line 730
    add-int/lit8 v3, p3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 733
    .local v5, "attrName":Ljava/lang/String;
    const-string v3, "ConstantValue"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 734
    add-int/lit8 v3, p3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v23

    .line 735
    .local v23, "item":I
    if-nez v23, :cond_1

    const/16 v26, 0x0

    .restart local v26    # "value":Ljava/lang/Object;
    :goto_1
    move-object/from16 v14, v26

    .line 763
    .end local v23    # "item":I
    .end local v26    # "value":Ljava/lang/Object;
    :cond_0
    :goto_2
    add-int/lit8 v3, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int p3, p3, v3

    .line 729
    add-int/lit8 v20, v20, -0x1

    goto :goto_0

    .line 735
    .restart local v23    # "item":I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v26

    goto :goto_1

    .line 736
    .end local v23    # "item":I
    :cond_2
    const-string v3, "Signature"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 737
    add-int/lit8 v3, p3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 738
    :cond_3
    const-string v3, "Deprecated"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 739
    const/high16 v3, 0x20000

    or-int/2addr v15, v3

    goto :goto_2

    .line 740
    :cond_4
    const-string v3, "Synthetic"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 741
    const v3, 0x41000

    or-int/2addr v15, v3

    goto :goto_2

    .line 743
    :cond_5
    const-string v3, "RuntimeVisibleAnnotations"

    .line 744
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 745
    add-int/lit8 v16, p3, 0x8

    goto :goto_2

    .line 746
    :cond_6
    const-string v3, "RuntimeVisibleTypeAnnotations"

    .line 747
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 748
    add-int/lit8 v24, p3, 0x8

    goto :goto_2

    .line 749
    :cond_7
    const-string v3, "RuntimeInvisibleAnnotations"

    .line 750
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 751
    add-int/lit8 v21, p3, 0x8

    goto :goto_2

    .line 752
    :cond_8
    const-string v3, "RuntimeInvisibleTypeAnnotations"

    .line 753
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 754
    add-int/lit8 v22, p3, 0x8

    goto :goto_2

    .line 756
    :cond_9
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->attrs:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    add-int/lit8 v6, p3, 0x8

    add-int/lit8 v3, p3, 0x4

    .line 757
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v7

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object/from16 v3, p0

    .line 756
    invoke-direct/range {v3 .. v10}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAttribute([Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;Ljava/lang/String;II[CI[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    move-result-object v17

    .line 758
    .local v17, "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    if-eqz v17, :cond_0

    .line 759
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .line 760
    move-object/from16 v18, v17

    goto/16 :goto_2

    .line 765
    .end local v5    # "attrName":Ljava/lang/String;
    .end local v17    # "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    :cond_a
    add-int/lit8 p3, p3, 0x2

    move-object/from16 v9, p1

    move v10, v15

    .line 768
    invoke-virtual/range {v9 .. v14}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;

    move-result-object v19

    .line 770
    .local v19, "fv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;
    if-nez v19, :cond_b

    .line 815
    :goto_3
    return p3

    .line 775
    :cond_b
    if-eqz v16, :cond_c

    .line 776
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v20

    add-int/lit8 v25, v16, 0x2

    .local v25, "v":I
    :goto_4
    if-lez v20, :cond_c

    .line 777
    add-int/lit8 v3, v25, 0x2

    const/4 v4, 0x1

    .line 778
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v6

    .line 777
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v4, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result v25

    .line 776
    add-int/lit8 v20, v20, -0x1

    goto :goto_4

    .line 781
    .end local v25    # "v":I
    :cond_c
    if-eqz v21, :cond_d

    .line 782
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v20

    add-int/lit8 v25, v21, 0x2

    .restart local v25    # "v":I
    :goto_5
    if-lez v20, :cond_d

    .line 783
    add-int/lit8 v3, v25, 0x2

    const/4 v4, 0x1

    .line 784
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v6

    .line 783
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v4, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result v25

    .line 782
    add-int/lit8 v20, v20, -0x1

    goto :goto_5

    .line 787
    .end local v25    # "v":I
    :cond_d
    if-eqz v24, :cond_e

    .line 788
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v20

    add-int/lit8 v25, v24, 0x2

    .restart local v25    # "v":I
    :goto_6
    if-lez v20, :cond_e

    .line 789
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;I)I

    move-result v25

    .line 790
    add-int/lit8 v3, v25, 0x2

    const/4 v4, 0x1

    move-object/from16 v0, p2

    iget v6, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typeRef:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    .line 792
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    .line 791
    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7, v9, v10}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v6

    .line 790
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v4, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result v25

    .line 788
    add-int/lit8 v20, v20, -0x1

    goto :goto_6

    .line 795
    .end local v25    # "v":I
    :cond_e
    if-eqz v22, :cond_f

    .line 796
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v20

    add-int/lit8 v25, v22, 0x2

    .restart local v25    # "v":I
    :goto_7
    if-lez v20, :cond_f

    .line 797
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;I)I

    move-result v25

    .line 798
    add-int/lit8 v3, v25, 0x2

    const/4 v4, 0x1

    move-object/from16 v0, p2

    iget v6, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typeRef:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    .line 800
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 799
    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7, v9, v10}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v6

    .line 798
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v4, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result v25

    .line 796
    add-int/lit8 v20, v20, -0x1

    goto :goto_7

    .line 805
    .end local v25    # "v":I
    :cond_f
    :goto_8
    if-eqz v18, :cond_10

    .line 806
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    move-object/from16 v17, v0

    .line 807
    .restart local v17    # "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-object v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .line 808
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->visitAttribute(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;)V

    .line 809
    move-object/from16 v18, v17

    .line 810
    goto :goto_8

    .line 813
    .end local v17    # "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    :cond_10
    invoke-virtual/range {v19 .. v19}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->visitEnd()V

    goto/16 :goto_3
.end method

.method private readFrame(IZZLorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;)I
    .locals 23
    .param p1, "stackMap"    # I
    .param p2, "zip"    # Z
    .param p3, "unzip"    # Z
    .param p4, "frame"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;

    .prologue
    .line 2035
    move-object/from16 v0, p4

    iget-object v6, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->buffer:[C

    .line 2036
    .local v6, "c":[C
    move-object/from16 v0, p4

    iget-object v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->labels:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 2039
    .local v7, "labels":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    if-eqz p2, :cond_1

    .line 2040
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    add-int/lit8 v21, p1, 0x1

    .end local p1    # "stackMap":I
    .local v21, "stackMap":I
    aget-byte v2, v2, p1

    and-int/lit16 v0, v2, 0xff

    move/from16 v22, v0

    .local v22, "tag":I
    move/from16 p1, v21

    .line 2045
    .end local v21    # "stackMap":I
    .restart local p1    # "stackMap":I
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->localDiff:I

    .line 2046
    const/16 v2, 0x40

    move/from16 v0, v22

    if-ge v0, v2, :cond_2

    .line 2047
    move/from16 v17, v22

    .line 2048
    .local v17, "delta":I
    const/4 v2, 0x3

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->mode:I

    .line 2049
    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->stackCount:I

    .line 2100
    :cond_0
    :goto_1
    move-object/from16 v0, p4

    iget v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->offset:I

    add-int/lit8 v3, v17, 0x1

    add-int/2addr v2, v3

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->offset:I

    .line 2101
    move-object/from16 v0, p4

    iget v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->offset:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 2102
    return p1

    .line 2042
    .end local v17    # "delta":I
    .end local v22    # "tag":I
    :cond_1
    const/16 v22, 0xff

    .line 2043
    .restart local v22    # "tag":I
    const/4 v2, -0x1

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->offset:I

    goto :goto_0

    .line 2050
    :cond_2
    const/16 v2, 0x80

    move/from16 v0, v22

    if-ge v0, v2, :cond_3

    .line 2051
    add-int/lit8 v17, v22, -0x40

    .line 2052
    .restart local v17    # "delta":I
    move-object/from16 v0, p4

    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->stack:[Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v2, p0

    move/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readFrameType([Ljava/lang/Object;II[C[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)I

    move-result p1

    .line 2053
    const/4 v2, 0x4

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->mode:I

    .line 2054
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->stackCount:I

    goto :goto_1

    .line 2056
    .end local v17    # "delta":I
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v17

    .line 2057
    .restart local v17    # "delta":I
    add-int/lit8 p1, p1, 0x2

    .line 2058
    const/16 v2, 0xf7

    move/from16 v0, v22

    if-ne v0, v2, :cond_4

    .line 2059
    move-object/from16 v0, p4

    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->stack:[Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v2, p0

    move/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readFrameType([Ljava/lang/Object;II[C[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)I

    move-result p1

    .line 2060
    const/4 v2, 0x4

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->mode:I

    .line 2061
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->stackCount:I

    goto :goto_1

    .line 2062
    :cond_4
    const/16 v2, 0xf8

    move/from16 v0, v22

    if-lt v0, v2, :cond_5

    const/16 v2, 0xfb

    move/from16 v0, v22

    if-ge v0, v2, :cond_5

    .line 2064
    const/4 v2, 0x2

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->mode:I

    .line 2065
    move/from16 v0, v22

    rsub-int v2, v0, 0xfb

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->localDiff:I

    .line 2066
    move-object/from16 v0, p4

    iget v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->localCount:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->localDiff:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->localCount:I

    .line 2067
    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->stackCount:I

    goto/16 :goto_1

    .line 2068
    :cond_5
    const/16 v2, 0xfb

    move/from16 v0, v22

    if-ne v0, v2, :cond_6

    .line 2069
    const/4 v2, 0x3

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->mode:I

    .line 2070
    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->stackCount:I

    goto/16 :goto_1

    .line 2071
    :cond_6
    const/16 v2, 0xff

    move/from16 v0, v22

    if-ge v0, v2, :cond_9

    .line 2072
    if-eqz p3, :cond_7

    move-object/from16 v0, p4

    iget v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->localCount:I

    .line 2073
    .local v4, "local":I
    :goto_2
    move/from16 v0, v22

    add-int/lit16 v0, v0, -0xfb

    move/from16 v18, v0

    .local v18, "i":I
    :goto_3
    if-lez v18, :cond_8

    .line 2074
    move-object/from16 v0, p4

    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->local:[Ljava/lang/Object;

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "local":I
    .local v10, "local":I
    move-object/from16 v2, p0

    move/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readFrameType([Ljava/lang/Object;II[C[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)I

    move-result p1

    .line 2073
    add-int/lit8 v18, v18, -0x1

    move v4, v10

    .end local v10    # "local":I
    .restart local v4    # "local":I
    goto :goto_3

    .line 2072
    .end local v4    # "local":I
    .end local v18    # "i":I
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 2077
    .restart local v4    # "local":I
    .restart local v18    # "i":I
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->mode:I

    .line 2078
    move/from16 v0, v22

    add-int/lit16 v2, v0, -0xfb

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->localDiff:I

    .line 2079
    move-object/from16 v0, p4

    iget v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->localCount:I

    move-object/from16 v0, p4

    iget v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->localDiff:I

    add-int/2addr v2, v3

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->localCount:I

    .line 2080
    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->stackCount:I

    goto/16 :goto_1

    .line 2082
    .end local v4    # "local":I
    .end local v18    # "i":I
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->mode:I

    .line 2083
    invoke-virtual/range {p0 .. p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v19

    .line 2084
    .local v19, "n":I
    add-int/lit8 p1, p1, 0x2

    .line 2085
    move/from16 v0, v19

    move-object/from16 v1, p4

    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->localDiff:I

    .line 2086
    move/from16 v0, v19

    move-object/from16 v1, p4

    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->localCount:I

    .line 2087
    const/4 v4, 0x0

    .restart local v4    # "local":I
    move v10, v4

    .end local v4    # "local":I
    .restart local v10    # "local":I
    :goto_4
    if-lez v19, :cond_a

    .line 2088
    move-object/from16 v0, p4

    iget-object v9, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->local:[Ljava/lang/Object;

    add-int/lit8 v4, v10, 0x1

    .end local v10    # "local":I
    .restart local v4    # "local":I
    move-object/from16 v8, p0

    move/from16 v11, p1

    move-object v12, v6

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readFrameType([Ljava/lang/Object;II[C[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)I

    move-result p1

    .line 2087
    add-int/lit8 v19, v19, -0x1

    move v10, v4

    .end local v4    # "local":I
    .restart local v10    # "local":I
    goto :goto_4

    .line 2091
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v19

    .line 2092
    add-int/lit8 p1, p1, 0x2

    .line 2093
    move/from16 v0, v19

    move-object/from16 v1, p4

    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->stackCount:I

    .line 2094
    const/4 v13, 0x0

    .local v13, "stack":I
    :goto_5
    if-lez v19, :cond_0

    .line 2095
    move-object/from16 v0, p4

    iget-object v12, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->stack:[Ljava/lang/Object;

    add-int/lit8 v20, v13, 0x1

    .end local v13    # "stack":I
    .local v20, "stack":I
    move-object/from16 v11, p0

    move/from16 v14, p1

    move-object v15, v6

    move-object/from16 v16, v7

    invoke-direct/range {v11 .. v16}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readFrameType([Ljava/lang/Object;II[C[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)I

    move-result p1

    .line 2094
    add-int/lit8 v19, v19, -0x1

    move/from16 v13, v20

    .end local v20    # "stack":I
    .restart local v13    # "stack":I
    goto :goto_5
.end method

.method private readFrameType([Ljava/lang/Object;II[C[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)I
    .locals 3
    .param p1, "frame"    # [Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "v"    # I
    .param p4, "buf"    # [C
    .param p5, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 2126
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    add-int/lit8 v1, p3, 0x1

    .end local p3    # "v":I
    .local v1, "v":I
    aget-byte v2, v2, p3

    and-int/lit16 v0, v2, 0xff

    .line 2127
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 2154
    invoke-virtual {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    invoke-virtual {p0, v2, p5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v2

    aput-object v2, p1, p2

    .line 2155
    add-int/lit8 p3, v1, 0x2

    .line 2157
    .end local v1    # "v":I
    .restart local p3    # "v":I
    :goto_0
    return p3

    .line 2129
    .end local p3    # "v":I
    .restart local v1    # "v":I
    :pswitch_0
    sget-object v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object v2, p1, p2

    move p3, v1

    .line 2130
    .end local v1    # "v":I
    .restart local p3    # "v":I
    goto :goto_0

    .line 2132
    .end local p3    # "v":I
    .restart local v1    # "v":I
    :pswitch_1
    sget-object v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v2, p1, p2

    move p3, v1

    .line 2133
    .end local v1    # "v":I
    .restart local p3    # "v":I
    goto :goto_0

    .line 2135
    .end local p3    # "v":I
    .restart local v1    # "v":I
    :pswitch_2
    sget-object v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v2, p1, p2

    move p3, v1

    .line 2136
    .end local v1    # "v":I
    .restart local p3    # "v":I
    goto :goto_0

    .line 2138
    .end local p3    # "v":I
    .restart local v1    # "v":I
    :pswitch_3
    sget-object v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v2, p1, p2

    move p3, v1

    .line 2139
    .end local v1    # "v":I
    .restart local p3    # "v":I
    goto :goto_0

    .line 2141
    .end local p3    # "v":I
    .restart local v1    # "v":I
    :pswitch_4
    sget-object v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v2, p1, p2

    move p3, v1

    .line 2142
    .end local v1    # "v":I
    .restart local p3    # "v":I
    goto :goto_0

    .line 2144
    .end local p3    # "v":I
    .restart local v1    # "v":I
    :pswitch_5
    sget-object v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->NULL:Ljava/lang/Integer;

    aput-object v2, p1, p2

    move p3, v1

    .line 2145
    .end local v1    # "v":I
    .restart local p3    # "v":I
    goto :goto_0

    .line 2147
    .end local p3    # "v":I
    .restart local v1    # "v":I
    :pswitch_6
    sget-object v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v2, p1, p2

    move p3, v1

    .line 2148
    .end local v1    # "v":I
    .restart local p3    # "v":I
    goto :goto_0

    .line 2150
    .end local p3    # "v":I
    .restart local v1    # "v":I
    :pswitch_7
    invoke-virtual {p0, v1, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, p2

    .line 2151
    add-int/lit8 p3, v1, 0x2

    .line 2152
    .end local v1    # "v":I
    .restart local p3    # "v":I
    goto :goto_0

    .line 2127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private readMethod(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;I)I
    .locals 36
    .param p1, "classVisitor"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;
    .param p2, "context"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;
    .param p3, "u"    # I

    .prologue
    .line 832
    move-object/from16 v0, p2

    iget-object v9, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->buffer:[C

    .line 833
    .local v9, "c":[C
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    move-object/from16 v0, p2

    iput v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->access:I

    .line 834
    add-int/lit8 v4, p3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    iput-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->name:Ljava/lang/String;

    .line 835
    add-int/lit8 v4, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    iput-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->desc:Ljava/lang/String;

    .line 836
    add-int/lit8 p3, p3, 0x6

    .line 839
    const/16 v19, 0x0

    .line 840
    .local v19, "code":I
    const/16 v22, 0x0

    .line 841
    .local v22, "exception":I
    const/4 v15, 0x0

    .line 842
    .local v15, "exceptions":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 843
    .local v14, "signature":Ljava/lang/String;
    const/16 v29, 0x0

    .line 844
    .local v29, "methodParameters":I
    const/16 v16, 0x0

    .line 845
    .local v16, "anns":I
    const/16 v25, 0x0

    .line 846
    .local v25, "ianns":I
    const/16 v34, 0x0

    .line 847
    .local v34, "tanns":I
    const/16 v27, 0x0

    .line 848
    .local v27, "itanns":I
    const/16 v20, 0x0

    .line 849
    .local v20, "dann":I
    const/16 v30, 0x0

    .line 850
    .local v30, "mpanns":I
    const/16 v26, 0x0

    .line 851
    .local v26, "impanns":I
    move/from16 v23, p3

    .line 852
    .local v23, "firstAttribute":I
    const/16 v18, 0x0

    .line 854
    .local v18, "attributes":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v24

    .local v24, "i":I
    :goto_0
    if-lez v24, :cond_e

    .line 855
    add-int/lit8 v4, p3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 858
    .local v6, "attrName":Ljava/lang/String;
    const-string v4, "Code"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 859
    move-object/from16 v0, p2

    iget v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 860
    add-int/lit8 v19, p3, 0x8

    .line 906
    :cond_0
    :goto_1
    add-int/lit8 v4, p3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    add-int p3, p3, v4

    .line 854
    add-int/lit8 v24, v24, -0x1

    goto :goto_0

    .line 862
    :cond_1
    const-string v4, "Exceptions"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 863
    add-int/lit8 v4, p3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    new-array v15, v4, [Ljava/lang/String;

    .line 864
    add-int/lit8 v22, p3, 0xa

    .line 865
    const/16 v28, 0x0

    .local v28, "j":I
    :goto_2
    array-length v4, v15

    move/from16 v0, v28

    if-ge v0, v4, :cond_0

    .line 866
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v28

    .line 867
    add-int/lit8 v22, v22, 0x2

    .line 865
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 869
    .end local v28    # "j":I
    :cond_2
    const-string v4, "Signature"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 870
    add-int/lit8 v4, p3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 871
    :cond_3
    const-string v4, "Deprecated"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 872
    move-object/from16 v0, p2

    iget v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->access:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    move-object/from16 v0, p2

    iput v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->access:I

    goto :goto_1

    .line 873
    :cond_4
    const-string v4, "RuntimeVisibleAnnotations"

    .line 874
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 875
    add-int/lit8 v16, p3, 0x8

    goto :goto_1

    .line 876
    :cond_5
    const-string v4, "RuntimeVisibleTypeAnnotations"

    .line 877
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 878
    add-int/lit8 v34, p3, 0x8

    goto :goto_1

    .line 879
    :cond_6
    const-string v4, "AnnotationDefault"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 880
    add-int/lit8 v20, p3, 0x8

    goto :goto_1

    .line 881
    :cond_7
    const-string v4, "Synthetic"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 882
    move-object/from16 v0, p2

    iget v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->access:I

    const v5, 0x41000

    or-int/2addr v4, v5

    move-object/from16 v0, p2

    iput v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->access:I

    goto/16 :goto_1

    .line 884
    :cond_8
    const-string v4, "RuntimeInvisibleAnnotations"

    .line 885
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 886
    add-int/lit8 v25, p3, 0x8

    goto/16 :goto_1

    .line 887
    :cond_9
    const-string v4, "RuntimeInvisibleTypeAnnotations"

    .line 888
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 889
    add-int/lit8 v27, p3, 0x8

    goto/16 :goto_1

    .line 890
    :cond_a
    const-string v4, "RuntimeVisibleParameterAnnotations"

    .line 891
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 892
    add-int/lit8 v30, p3, 0x8

    goto/16 :goto_1

    .line 893
    :cond_b
    const-string v4, "RuntimeInvisibleParameterAnnotations"

    .line 894
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 895
    add-int/lit8 v26, p3, 0x8

    goto/16 :goto_1

    .line 896
    :cond_c
    const-string v4, "MethodParameters"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 897
    add-int/lit8 v29, p3, 0x8

    goto/16 :goto_1

    .line 899
    :cond_d
    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->attrs:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    add-int/lit8 v7, p3, 0x8

    add-int/lit8 v4, p3, 0x4

    .line 900
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v8

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 899
    invoke-direct/range {v4 .. v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAttribute([Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;Ljava/lang/String;II[CI[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    move-result-object v17

    .line 901
    .local v17, "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    if-eqz v17, :cond_0

    .line 902
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .line 903
    move-object/from16 v18, v17

    goto/16 :goto_1

    .line 908
    .end local v6    # "attrName":Ljava/lang/String;
    .end local v17    # "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    :cond_e
    add-int/lit8 p3, p3, 0x2

    .line 911
    move-object/from16 v0, p2

    iget v11, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->access:I

    move-object/from16 v0, p2

    iget-object v12, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->desc:Ljava/lang/String;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    move-result-object v31

    .line 913
    .local v31, "mv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    if-nez v31, :cond_f

    .line 1023
    :goto_3
    return p3

    .line 927
    :cond_f
    move-object/from16 v0, v31

    instance-of v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;

    if-eqz v4, :cond_14

    move-object/from16 v32, v31

    .line 928
    check-cast v32, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;

    .line 929
    .local v32, "mw":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    iget-object v4, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->cr:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;

    move-object/from16 v0, p0

    if-ne v4, v0, :cond_14

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->signature:Ljava/lang/String;

    if-ne v14, v4, :cond_14

    .line 930
    const/16 v33, 0x0

    .line 931
    .local v33, "sameExceptions":Z
    if-nez v15, :cond_12

    .line 932
    move-object/from16 v0, v32

    iget v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->exceptionCount:I

    if-nez v4, :cond_11

    const/16 v33, 0x1

    .line 943
    :cond_10
    :goto_4
    if-eqz v33, :cond_14

    .line 949
    move/from16 v0, v23

    move-object/from16 v1, v32

    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->classReaderOffset:I

    .line 950
    sub-int v4, p3, v23

    move-object/from16 v0, v32

    iput v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->classReaderLength:I

    goto :goto_3

    .line 932
    :cond_11
    const/16 v33, 0x0

    goto :goto_4

    .line 933
    :cond_12
    array-length v4, v15

    move-object/from16 v0, v32

    iget v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->exceptionCount:I

    if-ne v4, v5, :cond_10

    .line 934
    const/16 v33, 0x1

    .line 935
    array-length v4, v15

    add-int/lit8 v28, v4, -0x1

    .restart local v28    # "j":I
    :goto_5
    if-ltz v28, :cond_10

    .line 936
    add-int/lit8 v22, v22, -0x2

    .line 937
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;->exceptions:[I

    aget v4, v4, v28

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    if-eq v4, v5, :cond_13

    .line 938
    const/16 v33, 0x0

    .line 939
    goto :goto_4

    .line 935
    :cond_13
    add-int/lit8 v28, v28, -0x1

    goto :goto_5

    .line 957
    .end local v28    # "j":I
    .end local v32    # "mw":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodWriter;
    .end local v33    # "sameExceptions":Z
    :cond_14
    if-eqz v29, :cond_15

    .line 958
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    aget-byte v4, v4, v29

    and-int/lit16 v0, v4, 0xff

    move/from16 v24, v0

    add-int/lit8 v35, v29, 0x1

    .local v35, "v":I
    :goto_6
    if-lez v24, :cond_15

    .line 959
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v35, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    .line 958
    add-int/lit8 v24, v24, -0x1

    add-int/lit8 v35, v35, 0x4

    goto :goto_6

    .line 964
    .end local v35    # "v":I
    :cond_15
    if-eqz v20, :cond_16

    .line 965
    invoke-virtual/range {v31 .. v31}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitAnnotationDefault()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v21

    .line 966
    .local v21, "dv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v9, v4, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValue(I[CLjava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    .line 967
    if-eqz v21, :cond_16

    .line 968
    invoke-virtual/range {v21 .. v21}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visitEnd()V

    .line 971
    .end local v21    # "dv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    :cond_16
    if-eqz v16, :cond_17

    .line 972
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v24

    add-int/lit8 v35, v16, 0x2

    .restart local v35    # "v":I
    :goto_7
    if-lez v24, :cond_17

    .line 973
    add-int/lit8 v4, v35, 0x2

    const/4 v5, 0x1

    .line 974
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v7

    .line 973
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v5, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result v35

    .line 972
    add-int/lit8 v24, v24, -0x1

    goto :goto_7

    .line 977
    .end local v35    # "v":I
    :cond_17
    if-eqz v25, :cond_18

    .line 978
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v24

    add-int/lit8 v35, v25, 0x2

    .restart local v35    # "v":I
    :goto_8
    if-lez v24, :cond_18

    .line 979
    add-int/lit8 v4, v35, 0x2

    const/4 v5, 0x1

    .line 980
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v7

    .line 979
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v5, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result v35

    .line 978
    add-int/lit8 v24, v24, -0x1

    goto :goto_8

    .line 983
    .end local v35    # "v":I
    :cond_18
    if-eqz v34, :cond_19

    .line 984
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v24

    add-int/lit8 v35, v34, 0x2

    .restart local v35    # "v":I
    :goto_9
    if-lez v24, :cond_19

    .line 985
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;I)I

    move-result v35

    .line 986
    add-int/lit8 v4, v35, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, p2

    iget v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typeRef:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    .line 988
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    .line 987
    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8, v10, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v7

    .line 986
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v5, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result v35

    .line 984
    add-int/lit8 v24, v24, -0x1

    goto :goto_9

    .line 991
    .end local v35    # "v":I
    :cond_19
    if-eqz v27, :cond_1a

    .line 992
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v24

    add-int/lit8 v35, v27, 0x2

    .restart local v35    # "v":I
    :goto_a
    if-lez v24, :cond_1a

    .line 993
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;I)I

    move-result v35

    .line 994
    add-int/lit8 v4, v35, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, p2

    iget v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typeRef:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    .line 996
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 995
    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8, v10, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v7

    .line 994
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v5, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result v35

    .line 992
    add-int/lit8 v24, v24, -0x1

    goto :goto_a

    .line 999
    .end local v35    # "v":I
    :cond_1a
    if-eqz v30, :cond_1b

    .line 1000
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readParameterAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;IZ)V

    .line 1002
    :cond_1b
    if-eqz v26, :cond_1c

    .line 1003
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readParameterAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;IZ)V

    .line 1007
    :cond_1c
    :goto_b
    if-eqz v18, :cond_1d

    .line 1008
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    move-object/from16 v17, v0

    .line 1009
    .restart local v17    # "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .line 1010
    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitAttribute(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;)V

    .line 1011
    move-object/from16 v18, v17

    .line 1012
    goto :goto_b

    .line 1015
    .end local v17    # "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    :cond_1d
    if-eqz v19, :cond_1e

    .line 1016
    invoke-virtual/range {v31 .. v31}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitCode()V

    .line 1017
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readCode(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;I)V

    .line 1021
    :cond_1e
    invoke-virtual/range {v31 .. v31}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitEnd()V

    goto/16 :goto_3
.end method

.method private readParameterAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;IZ)V
    .locals 9
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .param p2, "context"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;
    .param p3, "v"    # I
    .param p4, "visible"    # Z

    .prologue
    .line 1728
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    add-int/lit8 v6, p3, 0x1

    .end local p3    # "v":I
    .local v6, "v":I
    aget-byte v7, v7, p3

    and-int/lit16 v4, v7, 0xff

    .line 1735
    .local v4, "n":I
    iget-object v7, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->desc:Ljava/lang/String;

    invoke-static {v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v7

    array-length v7, v7

    sub-int v5, v7, v4

    .line 1737
    .local v5, "synthetics":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 1739
    const-string v7, "Ljava/lang/Synthetic;"

    const/4 v8, 0x0

    invoke-virtual {p1, v2, v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v0

    .line 1740
    .local v0, "av":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    if-eqz v0, :cond_0

    .line 1741
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visitEnd()V

    .line 1737
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1744
    .end local v0    # "av":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    :cond_1
    iget-object v1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->buffer:[C

    .local v1, "c":[C
    move p3, v6

    .line 1745
    .end local v6    # "v":I
    .restart local p3    # "v":I
    :goto_1
    add-int v7, v4, v5

    if-ge v2, v7, :cond_3

    .line 1746
    invoke-virtual {p0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 1747
    .local v3, "j":I
    add-int/lit8 p3, p3, 0x2

    .line 1748
    :goto_2
    if-lez v3, :cond_2

    .line 1749
    invoke-virtual {p0, p3, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v2, v7, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v0

    .line 1750
    .restart local v0    # "av":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    add-int/lit8 v7, p3, 0x2

    const/4 v8, 0x1

    invoke-direct {p0, v7, v1, v8, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result p3

    .line 1748
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1745
    .end local v0    # "av":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1753
    .end local v3    # "j":I
    :cond_3
    return-void
.end method

.method private readTypeAnnotations(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;IZ)[I
    .locals 13
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .param p2, "context"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;
    .param p3, "u"    # I
    .param p4, "visible"    # Z

    .prologue
    .line 1575
    iget-object v1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->buffer:[C

    .line 1576
    .local v1, "c":[C
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    new-array v5, v10, [I

    .line 1577
    .local v5, "offsets":[I
    add-int/lit8 p3, p3, 0x2

    .line 1578
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v10, v5

    if-ge v2, v10, :cond_3

    .line 1579
    aput p3, v5, v2

    .line 1580
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v9

    .line 1581
    .local v9, "target":I
    ushr-int/lit8 v10, v9, 0x18

    sparse-switch v10, :sswitch_data_0

    .line 1620
    add-int/lit8 p3, p3, 0x3

    .line 1623
    :goto_1
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readByte(I)I

    move-result v7

    .line 1624
    .local v7, "pathLength":I
    ushr-int/lit8 v10, v9, 0x18

    const/16 v11, 0x42

    if-ne v10, v11, :cond_2

    .line 1625
    if-nez v7, :cond_1

    const/4 v6, 0x0

    .line 1626
    .local v6, "path":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    :goto_2
    mul-int/lit8 v10, v7, 0x2

    add-int/lit8 v10, v10, 0x1

    add-int p3, p3, v10

    .line 1627
    add-int/lit8 v10, p3, 0x2

    const/4 v11, 0x1

    .line 1629
    move/from16 v0, p3

    invoke-virtual {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    .line 1628
    move/from16 v0, p4

    invoke-virtual {p1, v9, v6, v12, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTryCatchAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v12

    .line 1627
    invoke-direct {p0, v10, v1, v11, v12}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result p3

    .line 1578
    .end local v6    # "path":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1585
    .end local v7    # "pathLength":I
    :sswitch_0
    add-int/lit8 p3, p3, 0x2

    .line 1586
    goto :goto_1

    .line 1590
    :sswitch_1
    add-int/lit8 p3, p3, 0x1

    .line 1591
    goto :goto_1

    .line 1594
    :sswitch_2
    add-int/lit8 v10, p3, 0x1

    invoke-virtual {p0, v10}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .local v3, "j":I
    :goto_4
    if-lez v3, :cond_0

    .line 1595
    add-int/lit8 v10, p3, 0x3

    invoke-virtual {p0, v10}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    .line 1596
    .local v8, "start":I
    add-int/lit8 v10, p3, 0x5

    invoke-virtual {p0, v10}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 1597
    .local v4, "length":I
    iget-object v10, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->labels:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    invoke-virtual {p0, v8, v10}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1598
    add-int v10, v8, v4

    iget-object v11, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->labels:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    invoke-virtual {p0, v10, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 1599
    add-int/lit8 p3, p3, 0x6

    .line 1594
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 1601
    .end local v4    # "length":I
    .end local v8    # "start":I
    :cond_0
    add-int/lit8 p3, p3, 0x3

    .line 1602
    goto :goto_1

    .line 1608
    .end local v3    # "j":I
    :sswitch_3
    add-int/lit8 p3, p3, 0x4

    .line 1609
    goto :goto_1

    .line 1625
    .restart local v7    # "pathLength":I
    :cond_1
    new-instance v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    iget-object v10, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    move/from16 v0, p3

    invoke-direct {v6, v10, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;-><init>([BI)V

    goto :goto_2

    .line 1631
    :cond_2
    add-int/lit8 v10, p3, 0x3

    mul-int/lit8 v11, v7, 0x2

    add-int/2addr v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v10, v1, v11, v12}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result p3

    goto :goto_3

    .line 1634
    .end local v7    # "pathLength":I
    .end local v9    # "target":I
    :cond_3
    return-object v5

    .line 1581
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
        0x40 -> :sswitch_2
        0x41 -> :sswitch_2
        0x47 -> :sswitch_3
        0x48 -> :sswitch_3
        0x49 -> :sswitch_3
        0x4a -> :sswitch_3
        0x4b -> :sswitch_3
    .end sparse-switch
.end method

.method private readUTF(II[C)Ljava/lang/String;
    .locals 10
    .param p1, "index"    # I
    .param p2, "utfLen"    # I
    .param p3, "buf"    # [C

    .prologue
    .line 2398
    add-int v3, p1, p2

    .line 2399
    .local v3, "endIndex":I
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    .line 2400
    .local v0, "b":[B
    const/4 v6, 0x0

    .line 2402
    .local v6, "strLen":I
    const/4 v5, 0x0

    .line 2403
    .local v5, "st":I
    const/4 v2, 0x0

    .local v2, "cc":C
    move v7, v6

    .end local v6    # "strLen":I
    .local v7, "strLen":I
    move v4, p1

    .line 2404
    .end local p1    # "index":I
    .local v4, "index":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 2405
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "index":I
    .restart local p1    # "index":I
    aget-byte v1, v0, v4

    .line 2406
    .local v1, "c":I
    packed-switch v5, :pswitch_data_0

    move v6, v7

    .end local v7    # "strLen":I
    .restart local v6    # "strLen":I
    :goto_1
    move v7, v6

    .end local v6    # "strLen":I
    .restart local v7    # "strLen":I
    move v4, p1

    .line 2428
    .end local p1    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    .line 2408
    .end local v4    # "index":I
    .restart local p1    # "index":I
    :pswitch_0
    and-int/lit16 v1, v1, 0xff

    .line 2409
    const/16 v8, 0x80

    if-ge v1, v8, :cond_0

    .line 2410
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "strLen":I
    .restart local v6    # "strLen":I
    int-to-char v8, v1

    aput-char v8, p3, v7

    goto :goto_1

    .line 2411
    .end local v6    # "strLen":I
    .restart local v7    # "strLen":I
    :cond_0
    const/16 v8, 0xe0

    if-ge v1, v8, :cond_1

    const/16 v8, 0xbf

    if-le v1, v8, :cond_1

    .line 2412
    and-int/lit8 v8, v1, 0x1f

    int-to-char v2, v8

    .line 2413
    const/4 v5, 0x1

    move v6, v7

    .end local v7    # "strLen":I
    .restart local v6    # "strLen":I
    goto :goto_1

    .line 2415
    .end local v6    # "strLen":I
    .restart local v7    # "strLen":I
    :cond_1
    and-int/lit8 v8, v1, 0xf

    int-to-char v2, v8

    .line 2416
    const/4 v5, 0x2

    move v6, v7

    .line 2418
    .end local v7    # "strLen":I
    .restart local v6    # "strLen":I
    goto :goto_1

    .line 2421
    .end local v6    # "strLen":I
    .restart local v7    # "strLen":I
    :pswitch_1
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "strLen":I
    .restart local v6    # "strLen":I
    shl-int/lit8 v8, v2, 0x6

    and-int/lit8 v9, v1, 0x3f

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, p3, v7

    .line 2422
    const/4 v5, 0x0

    .line 2423
    goto :goto_1

    .line 2426
    .end local v6    # "strLen":I
    .restart local v7    # "strLen":I
    :pswitch_2
    shl-int/lit8 v8, v2, 0x6

    and-int/lit8 v9, v1, 0x3f

    or-int/2addr v8, v9

    int-to-char v2, v8

    .line 2427
    const/4 v5, 0x1

    move v6, v7

    .end local v7    # "strLen":I
    .restart local v6    # "strLen":I
    goto :goto_1

    .line 2431
    .end local v1    # "c":I
    .end local v6    # "strLen":I
    .end local p1    # "index":I
    .restart local v4    # "index":I
    .restart local v7    # "strLen":I
    :cond_2
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, p3, v9, v7}, Ljava/lang/String;-><init>([CII)V

    return-object v8

    .line 2406
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;I)V
    .locals 1
    .param p1, "classVisitor"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;
    .param p2, "flags"    # I

    .prologue
    .line 506
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    invoke-virtual {p0, p1, v0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;I)V

    .line 507
    return-void
.end method

.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;I)V
    .locals 37
    .param p1, "classVisitor"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;
    .param p2, "attrs"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    .param p3, "flags"    # I

    .prologue
    .line 532
    move-object/from16 v0, p0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->header:I

    move/from16 v35, v0

    .line 533
    .local v35, "u":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->maxStringLength:I

    new-array v9, v4, [C

    .line 535
    .local v9, "c":[C
    new-instance v21, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;

    invoke-direct/range {v21 .. v21}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;-><init>()V

    .line 536
    .local v21, "context":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->attrs:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .line 537
    move/from16 v0, p3

    move-object/from16 v1, v21

    iput v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->flags:I

    .line 538
    move-object/from16 v0, v21

    iput-object v9, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->buffer:[C

    .line 541
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    .line 542
    .local v12, "access":I
    add-int/lit8 v4, v35, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v13

    .line 543
    .local v13, "name":Ljava/lang/String;
    add-int/lit8 v4, v35, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v15

    .line 544
    .local v15, "superClass":Ljava/lang/String;
    add-int/lit8 v4, v35, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 545
    .local v16, "interfaces":[Ljava/lang/String;
    add-int/lit8 v35, v35, 0x8

    .line 546
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v4, v0

    move/from16 v0, v25

    if-ge v0, v4, :cond_0

    .line 547
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v16, v25

    .line 548
    add-int/lit8 v35, v35, 0x2

    .line 546
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 552
    :cond_0
    const/4 v14, 0x0

    .line 553
    .local v14, "signature":Ljava/lang/String;
    const/16 v33, 0x0

    .line 554
    .local v33, "sourceFile":Ljava/lang/String;
    const/16 v32, 0x0

    .line 555
    .local v32, "sourceDebug":Ljava/lang/String;
    const/16 v24, 0x0

    .line 556
    .local v24, "enclosingOwner":Ljava/lang/String;
    const/16 v23, 0x0

    .line 557
    .local v23, "enclosingName":Ljava/lang/String;
    const/16 v22, 0x0

    .line 558
    .local v22, "enclosingDesc":Ljava/lang/String;
    const/16 v17, 0x0

    .line 559
    .local v17, "anns":I
    const/16 v26, 0x0

    .line 560
    .local v26, "ianns":I
    const/16 v34, 0x0

    .line 561
    .local v34, "tanns":I
    const/16 v28, 0x0

    .line 562
    .local v28, "itanns":I
    const/16 v27, 0x0

    .line 563
    .local v27, "innerClasses":I
    const/16 v19, 0x0

    .line 565
    .local v19, "attributes":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    invoke-direct/range {p0 .. p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->getAttributes()I

    move-result v35

    .line 566
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v25

    :goto_1
    if-lez v25, :cond_f

    .line 567
    add-int/lit8 v4, v35, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 570
    .local v6, "attrName":Ljava/lang/String;
    const-string v4, "SourceFile"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 571
    add-int/lit8 v4, v35, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v33

    .line 618
    :cond_1
    :goto_2
    add-int/lit8 v4, v35, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    add-int v35, v35, v4

    .line 566
    add-int/lit8 v25, v25, -0x1

    goto :goto_1

    .line 572
    :cond_2
    const-string v4, "InnerClasses"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 573
    add-int/lit8 v27, v35, 0x8

    goto :goto_2

    .line 574
    :cond_3
    const-string v4, "EnclosingMethod"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 575
    add-int/lit8 v4, v35, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v24

    .line 576
    add-int/lit8 v4, v35, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v29

    .line 577
    .local v29, "item":I
    if-eqz v29, :cond_1

    .line 578
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    aget v4, v4, v29

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v23

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    aget v4, v4, v29

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v22

    goto :goto_2

    .line 581
    .end local v29    # "item":I
    :cond_4
    const-string v4, "Signature"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 582
    add-int/lit8 v4, v35, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 583
    :cond_5
    const-string v4, "RuntimeVisibleAnnotations"

    .line 584
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 585
    add-int/lit8 v17, v35, 0x8

    goto :goto_2

    .line 586
    :cond_6
    const-string v4, "RuntimeVisibleTypeAnnotations"

    .line 587
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 588
    add-int/lit8 v34, v35, 0x8

    goto :goto_2

    .line 589
    :cond_7
    const-string v4, "Deprecated"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 590
    const/high16 v4, 0x20000

    or-int/2addr v12, v4

    goto/16 :goto_2

    .line 591
    :cond_8
    const-string v4, "Synthetic"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 592
    const v4, 0x41000

    or-int/2addr v12, v4

    goto/16 :goto_2

    .line 594
    :cond_9
    const-string v4, "SourceDebugExtension"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 595
    add-int/lit8 v4, v35, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v31

    .line 596
    .local v31, "len":I
    add-int/lit8 v4, v35, 0x8

    move/from16 v0, v31

    new-array v5, v0, [C

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v4, v1, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF(II[C)Ljava/lang/String;

    move-result-object v32

    .line 597
    goto/16 :goto_2

    .end local v31    # "len":I
    :cond_a
    const-string v4, "RuntimeInvisibleAnnotations"

    .line 598
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 599
    add-int/lit8 v26, v35, 0x8

    goto/16 :goto_2

    .line 600
    :cond_b
    const-string v4, "RuntimeInvisibleTypeAnnotations"

    .line 601
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 602
    add-int/lit8 v28, v35, 0x8

    goto/16 :goto_2

    .line 603
    :cond_c
    const-string v4, "BootstrapMethods"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 604
    add-int/lit8 v4, v35, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v20, v0

    .line 605
    .local v20, "bootstrapMethods":[I
    const/16 v30, 0x0

    .local v30, "j":I
    add-int/lit8 v36, v35, 0xa

    .local v36, "v":I
    :goto_3
    move-object/from16 v0, v20

    array-length v4, v0

    move/from16 v0, v30

    if-ge v0, v4, :cond_d

    .line 606
    aput v36, v20, v30

    .line 607
    add-int/lit8 v4, v36, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    shl-int/lit8 v4, v4, 0x1

    add-int v36, v36, v4

    .line 605
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 609
    :cond_d
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->bootstrapMethods:[I

    goto/16 :goto_2

    .line 611
    .end local v20    # "bootstrapMethods":[I
    .end local v30    # "j":I
    .end local v36    # "v":I
    :cond_e
    add-int/lit8 v7, v35, 0x8

    add-int/lit8 v4, v35, 0x4

    .line 612
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v8

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    .line 611
    invoke-direct/range {v4 .. v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAttribute([Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;Ljava/lang/String;II[CI[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    move-result-object v18

    .line 613
    .local v18, "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    if-eqz v18, :cond_1

    .line 614
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .line 615
    move-object/from16 v19, v18

    goto/16 :goto_2

    .line 622
    .end local v6    # "attrName":Ljava/lang/String;
    .end local v18    # "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/lit8 v4, v4, -0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v11

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v16}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 626
    and-int/lit8 v4, p3, 0x2

    if-nez v4, :cond_11

    if-nez v33, :cond_10

    if-eqz v32, :cond_11

    .line 628
    :cond_10
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_11
    if-eqz v24, :cond_12

    .line 633
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :cond_12
    if-eqz v17, :cond_13

    .line 639
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v25

    add-int/lit8 v36, v17, 0x2

    .restart local v36    # "v":I
    :goto_4
    if-lez v25, :cond_13

    .line 640
    add-int/lit8 v4, v36, 0x2

    const/4 v5, 0x1

    .line 641
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v7

    .line 640
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v5, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result v36

    .line 639
    add-int/lit8 v25, v25, -0x1

    goto :goto_4

    .line 644
    .end local v36    # "v":I
    :cond_13
    if-eqz v26, :cond_14

    .line 645
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v25

    add-int/lit8 v36, v26, 0x2

    .restart local v36    # "v":I
    :goto_5
    if-lez v25, :cond_14

    .line 646
    add-int/lit8 v4, v36, 0x2

    const/4 v5, 0x1

    .line 647
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v7

    .line 646
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v5, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result v36

    .line 645
    add-int/lit8 v25, v25, -0x1

    goto :goto_5

    .line 650
    .end local v36    # "v":I
    :cond_14
    if-eqz v34, :cond_15

    .line 651
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v25

    add-int/lit8 v36, v34, 0x2

    .restart local v36    # "v":I
    :goto_6
    if-lez v25, :cond_15

    .line 652
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;I)I

    move-result v36

    .line 653
    add-int/lit8 v4, v36, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, v21

    iget v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typeRef:I

    move-object/from16 v0, v21

    iget-object v8, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    .line 655
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    .line 654
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v10, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v7

    .line 653
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v5, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result v36

    .line 651
    add-int/lit8 v25, v25, -0x1

    goto :goto_6

    .line 658
    .end local v36    # "v":I
    :cond_15
    if-eqz v28, :cond_16

    .line 659
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v25

    add-int/lit8 v36, v28, 0x2

    .restart local v36    # "v":I
    :goto_7
    if-lez v25, :cond_16

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;I)I

    move-result v36

    .line 661
    add-int/lit8 v4, v36, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, v21

    iget v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typeRef:I

    move-object/from16 v0, v21

    iget-object v8, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    .line 663
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 662
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v10, v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v7

    .line 661
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v5, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)I

    move-result v36

    .line 659
    add-int/lit8 v25, v25, -0x1

    goto :goto_7

    .line 668
    .end local v36    # "v":I
    :cond_16
    :goto_8
    if-eqz v19, :cond_17

    .line 669
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    move-object/from16 v18, v0

    .line 670
    .restart local v18    # "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    const/4 v4, 0x0

    move-object/from16 v0, v19

    iput-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .line 671
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visitAttribute(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;)V

    .line 672
    move-object/from16 v19, v18

    .line 673
    goto :goto_8

    .line 676
    .end local v18    # "attr":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;
    :cond_17
    if-eqz v27, :cond_18

    .line 677
    add-int/lit8 v36, v27, 0x2

    .line 678
    .restart local v36    # "v":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v25

    :goto_9
    if-lez v25, :cond_18

    .line 679
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v36, 0x2

    .line 680
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v36, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v36, 0x6

    .line 681
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    .line 679
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 682
    add-int/lit8 v36, v36, 0x8

    .line 678
    add-int/lit8 v25, v25, -0x1

    goto :goto_9

    .line 687
    .end local v36    # "v":I
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->header:I

    add-int/lit8 v4, v4, 0xa

    move-object/from16 v0, v16

    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    add-int v35, v4, v5

    .line 688
    add-int/lit8 v4, v35, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v25

    :goto_a
    if-lez v25, :cond_19

    .line 689
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readField(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;I)I

    move-result v35

    .line 688
    add-int/lit8 v25, v25, -0x1

    goto :goto_a

    .line 691
    :cond_19
    add-int/lit8 v35, v35, 0x2

    .line 692
    add-int/lit8 v4, v35, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v25

    :goto_b
    if-lez v25, :cond_1a

    .line 693
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readMethod(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Context;I)I

    move-result v35

    .line 692
    add-int/lit8 v25, v25, -0x1

    goto :goto_b

    .line 697
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visitEnd()V

    .line 698
    return-void
.end method

.method copyPool(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;)V
    .locals 18
    .param p1, "classWriter"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    .prologue
    .line 289
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->maxStringLength:I

    new-array v2, v14, [C

    .line 290
    .local v2, "buf":[C
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    array-length v9, v14

    .line 291
    .local v9, "ll":I
    new-array v8, v9, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 292
    .local v8, "items2":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v9, :cond_2

    .line 293
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    aget v5, v14, v4

    .line 294
    .local v5, "index":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    add-int/lit8 v15, v5, -0x1

    aget-byte v13, v14, v15

    .line 295
    .local v13, "tag":I
    new-instance v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    invoke-direct {v7, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;-><init>(I)V

    .line 297
    .local v7, "item":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    packed-switch v13, :pswitch_data_0

    .line 353
    :pswitch_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v7, v13, v14, v15, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :goto_1
    iget v14, v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    array-length v15, v8

    rem-int v6, v14, v15

    .line 358
    .local v6, "index2":I
    aget-object v14, v8, v6

    iput-object v14, v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 359
    aput-object v7, v8, v6

    .line 292
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 301
    .end local v6    # "index2":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    add-int/lit8 v15, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v15

    aget v10, v14, v15

    .line 302
    .local v10, "nameType":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v16, v10, 0x2

    .line 303
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v16

    .line 302
    move-object/from16 v0, v16

    invoke-virtual {v7, v13, v14, v15, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 306
    .end local v10    # "nameType":I
    :pswitch_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v14

    invoke-virtual {v7, v14}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(I)V

    goto :goto_1

    .line 309
    :pswitch_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    invoke-virtual {v7, v14}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(F)V

    goto :goto_1

    .line 312
    :pswitch_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v15, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v7, v13, v14, v15, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 316
    :pswitch_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLong(I)J

    move-result-wide v14

    invoke-virtual {v7, v14, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(J)V

    .line 317
    add-int/lit8 v4, v4, 0x1

    .line 318
    goto :goto_1

    .line 320
    :pswitch_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    invoke-virtual {v7, v14, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(D)V

    .line 321
    add-int/lit8 v4, v4, 0x1

    .line 322
    goto/16 :goto_1

    .line 324
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->strings:[Ljava/lang/String;

    aget-object v12, v14, v4

    .line 325
    .local v12, "s":Ljava/lang/String;
    if-nez v12, :cond_0

    .line 326
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    aget v5, v14, v4

    .line 327
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->strings:[Ljava/lang/String;

    add-int/lit8 v15, v5, 0x2

    .line 328
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v16

    .line 327
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF(II[C)Ljava/lang/String;

    move-result-object v12

    .end local v12    # "s":Ljava/lang/String;
    aput-object v12, v14, v4

    .line 330
    .restart local v12    # "s":Ljava/lang/String;
    :cond_0
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v7, v13, v12, v14, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 334
    .end local v12    # "s":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    add-int/lit8 v15, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v15

    aget v3, v14, v15

    .line 335
    .local v3, "fieldOrMethodRef":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    add-int/lit8 v15, v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v15

    aget v10, v14, v15

    .line 336
    .restart local v10    # "nameType":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readByte(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x14

    .line 337
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v15

    .line 338
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v16

    add-int/lit8 v17, v10, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v17

    .line 336
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v14, v15, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 342
    .end local v3    # "fieldOrMethodRef":I
    .end local v10    # "nameType":I
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    if-nez v14, :cond_1

    .line 343
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->copyBootstrapMethods(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;[C)V

    .line 345
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    add-int/lit8 v15, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v15

    aget v10, v14, v15

    .line 346
    .restart local v10    # "nameType":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v15, v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    .line 347
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v16

    .line 346
    move/from16 v0, v16

    invoke-virtual {v7, v14, v15, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->set(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 362
    .end local v5    # "index":I
    .end local v7    # "item":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
    .end local v10    # "nameType":I
    .end local v13    # "tag":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/lit8 v11, v14, -0x1

    .line 363
    .local v11, "off":I
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    move-object/from16 v0, p0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->header:I

    move/from16 v16, v0

    sub-int v16, v16, v11

    move/from16 v0, v16

    invoke-virtual {v14, v15, v11, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ByteVector;

    .line 364
    move-object/from16 v0, p1

    iput-object v8, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .line 365
    const-wide/high16 v14, 0x3fe8000000000000L    # 0.75

    int-to-double v0, v9

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-int v14, v14

    move-object/from16 v0, p1

    iput v14, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->threshold:I

    .line 366
    move-object/from16 v0, p1

    iput v9, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->index:I

    .line 367
    return-void

    .line 297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public getAccess()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->header:I

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->maxStringLength:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 268
    iget v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->header:I

    add-int/lit8 v2, v5, 0x6

    .line 269
    .local v2, "index":I
    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 270
    .local v4, "n":I
    new-array v3, v4, [Ljava/lang/String;

    .line 271
    .local v3, "interfaces":[Ljava/lang/String;
    if-lez v4, :cond_0

    .line 272
    iget v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->maxStringLength:I

    new-array v0, v5, [C

    .line 273
    .local v0, "buf":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 274
    add-int/lit8 v2, v2, 0x2

    .line 275
    invoke-virtual {p0, v2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "buf":[C
    .end local v1    # "i":I
    :cond_0
    return-object v3
.end method

.method public getItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 2274
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    aget v0, v0, p1

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 2260
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    array-length v0, v0

    return v0
.end method

.method public getMaxStringLength()I
    .locals 1

    .prologue
    .line 2285
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->maxStringLength:I

    return v0
.end method

.method public getSuperName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->maxStringLength:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readByte(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2298
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readClass(I[C)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .prologue
    .line 2451
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readConst(I[C)Ljava/lang/Object;
    .locals 10
    .param p1, "item"    # I
    .param p2, "buf"    # [C

    .prologue
    .line 2469
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    aget v2, v7, p1

    .line 2470
    .local v2, "index":I
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    add-int/lit8 v8, v2, -0x1

    aget-byte v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 2486
    :pswitch_0
    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readByte(I)I

    move-result v6

    .line 2487
    .local v6, "tag":I
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    .line 2488
    .local v3, "items":[I
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    aget v0, v3, v7

    .line 2489
    .local v0, "cpIndex":I
    invoke-virtual {p0, v0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    .line 2490
    .local v5, "owner":Ljava/lang/String;
    add-int/lit8 v7, v0, 0x2

    invoke-virtual {p0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    aget v0, v3, v7

    .line 2491
    invoke-virtual {p0, v0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 2492
    .local v4, "name":Ljava/lang/String;
    add-int/lit8 v7, v0, 0x2

    invoke-virtual {p0, v7, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    .line 2493
    .local v1, "desc":Ljava/lang/String;
    new-instance v7, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;

    invoke-direct {v7, v6, v5, v4, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "cpIndex":I
    .end local v1    # "desc":Ljava/lang/String;
    .end local v3    # "items":[I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "owner":Ljava/lang/String;
    .end local v6    # "tag":I
    :goto_0
    return-object v7

    .line 2472
    :pswitch_1
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 2474
    :pswitch_2
    new-instance v7, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Float;-><init>(F)V

    goto :goto_0

    .line 2476
    :pswitch_3
    new-instance v7, Ljava/lang/Long;

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLong(I)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    .line 2478
    :pswitch_4
    new-instance v7, Ljava/lang/Double;

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    .line 2480
    :pswitch_5
    invoke-virtual {p0, v2, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v7

    goto :goto_0

    .line 2482
    :pswitch_6
    invoke-virtual {p0, v2, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 2484
    :pswitch_7
    invoke-virtual {p0, v2, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getMethodType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v7

    goto :goto_0

    .line 2470
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public readInt(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 2339
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    .line 2340
    .local v0, "b":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method protected readLabel(I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 2174
    aget-object v0, p2, p1

    if-nez v0, :cond_0

    .line 2175
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;-><init>()V

    aput-object v0, p2, p1

    .line 2177
    :cond_0
    aget-object v0, p2, p1

    return-object v0
.end method

.method public readLong(I)J
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 2354
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v4

    int-to-long v2, v4

    .line 2355
    .local v2, "l1":J
    add-int/lit8 v4, p1, 0x4

    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readInt(I)I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long v0, v4, v6

    .line 2356
    .local v0, "l0":J
    const/16 v4, 0x20

    shl-long v4, v2, v4

    or-long/2addr v4, v0

    return-wide v4
.end method

.method public readShort(I)S
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 2325
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    .line 2326
    .local v0, "b":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1
.end method

.method public readUTF8(I[C)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .prologue
    .line 2373
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 2374
    .local v0, "item":I
    if-eqz p1, :cond_0

    if-nez v0, :cond_2

    .line 2375
    :cond_0
    const/4 v1, 0x0

    .line 2382
    :cond_1
    :goto_0
    return-object v1

    .line 2377
    :cond_2
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->strings:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 2378
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2381
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->items:[I

    aget p1, v2, v0

    .line 2382
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->strings:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readUTF(II[C)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "s":Ljava/lang/String;
    aput-object v1, v2, v0

    goto :goto_0
.end method

.method public readUnsignedShort(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 2311
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    .line 2312
    .local v0, "b":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method
