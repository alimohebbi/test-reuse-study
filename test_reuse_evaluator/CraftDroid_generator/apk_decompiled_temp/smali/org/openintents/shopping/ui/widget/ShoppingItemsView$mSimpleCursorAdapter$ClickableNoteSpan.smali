.class Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableNoteSpan;
.super Landroid/text/style/ClickableSpan;
.source "ShoppingItemsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickableNoteSpan"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableNoteSpan;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x375bac471ea547cdL    # -8.853674515738355E41

    const-string v2, "org/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableNoteSpan"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableNoteSpan;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableNoteSpan;->$jacocoInit()[Z

    move-result-object v0

    .line 447
    iput-object p1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableNoteSpan;->this$1:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableNoteSpan;->$jacocoInit()[Z

    move-result-object v0

    .line 447
    invoke-direct {p0, p1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableNoteSpan;-><init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;)V

    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v3, 0x7

    const/4 v7, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableNoteSpan;->$jacocoInit()[Z

    move-result-object v6

    .line 449
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-boolean v7, v6, v7

    .line 450
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    aput-boolean v7, v6, v1

    .line 452
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableNoteSpan;->this$1:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;

    iget-object v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v0, 0x3

    aput-boolean v7, v6, v0

    .line 453
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableNoteSpan;->this$1:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v3, 0x4

    aput-boolean v7, v6, v3

    .line 454
    sget-object v3, Lorg/openintents/shopping/library/provider/ShoppingContract$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x5

    aput-boolean v7, v6, v1

    .line 455
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, 0x6

    aput-boolean v7, v6, v0

    .line 456
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableNoteSpan;->this$1:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x7

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v6, v0

    .line 458
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    const/16 v0, 0x8

    aput-boolean v7, v6, v0

    .line 468
    :goto_0
    const/16 v0, 0xc

    aput-boolean v7, v6, v0

    return-void

    .line 459
    :catch_0
    move-exception v0

    const/16 v0, 0x9

    aput-boolean v7, v6, v0

    .line 461
    new-instance v0, Lorg/openintents/distribution/DownloadAppDialog;

    const v2, 0x7f080032

    const v3, 0x7f080031

    const v4, 0x7f0800e7

    const v5, 0x7f0800e8

    invoke-direct/range {v0 .. v5}, Lorg/openintents/distribution/DownloadAppDialog;-><init>(Landroid/content/Context;IIII)V

    const/16 v1, 0xa

    aput-boolean v7, v6, v1

    .line 466
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/16 v0, 0xb

    aput-boolean v7, v6, v0

    goto :goto_0
.end method
