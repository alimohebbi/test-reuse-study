.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
.super Ljava/lang/Object;
.source "Type.java"


# static fields
.field public static final ARRAY:I = 0x9

.field public static final BOOLEAN:I = 0x1

.field public static final BOOLEAN_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

.field public static final BYTE:I = 0x3

.field public static final BYTE_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

.field public static final CHAR:I = 0x2

.field public static final CHAR_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

.field public static final DOUBLE:I = 0x8

.field public static final DOUBLE_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

.field public static final FLOAT:I = 0x6

.field public static final FLOAT_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

.field public static final INT:I = 0x5

.field public static final INT_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

.field public static final LONG:I = 0x7

.field public static final LONG_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

.field public static final METHOD:I = 0xb

.field public static final OBJECT:I = 0xa

.field public static final SHORT:I = 0x4

.field public static final SHORT_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

.field public static final VOID:I

.field public static final VOID_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;


# instance fields
.field private final buf:[C

.field private final len:I

.field private final off:I

.field private final sort:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 107
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    const/4 v1, 0x0

    const/high16 v2, 0x56050000

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;-><init>(I[CII)V

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->VOID_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    .line 113
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    const v1, 0x5a000501

    invoke-direct {v0, v3, v4, v1, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;-><init>(I[CII)V

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->BOOLEAN_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    .line 119
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    const/4 v1, 0x2

    const v2, 0x43000601

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;-><init>(I[CII)V

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->CHAR_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    .line 125
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    const/4 v1, 0x3

    const v2, 0x42000501

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;-><init>(I[CII)V

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->BYTE_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    .line 131
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    const/4 v1, 0x4

    const v2, 0x53000701

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;-><init>(I[CII)V

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->SHORT_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    .line 137
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    const/4 v1, 0x5

    const v2, 0x49000001

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;-><init>(I[CII)V

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->INT_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    .line 143
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    const/4 v1, 0x6

    const v2, 0x46020201

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;-><init>(I[CII)V

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->FLOAT_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    .line 149
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    const/4 v1, 0x7

    const v2, 0x4a010102    # 2113600.5f

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;-><init>(I[CII)V

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->LONG_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    .line 155
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    const/16 v1, 0x8

    const v2, 0x44030302

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;-><init>(I[CII)V

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->DOUBLE_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    return-void
.end method

.method private constructor <init>(I[CII)V
    .locals 0
    .param p1, "sort"    # I
    .param p2, "buf"    # [C
    .param p3, "off"    # I
    .param p4, "len"    # I

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->sort:I

    .line 204
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->buf:[C

    .line 205
    iput p3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->off:I

    .line 206
    iput p4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->len:I

    .line 207
    return-void
.end method

.method public static getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .locals 10
    .param p0, "methodDescriptor"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x29

    .line 325
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 326
    .local v1, "buf":[C
    const/4 v3, 0x1

    .line 327
    .local v3, "off":I
    const/4 v5, 0x0

    .line 329
    .local v5, "size":I
    :goto_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "off":I
    .local v4, "off":I
    aget-char v2, v1, v3

    .line 330
    .local v2, "car":C
    if-ne v2, v9, :cond_0

    .line 340
    new-array v0, v5, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    .line 341
    .local v0, "args":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    const/4 v3, 0x1

    .line 342
    .end local v4    # "off":I
    .restart local v3    # "off":I
    const/4 v5, 0x0

    .line 343
    :goto_1
    aget-char v6, v1, v3

    if-eq v6, v9, :cond_4

    .line 344
    invoke-static {v1, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getType([CI)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v6

    aput-object v6, v0, v5

    .line 345
    aget-object v6, v0, v5

    iget v7, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->len:I

    aget-object v6, v0, v5

    iget v6, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->sort:I

    const/16 v8, 0xa

    if-ne v6, v8, :cond_3

    const/4 v6, 0x2

    :goto_2
    add-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 346
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 332
    .end local v0    # "args":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .end local v3    # "off":I
    .restart local v4    # "off":I
    :cond_0
    const/16 v6, 0x4c

    if-ne v2, v6, :cond_2

    move v3, v4

    .line 333
    .end local v4    # "off":I
    .restart local v3    # "off":I
    :goto_3
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "off":I
    .restart local v4    # "off":I
    aget-char v6, v1, v3

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_1

    move v3, v4

    .end local v4    # "off":I
    .restart local v3    # "off":I
    goto :goto_3

    .line 335
    .end local v3    # "off":I
    .restart local v4    # "off":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v3, v4

    .end local v4    # "off":I
    .restart local v3    # "off":I
    goto :goto_0

    .line 336
    .end local v3    # "off":I
    .restart local v4    # "off":I
    :cond_2
    const/16 v6, 0x5b

    if-eq v2, v6, :cond_5

    .line 337
    add-int/lit8 v5, v5, 0x1

    move v3, v4

    .end local v4    # "off":I
    .restart local v3    # "off":I
    goto :goto_0

    .line 345
    .restart local v0    # "args":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 348
    :cond_4
    return-object v0

    .end local v0    # "args":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .end local v3    # "off":I
    .restart local v4    # "off":I
    :cond_5
    move v3, v4

    .end local v4    # "off":I
    .restart local v3    # "off":I
    goto :goto_0
.end method

.method public static getArgumentTypes(Ljava/lang/reflect/Method;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 361
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 362
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v0

    new-array v2, v3, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    .line 363
    .local v2, "types":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 364
    aget-object v3, v0, v1

    invoke-static {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getType(Ljava/lang/Class;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v3

    aput-object v3, v2, v1

    .line 363
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 366
    :cond_0
    return-object v2
.end method

.method public static getArgumentsAndReturnSizes(Ljava/lang/String;)I
    .locals 9
    .param p0, "desc"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x5b

    const/16 v7, 0x4a

    const/16 v6, 0x44

    .line 408
    const/4 v3, 0x1

    .line 409
    .local v3, "n":I
    const/4 v0, 0x1

    .line 411
    .local v0, "c":I
    :cond_0
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .local v1, "c":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 412
    .local v2, "car":C
    const/16 v4, 0x29

    if-ne v2, v4, :cond_4

    .line 413
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 414
    shl-int/lit8 v5, v3, 0x2

    const/16 v4, 0x56

    if-ne v2, v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    or-int/2addr v4, v5

    return v4

    :cond_1
    if-eq v2, v6, :cond_2

    if-ne v2, v7, :cond_3

    :cond_2
    const/4 v4, 0x2

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    .line 416
    :cond_4
    const/16 v4, 0x4c

    if-ne v2, v4, :cond_6

    move v0, v1

    .line 417
    .end local v1    # "c":I
    .restart local v0    # "c":I
    :goto_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .restart local v1    # "c":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_5

    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_2

    .line 419
    .end local v0    # "c":I
    .restart local v1    # "c":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_0

    .line 420
    .end local v0    # "c":I
    .restart local v1    # "c":I
    :cond_6
    if-ne v2, v8, :cond_9

    move v0, v1

    .line 421
    .end local v1    # "c":I
    .restart local v0    # "c":I
    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_7

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 424
    :cond_7
    if-eq v2, v6, :cond_8

    if-ne v2, v7, :cond_0

    .line 425
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 427
    .end local v0    # "c":I
    .restart local v1    # "c":I
    :cond_9
    if-eq v2, v6, :cond_a

    if-ne v2, v7, :cond_b

    .line 428
    :cond_a
    add-int/lit8 v3, v3, 0x2

    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_0

    .line 430
    .end local v0    # "c":I
    .restart local v1    # "c":I
    :cond_b
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    goto :goto_0
.end method

.method public static getConstructorDescriptor(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 716
    .local p0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 717
    .local v2, "parameters":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 718
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 719
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 720
    aget-object v3, v2, v1

    invoke-static {v0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 722
    :cond_0
    const-string v3, ")V"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getDescriptor(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 703
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 704
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-static {v0, p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    .line 705
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDescriptor(Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 664
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->buf:[C

    if-nez v0, :cond_0

    .line 667
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->off:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x18

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 675
    :goto_0
    return-void

    .line 668
    :cond_0
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->sort:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 669
    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 670
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->buf:[C

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->off:I

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->len:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 671
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 673
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->buf:[C

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->off:I

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->len:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static getDescriptor(Ljava/lang/StringBuffer;Ljava/lang/Class;)V
    .locals 6
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 753
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .line 755
    .local v1, "d":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 757
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_0

    .line 758
    const/16 v0, 0x49

    .line 776
    .local v0, "car":C
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 790
    .end local v0    # "car":C
    :goto_2
    return-void

    .line 759
    :cond_0
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_1

    .line 760
    const/16 v0, 0x56

    .restart local v0    # "car":C
    goto :goto_1

    .line 761
    .end local v0    # "car":C
    :cond_1
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_2

    .line 762
    const/16 v0, 0x5a

    .restart local v0    # "car":C
    goto :goto_1

    .line 763
    .end local v0    # "car":C
    :cond_2
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_3

    .line 764
    const/16 v0, 0x42

    .restart local v0    # "car":C
    goto :goto_1

    .line 765
    .end local v0    # "car":C
    :cond_3
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_4

    .line 766
    const/16 v0, 0x43

    .restart local v0    # "car":C
    goto :goto_1

    .line 767
    .end local v0    # "car":C
    :cond_4
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_5

    .line 768
    const/16 v0, 0x53

    .restart local v0    # "car":C
    goto :goto_1

    .line 769
    .end local v0    # "car":C
    :cond_5
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_6

    .line 770
    const/16 v0, 0x44

    .restart local v0    # "car":C
    goto :goto_1

    .line 771
    .end local v0    # "car":C
    :cond_6
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_7

    .line 772
    const/16 v0, 0x46

    .restart local v0    # "car":C
    goto :goto_1

    .line 774
    .end local v0    # "car":C
    :cond_7
    const/16 v0, 0x4a

    .restart local v0    # "car":C
    goto :goto_1

    .line 778
    .end local v0    # "car":C
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 779
    const/16 v5, 0x5b

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 780
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 782
    :cond_9
    const/16 v5, 0x4c

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 783
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 784
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 785
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v3, :cond_b

    .line 786
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 787
    .restart local v0    # "car":C
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_a

    const/16 v0, 0x2f

    .end local v0    # "car":C
    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 785
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 789
    :cond_b
    const/16 v5, 0x3b

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static getInternalName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 692
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 4
    .param p0, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 733
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 734
    .local v2, "parameters":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 735
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 736
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 737
    aget-object v3, v2, v1

    invoke-static {v0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    .line 736
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 739
    :cond_0
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 740
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    .line 741
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static varargs getMethodDescriptor(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;)Ljava/lang/String;
    .locals 3
    .param p0, "returnType"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .param p1, "argumentTypes"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    .prologue
    .line 646
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 647
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 648
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 649
    aget-object v2, p1, v1

    invoke-direct {v2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;)V

    .line 648
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 651
    :cond_0
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 652
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;)V

    .line 653
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMethodType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .locals 2
    .param p0, "methodDescriptor"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getType([CI)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getMethodType(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .locals 1
    .param p0, "returnType"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .param p1, "argumentTypes"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    .prologue
    .line 257
    invoke-static {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getMethodDescriptor(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getObjectType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .locals 5
    .param p0, "internalName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 228
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 229
    .local v0, "buf":[C
    new-instance v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    aget-char v1, v0, v4

    const/16 v3, 0x5b

    if-ne v1, v3, :cond_0

    const/16 v1, 0x9

    :goto_0
    array-length v3, v0

    invoke-direct {v2, v1, v0, v4, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;-><init>(I[CII)V

    return-object v2

    :cond_0
    const/16 v1, 0xa

    goto :goto_0
.end method

.method public static getReturnType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .locals 2
    .param p0, "methodDescriptor"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 380
    .local v0, "buf":[C
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getType([CI)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v1

    return-object v1
.end method

.method public static getReturnType(Ljava/lang/reflect/Method;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 393
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getType(Ljava/lang/Class;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/Class;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 269
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 270
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->INT_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    .line 289
    :goto_0
    return-object v0

    .line 271
    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 272
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->VOID_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    goto :goto_0

    .line 273
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 274
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->BOOLEAN_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    goto :goto_0

    .line 275
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 276
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->BYTE_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    goto :goto_0

    .line 277
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 278
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->CHAR_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    goto :goto_0

    .line 279
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 280
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->SHORT_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    goto :goto_0

    .line 281
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 282
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->DOUBLE_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    goto :goto_0

    .line 283
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 284
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->FLOAT_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    goto :goto_0

    .line 286
    :cond_7
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->LONG_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    goto :goto_0

    .line 289
    :cond_8
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public static getType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .locals 2
    .param p0, "typeDescriptor"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getType([CI)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/reflect/Constructor;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getConstructorDescriptor(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Ljava/lang/reflect/Method;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .locals 1
    .param p0, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 312
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getMethodDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method private static getType([CI)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .locals 5
    .param p0, "buf"    # [C
    .param p1, "off"    # I

    .prologue
    const/16 v3, 0x3b

    .line 448
    aget-char v1, p0, p1

    packed-switch v1, :pswitch_data_0

    .line 487
    :pswitch_0
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    const/16 v2, 0xb

    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-direct {v1, v2, p0, p1, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;-><init>(I[CII)V

    :goto_0
    return-object v1

    .line 450
    :pswitch_1
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->VOID_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    goto :goto_0

    .line 452
    :pswitch_2
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->BOOLEAN_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    goto :goto_0

    .line 454
    :pswitch_3
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->CHAR_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    goto :goto_0

    .line 456
    :pswitch_4
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->BYTE_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    goto :goto_0

    .line 458
    :pswitch_5
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->SHORT_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    goto :goto_0

    .line 460
    :pswitch_6
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->INT_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    goto :goto_0

    .line 462
    :pswitch_7
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->FLOAT_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    goto :goto_0

    .line 464
    :pswitch_8
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->LONG_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    goto :goto_0

    .line 466
    :pswitch_9
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->DOUBLE_TYPE:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    goto :goto_0

    .line 468
    :pswitch_a
    const/4 v0, 0x1

    .line 469
    .local v0, "len":I
    :goto_1
    add-int v1, p1, v0

    aget-char v1, p0, v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 472
    :cond_0
    add-int v1, p1, v0

    aget-char v1, p0, v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_1

    .line 473
    add-int/lit8 v0, v0, 0x1

    .line 474
    :goto_2
    add-int v1, p1, v0

    aget-char v1, p0, v1

    if-eq v1, v3, :cond_1

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 478
    :cond_1
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    const/16 v2, 0x9

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v1, v2, p0, p1, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;-><init>(I[CII)V

    goto :goto_0

    .line 480
    .end local v0    # "len":I
    :pswitch_b
    const/4 v0, 0x1

    .line 481
    .restart local v0    # "len":I
    :goto_3
    add-int v1, p1, v0

    aget-char v1, p0, v1

    if-eq v1, v3, :cond_2

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 484
    :cond_2
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    const/16 v2, 0xa

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, v0, -0x1

    invoke-direct {v1, v2, p0, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;-><init>(I[CII)V

    goto :goto_0

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 848
    if-ne p0, p1, :cond_1

    .line 868
    :cond_0
    :goto_0
    return v4

    .line 851
    :cond_1
    instance-of v6, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    if-nez v6, :cond_2

    move v4, v5

    .line 852
    goto :goto_0

    :cond_2
    move-object v3, p1

    .line 854
    check-cast v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    .line 855
    .local v3, "t":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    iget v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->sort:I

    iget v7, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->sort:I

    if-eq v6, v7, :cond_3

    move v4, v5

    .line 856
    goto :goto_0

    .line 858
    :cond_3
    iget v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->sort:I

    const/16 v7, 0x9

    if-lt v6, v7, :cond_0

    .line 859
    iget v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->len:I

    iget v7, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->len:I

    if-eq v6, v7, :cond_4

    move v4, v5

    .line 860
    goto :goto_0

    .line 862
    :cond_4
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->off:I

    .local v1, "i":I
    iget v2, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->off:I

    .local v2, "j":I
    iget v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->len:I

    add-int v0, v1, v6

    .local v0, "end":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 863
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->buf:[C

    aget-char v6, v6, v1

    iget-object v7, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->buf:[C

    aget-char v7, v7, v2

    if-eq v6, v7, :cond_5

    move v4, v5

    .line 864
    goto :goto_0

    .line 862
    :cond_5
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getArgumentTypes()[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .locals 1

    .prologue
    .line 590
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getArgumentsAndReturnSizes()I
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 539
    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->sort:I

    packed-switch v2, :pswitch_data_0

    .line 567
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 541
    :pswitch_0
    const-string v2, "void"

    goto :goto_0

    .line 543
    :pswitch_1
    const-string v2, "boolean"

    goto :goto_0

    .line 545
    :pswitch_2
    const-string v2, "char"

    goto :goto_0

    .line 547
    :pswitch_3
    const-string v2, "byte"

    goto :goto_0

    .line 549
    :pswitch_4
    const-string v2, "short"

    goto :goto_0

    .line 551
    :pswitch_5
    const-string v2, "int"

    goto :goto_0

    .line 553
    :pswitch_6
    const-string v2, "float"

    goto :goto_0

    .line 555
    :pswitch_7
    const-string v2, "long"

    goto :goto_0

    .line 557
    :pswitch_8
    const-string v2, "double"

    goto :goto_0

    .line 559
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getElementType()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 560
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDimensions()I

    move-result v1

    .local v1, "i":I
    :goto_1
    if-lez v1, :cond_0

    .line 561
    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 563
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 565
    .end local v0    # "b":Ljava/lang/StringBuffer;
    .end local v1    # "i":I
    :pswitch_a
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->buf:[C

    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->off:I

    iget v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->len:I

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 539
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 628
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 629
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDescriptor(Ljava/lang/StringBuffer;)V

    .line 630
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDimensions()I
    .locals 3

    .prologue
    .line 515
    const/4 v0, 0x1

    .line 516
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->buf:[C

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->off:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_0
    return v0
.end method

.method public getElementType()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .locals 3

    .prologue
    .line 529
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->buf:[C

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->off:I

    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDimensions()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getType([CI)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 580
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->buf:[C

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->off:I

    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public getOpcode(I)I
    .locals 2
    .param p1, "opcode"    # I

    .prologue
    const/4 v0, 0x4

    .line 824
    const/16 v1, 0x2e

    if-eq p1, v1, :cond_0

    const/16 v1, 0x4f

    if-ne p1, v1, :cond_2

    .line 827
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->buf:[C

    if-nez v1, :cond_1

    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->off:I

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    :cond_1
    add-int/2addr v0, p1

    .line 831
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->buf:[C

    if-nez v1, :cond_3

    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->off:I

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    :cond_3
    add-int/2addr v0, p1

    goto :goto_0
.end method

.method public getReturnType()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getReturnType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->buf:[C

    if-nez v0, :cond_0

    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->off:I

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSort()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->sort:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 878
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->sort:I

    mul-int/lit8 v1, v3, 0xd

    .line 879
    .local v1, "hc":I
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->sort:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 880
    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->off:I

    .local v2, "i":I
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->len:I

    add-int v0, v2, v3

    .local v0, "end":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 881
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->buf:[C

    aget-char v3, v3, v2

    add-int/2addr v3, v1

    mul-int/lit8 v1, v3, 0x11

    .line 880
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 884
    .end local v0    # "end":I
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 894
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
