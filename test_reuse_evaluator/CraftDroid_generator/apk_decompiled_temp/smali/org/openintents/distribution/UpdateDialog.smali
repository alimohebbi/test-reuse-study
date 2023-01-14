.class public Lorg/openintents/distribution/UpdateDialog;
.super Lorg/openintents/distribution/DownloadAppDialog;
.source "UpdateDialog.java"


# static fields
.field private static final DEBUG_NO_MARKET:Z

.field public static final UPDATE_CHECKER:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "org.openintents.updatechecker"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.vending"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.a0soft.gphone.aTrackDog"

    aput-object v2, v0, v1

    sput-object v0, Lorg/openintents/distribution/UpdateDialog;->UPDATE_CHECKER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget v2, Lorg/openintents/distribution/R$string;->oi_distribution_update_box_text:I

    sget v3, Lorg/openintents/distribution/R$string;->oi_distribution_update_app:I

    sget v4, Lorg/openintents/distribution/R$string;->oi_distribution_update_checker_package:I

    sget v5, Lorg/openintents/distribution/R$string;->oi_distribution_update_checker_website:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/openintents/distribution/DownloadAppDialog;-><init>(Landroid/content/Context;IIII)V

    .line 56
    iput-object p1, p0, Lorg/openintents/distribution/UpdateDialog;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lorg/openintents/distribution/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/openintents/util/VersionUtils;->getVersionNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 59
    .local v9, "version":Ljava/lang/String;
    iget-object v0, p0, Lorg/openintents/distribution/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/openintents/util/VersionUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "appname":Ljava/lang/String;
    iget-object v0, p0, Lorg/openintents/distribution/UpdateDialog;->mContext:Landroid/content/Context;

    sget v1, Lorg/openintents/distribution/R$string;->oi_distribution_name_and_version:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, "appnameversion":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v0, "\n\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v0, p0, Lorg/openintents/distribution/UpdateDialog;->mMessageText:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openintents/distribution/UpdateDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 68
    const/4 v0, -0x1

    iget-object v1, p0, Lorg/openintents/distribution/UpdateDialog;->mContext:Landroid/content/Context;

    sget v2, Lorg/openintents/distribution/R$string;->oi_distribution_update_check_now:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lorg/openintents/distribution/UpdateDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 69
    return-void
.end method

.method public static isUpdateMenuNecessary(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 96
    const/4 v1, 0x0

    .line 99
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lorg/openintents/distribution/UpdateDialog;->UPDATE_CHECKER:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 101
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lorg/openintents/distribution/UpdateDialog;->UPDATE_CHECKER:[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    :goto_1
    if-eqz v1, :cond_0

    .line 114
    :goto_2
    return v2

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    const/4 v2, 0x1

    goto :goto_2

    .line 103
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 78
    sget v1, Lorg/openintents/distribution/R$string;->about_website_url:I

    .line 80
    .local v1, "resId":I
    iget-object v2, p0, Lorg/openintents/distribution/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Lorg/openintents/distribution/UpdateDialog;->startSaveActivity(Landroid/content/Intent;)V

    .line 87
    .end local v1    # "resId":I
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/openintents/distribution/DownloadAppDialog;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method
