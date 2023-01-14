.class public Lorg/openintents/shopping/ui/dialog/RenameListDialog;
.super Landroid/app/AlertDialog;
.source "RenameListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field mContext:Landroid/content/Context;

.field mDialogActionListener:Lorg/openintents/shopping/ui/dialog/DialogActionListener;

.field protected mEditText:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3756420d05470881L    # -1.121221745321415E42

    const-string v2, "org/openintents/shopping/ui/dialog/RenameListDialog"

    const/16 v3, 0x19

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 26
    invoke-direct {p0}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->init()V

    .line 27
    aput-boolean v2, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/openintents/shopping/ui/dialog/DialogActionListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 33
    invoke-direct {p0}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->init()V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 34
    invoke-virtual {p0, p2}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->setName(Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 35
    invoke-virtual {p0, p3}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->setDialogActionListener(Lorg/openintents/shopping/ui/dialog/DialogActionListener;)V

    .line 36
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 42
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    .line 43
    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    .line 44
    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->setView(Landroid/view/View;)V

    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    .line 46
    const v2, 0x7f0c0024

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->mEditText:Landroid/widget/EditText;

    .line 48
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->mContext:Landroid/content/Context;

    const/16 v2, 0x9

    aput-boolean v4, v1, v2

    .line 49
    invoke-static {v0}, Lorg/openintents/shopping/ui/PreferenceActivity;->getCapitalizationKeyListenerFromPrefs(Landroid/content/Context;)Landroid/text/method/KeyListener;

    move-result-object v0

    const/16 v2, 0xa

    aput-boolean v4, v1, v2

    .line 50
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    .line 52
    const v0, 0x108003e

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->setIcon(I)V

    const/16 v0, 0xc

    aput-boolean v4, v1, v0

    .line 53
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->setTitle(I)V

    const/16 v0, 0xd

    aput-boolean v4, v1, v0

    .line 55
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f08005f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/16 v0, 0xe

    aput-boolean v4, v1, v0

    .line 56
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f080008

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 57
    const/16 v0, 0xf

    aput-boolean v4, v1, v0

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 71
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    .line 75
    :goto_0
    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    return-void

    .line 71
    :cond_0
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    .line 72
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->pressOk()V

    const/16 v1, 0x15

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public pressOk()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 78
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-boolean v3, v0, v2

    .line 79
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->mDialogActionListener:Lorg/openintents/shopping/ui/dialog/DialogActionListener;

    invoke-interface {v2, v1}, Lorg/openintents/shopping/ui/dialog/DialogActionListener;->onAction(Ljava/lang/String;)V

    .line 80
    const/16 v1, 0x18

    aput-boolean v3, v0, v1

    return-void
.end method

.method public setDialogActionListener(Lorg/openintents/shopping/ui/dialog/DialogActionListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 67
    iput-object p1, p0, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->mDialogActionListener:Lorg/openintents/shopping/ui/dialog/DialogActionListener;

    .line 68
    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x10

    aput-boolean v3, v0, v1

    .line 63
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 64
    const/16 v1, 0x11

    aput-boolean v3, v0, v1

    return-void
.end method
