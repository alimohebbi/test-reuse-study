.class Lorg/openintents/shopping/ui/PreferenceActivity$1;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/PreferenceActivity;->resetAllSettings(Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/openintents/shopping/ui/PreferenceActivity;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/PreferenceActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5eb87ae991631e13L    # 1.9563724620621748E148

    const-string v2, "org/openintents/shopping/ui/PreferenceActivity$1"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/PreferenceActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/PreferenceActivity;Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 193
    iput-object p1, p0, Lorg/openintents/shopping/ui/PreferenceActivity$1;->this$0:Lorg/openintents/shopping/ui/PreferenceActivity;

    iput-object p2, p0, Lorg/openintents/shopping/ui/PreferenceActivity$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 196
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/openintents/shopping/ui/PreferenceActivity$1;->this$0:Lorg/openintents/shopping/ui/PreferenceActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    aput-boolean v4, v0, v4

    .line 197
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 198
    const v2, 0x7f080099

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    .line 199
    iget-object v2, p0, Lorg/openintents/shopping/ui/PreferenceActivity$1;->this$0:Lorg/openintents/shopping/ui/PreferenceActivity;

    const v3, 0x7f08009a

    invoke-virtual {v2, v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    .line 200
    iget-object v2, p0, Lorg/openintents/shopping/ui/PreferenceActivity$1;->this$0:Lorg/openintents/shopping/ui/PreferenceActivity;

    const v3, 0x1040013

    invoke-virtual {v2, v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/openintents/shopping/ui/PreferenceActivity$1$1;

    invoke-direct {v3, p0}, Lorg/openintents/shopping/ui/PreferenceActivity$1$1;-><init>(Lorg/openintents/shopping/ui/PreferenceActivity$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    .line 276
    iget-object v2, p0, Lorg/openintents/shopping/ui/PreferenceActivity$1;->this$0:Lorg/openintents/shopping/ui/PreferenceActivity;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/openintents/shopping/ui/PreferenceActivity$1$2;

    invoke-direct {v3, p0}, Lorg/openintents/shopping/ui/PreferenceActivity$1$2;-><init>(Lorg/openintents/shopping/ui/PreferenceActivity$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v2, 0x6

    aput-boolean v4, v0, v2

    .line 284
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 285
    const/4 v1, 0x0

    const/4 v2, 0x7

    aput-boolean v4, v0, v2

    return v1
.end method
