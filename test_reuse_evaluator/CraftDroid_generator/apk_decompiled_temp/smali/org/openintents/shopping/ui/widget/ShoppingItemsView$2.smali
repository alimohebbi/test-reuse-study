.class Lorg/openintents/shopping/ui/widget/ShoppingItemsView$2;
.super Ljava/lang/Object;
.source "ShoppingItemsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->postDelayedSetSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

.field final synthetic val$pos:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x457a637b22d1c5e1L    # -8.728775892902425E-27

    const-string v2, "org/openintents/shopping/ui/widget/ShoppingItemsView$2"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView;I)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$2;->$jacocoInit()[Z

    move-result-object v0

    .line 1220
    iput-object p1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$2;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iput p2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$2;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$2;->$jacocoInit()[Z

    move-result-object v0

    .line 1224
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$2;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$2;->val$pos:I

    invoke-virtual {v1, v2}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setSelection(I)V

    .line 1225
    aput-boolean v3, v0, v3

    return-void
.end method
