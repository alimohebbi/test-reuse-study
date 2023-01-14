.class public Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;
.super Ljava/lang/Object;
.source "ContentTypeDetector.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x8

.field public static final CLASSFILE:I = -0x35014542

.field public static final GZFILE:I = 0x1f8b0000

.field public static final PACK200FILE:I = -0x35012ff3

.field public static final UNKNOWN:I = -0x1

.field public static final ZIPFILE:I = 0x504b0304


# instance fields
.field private final in:Ljava/io/InputStream;

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;->in:Ljava/io/InputStream;

    .line 62
    :goto_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;->in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 63
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;->determineType(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;->type:I

    .line 64
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 65
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;->in:Ljava/io/InputStream;

    goto :goto_0
.end method

.method private static determineType(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v1, 0x1f8b0000

    .line 68
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 69
    .local v0, "header":I
    sparse-switch v0, :sswitch_data_0

    .line 88
    :goto_0
    const/high16 v2, -0x10000

    and-int/2addr v2, v0

    if-ne v2, v1, :cond_0

    .line 91
    :goto_1
    return v1

    .line 71
    :sswitch_0
    const v1, 0x504b0304

    goto :goto_1

    .line 73
    :sswitch_1
    const v1, -0x35012ff3    # -8349702.5f

    goto :goto_1

    .line 76
    :sswitch_2
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;->readInt(Ljava/io/InputStream;)I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto :goto_0

    .line 85
    :sswitch_3
    const v1, -0x35014542    # -8346975.0f

    goto :goto_1

    .line 91
    :cond_0
    const/4 v1, -0x1

    goto :goto_1

    .line 69
    nop

    :sswitch_data_0
    .sparse-switch
        -0x35014542 -> :sswitch_2
        -0x35012ff3 -> :sswitch_1
        0x504b0304 -> :sswitch_0
    .end sparse-switch

    .line 76
    :sswitch_data_1
    .sparse-switch
        0x2e -> :sswitch_3
        0x2f -> :sswitch_3
        0x30 -> :sswitch_3
        0x31 -> :sswitch_3
        0x32 -> :sswitch_3
        0x33 -> :sswitch_3
        0x34 -> :sswitch_3
        0x3002d -> :sswitch_3
    .end sparse-switch
.end method

.method private static readInt(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;->type:I

    return v0
.end method
