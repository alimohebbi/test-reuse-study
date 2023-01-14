.class public Lorg/openintents/distribution/DistributionLibraryListActivity;
.super Landroid/app/ListActivity;
.source "DistributionLibraryListActivity.java"


# static fields
.field protected static final DIALOG_DISTRIBUTION_START:I = 0x1

.field protected static final MENU_DISTRIBUTION_START:I = 0x1


# instance fields
.field protected mDistribution:Lorg/openintents/distribution/DistributionLibrary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 20
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    new-instance v0, Lorg/openintents/distribution/DistributionLibrary;

    invoke-direct {v0, p0, v1, v1}, Lorg/openintents/distribution/DistributionLibrary;-><init>(Landroid/app/Activity;II)V

    iput-object v0, p0, Lorg/openintents/distribution/DistributionLibraryListActivity;->mDistribution:Lorg/openintents/distribution/DistributionLibrary;

    .line 23
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lorg/openintents/distribution/DistributionLibraryListActivity;->mDistribution:Lorg/openintents/distribution/DistributionLibrary;

    invoke-virtual {v0, p1}, Lorg/openintents/distribution/DistributionLibrary;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 28
    iget-object v0, p0, Lorg/openintents/distribution/DistributionLibraryListActivity;->mDistribution:Lorg/openintents/distribution/DistributionLibrary;

    invoke-virtual {v0, p1}, Lorg/openintents/distribution/DistributionLibrary;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/openintents/distribution/DistributionLibraryListActivity;->mDistribution:Lorg/openintents/distribution/DistributionLibrary;

    invoke-virtual {v0, p1}, Lorg/openintents/distribution/DistributionLibrary;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 48
    iget-object v0, p0, Lorg/openintents/distribution/DistributionLibraryListActivity;->mDistribution:Lorg/openintents/distribution/DistributionLibrary;

    invoke-virtual {v0, p1, p2}, Lorg/openintents/distribution/DistributionLibrary;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 49
    return-void
.end method
