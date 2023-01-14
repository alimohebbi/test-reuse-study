.class public Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;
.super Ljava/io/DataInputStream;
.source "CompactDataInput.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    return-void
.end method


# virtual methods
.method public readBooleanArray()[Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;->readVarInt()I

    move-result v3

    new-array v2, v3, [Z

    .line 60
    .local v2, "value":[Z
    const/4 v0, 0x0

    .line 61
    .local v0, "buffer":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 62
    rem-int/lit8 v3, v1, 0x8

    if-nez v3, :cond_0

    .line 63
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;->readByte()B

    move-result v0

    .line 65
    :cond_0
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    aput-boolean v3, v2, v1

    .line 66
    ushr-int/lit8 v0, v0, 0x1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 68
    :cond_2
    return-object v2
.end method

.method public readVarInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;->readByte()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 45
    .local v0, "value":I
    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_0

    .line 48
    .end local v0    # "value":I
    :goto_0
    return v0

    .restart local v0    # "value":I
    :cond_0
    and-int/lit8 v1, v0, 0x7f

    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;->readVarInt()I

    move-result v2

    shl-int/lit8 v2, v2, 0x7

    or-int v0, v1, v2

    goto :goto_0
.end method
