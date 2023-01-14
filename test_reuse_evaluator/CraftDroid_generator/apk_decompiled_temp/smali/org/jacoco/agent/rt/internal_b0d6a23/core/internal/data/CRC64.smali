.class public final Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CRC64;
.super Ljava/lang/Object;
.source "CRC64.java"


# static fields
.field private static final LOOKUPTABLE:[J

.field private static final POLY64REV:J = -0x2800000000000000L


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const/16 v9, 0x100

    const/4 v8, 0x1

    .line 30
    new-array v4, v9, [J

    sput-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CRC64;->LOOKUPTABLE:[J

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_2

    .line 32
    int-to-long v2, v0

    .line 33
    .local v2, "v":J
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    .line 34
    and-long v4, v2, v10

    cmp-long v4, v4, v10

    if-nez v4, :cond_0

    .line 35
    ushr-long v4, v2, v8

    const-wide/high16 v6, -0x2800000000000000L    # -7.880401239278896E115

    xor-long v2, v4, v6

    .line 33
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 37
    :cond_0
    ushr-long/2addr v2, v8

    goto :goto_2

    .line 40
    :cond_1
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CRC64;->LOOKUPTABLE:[J

    aput-wide v2, v4, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "j":I
    .end local v2    # "v":J
    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static checksum([B)J
    .locals 12
    .param p0, "data"    # [B

    .prologue
    .line 52
    const-wide/16 v6, 0x0

    .line 53
    .local v6, "sum":J
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 54
    .local v1, "b":B
    long-to-int v5, v6

    xor-int/2addr v5, v1

    and-int/lit16 v4, v5, 0xff

    .line 55
    .local v4, "lookupidx":I
    const/16 v5, 0x8

    ushr-long v8, v6, v5

    sget-object v5, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CRC64;->LOOKUPTABLE:[J

    aget-wide v10, v5, v4

    xor-long v6, v8, v10

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "b":B
    .end local v4    # "lookupidx":I
    :cond_0
    return-wide v6
.end method
