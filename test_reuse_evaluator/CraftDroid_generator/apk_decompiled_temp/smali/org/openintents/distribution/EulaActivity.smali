.class public Lorg/openintents/distribution/EulaActivity;
.super Landroid/app/Activity;
.source "EulaActivity.java"


# instance fields
.field mAgree:Landroid/widget/Button;

.field mAppName:Ljava/lang/String;

.field mDisagree:Landroid/widget/Button;

.field mImage:Landroid/widget/ImageView;

.field mLaunchClass:Ljava/lang/String;

.field mLaunchIntent:Landroid/content/Intent;

.field mLaunchPackage:Ljava/lang/String;

.field mText:Landroid/widget/TextView;

.field mText1:Landroid/widget/TextView;

.field mText2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method accept()V
    .locals 0

    .prologue
    .line 114
    invoke-static {p0}, Lorg/openintents/distribution/EulaOrNewVersion;->storeEulaAccepted(Landroid/content/Context;)V

    .line 116
    invoke-virtual {p0}, Lorg/openintents/distribution/EulaActivity;->startOriginalActivity()V

    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v5, Lorg/openintents/distribution/R$layout;->oi_distribution_eula:I

    invoke-virtual {p0, v5}, Lorg/openintents/distribution/EulaActivity;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lorg/openintents/distribution/EulaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 67
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "org.openintents.extra.launch_activity_package"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/openintents/distribution/EulaActivity;->mLaunchPackage:Ljava/lang/String;

    .line 69
    const-string v5, "org.openintents.extra.launch_activity_class"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/openintents/distribution/EulaActivity;->mLaunchClass:Ljava/lang/String;

    .line 71
    const-string v5, "org.openintents.extra.launch_activity_intent"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    iput-object v5, p0, Lorg/openintents/distribution/EulaActivity;->mLaunchIntent:Landroid/content/Intent;

    .line 74
    sget v5, Lorg/openintents/distribution/R$id;->button1:I

    invoke-virtual {p0, v5}, Lorg/openintents/distribution/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lorg/openintents/distribution/EulaActivity;->mAgree:Landroid/widget/Button;

    .line 75
    iget-object v5, p0, Lorg/openintents/distribution/EulaActivity;->mAgree:Landroid/widget/Button;

    new-instance v6, Lorg/openintents/distribution/EulaActivity$1;

    invoke-direct {v6, p0}, Lorg/openintents/distribution/EulaActivity$1;-><init>(Lorg/openintents/distribution/EulaActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget v5, Lorg/openintents/distribution/R$id;->button2:I

    invoke-virtual {p0, v5}, Lorg/openintents/distribution/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lorg/openintents/distribution/EulaActivity;->mDisagree:Landroid/widget/Button;

    .line 82
    iget-object v5, p0, Lorg/openintents/distribution/EulaActivity;->mDisagree:Landroid/widget/Button;

    new-instance v6, Lorg/openintents/distribution/EulaActivity$2;

    invoke-direct {v6, p0}, Lorg/openintents/distribution/EulaActivity$2;-><init>(Lorg/openintents/distribution/EulaActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget v5, Lorg/openintents/distribution/R$id;->text1:I

    invoke-virtual {p0, v5}, Lorg/openintents/distribution/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lorg/openintents/distribution/EulaActivity;->mText1:Landroid/widget/TextView;

    .line 89
    sget v5, Lorg/openintents/distribution/R$id;->text2:I

    invoke-virtual {p0, v5}, Lorg/openintents/distribution/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lorg/openintents/distribution/EulaActivity;->mText2:Landroid/widget/TextView;

    .line 90
    sget v5, Lorg/openintents/distribution/R$id;->text:I

    invoke-virtual {p0, v5}, Lorg/openintents/distribution/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lorg/openintents/distribution/EulaActivity;->mText:Landroid/widget/TextView;

    .line 91
    sget v5, Lorg/openintents/distribution/R$id;->imageview:I

    invoke-virtual {p0, v5}, Lorg/openintents/distribution/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lorg/openintents/distribution/EulaActivity;->mImage:Landroid/widget/ImageView;

    .line 93
    invoke-static {p0}, Lorg/openintents/util/VersionUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/openintents/distribution/EulaActivity;->mAppName:Ljava/lang/String;

    .line 94
    invoke-static {p0}, Lorg/openintents/util/VersionUtils;->getApplicationIcon(Landroid/content/Context;)I

    move-result v2

    .line 96
    .local v2, "iconRes":I
    iget-object v5, p0, Lorg/openintents/distribution/EulaActivity;->mAppName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/openintents/distribution/EulaActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v5, p0, Lorg/openintents/distribution/EulaActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    sget v5, Lorg/openintents/distribution/R$string;->oi_distribution_eula_title:I

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/openintents/distribution/EulaActivity;->mAppName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lorg/openintents/distribution/EulaActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "title":Ljava/lang/String;
    sget v5, Lorg/openintents/distribution/R$string;->oi_distribution_eula_message:I

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/openintents/distribution/EulaActivity;->mAppName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lorg/openintents/distribution/EulaActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "message":Ljava/lang/String;
    iget-object v5, p0, Lorg/openintents/distribution/EulaActivity;->mText1:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v5, p0, Lorg/openintents/distribution/EulaActivity;->mText2:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v5, p0, Lorg/openintents/distribution/EulaActivity;->mText:Landroid/widget/TextView;

    sget v6, Lorg/openintents/distribution/R$raw;->license_short:I

    invoke-virtual {p0, v6, v8}, Lorg/openintents/distribution/EulaActivity;->readTextFromRawResource(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method readTextFromRawResource(IZ)Ljava/lang/String;
    .locals 8
    .param p1, "resourceid"    # I
    .param p2, "preserveLineBreaks"    # Z

    .prologue
    .line 157
    const-string v2, ""

    .line 158
    .local v2, "license":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/openintents/distribution/EulaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 161
    .local v4, "resources":Landroid/content/res/Resources;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    .line 163
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 165
    .local v1, "in":Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v5, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 168
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 170
    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-object v2

    .line 172
    .restart local v3    # "line":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    if-eqz p2, :cond_1

    .line 174
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 176
    :cond_1
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1
.end method

.method refuse()V
    .locals 0

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/openintents/distribution/EulaActivity;->finish()V

    .line 146
    return-void
.end method

.method startOriginalActivity()V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lorg/openintents/distribution/EulaActivity;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 127
    iget-object v0, p0, Lorg/openintents/distribution/EulaActivity;->mLaunchIntent:Landroid/content/Intent;

    .line 131
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 136
    :goto_0
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Lorg/openintents/distribution/EulaActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    invoke-virtual {p0}, Lorg/openintents/distribution/EulaActivity;->finish()V

    .line 139
    return-void

    .line 133
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    .restart local v0    # "i":Landroid/content/Intent;
    iget-object v1, p0, Lorg/openintents/distribution/EulaActivity;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lorg/openintents/distribution/EulaActivity;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
