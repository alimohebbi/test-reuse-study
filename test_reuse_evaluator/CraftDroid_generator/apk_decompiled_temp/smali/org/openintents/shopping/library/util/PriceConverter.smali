.class public Lorg/openintents/shopping/library/util/PriceConverter;
.super Ljava/lang/Object;
.source "PriceConverter.java"


# static fields
.field private static initialized:Z

.field public static mPriceFormatter:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 29
    invoke-static {v0}, Ljava/text/DecimalFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/library/util/PriceConverter;->mPriceFormatter:Ljava/text/NumberFormat;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lorg/openintents/shopping/library/util/PriceConverter;->initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCentPriceFromString(Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p0, "price"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-boolean v2, Lorg/openintents/shopping/library/util/PriceConverter;->initialized:Z

    if-nez v2, :cond_0

    .line 41
    invoke-static {}, Lorg/openintents/shopping/library/util/PriceConverter;->init()V

    .line 44
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 55
    .local v1, "priceLong":Ljava/lang/Long;
    :goto_0
    return-object v1

    .line 48
    .end local v1    # "priceLong":Ljava/lang/Long;
    :cond_1
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    :try_start_0
    sget-object v4, Lorg/openintents/shopping/library/util/PriceConverter;->mPriceFormatter:Ljava/text/NumberFormat;

    .line 50
    invoke-virtual {v4, p0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 49
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 48
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "priceLong":Ljava/lang/Long;
    goto :goto_0

    .line 51
    .end local v1    # "priceLong":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/text/ParseException;
    const/4 v1, 0x0

    .restart local v1    # "priceLong":Ljava/lang/Long;
    goto :goto_0
.end method

.method public static getStringFromCentPrice(J)Ljava/lang/String;
    .locals 6
    .param p0, "pricecent"    # J

    .prologue
    .line 59
    sget-boolean v1, Lorg/openintents/shopping/library/util/PriceConverter;->initialized:Z

    if-nez v1, :cond_0

    .line 60
    invoke-static {}, Lorg/openintents/shopping/library/util/PriceConverter;->init()V

    .line 62
    :cond_0
    sget-object v1, Lorg/openintents/shopping/library/util/PriceConverter;->mPriceFormatter:Ljava/text/NumberFormat;

    long-to-double v2, p0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "price":Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-nez v1, :cond_1

    .line 66
    const-string v0, ""

    .line 68
    :cond_1
    return-object v0
.end method

.method public static init()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 34
    sget-object v0, Lorg/openintents/shopping/library/util/PriceConverter;->mPriceFormatter:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 35
    sget-object v0, Lorg/openintents/shopping/library/util/PriceConverter;->mPriceFormatter:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lorg/openintents/shopping/library/util/PriceConverter;->initialized:Z

    .line 37
    return-void
.end method
