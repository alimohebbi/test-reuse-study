.class public Lorg/openintents/intents/GeneralIntents;
.super Ljava/lang/Object;
.source "GeneralIntents.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ACTION_INSERT_FROM_EXTRAS:Ljava/lang/String; = "org.openintents.action.INSERT_FROM_EXTRAS"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/intents/GeneralIntents;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x52ec2e4e124242ddL    # 2.870273195353493E91

    const-string v2, "org/openintents/intents/GeneralIntents"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/intents/GeneralIntents;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/intents/GeneralIntents;->$jacocoInit()[Z

    move-result-object v0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
