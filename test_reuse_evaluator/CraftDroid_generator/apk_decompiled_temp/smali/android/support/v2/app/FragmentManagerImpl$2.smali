.class Landroid/support/v2/app/FragmentManagerImpl$2;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v2/app/FragmentManagerImpl;->popBackStack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v2/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Landroid/support/v2/app/FragmentManagerImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v2/app/FragmentManagerImpl$2;->this$0:Landroid/support/v2/app/FragmentManagerImpl;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl$2;->this$0:Landroid/support/v2/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl$2;->this$0:Landroid/support/v2/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v2/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v2/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 431
    return-void
.end method
