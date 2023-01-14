.class public abstract Lorg/openintents/OpenIntents;
.super Ljava/lang/Object;
.source "OpenIntents.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ADD_GENERIC_ALERT:Ljava/lang/String; = "org.openintents.action.ADD_GENERIC_ALERT"

.field public static final ADD_LOCATION_ALERT_ACTION:Ljava/lang/String; = "org.openintents.action.ADD_LOCATION_ALERT"

.field public static final DATE_TIME_ALERT_DISPATCH:Ljava/lang/String; = "org.openintents.action.DATE_TIME_ALERT_DISPATCH"

.field public static final EDIT_GENERIC_ALERT:Ljava/lang/String; = "org.openintents.action.EDIT_GENERIC_ALERT"

.field public static final LOCATION_ALERT_DISPATCH:Ljava/lang/String; = "org.openintents.action.LOCATION_ALERT_DISPATCH"

.field public static final MAIN_CATEGORY:Ljava/lang/String; = "org.openintents.category.MAIN"

.field public static final PREFERENCES_DONT_SHOW_INIT_DEFAULT_VALUES:Ljava/lang/String; = "dontShowInitDefaultValues"

.field public static final PREFERENCES_INIT_DEFAULT_VALUES:Ljava/lang/String; = "InitView"

.field public static final REFRESH_ACTION:Ljava/lang/String; = "org.openintents.action.REFRESH"

.field public static final SERVICE_MANAGER:Ljava/lang/String; = "org.openintents.action.SERVICE_MANAGER"

.field public static final SETTINGS_CATEGORY:Ljava/lang/String; = "org.openintents.category.SETTINGS"

.field public static final SET_SHARE_SETTINGS_ACTION:Ljava/lang/String; = "org.openintents.action.SET_SHARE_SETTINGS"

.field public static final SET_THEME_SETTINGS_ACTION:Ljava/lang/String; = "org.openintents.action.SET_THEME_SETTINGS"

.field public static final SHARE_INSERT_ACTION:Ljava/lang/String; = "org.openintents.action.SHARE_INSERT"

.field public static final SHARE_UPDATE_ACTION:Ljava/lang/String; = "org.openintents.action.SHARE_UPDATE"

.field public static final TAG_ACTION:Ljava/lang/String; = "org.openintents.action.TAG"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/OpenIntents;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3b73ef3285895643L    # -1.6567026962840718E22

    const-string v2, "org/openintents/OpenIntents"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/OpenIntents;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/OpenIntents;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
