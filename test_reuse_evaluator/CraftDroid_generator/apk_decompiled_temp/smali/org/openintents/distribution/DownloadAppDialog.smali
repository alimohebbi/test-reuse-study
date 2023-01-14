.class public Lorg/openintents/distribution/DownloadAppDialog;
.super Landroid/app/AlertDialog;
.source "DownloadAppDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "StartSaveActivity"


# instance fields
.field mContext:Landroid/content/Context;

.field mDownloadAppName:Ljava/lang/String;

.field mDownloadPackageName:Ljava/lang/String;

.field mDownloadWebsite:Ljava/lang/String;

.field private mHideMarketLink:Z

.field mMarketAvailable:Z

.field mMessageText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lorg/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageId"    # I
    .param p3, "downloadNameId"    # I
    .param p4, "downloadPackageId"    # I
    .param p5, "downloadWebsiteId"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Lorg/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/openintents/distribution/DownloadAppDialog;->set(IIII)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "downloadName"    # Ljava/lang/String;
    .param p4, "downloadPackage"    # Ljava/lang/String;
    .param p5, "downloadWebsite"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p1, p0, Lorg/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/openintents/distribution/DownloadAppDialog;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static onPrepareDialog(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v2, 0x0

    .line 120
    move-object v0, p1

    check-cast v0, Lorg/openintents/distribution/DownloadAppDialog;

    .line 122
    .local v0, "d":Lorg/openintents/distribution/DownloadAppDialog;
    iget-object v3, v0, Lorg/openintents/distribution/DownloadAppDialog;->mDownloadPackageName:Ljava/lang/String;

    invoke-static {p0, v3}, Lorg/openintents/distribution/MarketUtils;->isMarketAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lorg/openintents/distribution/DownloadAppDialog;->mHideMarketLink:Z

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 124
    .local v1, "hasAndroidMarket":Z
    :goto_0
    const v3, 0x1020019

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    return-void

    .end local v1    # "hasAndroidMarket":Z
    :cond_0
    move v1, v2

    .line 122
    goto :goto_0

    .line 124
    .restart local v1    # "hasAndroidMarket":Z
    :cond_1
    const/16 v2, 0x8

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 108
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 109
    iget-object v2, p0, Lorg/openintents/distribution/DownloadAppDialog;->mDownloadPackageName:Ljava/lang/String;

    invoke-static {v2}, Lorg/openintents/distribution/MarketUtils;->getMarketDownloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/openintents/distribution/DownloadAppDialog;->startSaveActivity(Landroid/content/Intent;)V

    .line 117
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lorg/openintents/distribution/DownloadAppDialog;->mDownloadWebsite:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 114
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Lorg/openintents/distribution/DownloadAppDialog;->startSaveActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected set(IIII)V
    .locals 5
    .param p1, "messageId"    # I
    .param p2, "downloadNameId"    # I
    .param p3, "downloadPackageId"    # I
    .param p4, "downloadWebsiteId"    # I

    .prologue
    .line 68
    iget-object v4, p0, Lorg/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "message":Ljava/lang/String;
    iget-object v4, p0, Lorg/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "downloadName":Ljava/lang/String;
    iget-object v4, p0, Lorg/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "downloadPackage":Ljava/lang/String;
    iget-object v4, p0, Lorg/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "downloadWebsite":Ljava/lang/String;
    invoke-virtual {p0, v3, v0, v1, v2}, Lorg/openintents/distribution/DownloadAppDialog;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method protected set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "downloadName"    # Ljava/lang/String;
    .param p3, "downloadPackage"    # Ljava/lang/String;
    .param p4, "downloadWebsite"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 77
    iput-object p2, p0, Lorg/openintents/distribution/DownloadAppDialog;->mDownloadAppName:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lorg/openintents/distribution/DownloadAppDialog;->mDownloadPackageName:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lorg/openintents/distribution/DownloadAppDialog;->mDownloadWebsite:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lorg/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/openintents/distribution/DownloadAppDialog;->mDownloadPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/openintents/distribution/MarketUtils;->isMarketAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/openintents/distribution/DownloadAppDialog;->mMarketAvailable:Z

    .line 82
    iget-object v1, p0, Lorg/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/openintents/distribution/MarketUtils;->hideMarketLink(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/openintents/distribution/DownloadAppDialog;->mHideMarketLink:Z

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-boolean v1, p0, Lorg/openintents/distribution/DownloadAppDialog;->mMarketAvailable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/openintents/distribution/DownloadAppDialog;->mHideMarketLink:Z

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lorg/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    sget v2, Lorg/openintents/distribution/R$string;->oi_distribution_download_market_message:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/openintents/distribution/DownloadAppDialog;->mDownloadAppName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/openintents/distribution/DownloadAppDialog;->mMessageText:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lorg/openintents/distribution/DownloadAppDialog;->mMessageText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/openintents/distribution/DownloadAppDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lorg/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    sget v2, Lorg/openintents/distribution/R$string;->oi_distribution_download_title:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/openintents/distribution/DownloadAppDialog;->mDownloadAppName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openintents/distribution/DownloadAppDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    const/4 v1, -0x1

    iget-object v2, p0, Lorg/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    sget v3, Lorg/openintents/distribution/R$string;->oi_distribution_download_market:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p0}, Lorg/openintents/distribution/DownloadAppDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 101
    const/4 v1, -0x2

    iget-object v2, p0, Lorg/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    sget v3, Lorg/openintents/distribution/R$string;->oi_distribution_download_web:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p0}, Lorg/openintents/distribution/DownloadAppDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    const/4 v1, -0x3

    iget-object v2, p0, Lorg/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p0}, Lorg/openintents/distribution/DownloadAppDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 103
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lorg/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    sget v2, Lorg/openintents/distribution/R$string;->oi_distribution_download_message:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/openintents/distribution/DownloadAppDialog;->mDownloadAppName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public startSaveActivity(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lorg/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lorg/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    sget v2, Lorg/openintents/distribution/R$string;->oi_distribution_update_error:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 142
    const-string v1, "StartSaveActivity"

    const-string v2, "Error starting second activity."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
