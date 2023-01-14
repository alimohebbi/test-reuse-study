.class public Lorg/openintents/distribution/DistributionLibraryFragmentActivity;
.super Landroid/support/v2/app/FragmentActivity;
.source "DistributionLibraryFragmentActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field static final DIALOG_DISTRIBUTION_START:I = 0x1

.field static final MENU_DISTRIBUTION_START:I = 0x1


# instance fields
.field protected mDistribution:Lorg/openintents/distribution/DistributionLibrary;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x34053e4e78a6206aL    # -1.0497124701438442E58

    const-string v2, "org/openintents/distribution/DistributionLibraryFragmentActivity"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Landroid/support/v2/app/FragmentActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-super {p0, p1}, Landroid/support/v2/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v2, v0, v2

    .line 23
    new-instance v1, Lorg/openintents/distribution/DistributionLibrary;

    invoke-direct {v1, p0, v2, v2}, Lorg/openintents/distribution/DistributionLibrary;-><init>(Landroid/app/Activity;II)V

    iput-object v1, p0, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->mDistribution:Lorg/openintents/distribution/DistributionLibrary;

    .line 25
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iget-object v1, p0, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->mDistribution:Lorg/openintents/distribution/DistributionLibrary;

    invoke-virtual {v1, p1}, Lorg/openintents/distribution/DistributionLibrary;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-super {p0, p1}, Landroid/support/v2/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 30
    iget-object v1, p0, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->mDistribution:Lorg/openintents/distribution/DistributionLibrary;

    invoke-virtual {v1, p1}, Lorg/openintents/distribution/DistributionLibrary;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 31
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 36
    iget-object v1, p0, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->mDistribution:Lorg/openintents/distribution/DistributionLibrary;

    invoke-virtual {v1, p1}, Lorg/openintents/distribution/DistributionLibrary;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const/4 v1, 0x5

    aput-boolean v0, v2, v1

    .line 39
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v2/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/4 v3, 0x6

    aput-boolean v0, v2, v3

    move v0, v1

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    invoke-super {p0, p1, p2}, Landroid/support/v2/app/FragmentActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    .line 50
    iget-object v1, p0, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->mDistribution:Lorg/openintents/distribution/DistributionLibrary;

    invoke-virtual {v1, p1, p2}, Lorg/openintents/distribution/DistributionLibrary;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 51
    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    return-void
.end method
