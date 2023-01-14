.class public Lorg/openintents/distribution/NewVersionActivity;
.super Lorg/openintents/distribution/EulaActivity;
.source "NewVersionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/openintents/distribution/EulaActivity;-><init>()V

    return-void
.end method


# virtual methods
.method accept()V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0}, Lorg/openintents/distribution/EulaOrNewVersion;->storeCurrentVersionCode(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p0}, Lorg/openintents/distribution/NewVersionActivity;->startOriginalActivity()V

    .line 65
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 36
    invoke-super {p0, p1}, Lorg/openintents/distribution/EulaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {p0}, Lorg/openintents/util/VersionUtils;->getVersionNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "version":Ljava/lang/String;
    sget v4, Lorg/openintents/distribution/R$string;->oi_distribution_name_and_version:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/openintents/distribution/NewVersionActivity;->mAppName:Ljava/lang/String;

    aput-object v6, v5, v8

    aput-object v3, v5, v7

    invoke-virtual {p0, v4, v5}, Lorg/openintents/distribution/NewVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "title":Ljava/lang/String;
    sget v4, Lorg/openintents/distribution/R$string;->oi_distribution_newversion_message:I

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/openintents/distribution/NewVersionActivity;->mAppName:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lorg/openintents/distribution/NewVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lorg/openintents/distribution/R$string;->oi_distribution_newversion_recent_changes:I

    invoke-virtual {p0, v5}, Lorg/openintents/distribution/NewVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v4, p0, Lorg/openintents/distribution/NewVersionActivity;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v4, p0, Lorg/openintents/distribution/NewVersionActivity;->mText2:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v4, p0, Lorg/openintents/distribution/NewVersionActivity;->mText:Landroid/widget/TextView;

    sget v5, Lorg/openintents/distribution/R$raw;->recent_changes:I

    invoke-virtual {p0, v5, v7}, Lorg/openintents/distribution/NewVersionActivity;->readTextFromRawResource(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v4, p0, Lorg/openintents/distribution/NewVersionActivity;->mAgree:Landroid/widget/Button;

    sget v5, Lorg/openintents/distribution/R$string;->oi_distribution_newversion_continue:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 52
    iget-object v4, p0, Lorg/openintents/distribution/NewVersionActivity;->mDisagree:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    sget v4, Lorg/openintents/distribution/R$id;->space:I

    invoke-virtual {p0, v4}, Lorg/openintents/distribution/NewVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 54
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 55
    return-void
.end method
