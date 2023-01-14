.class public Lorg/openintents/distribution/DistributionLibrary;
.super Ljava/lang/Object;
.source "DistributionLibrary.java"


# static fields
.field public static final DIALOG_COUNT:I = 0x3

.field public static final MENU_COUNT:I = 0x3

.field public static final OFFSET_ABOUT:I = 0x0

.field public static final OFFSET_PRIVACY:I = 0x2

.field public static final OFFSET_UPDATE:I = 0x1


# instance fields
.field mActivity:Landroid/app/Activity;

.field mFirstDialogId:I

.field mFirstMenuId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "firstMenuId"    # I
    .param p3, "firstDialogId"    # I

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lorg/openintents/distribution/DistributionLibrary;->mFirstMenuId:I

    .line 24
    iput v0, p0, Lorg/openintents/distribution/DistributionLibrary;->mFirstDialogId:I

    .line 27
    iput-object p1, p0, Lorg/openintents/distribution/DistributionLibrary;->mActivity:Landroid/app/Activity;

    .line 28
    iput p2, p0, Lorg/openintents/distribution/DistributionLibrary;->mFirstMenuId:I

    .line 29
    iput p3, p0, Lorg/openintents/distribution/DistributionLibrary;->mFirstDialogId:I

    .line 30
    return-void
.end method


# virtual methods
.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 96
    iget v0, p0, Lorg/openintents/distribution/DistributionLibrary;->mFirstDialogId:I

    sub-int v0, p1, v0

    packed-switch v0, :pswitch_data_0

    .line 106
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 98
    :pswitch_0
    new-instance v0, Lorg/openintents/distribution/AboutDialog;

    iget-object v1, p0, Lorg/openintents/distribution/DistributionLibrary;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/openintents/distribution/AboutDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 100
    :pswitch_1
    new-instance v0, Lorg/openintents/distribution/UpdateDialog;

    iget-object v1, p0, Lorg/openintents/distribution/DistributionLibrary;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/openintents/distribution/UpdateDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 102
    :pswitch_2
    new-instance v0, Lorg/openintents/distribution/PrivacyDialog;

    iget-object v1, p0, Lorg/openintents/distribution/DistributionLibrary;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/openintents/distribution/PrivacyDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v4, 0x1080041

    const/4 v3, 0x0

    .line 60
    iget v0, p0, Lorg/openintents/distribution/DistributionLibrary;->mFirstMenuId:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 61
    iget v0, p0, Lorg/openintents/distribution/DistributionLibrary;->mFirstMenuId:I

    add-int/lit8 v0, v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 62
    iget v0, p0, Lorg/openintents/distribution/DistributionLibrary;->mFirstMenuId:I

    add-int/lit8 v0, v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 64
    iget-object v0, p0, Lorg/openintents/distribution/DistributionLibrary;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/openintents/distribution/UpdateDialog;->isUpdateMenuNecessary(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget v0, p0, Lorg/openintents/distribution/DistributionLibrary;->mFirstMenuId:I

    add-int/lit8 v0, v0, 0x1

    sget v1, Lorg/openintents/distribution/R$string;->oi_distribution_menu_update:I

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x39

    const/16 v2, 0x75

    .line 66
    invoke-interface {v0, v1, v2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 68
    :cond_0
    iget v0, p0, Lorg/openintents/distribution/DistributionLibrary;->mFirstMenuId:I

    add-int/lit8 v0, v0, 0x0

    sget v1, Lorg/openintents/distribution/R$string;->oi_distribution_about:I

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x30

    const/16 v2, 0x61

    .line 69
    invoke-interface {v0, v1, v2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 71
    iget v0, p0, Lorg/openintents/distribution/DistributionLibrary;->mFirstMenuId:I

    add-int/lit8 v0, v0, 0x2

    sget v1, Lorg/openintents/distribution/R$string;->oi_distribution_privacy:I

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x70

    .line 72
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 74
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 78
    .local v0, "id":I
    iget v2, p0, Lorg/openintents/distribution/DistributionLibrary;->mFirstMenuId:I

    sub-int v2, v0, v2

    packed-switch v2, :pswitch_data_0

    .line 92
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 80
    :pswitch_0
    iget-object v2, p0, Lorg/openintents/distribution/DistributionLibrary;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lorg/openintents/distribution/DistributionLibrary;->mFirstDialogId:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v2, p0, Lorg/openintents/distribution/DistributionLibrary;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lorg/openintents/distribution/DistributionLibrary;->mFirstDialogId:I

    add-int/lit8 v3, v3, 0x0

    invoke-static {v2, v3}, Lorg/openintents/distribution/AboutDialog;->showDialogOrStartActivity(Landroid/app/Activity;I)V

    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v2, p0, Lorg/openintents/distribution/DistributionLibrary;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lorg/openintents/distribution/DistributionLibrary;->mFirstDialogId:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 110
    iget v0, p0, Lorg/openintents/distribution/DistributionLibrary;->mFirstDialogId:I

    sub-int v0, p1, v0

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v0, p0, Lorg/openintents/distribution/DistributionLibrary;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lorg/openintents/distribution/AboutDialog;->onPrepareDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setFirst(II)V
    .locals 0
    .param p1, "firstMenuId"    # I
    .param p2, "firstDialogId"    # I

    .prologue
    .line 33
    iput p1, p0, Lorg/openintents/distribution/DistributionLibrary;->mFirstMenuId:I

    .line 34
    iput p2, p0, Lorg/openintents/distribution/DistributionLibrary;->mFirstDialogId:I

    .line 35
    return-void
.end method

.method public showEulaOrNewVersion()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/openintents/distribution/DistributionLibrary;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/openintents/distribution/EulaOrNewVersion;->showEula(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openintents/distribution/DistributionLibrary;->mActivity:Landroid/app/Activity;

    .line 55
    invoke-static {v0}, Lorg/openintents/distribution/EulaOrNewVersion;->showNewVersion(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
