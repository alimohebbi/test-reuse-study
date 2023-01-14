.class public Lorg/openintents/distribution/PrivacyDialog;
.super Landroid/app/AlertDialog;
.source "PrivacyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPrivacyUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/openintents/distribution/PrivacyDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/openintents/distribution/PrivacyDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lorg/openintents/distribution/PrivacyDialog;->mContext:Landroid/content/Context;

    .line 43
    sget v4, Lorg/openintents/distribution/R$string;->oi_privacy_page:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/openintents/distribution/PrivacyDialog;->mPrivacyUrl:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lorg/openintents/util/VersionUtils;->getVersionNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "version":Ljava/lang/String;
    invoke-static {p1}, Lorg/openintents/util/VersionUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "appName":Ljava/lang/String;
    sget v4, Lorg/openintents/distribution/R$string;->oi_distribution_name_and_version:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "appNameVersion":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 49
    .local v2, "sb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 50
    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 51
    sget v4, Lorg/openintents/distribution/R$string;->oi_visit_oi_privacy_page:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 52
    invoke-virtual {p0, v2}, Lorg/openintents/distribution/PrivacyDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 53
    sget v4, Lorg/openintents/distribution/R$string;->oi_privacy_dialog_title:I

    invoke-virtual {p0, v4}, Lorg/openintents/distribution/PrivacyDialog;->setTitle(I)V

    .line 54
    const/4 v4, -0x1

    sget v5, Lorg/openintents/distribution/R$string;->oi_open_page:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p0}, Lorg/openintents/distribution/PrivacyDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 55
    const/4 v4, -0x2

    sget v5, Lorg/openintents/distribution/R$string;->oi_not_now:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p0}, Lorg/openintents/distribution/PrivacyDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 62
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 63
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lorg/openintents/distribution/PrivacyDialog;->mPrivacyUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lorg/openintents/distribution/PrivacyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 66
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lorg/openintents/distribution/PrivacyDialog;->mContext:Landroid/content/Context;

    sget v3, Lorg/openintents/distribution/R$string;->oi_distribution_update_error:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 70
    sget-object v2, Lorg/openintents/distribution/PrivacyDialog;->TAG:Ljava/lang/String;

    const-string v3, "Error starting second activity."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 72
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    .line 73
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
