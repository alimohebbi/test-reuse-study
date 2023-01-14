.class public Lorg/openintents/distribution/DownloadOIAppDialog;
.super Lorg/openintents/distribution/DownloadAppDialog;
.source "DownloadOIAppDialog.java"


# static fields
.field public static final OI_BARCODESCANNER:I = 0x3

.field public static final OI_FILEMANAGER:I = 0x1

.field public static final OI_SAFE:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lorg/openintents/distribution/DownloadAppDialog;-><init>(Landroid/content/Context;)V

    .line 14
    packed-switch p2, :pswitch_data_0

    .line 36
    :goto_0
    return-void

    .line 16
    :pswitch_0
    sget v0, Lorg/openintents/distribution/R$string;->oi_distribution_barcodescanner_not_available:I

    sget v1, Lorg/openintents/distribution/R$string;->oi_distribution_barcodescanner:I

    sget v2, Lorg/openintents/distribution/R$string;->oi_distribution_barcodescanner_package:I

    sget v3, Lorg/openintents/distribution/R$string;->oi_distribution_barcodescanner_website:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/openintents/distribution/DownloadOIAppDialog;->set(IIII)V

    goto :goto_0

    .line 22
    :pswitch_1
    sget v0, Lorg/openintents/distribution/R$string;->oi_distribution_filemanager_not_available:I

    sget v1, Lorg/openintents/distribution/R$string;->oi_distribution_filemanager:I

    sget v2, Lorg/openintents/distribution/R$string;->oi_distribution_filemanager_package:I

    sget v3, Lorg/openintents/distribution/R$string;->oi_distribution_filemanager_website:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/openintents/distribution/DownloadOIAppDialog;->set(IIII)V

    goto :goto_0

    .line 28
    :pswitch_2
    sget v0, Lorg/openintents/distribution/R$string;->oi_distribution_safe_not_available:I

    sget v1, Lorg/openintents/distribution/R$string;->oi_distribution_safe:I

    sget v2, Lorg/openintents/distribution/R$string;->oi_distribution_safe_package:I

    sget v3, Lorg/openintents/distribution/R$string;->oi_distribution_safe_website:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/openintents/distribution/DownloadOIAppDialog;->set(IIII)V

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
