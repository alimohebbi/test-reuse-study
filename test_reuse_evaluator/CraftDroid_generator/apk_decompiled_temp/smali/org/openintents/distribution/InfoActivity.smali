.class public Lorg/openintents/distribution/InfoActivity;
.super Lorg/openintents/distribution/DistributionLibraryListActivity;
.source "InfoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/distribution/InfoActivity$FontArrayAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_DISTRIBUTION_START:I = 0xc8

.field public static final DIALOG_GET_FROM_MARKET:I = 0x64

.field public static final DIALOG_INFO:I = 0x0

.field private static final MENU_DISTRIBUTION_START:I = 0x65


# instance fields
.field private mApplicationStrings:[Ljava/lang/String;

.field protected mApplications:[I

.field protected mDeveloperUris:[Ljava/lang/String;

.field protected mInfoText:[I

.field protected mIntentAction:[Ljava/lang/String;

.field protected mIntentData:[Ljava/lang/String;

.field protected mMinVersionCodes:[I

.field protected mMinVersionName:[Ljava/lang/String;

.field protected mPackageNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Lorg/openintents/distribution/DistributionLibraryListActivity;-><init>()V

    .line 26
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/openintents/distribution/InfoActivity;->mApplications:[I

    .line 27
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/openintents/distribution/InfoActivity;->mPackageNames:[Ljava/lang/String;

    .line 28
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/openintents/distribution/InfoActivity;->mMinVersionCodes:[I

    .line 29
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/openintents/distribution/InfoActivity;->mMinVersionName:[Ljava/lang/String;

    .line 30
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/openintents/distribution/InfoActivity;->mInfoText:[I

    .line 31
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/openintents/distribution/InfoActivity;->mDeveloperUris:[Ljava/lang/String;

    .line 32
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/openintents/distribution/InfoActivity;->mIntentAction:[Ljava/lang/String;

    .line 33
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/openintents/distribution/InfoActivity;->mIntentData:[Ljava/lang/String;

    return-void
.end method

.method private buildGetFromMarketDialog(I)Landroid/app/AlertDialog;
    .locals 7
    .param p1, "pos"    # I

    .prologue
    .line 214
    invoke-static {p0}, Lorg/openintents/util/VersionUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, "thisAppname":Ljava/lang/String;
    sget v0, Lorg/openintents/distribution/R$string;->oi_distribution_info_not_available:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v1, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/openintents/distribution/InfoActivity;->mApplicationStrings:[Ljava/lang/String;

    aget-object v5, v5, p1

    aput-object v5, v1, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/openintents/distribution/InfoActivity;->mMinVersionName:[Ljava/lang/String;

    aget-object v5, v5, p1

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lorg/openintents/distribution/InfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "infoNotAvailable":Ljava/lang/String;
    iget-object v0, p0, Lorg/openintents/distribution/InfoActivity;->mApplications:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lorg/openintents/distribution/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "downloadAppname":Ljava/lang/String;
    new-instance v0, Lorg/openintents/distribution/DownloadAppDialog;

    iget-object v1, p0, Lorg/openintents/distribution/InfoActivity;->mPackageNames:[Ljava/lang/String;

    aget-object v4, v1, p1

    iget-object v1, p0, Lorg/openintents/distribution/InfoActivity;->mDeveloperUris:[Ljava/lang/String;

    aget-object v5, v1, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/openintents/distribution/DownloadAppDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildInfoDialog(I)Landroid/app/AlertDialog;
    .locals 7
    .param p1, "pos"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 164
    iget-object v2, p0, Lorg/openintents/distribution/InfoActivity;->mInfoText:[I

    aget v2, v2, p1

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/openintents/distribution/InfoActivity;->mApplicationStrings:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lorg/openintents/distribution/InfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "infotext":Ljava/lang/String;
    sget v2, Lorg/openintents/distribution/R$string;->oi_distribution_info_launch:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/openintents/distribution/InfoActivity;->mApplicationStrings:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lorg/openintents/distribution/InfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "infolaunch":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x108009b

    .line 173
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lorg/openintents/distribution/R$string;->oi_distribution_info_instructions:I

    .line 174
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 175
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    .line 176
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/openintents/distribution/InfoActivity$1;

    invoke-direct {v3, p0, p1}, Lorg/openintents/distribution/InfoActivity$1;-><init>(Lorg/openintents/distribution/InfoActivity;I)V

    .line 177
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 172
    return-object v2
.end method


# virtual methods
.method public init()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method launchApplication(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 189
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 190
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lorg/openintents/distribution/InfoActivity;->mIntentAction:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v2, p0, Lorg/openintents/distribution/InfoActivity;->mIntentAction:[Ljava/lang/String;

    aget-object v2, v2, p1

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lorg/openintents/distribution/InfoActivity;->mPackageNames:[Ljava/lang/String;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/openintents/distribution/InfoActivity;->mIntentData:[Ljava/lang/String;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lorg/openintents/distribution/InfoActivity;->mPackageNames:[Ljava/lang/String;

    aget-object v2, v2, p1

    iget-object v3, p0, Lorg/openintents/distribution/InfoActivity;->mIntentData:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/openintents/distribution/InfoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_1
    return-void

    .line 198
    :cond_1
    iget-object v2, p0, Lorg/openintents/distribution/InfoActivity;->mIntentData:[Ljava/lang/String;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Lorg/openintents/distribution/InfoActivity;->mIntentData:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget v2, Lorg/openintents/distribution/R$string;->oi_distribution_launch_error:I

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 209
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lorg/openintents/distribution/DistributionLibraryListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iget-object v5, p0, Lorg/openintents/distribution/InfoActivity;->mDistribution:Lorg/openintents/distribution/DistributionLibrary;

    const/16 v6, 0x65

    const/16 v7, 0xc8

    invoke-virtual {v5, v6, v7}, Lorg/openintents/distribution/DistributionLibrary;->setFirst(II)V

    .line 54
    iget-object v5, p0, Lorg/openintents/distribution/InfoActivity;->mDistribution:Lorg/openintents/distribution/DistributionLibrary;

    invoke-virtual {v5}, Lorg/openintents/distribution/DistributionLibrary;->showEulaOrNewVersion()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    :goto_0
    return-void

    .line 58
    :cond_0
    sget v5, Lorg/openintents/distribution/R$layout;->oi_distribution_infoactivity:I

    invoke-virtual {p0, v5}, Lorg/openintents/distribution/InfoActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lorg/openintents/distribution/InfoActivity;->init()V

    .line 62
    iget-object v5, p0, Lorg/openintents/distribution/InfoActivity;->mApplications:[I

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lorg/openintents/distribution/InfoActivity;->mApplicationStrings:[Ljava/lang/String;

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lorg/openintents/distribution/InfoActivity;->mApplications:[I

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 64
    iget-object v5, p0, Lorg/openintents/distribution/InfoActivity;->mApplicationStrings:[Ljava/lang/String;

    iget-object v6, p0, Lorg/openintents/distribution/InfoActivity;->mApplications:[I

    aget v6, v6, v1

    invoke-virtual {p0, v6}, Lorg/openintents/distribution/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    :cond_1
    new-instance v5, Lorg/openintents/distribution/InfoActivity$FontArrayAdapter;

    const v6, 0x1090003

    iget-object v7, p0, Lorg/openintents/distribution/InfoActivity;->mApplicationStrings:[Ljava/lang/String;

    invoke-direct {v5, p0, p0, v6, v7}, Lorg/openintents/distribution/InfoActivity$FontArrayAdapter;-><init>(Lorg/openintents/distribution/InfoActivity;Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Lorg/openintents/distribution/InfoActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    invoke-virtual {p0}, Lorg/openintents/distribution/InfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 70
    .local v2, "listview":Landroid/widget/ListView;
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    invoke-static {p0}, Lorg/openintents/util/VersionUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "appname":Ljava/lang/String;
    sget v5, Lorg/openintents/distribution/R$string;->oi_distribution_info_activity_text:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {p0, v5, v6}, Lorg/openintents/distribution/InfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "message":Ljava/lang/String;
    sget v5, Lorg/openintents/distribution/R$id;->text:I

    invoke-virtual {p0, v5}, Lorg/openintents/distribution/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 77
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/16 v2, 0x64

    .line 135
    invoke-super {p0, p1}, Lorg/openintents/distribution/DistributionLibraryListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 137
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 149
    .end local v0    # "dialog":Landroid/app/Dialog;
    .local v1, "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 141
    .end local v1    # "dialog":Landroid/app/Dialog;
    .restart local v0    # "dialog":Landroid/app/Dialog;
    :cond_0
    if-ltz p1, :cond_2

    if-ge p1, v2, :cond_2

    .line 142
    add-int/lit8 v2, p1, 0x0

    invoke-direct {p0, v2}, Lorg/openintents/distribution/InfoActivity;->buildInfoDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    :cond_1
    :goto_1
    move-object v1, v0

    .line 149
    .end local v0    # "dialog":Landroid/app/Dialog;
    .restart local v1    # "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 143
    .end local v1    # "dialog":Landroid/app/Dialog;
    .restart local v0    # "dialog":Landroid/app/Dialog;
    :cond_2
    if-lt p1, v2, :cond_1

    const/16 v2, 0xc8

    if-ge p1, v2, :cond_1

    .line 144
    add-int/lit8 v2, p1, -0x64

    invoke-direct {p0, v2}, Lorg/openintents/distribution/InfoActivity;->buildGetFromMarketDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/openintents/distribution/InfoActivity;->mPackageNames:[Ljava/lang/String;

    aget-object v0, v0, p3

    iget-object v1, p0, Lorg/openintents/distribution/InfoActivity;->mMinVersionCodes:[I

    aget v1, v1, p3

    invoke-static {p0, v0, v1}, Lorg/openintents/util/VersionUtils;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    add-int/lit8 v0, p3, 0x0

    invoke-virtual {p0, v0}, Lorg/openintents/distribution/InfoActivity;->showDialog(I)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    add-int/lit8 v0, p3, 0x64

    invoke-virtual {p0, v0}, Lorg/openintents/distribution/InfoActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/16 v0, 0x64

    .line 154
    invoke-super {p0, p1, p2}, Lorg/openintents/distribution/DistributionLibraryListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 155
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 156
    const v0, 0x1020019

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    if-lt p1, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    .line 158
    invoke-static {p0, p2}, Lorg/openintents/distribution/DownloadAppDialog;->onPrepareDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0
.end method
