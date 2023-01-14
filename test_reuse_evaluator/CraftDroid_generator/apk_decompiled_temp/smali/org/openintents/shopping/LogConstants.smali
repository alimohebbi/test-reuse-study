.class public Lorg/openintents/shopping/LogConstants;
.super Ljava/lang/Object;
.source "LogConstants.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final TAG:Ljava/lang/String; = "Shopping"

.field public static final debug:Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/LogConstants;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x53e18add7bc7ae3L    # -2.079918125990227E283

    const-string v2, "org/openintents/shopping/LogConstants"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/LogConstants;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/LogConstants;->$jacocoInit()[Z

    move-result-object v0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
