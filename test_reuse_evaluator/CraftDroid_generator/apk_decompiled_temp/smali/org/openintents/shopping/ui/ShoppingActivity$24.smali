.class Lorg/openintents/shopping/ui/ShoppingActivity$24;
.super Ljava/lang/Object;
.source "ShoppingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/ShoppingActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/openintents/shopping/ui/ShoppingActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$24;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3212111bc2d8ece8L    # -2.5218645962273385E67

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity$24"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$24;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$24;->$jacocoInit()[Z

    move-result-object v0

    .line 2546
    iput-object p1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$24;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$24;->$jacocoInit()[Z

    move-result-object v0

    .line 2549
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$24;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity$24;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    iget v2, v2, Lorg/openintents/shopping/ui/ShoppingActivity;->mDeleteItemPosition:I

    invoke-virtual {v1, v2}, Lorg/openintents/shopping/ui/ShoppingActivity;->deleteItem(I)V

    .line 2550
    aput-boolean v3, v0, v3

    return-void
.end method
