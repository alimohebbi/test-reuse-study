.class Landroid/support/v2/app/FragmentManagerImpl$5;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v2/app/FragmentManagerImpl;->moveToState(Landroid/support/v2/app/Fragment;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v2/app/FragmentManagerImpl;

.field private final synthetic val$fragment:Landroid/support/v2/app/Fragment;


# direct methods
.method constructor <init>(Landroid/support/v2/app/FragmentManagerImpl;Landroid/support/v2/app/Fragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v2/app/FragmentManagerImpl$5;->this$0:Landroid/support/v2/app/FragmentManagerImpl;

    iput-object p2, p0, Landroid/support/v2/app/FragmentManagerImpl$5;->val$fragment:Landroid/support/v2/app/Fragment;

    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 945
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl$5;->val$fragment:Landroid/support/v2/app/Fragment;

    iget-object v0, v0, Landroid/support/v2/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl$5;->val$fragment:Landroid/support/v2/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v2/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 947
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl$5;->this$0:Landroid/support/v2/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl$5;->val$fragment:Landroid/support/v2/app/Fragment;

    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl$5;->val$fragment:Landroid/support/v2/app/Fragment;

    iget v2, v2, Landroid/support/v2/app/Fragment;->mStateAfterAnimating:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/support/v2/app/FragmentManagerImpl;->moveToState(Landroid/support/v2/app/Fragment;III)V

    .line 950
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 953
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 956
    return-void
.end method
