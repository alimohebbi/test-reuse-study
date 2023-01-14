.class Lorg/openintents/shopping/ui/dialog/ThemeDialog$1;
.super Ljava/lang/Object;
.source "ThemeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/dialog/ThemeDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/openintents/shopping/ui/dialog/ThemeDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/dialog/ThemeDialog$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4a74c075b8c8a025L    # 4.852605481397507E50

    const-string v2, "org/openintents/shopping/ui/dialog/ThemeDialog$1"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/dialog/ThemeDialog$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/dialog/ThemeDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/dialog/ThemeDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 103
    iput-object p1, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog$1;->this$0:Lorg/openintents/shopping/ui/dialog/ThemeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/ThemeDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 107
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog$1;->this$0:Lorg/openintents/shopping/ui/dialog/ThemeDialog;

    iget-object v2, v2, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    const-class v3, Lorg/openintents/shopping/ui/PreferenceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-boolean v4, v0, v4

    .line 108
    const-string v2, "show_get_add_ons"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 109
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog$1;->this$0:Lorg/openintents/shopping/ui/dialog/ThemeDialog;

    iget-object v2, v2, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 111
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog$1;->this$0:Lorg/openintents/shopping/ui/dialog/ThemeDialog;

    invoke-virtual {v1}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->pressCancel()V

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    .line 112
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog$1;->this$0:Lorg/openintents/shopping/ui/dialog/ThemeDialog;

    invoke-virtual {v1}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->dismiss()V

    .line 113
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    return-void
.end method
