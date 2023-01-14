.class public Lorg/openintents/shopping/ui/dialog/NewListDialog;
.super Lorg/openintents/shopping/ui/dialog/RenameListDialog;
.source "NewListDialog.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/dialog/NewListDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x28839abc0c05b907L    # -2.731548709595913E113

    const-string v2, "org/openintents/shopping/ui/dialog/NewListDialog"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/dialog/NewListDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/openintents/shopping/ui/dialog/DialogActionListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/NewListDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    invoke-direct {p0, p1}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 18
    const v1, 0x7f080005

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/dialog/NewListDialog;->setTitle(I)V

    aput-boolean v2, v0, v2

    .line 19
    invoke-virtual {p0, p2}, Lorg/openintents/shopping/ui/dialog/NewListDialog;->setDialogActionListener(Lorg/openintents/shopping/ui/dialog/DialogActionListener;)V

    .line 20
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method
