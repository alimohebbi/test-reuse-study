.class public Lorg/openintents/distribution/EulaOrNewVersion;
.super Ljava/lang/Object;
.source "EulaOrNewVersion.java"


# static fields
.field static final EXTRA_LAUNCH_ACTIVITY_CLASS:Ljava/lang/String; = "org.openintents.extra.launch_activity_class"

.field static final EXTRA_LAUNCH_ACTIVITY_INTENT:Ljava/lang/String; = "org.openintents.extra.launch_activity_intent"

.field static final EXTRA_LAUNCH_ACTIVITY_PACKAGE:Ljava/lang/String; = "org.openintents.extra.launch_activity_package"

.field public static final PREFERENCES_EULA_ACCEPTED:Ljava/lang/String; = "eula_accepted"

.field public static final PREFERENCES_VERSION_NUMBER:Ljava/lang/String; = "org.openintents.distribution.version_number_check"

.field private static final TAG:Ljava/lang/String; = "EulaOrNewVersion"

.field private static final debug:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static showEula(Landroid/app/Activity;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 59
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "eula_accepted"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 61
    .local v0, "accepted":Z
    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return v2

    .line 67
    :cond_0
    const-class v2, Lorg/openintents/distribution/EulaActivity;

    invoke-static {p0, v2}, Lorg/openintents/distribution/EulaOrNewVersion;->startForwardActivity(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 68
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static showNewVersion(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 86
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v4, "org.openintents.distribution.version_number_check"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 87
    .local v0, "lastVersion":I
    invoke-static {p0}, Lorg/openintents/util/VersionUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    .line 89
    .local v2, "thisVersion":I
    if-ne v0, v2, :cond_0

    .line 96
    :goto_0
    return v3

    .line 95
    :cond_0
    const-class v3, Lorg/openintents/distribution/NewVersionActivity;

    invoke-static {p0, v3}, Lorg/openintents/distribution/EulaOrNewVersion;->startForwardActivity(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 96
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static startForwardActivity(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "launchClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 112
    .local v1, "forwardIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 119
    .local v0, "ci":Landroid/content/ComponentName;
    const-string v3, "org.openintents.extra.launch_activity_package"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v3, "org.openintents.extra.launch_activity_class"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    if-eqz v1, :cond_0

    .line 122
    const-string v3, "org.openintents.extra.launch_activity_intent"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    :cond_0
    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 127
    return-void
.end method

.method static storeCurrentVersionCode(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 102
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lorg/openintents/util/VersionUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    .line 103
    .local v2, "thisVersion":I
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v3, "org.openintents.distribution.version_number_check"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    return-void
.end method

.method static storeEulaAccepted(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 74
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v2, "eula_accepted"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    return-void
.end method
