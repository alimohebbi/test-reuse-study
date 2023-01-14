.class public Lorg/openintents/shopping/ui/PickItemsActivity;
.super Landroid/app/Activity;
.source "PickItemsActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/PickItemsActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x602575b2fbd6ad56L    # -3.09290836977621E-155

    const-string v2, "org/openintents/shopping/ui/PickItemsActivity"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/PickItemsActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/PickItemsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onButton1Click(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/PickItemsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/PickItemsActivity;->finish()V

    .line 61
    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x3

    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PickItemsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v6, v2, v6

    .line 24
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/PickItemsActivity;->setContentView(I)V

    const/4 v1, 0x2

    aput-boolean v6, v2, v1

    .line 26
    const v1, 0x7f0c0014

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/PickItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    .line 27
    .local v0, "listItems":Lorg/openintents/shopping/ui/widget/ShoppingItemsView;
    iput v3, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    aput-boolean v6, v2, v3

    .line 29
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/PickItemsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    aput-boolean v6, v2, v7

    .line 30
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, p0, v4, v5}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->fillItems(Landroid/app/Activity;J)Landroid/database/Cursor;

    const/4 v1, 0x5

    aput-boolean v6, v2, v1

    .line 32
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setListTheme(Ljava/lang/String;)V

    .line 45
    sget v1, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_0

    const/4 v1, 0x6

    aput-boolean v6, v2, v1

    .line 57
    :goto_0
    const/16 v1, 0xa

    aput-boolean v6, v2, v1

    return-void

    .line 45
    :cond_0
    const/4 v1, 0x7

    aput-boolean v6, v2, v1

    .line 48
    const v1, 0x7f0c0015

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/PickItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/16 v3, 0x8

    aput-boolean v6, v2, v3

    .line 49
    new-instance v3, Lorg/openintents/shopping/ui/PickItemsActivity$1;

    invoke-direct {v3, p0}, Lorg/openintents/shopping/ui/PickItemsActivity$1;-><init>(Lorg/openintents/shopping/ui/PickItemsActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x9

    aput-boolean v6, v2, v1

    goto :goto_0
.end method
