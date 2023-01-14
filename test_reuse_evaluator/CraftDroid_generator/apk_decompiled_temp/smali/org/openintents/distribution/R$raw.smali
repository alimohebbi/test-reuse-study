.class public final Lorg/openintents/distribution/R$raw;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/distribution/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "raw"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final license_short:I = 0x7f060000

.field public static final oi_distribution_buttonbar:I = 0x7f060001

.field public static final recent_changes:I = 0x7f060002


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/distribution/R$raw;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x71639e61d19e855cL

    const-string v2, "org/openintents/distribution/R$raw"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/distribution/R$raw;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/distribution/R$raw;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
