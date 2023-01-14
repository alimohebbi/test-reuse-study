.class Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableItemSpan;
.super Landroid/text/style/ClickableSpan;
.source "ShoppingItemsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickableItemSpan"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableItemSpan;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x28ee3d1432427af5L    # -2.6696594607203413E111

    const-string v2, "org/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableItemSpan"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableItemSpan;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableItemSpan;->$jacocoInit()[Z

    move-result-object v0

    .line 471
    iput-object p1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableItemSpan;->this$1:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableItemSpan;->$jacocoInit()[Z

    move-result-object v0

    .line 471
    invoke-direct {p0, p1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableItemSpan;-><init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;)V

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableItemSpan;->$jacocoInit()[Z

    move-result-object v1

    .line 474
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableItemSpan;->this$1:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$OnCustomClickListener;

    if-nez v0, :cond_0

    aput-boolean v5, v1, v5

    .line 480
    :goto_0
    const/4 v0, 0x5

    aput-boolean v5, v1, v0

    return-void

    .line 474
    :cond_0
    const/4 v0, 0x2

    aput-boolean v5, v1, v0

    .line 475
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    aput-boolean v5, v1, v2

    .line 476
    iget-object v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableItemSpan;->this$1:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;

    iget-object v2, v2, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v2, v2, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$OnCustomClickListener;

    iget-object v3, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableItemSpan;->this$1:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;

    iget-object v3, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v3, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    sget-object v4, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->ITEMNAME:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    invoke-interface {v2, v3, v0, v4, p1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$OnCustomClickListener;->onCustomClick(Landroid/database/Cursor;ILorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;Landroid/view/View;)V

    const/4 v0, 0x4

    aput-boolean v5, v1, v0

    goto :goto_0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableItemSpan;->$jacocoInit()[Z

    move-result-object v0

    .line 485
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
