.class public Lorg/openintents/shopping/ui/widget/QuickSelectMenu;
.super Ljava/lang/Object;
.source "QuickSelectMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/shopping/ui/widget/QuickSelectMenu$OnItemSelectedListener;,
        Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field mImplPlatform:Landroid/widget/PopupMenu;

.field private mItemSelectedListener:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$OnItemSelectedListener;

.field mMode:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x497874b59836e84fL    # 8.726155253903728E45

    const-string v2, "org/openintents/shopping/ui/widget/QuickSelectMenu"

    const/16 v3, 0x12

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->mImplPlatform:Landroid/widget/PopupMenu;

    .line 28
    sget-object v1, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->NONE:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    iput-object v1, p0, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->mMode:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    .line 32
    sget v1, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 33
    sget-object v1, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->PLATFORM:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    iput-object v1, p0, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->mMode:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    const/4 v1, 0x0

    aput-boolean v4, v0, v1

    .line 34
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, p1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->mImplPlatform:Landroid/widget/PopupMenu;

    aput-boolean v4, v0, v4

    .line 35
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->mImplPlatform:Landroid/widget/PopupMenu;

    new-instance v2, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$1;

    invoke-direct {v2, p0}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$1;-><init>(Lorg/openintents/shopping/ui/widget/QuickSelectMenu;)V

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    .line 36
    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 54
    :goto_0
    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    return-void

    .line 42
    :cond_0
    sget v1, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getMenu()Landroid/view/Menu;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->$jacocoInit()[Z

    move-result-object v1

    .line 58
    iget-object v2, p0, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->mMode:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    sget-object v3, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->PLATFORM:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    .line 59
    iget-object v2, p0, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->mImplPlatform:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 60
    .local v0, "menu":Landroid/view/Menu;
    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    .line 66
    :goto_0
    return-object v0

    .end local v0    # "menu":Landroid/view/Menu;
    :cond_0
    const/4 v0, 0x0

    const/16 v2, 0x9

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method public onMenuItemClickImpl(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->$jacocoInit()[Z

    move-result-object v0

    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v2, 0xf

    aput-boolean v4, v0, v2

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v3, 0x10

    aput-boolean v4, v0, v3

    .line 103
    iget-object v3, p0, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->mItemSelectedListener:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$OnItemSelectedListener;

    invoke-interface {v3, v1, v2}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$OnItemSelectedListener;->onItemSelected(Ljava/lang/CharSequence;I)V

    .line 104
    const/16 v1, 0x11

    aput-boolean v4, v0, v1

    return v4
.end method

.method public setOnItemSelectedListener(Lorg/openintents/shopping/ui/widget/QuickSelectMenu$OnItemSelectedListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->$jacocoInit()[Z

    move-result-object v0

    .line 85
    iput-object p1, p0, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->mItemSelectedListener:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$OnItemSelectedListener;

    .line 86
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->mMode:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    sget-object v2, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->PLATFORM:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    if-eq v1, v2, :cond_0

    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    .line 95
    :goto_0
    const/16 v1, 0xe

    aput-boolean v3, v0, v1

    return-void

    .line 89
    :cond_0
    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    .line 90
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->mImplPlatform:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
