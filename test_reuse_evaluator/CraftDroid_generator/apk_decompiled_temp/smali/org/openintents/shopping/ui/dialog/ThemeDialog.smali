.class public Lorg/openintents/shopping/ui/dialog/ThemeDialog;
.super Landroid/app/AlertDialog;
.source "ThemeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final BUNDLE_THEME:Ljava/lang/String; = "theme"

.field private static final TAG:Ljava/lang/String; = "ThemeDialog"

.field private static final debug:Z


# instance fields
.field mCheckBox:Landroid/widget/CheckBox;

.field mContext:Landroid/content/Context;

.field mListInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;

.field mListener:Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x41e9b66fa8634511L    # -1.297295020062051E-9

    const-string v2, "org/openintents/shopping/ui/dialog/ThemeDialog"

    const/16 v3, 0x5a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 71
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 72
    iput-object p1, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListener:Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 74
    invoke-direct {p0}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->init()V

    .line 75
    aput-boolean v2, v0, v2

    return-void
.end method

.method private getSelectedTheme()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->$jacocoInit()[Z

    move-result-object v3

    .line 265
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 267
    .local v0, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x51

    aput-boolean v5, v3, v2

    .line 268
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListInfo:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;

    .line 269
    .local v1, "ti":Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;
    iget-object v2, v1, Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;->styleName:Ljava/lang/String;

    const/16 v4, 0x52

    aput-boolean v5, v3, v4

    .line 271
    .end local v1    # "ti":Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    const/16 v4, 0x53

    aput-boolean v5, v3, v4

    goto :goto_0
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/16 v10, 0x14

    const/16 v9, 0xa

    const/4 v8, -0x2

    const/4 v7, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->$jacocoInit()[Z

    move-result-object v3

    .line 78
    invoke-virtual {p0, v7}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->setInverseBackgroundForced(Z)V

    .line 80
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    const/4 v5, 0x2

    aput-boolean v7, v3, v5

    .line 81
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 84
    .local v0, "inflate":Landroid/view/LayoutInflater;
    sget v2, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v2, v4, :cond_0

    const/4 v2, 0x3

    aput-boolean v7, v3, v2

    .line 86
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    const v5, 0x103000c

    invoke-direct {v2, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x4

    aput-boolean v7, v3, v2

    .line 88
    const v2, 0x7f030008

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x5

    aput-boolean v7, v3, v2

    .line 94
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->setView(Landroid/view/View;)V

    const/4 v2, 0x7

    aput-boolean v7, v3, v2

    .line 96
    const v2, 0x7f0c0034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    aput-boolean v7, v3, v2

    .line 97
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    const/16 v2, 0x9

    aput-boolean v7, v3, v2

    .line 98
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    aput-boolean v7, v3, v9

    .line 99
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    const/16 v2, 0xb

    aput-boolean v7, v3, v2

    .line 101
    new-instance v2, Landroid/widget/Button;

    iget-object v4, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v4, 0xc

    aput-boolean v7, v3, v4

    .line 102
    const v4, 0x7f080012

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    const/16 v4, 0xd

    aput-boolean v7, v3, v4

    .line 103
    new-instance v4, Lorg/openintents/shopping/ui/dialog/ThemeDialog$1;

    invoke-direct {v4, p0}, Lorg/openintents/shopping/ui/dialog/ThemeDialog$1;-><init>(Lorg/openintents/shopping/ui/dialog/ThemeDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0xe

    aput-boolean v7, v3, v4

    .line 116
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v5, 0xf

    aput-boolean v7, v3, v5

    .line 117
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/16 v6, 0x10

    aput-boolean v7, v3, v6

    .line 119
    invoke-virtual {v4, v10, v9, v10, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v6, 0x11

    aput-boolean v7, v3, v6

    .line 120
    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x12

    aput-boolean v7, v3, v2

    .line 121
    const/16 v2, 0x11

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0x13

    aput-boolean v7, v3, v2

    .line 122
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    aput-boolean v7, v3, v10

    .line 124
    const v2, 0x7f0c0035

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v2, 0x15

    aput-boolean v7, v3, v2

    .line 126
    const v2, 0x7f0800d2

    invoke-virtual {p0, v2}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->setTitle(I)V

    const/16 v2, 0x16

    aput-boolean v7, v3, v2

    .line 128
    const/4 v2, -0x1

    iget-object v4, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f08005f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v2, v4, p0}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/16 v2, 0x17

    aput-boolean v7, v3, v2

    .line 129
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f080008

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v8, v2, p0}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/16 v2, 0x18

    aput-boolean v7, v3, v2

    .line 131
    invoke-virtual {p0, p0}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/16 v2, 0x19

    aput-boolean v7, v3, v2

    .line 133
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->prepareDialog()V

    .line 134
    const/16 v2, 0x1a

    aput-boolean v7, v3, v2

    return-void

    .line 91
    :cond_0
    const v2, 0x7f030008

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x6

    aput-boolean v7, v3, v2

    goto/16 :goto_0
.end method

.method private updateList()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->$jacocoInit()[Z

    move-result-object v3

    .line 172
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListener:Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;

    invoke-interface {v2}, Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;->onLoadTheme()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    aput-boolean v6, v3, v2

    .line 175
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x27

    aput-boolean v6, v3, v2

    .line 176
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0003

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "theme":Ljava/lang/String;
    const/16 v2, 0x28

    aput-boolean v6, v3, v2

    .line 188
    :goto_0
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    const/4 v4, -0x1

    invoke-virtual {v2, v4, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const/16 v2, 0x2e

    aput-boolean v6, v3, v2

    .line 189
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 191
    const/16 v2, 0x2f

    aput-boolean v6, v3, v2

    .line 192
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v2, 0x30

    aput-boolean v6, v3, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x31

    aput-boolean v6, v3, v2

    .line 202
    :goto_2
    const/16 v2, 0x37

    aput-boolean v6, v3, v2

    return-void

    .line 178
    .end local v1    # "theme":Ljava/lang/String;
    :cond_0
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x29

    aput-boolean v6, v3, v2

    .line 179
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0005

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "theme":Ljava/lang/String;
    const/16 v2, 0x2a

    aput-boolean v6, v3, v2

    goto :goto_0

    .line 181
    .end local v1    # "theme":Ljava/lang/String;
    :cond_1
    const-string v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x2b

    aput-boolean v6, v3, v2

    goto :goto_0

    :cond_2
    const/16 v2, 0x2c

    aput-boolean v6, v3, v2

    .line 182
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0004

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "theme":Ljava/lang/String;
    const/16 v2, 0x2d

    aput-boolean v6, v3, v2

    goto :goto_0

    .line 192
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;

    const/16 v5, 0x32

    aput-boolean v6, v3, v5

    .line 193
    iget-object v2, v2, Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;->styleName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x33

    aput-boolean v6, v3, v2

    .line 194
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const/16 v2, 0x34

    aput-boolean v6, v3, v2

    .line 197
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 198
    const/16 v2, 0x35

    aput-boolean v6, v3, v2

    goto :goto_2

    .line 200
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 201
    .local v0, "pos":I
    const/16 v2, 0x36

    aput-boolean v6, v3, v2

    goto :goto_1
.end method


# virtual methods
.method public fillThemes()V
    .locals 11

    .prologue
    const v10, 0x109000f

    const/4 v9, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->$jacocoInit()[Z

    move-result-object v3

    .line 137
    iget-object v4, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    const-string v5, "org.openintents.shoppinglist"

    invoke-static {v4, v5}, Lorg/openintents/shopping/theme/ThemeUtils;->getThemeInfos(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListInfo:Ljava/util/List;

    const/16 v4, 0x1b

    aput-boolean v9, v3, v4

    .line 140
    iget-object v4, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 141
    .local v1, "s":[Ljava/lang/String;
    const/4 v0, 0x0

    const/16 v4, 0x1c

    aput-boolean v9, v3, v4

    .line 142
    iget-object v4, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v5, 0x1d

    aput-boolean v9, v3, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;

    .line 143
    .local v2, "ti":Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;
    iget-object v5, v2, Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;->title:Ljava/lang/String;

    aput-object v5, v1, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    .line 145
    .local v0, "i":I
    const/16 v5, 0x1e

    aput-boolean v9, v3, v5

    goto :goto_0

    .line 147
    .end local v0    # "i":I
    .end local v2    # "ti":Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;
    :cond_0
    sget v4, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_1

    const/16 v4, 0x1f

    aput-boolean v9, v3, v4

    .line 149
    iget-object v4, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/widget/ArrayAdapter;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    const v8, 0x103000c

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v5, v6, v10, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v4, 0x20

    aput-boolean v9, v3, v4

    .line 159
    :goto_1
    iget-object v4, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 160
    const/16 v4, 0x22

    aput-boolean v9, v3, v4

    return-void

    .line 155
    :cond_1
    iget-object v4, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v10, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v4, 0x21

    aput-boolean v9, v3, v4

    goto :goto_1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 247
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->pressCancel()V

    .line 248
    const/16 v1, 0x48

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 237
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/16 v1, 0x42

    aput-boolean v2, v0, v1

    .line 238
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->pressOk()V

    const/16 v1, 0x43

    aput-boolean v2, v0, v1

    .line 243
    :goto_0
    const/16 v1, 0x47

    aput-boolean v2, v0, v1

    return-void

    .line 239
    :cond_0
    const/4 v1, -0x2

    if-eq p2, v1, :cond_1

    const/16 v1, 0x44

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x45

    aput-boolean v2, v0, v1

    .line 240
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->pressCancel()V

    const/16 v1, 0x46

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 284
    invoke-direct {p0}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->getSelectedTheme()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "theme":Ljava/lang/String;
    if-nez v0, :cond_0

    const/16 v2, 0x56

    aput-boolean v3, v1, v2

    .line 289
    :goto_0
    const/16 v2, 0x59

    aput-boolean v3, v1, v2

    return-void

    .line 286
    :cond_0
    const/16 v2, 0x57

    aput-boolean v3, v1, v2

    .line 287
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListener:Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;

    invoke-interface {v2, v0}, Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;->onSetTheme(Ljava/lang/String;)V

    const/16 v2, 0x58

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 217
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const/16 v2, 0x3b

    aput-boolean v3, v1, v2

    .line 222
    invoke-direct {p0}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->getSelectedTheme()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "theme":Ljava/lang/String;
    if-nez p1, :cond_0

    const/16 v2, 0x3c

    aput-boolean v3, v1, v2

    .line 233
    :goto_0
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListener:Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;

    invoke-interface {v2, v0}, Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;->onSetTheme(Ljava/lang/String;)V

    .line 234
    const/16 v2, 0x41

    aput-boolean v3, v1, v2

    return-void

    .line 224
    :cond_0
    const/16 v2, 0x3d

    aput-boolean v3, v1, v2

    .line 225
    const-string v2, "theme"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x3e

    aput-boolean v3, v1, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x3f

    aput-boolean v3, v1, v2

    .line 226
    const-string v2, "theme"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x40

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 209
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0x38

    aput-boolean v4, v0, v2

    .line 210
    invoke-direct {p0}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->getSelectedTheme()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x39

    aput-boolean v4, v0, v3

    .line 211
    const-string v3, "theme"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/16 v2, 0x3a

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method public prepareDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->fillThemes()V

    const/16 v1, 0x23

    aput-boolean v3, v0, v1

    .line 164
    invoke-direct {p0}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->updateList()V

    const/16 v1, 0x24

    aput-boolean v3, v0, v1

    .line 165
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/openintents/shopping/ui/PreferenceActivity;->getThemeSetForAll(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 166
    const/16 v1, 0x25

    aput-boolean v3, v0, v1

    return-void
.end method

.method public pressCancel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 277
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListener:Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;

    invoke-interface {v1}, Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;->onLoadTheme()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x54

    aput-boolean v3, v0, v2

    .line 278
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListener:Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;

    invoke-interface {v2, v1}, Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;->onSetTheme(Ljava/lang/String;)V

    .line 279
    const/16 v1, 0x55

    aput-boolean v3, v0, v1

    return-void
.end method

.method public pressOk()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 253
    invoke-direct {p0}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->getSelectedTheme()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x49

    aput-boolean v4, v0, v2

    .line 254
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListener:Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;

    invoke-interface {v2, v1}, Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;->onSaveTheme(Ljava/lang/String;)V

    const/16 v2, 0x4a

    aput-boolean v4, v0, v2

    .line 255
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListener:Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;

    invoke-interface {v2, v1}, Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;->onSetTheme(Ljava/lang/String;)V

    const/16 v2, 0x4b

    aput-boolean v4, v0, v2

    .line 257
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/16 v3, 0x4c

    aput-boolean v4, v0, v3

    .line 258
    iget-object v3, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lorg/openintents/shopping/ui/PreferenceActivity;->setThemeSetForAll(Landroid/content/Context;Z)V

    .line 259
    if-nez v2, :cond_0

    const/16 v1, 0x4d

    aput-boolean v4, v0, v1

    .line 262
    :goto_0
    const/16 v1, 0x50

    aput-boolean v4, v0, v1

    return-void

    .line 259
    :cond_0
    const/16 v2, 0x4e

    aput-boolean v4, v0, v2

    .line 260
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->mListener:Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;

    invoke-interface {v2, v1}, Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;->onSetThemeForAll(Ljava/lang/String;)V

    const/16 v1, 0x4f

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
