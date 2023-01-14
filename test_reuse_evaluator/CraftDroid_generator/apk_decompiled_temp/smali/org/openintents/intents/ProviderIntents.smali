.class public final Lorg/openintents/intents/ProviderIntents;
.super Ljava/lang/Object;
.source "ProviderIntents.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ACTION_DELETED:Ljava/lang/String; = "org.openintents.action.DELETED"

.field public static final ACTION_INSERTED:Ljava/lang/String; = "org.openintents.action.INSERTED"

.field public static final ACTION_MODIFIED:Ljava/lang/String; = "org.openintents.action.MODIFIED"

.field public static final EXTRA_AFFECTED_ROWS:Ljava/lang/String; = "org.openintents.extra.AFFECTED_ROWS"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/intents/ProviderIntents;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x66c3c0f7046f194fL    # 1.0743784771158487E187

    const-string v2, "org/openintents/intents/ProviderIntents"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/intents/ProviderIntents;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/intents/ProviderIntents;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
