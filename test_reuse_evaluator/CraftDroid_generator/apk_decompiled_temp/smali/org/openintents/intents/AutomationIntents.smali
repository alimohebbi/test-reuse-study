.class public Lorg/openintents/intents/AutomationIntents;
.super Ljava/lang/Object;
.source "AutomationIntents.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ACTION_EDIT_AUTOMATION:Ljava/lang/String; = "org.openintents.action.EDIT_AUTOMATION"

.field public static final ACTION_RUN_AUTOMATION:Ljava/lang/String; = "org.openintents.action.RUN_AUTOMATION"

.field public static final EXTRA_DESCRIPTION:Ljava/lang/String; = "org.openintents.extra.DESCRIPTION"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/intents/AutomationIntents;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x69504acce2bbb883L    # 1.9485725547433055E199

    const-string v2, "org/openintents/intents/AutomationIntents"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/intents/AutomationIntents;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/intents/AutomationIntents;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
