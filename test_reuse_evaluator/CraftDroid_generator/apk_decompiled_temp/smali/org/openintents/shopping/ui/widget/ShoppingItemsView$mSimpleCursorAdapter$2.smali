.class Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$2;
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

.field final synthetic val$cursorpos:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x27c7f66c068bba03L    # -9.47122341702079E116

    const-string v2, "org/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$2"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;I)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$2;->$jacocoInit()[Z

    move-result-object v0

    .line 337
    iput-object p1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$2;->this$1:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;

    iput p2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$2;->val$cursorpos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$2;->$jacocoInit()[Z

    move-result-object v0

    .line 341
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$2;->this$1:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;

    iget-object v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$2;->val$cursorpos:I

    invoke-virtual {v1, v2}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->toggleItemBought(I)V

    .line 342
    aput-boolean v3, v0, v3

    return-void
.end method
