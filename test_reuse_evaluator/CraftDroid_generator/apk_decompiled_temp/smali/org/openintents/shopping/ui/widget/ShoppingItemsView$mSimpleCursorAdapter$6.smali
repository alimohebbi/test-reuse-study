.class Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$6;
.super Ljava/lang/Object;
.source "ShoppingItemsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$cursorpos:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$6;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6a391403f309964eL    # 4.9142041297668625E203

    const-string v2, "org/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$6"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$6;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;Landroid/database/Cursor;I)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$6;->$jacocoInit()[Z

    move-result-object v0

    .line 390
    iput-object p1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$6;->this$1:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;

    iput-object p2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$6;->val$cursor:Landroid/database/Cursor;

    iput p3, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$6;->val$cursorpos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$6;->$jacocoInit()[Z

    move-result-object v0

    .line 395
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$6;->this$1:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;

    iget-object v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$OnCustomClickListener;

    if-nez v1, :cond_0

    aput-boolean v5, v0, v5

    .line 399
    :goto_0
    const/4 v1, 0x4

    aput-boolean v5, v0, v1

    return-void

    .line 395
    :cond_0
    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    .line 396
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$6;->this$1:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;

    iget-object v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$OnCustomClickListener;

    iget-object v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$6;->val$cursor:Landroid/database/Cursor;

    iget v3, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$6;->val$cursorpos:I

    sget-object v4, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->PRIORITY:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    invoke-interface {v1, v2, v3, v4, p1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$OnCustomClickListener;->onCustomClick(Landroid/database/Cursor;ILorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;Landroid/view/View;)V

    const/4 v1, 0x3

    aput-boolean v5, v0, v1

    goto :goto_0
.end method
