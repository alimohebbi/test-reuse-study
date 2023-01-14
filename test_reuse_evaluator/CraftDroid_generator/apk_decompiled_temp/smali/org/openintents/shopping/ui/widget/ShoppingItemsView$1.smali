.class Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;
.super Landroid/database/ContentObserver;
.source "ShoppingItemsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/ui/widget/ShoppingItemsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x49555ef581a7b9c3L    # -2.332204363047702E-45

    const-string v2, "org/openintents/shopping/ui/widget/ShoppingItemsView$1"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView;Landroid/os/Handler;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;->$jacocoInit()[Z

    move-result-object v0

    .line 606
    iput-object p1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;->$jacocoInit()[Z

    move-result-object v1

    .line 610
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 612
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    if-nez v0, :cond_0

    aput-boolean v4, v1, v4

    .line 623
    :goto_0
    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    return-void

    .line 612
    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v1, v0

    .line 614
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->requery()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    .line 616
    const-string v2, "ShoppingListView"

    const-string v3, "IllegalStateException "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    .line 618
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-static {v0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->access$300(Lorg/openintents/shopping/ui/widget/ShoppingItemsView;)V

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    goto :goto_0
.end method
