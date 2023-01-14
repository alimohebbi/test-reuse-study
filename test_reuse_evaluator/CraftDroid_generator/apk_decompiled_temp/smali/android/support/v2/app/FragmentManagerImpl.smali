.class final Landroid/support/v2/app/FragmentManagerImpl;
.super Landroid/support/v2/app/FragmentManager;
.source "FragmentManager.java"


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final ANIM_DUR:I = 0xdc

.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3

.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4

.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5

.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6

.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1

.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2

.field static DEBUG:Z = false

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final HONEYCOMB:Z

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v2/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mActivity:Landroid/support/v2/app/FragmentActivity;

.field mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v2/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAvailIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v2/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v2/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v2/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v2/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mNeedMenuInvalidate:Z

.field mNoTransactionsBecause:Ljava/lang/String;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpActions:[Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x40200000    # 2.5f

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 371
    sput-boolean v0, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    .line 375
    sget v1, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Landroid/support/v2/app/FragmentManagerImpl;->HONEYCOMB:Z

    .line 664
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v2/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 665
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v2/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .line 666
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v2/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 667
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v2/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .line 370
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    invoke-direct {p0}, Landroid/support/v2/app/FragmentManager;-><init>()V

    .line 397
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mCurState:I

    .line 406
    iput-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 407
    iput-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 409
    new-instance v0, Landroid/support/v2/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v2/app/FragmentManagerImpl$1;-><init>(Landroid/support/v2/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    .line 370
    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    .prologue
    .line 1242
    iget-boolean v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateSaved:Z

    if-eqz v0, :cond_0

    .line 1243
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1244
    const-string v1, "Can not perform this action after onSaveInstanceState"

    .line 1243
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1246
    :cond_0
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1247
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1248
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not perform this action inside of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1247
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1250
    :cond_1
    return-void
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 687
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 688
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Landroid/support/v2/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 689
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 690
    return-object v0
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startScale"    # F
    .param p2, "endScale"    # F
    .param p3, "startAlpha"    # F
    .param p4, "endAlpha"    # F

    .prologue
    .line 673
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 674
    .local v10, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 675
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    .line 674
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 676
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    sget-object v1, Landroid/support/v2/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 677
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 678
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 679
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 680
    .local v9, "alpha":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Landroid/support/v2/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 681
    const-wide/16 v2, 0xdc

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 682
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 683
    return-object v10
.end method

.method public static reverseTransit(I)I
    .locals 1
    .param p0, "transit"    # I

    .prologue
    .line 1885
    const/4 v0, 0x0

    .line 1886
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_0

    .line 1897
    :goto_0
    return v0

    .line 1888
    :sswitch_0
    const/16 v0, 0x2002

    .line 1889
    goto :goto_0

    .line 1891
    :sswitch_1
    const/16 v0, 0x1001

    .line 1892
    goto :goto_0

    .line 1894
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 1886
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 1
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    .prologue
    .line 1909
    const/4 v0, -0x1

    .line 1910
    .local v0, "animAttr":I
    sparse-switch p0, :sswitch_data_0

    .line 1921
    :goto_0
    return v0

    .line 1912
    :sswitch_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1913
    :goto_1
    goto :goto_0

    .line 1912
    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    .line 1915
    :sswitch_1
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    .line 1916
    :goto_2
    goto :goto_0

    .line 1915
    :cond_1
    const/4 v0, 0x4

    goto :goto_2

    .line 1918
    :sswitch_2
    if-eqz p1, :cond_2

    const/4 v0, 0x5

    :goto_3
    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_3

    .line 1910
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroid/support/v2/app/BackStackRecord;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v2/app/BackStackRecord;

    .prologue
    .line 1376
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1379
    :cond_0
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    invoke-virtual {p0}, Landroid/support/v2/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1381
    return-void
.end method

.method public addFragment(Landroid/support/v2/app/Fragment;Z)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v2/app/Fragment;
    .param p2, "moveToStateNow"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1087
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1088
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1090
    :cond_0
    sget-boolean v0, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v2/app/FragmentManagerImpl;->makeActive(Landroid/support/v2/app/Fragment;)V

    .line 1092
    iget-boolean v0, p1, Landroid/support/v2/app/Fragment;->mDetached:Z

    if-nez v0, :cond_3

    .line 1093
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    iput-boolean v3, p1, Landroid/support/v2/app/Fragment;->mAdded:Z

    .line 1095
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v2/app/Fragment;->mRemoving:Z

    .line 1096
    iget-boolean v0, p1, Landroid/support/v2/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_2

    .line 1097
    iput-boolean v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1099
    :cond_2
    if-eqz p2, :cond_3

    .line 1100
    invoke-virtual {p0, p1}, Landroid/support/v2/app/FragmentManagerImpl;->moveToState(Landroid/support/v2/app/Fragment;)V

    .line 1103
    :cond_3
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/support/v2/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v2/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 492
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 495
    :cond_0
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    return-void
.end method

.method public allocBackStackIndex(Landroid/support/v2/app/BackStackRecord;)I
    .locals 5
    .param p1, "bse"    # Landroid/support/v2/app/BackStackRecord;

    .prologue
    .line 1272
    monitor-enter p0

    .line 1273
    :try_start_0
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1274
    :cond_0
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1275
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1277
    :cond_1
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1278
    .local v0, "index":I
    sget-boolean v2, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting back stack index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_2
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    monitor-exit p0

    move v1, v0

    .line 1286
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    return v1

    .line 1283
    .end local v1    # "index":I
    :cond_3
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1284
    .restart local v0    # "index":I
    sget-boolean v2, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adding back stack index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_4
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1286
    monitor-exit p0

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 1272
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public attachActivity(Landroid/support/v2/app/FragmentActivity;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v2/app/FragmentActivity;

    .prologue
    .line 1720
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1721
    :cond_0
    iput-object p1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    .line 1722
    return-void
.end method

.method public attachFragment(Landroid/support/v2/app/Fragment;II)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v2/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v3, 0x1

    .line 1175
    sget-boolean v0, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_0
    iget-boolean v0, p1, Landroid/support/v2/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_2

    .line 1177
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v2/app/Fragment;->mDetached:Z

    .line 1178
    iget-boolean v0, p1, Landroid/support/v2/app/Fragment;->mAdded:Z

    if-nez v0, :cond_2

    .line 1179
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    iput-boolean v3, p1, Landroid/support/v2/app/Fragment;->mAdded:Z

    .line 1181
    iget-boolean v0, p1, Landroid/support/v2/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_1

    .line 1182
    iput-boolean v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1184
    :cond_1
    iget v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/support/v2/app/FragmentManagerImpl;->moveToState(Landroid/support/v2/app/Fragment;III)V

    .line 1187
    :cond_2
    return-void
.end method

.method public beginTransaction()Landroid/support/v2/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 418
    new-instance v0, Landroid/support/v2/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/support/v2/app/BackStackRecord;-><init>(Landroid/support/v2/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method public detachFragment(Landroid/support/v2/app/Fragment;II)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v2/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v3, 0x1

    .line 1159
    sget-boolean v0, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "detach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :cond_0
    iget-boolean v0, p1, Landroid/support/v2/app/Fragment;->mDetached:Z

    if-nez v0, :cond_2

    .line 1161
    iput-boolean v3, p1, Landroid/support/v2/app/Fragment;->mDetached:Z

    .line 1162
    iget-boolean v0, p1, Landroid/support/v2/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_2

    .line 1164
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1165
    iget-boolean v0, p1, Landroid/support/v2/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_1

    .line 1166
    iput-boolean v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1168
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v2/app/Fragment;->mAdded:Z

    .line 1169
    invoke-virtual {p0, p1, v3, p2, p3}, Landroid/support/v2/app/FragmentManagerImpl;->moveToState(Landroid/support/v2/app/Fragment;III)V

    .line 1172
    :cond_2
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1734
    iput-boolean v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1735
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v2/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1736
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1779
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1780
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1787
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1781
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/Fragment;

    .line 1782
    .local v0, "f":Landroid/support/v2/app/Fragment;
    if-eqz v0, :cond_2

    .line 1783
    invoke-virtual {v0, p1}, Landroid/support/v2/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1780
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1860
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1861
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1870
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 1862
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/Fragment;

    .line 1863
    .local v0, "f":Landroid/support/v2/app/Fragment;
    if-eqz v0, :cond_2

    iget-boolean v2, v0, Landroid/support/v2/app/Fragment;->mHidden:Z

    if-nez v2, :cond_2

    .line 1864
    invoke-virtual {v0, p1}, Landroid/support/v2/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1865
    const/4 v2, 0x1

    goto :goto_1

    .line 1861
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1729
    iput-boolean v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1730
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v2/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1731
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1801
    const/4 v3, 0x0

    .line 1802
    .local v3, "show":Z
    const/4 v2, 0x0

    .line 1803
    .local v2, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v2/app/Fragment;>;"
    iget-object v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1804
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 1817
    .end local v1    # "i":I
    :cond_0
    iget-object v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 1818
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_5

    .line 1826
    .end local v1    # "i":I
    :cond_1
    iput-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 1828
    return v3

    .line 1805
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/Fragment;

    .line 1806
    .local v0, "f":Landroid/support/v2/app/Fragment;
    if-eqz v0, :cond_4

    iget-boolean v4, v0, Landroid/support/v2/app/Fragment;->mHidden:Z

    if-nez v4, :cond_4

    iget-boolean v4, v0, Landroid/support/v2/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_4

    .line 1807
    const/4 v3, 0x1

    .line 1808
    invoke-virtual {v0, p1, p2}, Landroid/support/v2/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1809
    if-nez v2, :cond_3

    .line 1810
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v2/app/Fragment;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1812
    .restart local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v2/app/Fragment;>;"
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1804
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1819
    .end local v0    # "f":Landroid/support/v2/app/Fragment;
    :cond_5
    iget-object v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/Fragment;

    .line 1820
    .restart local v0    # "f":Landroid/support/v2/app/Fragment;
    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1821
    :cond_6
    invoke-virtual {v0}, Landroid/support/v2/app/Fragment;->onDestroyOptionsMenu()V

    .line 1818
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public dispatchDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1773
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mDestroyed:Z

    .line 1774
    invoke-virtual {p0, v1, v1}, Landroid/support/v2/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1775
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    .line 1776
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 3

    .prologue
    .line 1790
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1791
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1798
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1792
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/Fragment;

    .line 1793
    .local v0, "f":Landroid/support/v2/app/Fragment;
    if-eqz v0, :cond_2

    .line 1794
    invoke-virtual {v0}, Landroid/support/v2/app/Fragment;->onLowMemory()V

    .line 1791
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1846
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1847
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1856
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 1848
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/Fragment;

    .line 1849
    .local v0, "f":Landroid/support/v2/app/Fragment;
    if-eqz v0, :cond_2

    iget-boolean v2, v0, Landroid/support/v2/app/Fragment;->mHidden:Z

    if-nez v2, :cond_2

    iget-boolean v2, v0, Landroid/support/v2/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_2

    .line 1850
    invoke-virtual {v0, p1}, Landroid/support/v2/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1851
    const/4 v2, 0x1

    goto :goto_1

    .line 1847
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1874
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1875
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1882
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1876
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/Fragment;

    .line 1877
    .local v0, "f":Landroid/support/v2/app/Fragment;
    if-eqz v0, :cond_2

    iget-boolean v2, v0, Landroid/support/v2/app/Fragment;->mHidden:Z

    if-nez v2, :cond_2

    iget-boolean v2, v0, Landroid/support/v2/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_2

    .line 1878
    invoke-virtual {v0, p1}, Landroid/support/v2/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1875
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchPause()V
    .locals 2

    .prologue
    .line 1749
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v2/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1750
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1832
    const/4 v2, 0x0

    .line 1833
    .local v2, "show":Z
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1834
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 1842
    .end local v1    # "i":I
    :cond_0
    return v2

    .line 1835
    .restart local v1    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/Fragment;

    .line 1836
    .local v0, "f":Landroid/support/v2/app/Fragment;
    if-eqz v0, :cond_2

    iget-boolean v3, v0, Landroid/support/v2/app/Fragment;->mHidden:Z

    if-nez v3, :cond_2

    iget-boolean v3, v0, Landroid/support/v2/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_2

    .line 1837
    const/4 v2, 0x1

    .line 1838
    invoke-virtual {v0, p1}, Landroid/support/v2/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1834
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchReallyStop(Z)V
    .locals 3
    .param p1, "retaining"    # Z

    .prologue
    .line 1762
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1763
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1770
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1764
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/Fragment;

    .line 1765
    .local v0, "f":Landroid/support/v2/app/Fragment;
    if-eqz v0, :cond_2

    .line 1766
    invoke-virtual {v0, p1}, Landroid/support/v2/app/Fragment;->performReallyStop(Z)V

    .line 1763
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1744
    iput-boolean v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1745
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/support/v2/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1746
    return-void
.end method

.method public dispatchStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1739
    iput-boolean v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1740
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/support/v2/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1741
    return-void
.end method

.method public dispatchStop()V
    .locals 2

    .prologue
    .line 1756
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1758
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v2/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1759
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 558
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 561
    .local v4, "innerPrefix":Ljava/lang/String;
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 562
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 563
    .local v0, "N":I
    if-lez v0, :cond_0

    .line 564
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Active Fragments in "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 565
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 566
    const-string v6, ":"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_a

    .line 578
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_0
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 579
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 580
    .restart local v0    # "N":I
    if-lez v0, :cond_1

    .line 581
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Added Fragments:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-lt v3, v0, :cond_c

    .line 590
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_1
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 591
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 592
    .restart local v0    # "N":I
    if-lez v0, :cond_2

    .line 593
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Fragments Created Menus:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-lt v3, v0, :cond_d

    .line 602
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_2
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 603
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 604
    .restart local v0    # "N":I
    if-lez v0, :cond_3

    .line 605
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-lt v3, v0, :cond_e

    .line 615
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_3
    monitor-enter p0

    .line 616
    :try_start_0
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 617
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 618
    .restart local v0    # "N":I
    if-lez v0, :cond_4

    .line 619
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack Indices:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-lt v3, v0, :cond_f

    .line 628
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_4
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 629
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAvailBackStackIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 635
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 636
    .restart local v0    # "N":I
    if-lez v0, :cond_6

    .line 637
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Pending Actions:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-lt v3, v0, :cond_10

    .line 646
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "FragmentManager misc state:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mCurState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 648
    const-string v6, " mStateSaved="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 649
    const-string v6, " mDestroyed="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 650
    iget-boolean v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v6, :cond_7

    .line 651
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 652
    iget-boolean v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 654
    :cond_7
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 655
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNoTransactionsBecause="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    :cond_8
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 659
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mAvailIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    :cond_9
    return-void

    .line 568
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    :cond_a
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v2/app/Fragment;

    .line 569
    .local v2, "f":Landroid/support/v2/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 570
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 571
    if-eqz v2, :cond_b

    .line 572
    invoke-virtual {v2, v4, p2, p3, p4}, Landroid/support/v2/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 567
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 583
    .end local v2    # "f":Landroid/support/v2/app/Fragment;
    :cond_c
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v2/app/Fragment;

    .line 584
    .restart local v2    # "f":Landroid/support/v2/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 585
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v2/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 595
    .end local v2    # "f":Landroid/support/v2/app/Fragment;
    :cond_d
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v2/app/Fragment;

    .line 596
    .restart local v2    # "f":Landroid/support/v2/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 597
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v2/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 607
    .end local v2    # "f":Landroid/support/v2/app/Fragment;
    :cond_e
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v2/app/BackStackRecord;

    .line 608
    .local v1, "bs":Landroid/support/v2/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 609
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/support/v2/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 606
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 621
    .end local v1    # "bs":Landroid/support/v2/app/BackStackRecord;
    :cond_f
    :try_start_1
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v2/app/BackStackRecord;

    .line 622
    .restart local v1    # "bs":Landroid/support/v2/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 623
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 620
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 615
    .end local v0    # "N":I
    .end local v1    # "bs":Landroid/support/v2/app/BackStackRecord;
    .end local v3    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 639
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    :cond_10
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 640
    .local v5, "r":Ljava/lang/Runnable;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 641
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 638
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "allowStateLoss"    # Z

    .prologue
    .line 1253
    if-nez p2, :cond_0

    .line 1254
    invoke-direct {p0}, Landroid/support/v2/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1256
    :cond_0
    monitor-enter p0

    .line 1257
    :try_start_0
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    if-nez v0, :cond_1

    .line 1258
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1256
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1260
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 1263
    :cond_2
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1265
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v2/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1266
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v2/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1256
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1269
    return-void
.end method

.method public execPendingActions()Z
    .locals 5

    .prologue
    .line 1331
    iget-boolean v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v3, :cond_0

    .line 1332
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Recursive entry to executePendingTransactions"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1335
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    iget-object v4, v4, Landroid/support/v2/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 1336
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Must be called from main thread of process"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1339
    :cond_1
    const/4 v0, 0x0

    .line 1344
    .local v0, "didSomething":Z
    :goto_0
    monitor-enter p0

    .line 1345
    :try_start_0
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 1346
    :cond_2
    monitor-exit p0

    return v0

    .line 1349
    :cond_3
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1350
    .local v2, "numActions":I
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    array-length v3, v3

    if-ge v3, v2, :cond_5

    .line 1351
    :cond_4
    new-array v3, v2, [Ljava/lang/Runnable;

    iput-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    .line 1353
    :cond_5
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1354
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1355
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    iget-object v3, v3, Landroid/support/v2/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1344
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1359
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_6

    .line 1362
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1363
    const/4 v0, 0x1

    .line 1341
    goto :goto_0

    .line 1344
    .end local v1    # "i":I
    .end local v2    # "numActions":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1360
    .restart local v1    # "i":I
    .restart local v2    # "numActions":I
    :cond_6
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    aget-object v3, v3, v1

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1359
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public executePendingTransactions()Z
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Landroid/support/v2/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentById(I)Landroid/support/v2/app/Fragment;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1190
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1192
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_2

    .line 1199
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-gez v1, :cond_4

    .line 1206
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 1193
    .restart local v1    # "i":I
    :cond_2
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/Fragment;

    .line 1194
    .local v0, "f":Landroid/support/v2/app/Fragment;
    if-eqz v0, :cond_3

    iget v2, v0, Landroid/support/v2/app/Fragment;->mFragmentId:I

    if-eq v2, p1, :cond_1

    .line 1192
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1200
    .end local v0    # "f":Landroid/support/v2/app/Fragment;
    :cond_4
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/Fragment;

    .line 1201
    .restart local v0    # "f":Landroid/support/v2/app/Fragment;
    if-eqz v0, :cond_5

    iget v2, v0, Landroid/support/v2/app/Fragment;->mFragmentId:I

    if-eq v2, p1, :cond_1

    .line 1199
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/support/v2/app/Fragment;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1210
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1212
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_2

    .line 1219
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-gez v1, :cond_4

    .line 1226
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 1213
    .restart local v1    # "i":I
    :cond_2
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/Fragment;

    .line 1214
    .local v0, "f":Landroid/support/v2/app/Fragment;
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v2/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1212
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1220
    .end local v0    # "f":Landroid/support/v2/app/Fragment;
    :cond_4
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/Fragment;

    .line 1221
    .restart local v0    # "f":Landroid/support/v2/app/Fragment;
    if-eqz v0, :cond_5

    iget-object v2, v0, Landroid/support/v2/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1219
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/support/v2/app/Fragment;
    .locals 3
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 1230
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1231
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_2

    .line 1238
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 1232
    .restart local v1    # "i":I
    :cond_2
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/Fragment;

    .line 1233
    .local v0, "f":Landroid/support/v2/app/Fragment;
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v2/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1231
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public freeBackStackIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1317
    monitor-enter p0

    .line 1318
    :try_start_0
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1319
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1322
    :cond_0
    sget-boolean v0, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Freeing back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_1
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1317
    monitor-exit p0

    .line 1325
    return-void

    .line 1317
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBackStackEntryAt(I)Landroid/support/v2/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 487
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v2/app/Fragment;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 516
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 517
    .local v1, "index":I
    if-ne v1, v2, :cond_1

    .line 518
    const/4 v0, 0x0

    .line 529
    :cond_0
    return-object v0

    .line 520
    :cond_1
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 521
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fragement no longer exists for key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 521
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 524
    :cond_2
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/Fragment;

    .line 525
    .local v0, "f":Landroid/support/v2/app/Fragment;
    if-nez v0, :cond_0

    .line 526
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fragement no longer exists for key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 526
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hideFragment(Landroid/support/v2/app/Fragment;II)V
    .locals 5
    .param p1, "fragment"    # Landroid/support/v2/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v4, 0x1

    .line 1121
    sget-boolean v1, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hide: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_0
    iget-boolean v1, p1, Landroid/support/v2/app/Fragment;->mHidden:Z

    if-nez v1, :cond_4

    .line 1123
    iput-boolean v4, p1, Landroid/support/v2/app/Fragment;->mHidden:Z

    .line 1124
    iget-object v1, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1125
    invoke-virtual {p0, p1, p2, v4, p3}, Landroid/support/v2/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v2/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1127
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 1128
    iget-object v1, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1130
    :cond_1
    iget-object v1, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    iget-boolean v1, p1, Landroid/support/v2/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/support/v2/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_3

    .line 1133
    iput-boolean v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1135
    :cond_3
    invoke-virtual {p1, v4}, Landroid/support/v2/app/Fragment;->onHiddenChanged(Z)V

    .line 1137
    :cond_4
    return-void
.end method

.method loadAnimation(Landroid/support/v2/app/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "fragment"    # Landroid/support/v2/app/Fragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    .prologue
    const v8, 0x3f79999a    # 0.975f

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 695
    .line 696
    iget v4, p1, Landroid/support/v2/app/Fragment;->mNextAnim:I

    .line 695
    invoke-virtual {p1, p2, p3, v4}, Landroid/support/v2/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 697
    .local v1, "animObj":Landroid/view/animation/Animation;
    if-eqz v1, :cond_0

    .line 749
    .end local v1    # "animObj":Landroid/view/animation/Animation;
    :goto_0
    return-object v1

    .line 701
    .restart local v1    # "animObj":Landroid/view/animation/Animation;
    :cond_0
    iget v4, p1, Landroid/support/v2/app/Fragment;->mNextAnim:I

    if-eqz v4, :cond_1

    .line 702
    iget-object v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    iget v5, p1, Landroid/support/v2/app/Fragment;->mNextAnim:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 703
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 704
    goto :goto_0

    .line 708
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_1
    if-nez p2, :cond_2

    move-object v1, v3

    .line 709
    goto :goto_0

    .line 712
    :cond_2
    invoke-static {p2, p3}, Landroid/support/v2/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v2

    .line 713
    .local v2, "styleIndex":I
    if-gez v2, :cond_3

    move-object v1, v3

    .line 714
    goto :goto_0

    .line 717
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 732
    if-nez p4, :cond_4

    iget-object v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/support/v2/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 733
    iget-object v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/support/v2/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget p4, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 735
    :cond_4
    if-nez p4, :cond_5

    move-object v1, v3

    .line 736
    goto :goto_0

    .line 719
    :pswitch_0
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    const/high16 v4, 0x3f900000    # 1.125f

    invoke-static {v3, v4, v6, v7, v6}, Landroid/support/v2/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 721
    :pswitch_1
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    invoke-static {v3, v6, v8, v6, v7}, Landroid/support/v2/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 723
    :pswitch_2
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    invoke-static {v3, v8, v6, v7, v6}, Landroid/support/v2/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 725
    :pswitch_3
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    const v4, 0x3f89999a    # 1.075f

    invoke-static {v3, v6, v4, v6, v7}, Landroid/support/v2/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 727
    :pswitch_4
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    invoke-static {v3, v7, v6}, Landroid/support/v2/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 729
    :pswitch_5
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    invoke-static {v3, v6, v7}, Landroid/support/v2/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v3

    .line 749
    goto :goto_0

    .line 717
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method makeActive(Landroid/support/v2/app/Fragment;)V
    .locals 2
    .param p1, "f"    # Landroid/support/v2/app/Fragment;

    .prologue
    .line 1054
    iget v0, p1, Landroid/support/v2/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 1069
    :goto_0
    return-void

    .line 1058
    :cond_0
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1059
    :cond_1
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1060
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1062
    :cond_2
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v2/app/Fragment;->setIndex(I)V

    .line 1063
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1066
    :cond_3
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v2/app/Fragment;->setIndex(I)V

    .line 1067
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v2/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method makeInactive(Landroid/support/v2/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v2/app/Fragment;

    .prologue
    .line 1072
    iget v0, p1, Landroid/support/v2/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 1084
    :goto_0
    return-void

    .line 1076
    :cond_0
    sget-boolean v0, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Freeing fragment index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/support/v2/app/Fragment;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_1
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v2/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1078
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1079
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1081
    :cond_2
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v2/app/Fragment;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    iget v1, p1, Landroid/support/v2/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v2/app/FragmentActivity;->invalidateSupportFragmentIndex(I)V

    .line 1083
    invoke-virtual {p1}, Landroid/support/v2/app/Fragment;->initState()V

    goto :goto_0
.end method

.method moveToState(IIIZ)V
    .locals 4
    .param p1, "newState"    # I
    .param p2, "transit"    # I
    .param p3, "transitStyle"    # I
    .param p4, "always"    # Z

    .prologue
    .line 1029
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 1030
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No activity"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1033
    :cond_0
    if-nez p4, :cond_2

    iget v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mCurState:I

    if-ne v2, p1, :cond_2

    .line 1051
    :cond_1
    :goto_0
    return-void

    .line 1037
    :cond_2
    iput p1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mCurState:I

    .line 1038
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1039
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 1046
    iget-boolean v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    if-eqz v2, :cond_1

    .line 1047
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v2/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 1048
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_0

    .line 1040
    :cond_3
    iget-object v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/Fragment;

    .line 1041
    .local v0, "f":Landroid/support/v2/app/Fragment;
    if-eqz v0, :cond_4

    .line 1042
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v2/app/FragmentManagerImpl;->moveToState(Landroid/support/v2/app/Fragment;III)V

    .line 1039
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method moveToState(IZ)V
    .locals 1
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1025
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v2/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 1026
    return-void
.end method

.method moveToState(Landroid/support/v2/app/Fragment;)V
    .locals 2
    .param p1, "f"    # Landroid/support/v2/app/Fragment;

    .prologue
    const/4 v1, 0x0

    .line 1021
    iget v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/support/v2/app/FragmentManagerImpl;->moveToState(Landroid/support/v2/app/Fragment;III)V

    .line 1022
    return-void
.end method

.method moveToState(Landroid/support/v2/app/Fragment;III)V
    .locals 7
    .param p1, "f"    # Landroid/support/v2/app/Fragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I

    .prologue
    .line 754
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mAdded:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    if-le p2, v4, :cond_0

    .line 755
    const/4 p2, 0x1

    .line 757
    :cond_0
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mRemoving:Z

    if-eqz v4, :cond_1

    iget v4, p1, Landroid/support/v2/app/Fragment;->mState:I

    if-le p2, v4, :cond_1

    .line 759
    iget p2, p1, Landroid/support/v2/app/Fragment;->mState:I

    .line 762
    :cond_1
    iget v4, p1, Landroid/support/v2/app/Fragment;->mState:I

    if-ge v4, p2, :cond_19

    .line 766
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mFromLayout:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mInLayout:Z

    if-nez v4, :cond_2

    .line 1018
    :goto_0
    return-void

    .line 769
    :cond_2
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 774
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 775
    iget v4, p1, Landroid/support/v2/app/Fragment;->mStateAfterAnimating:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v4, v5, v6}, Landroid/support/v2/app/FragmentManagerImpl;->moveToState(Landroid/support/v2/app/Fragment;III)V

    .line 777
    :cond_3
    iget v4, p1, Landroid/support/v2/app/Fragment;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 1017
    :cond_4
    :goto_1
    iput p2, p1, Landroid/support/v2/app/Fragment;->mState:I

    goto :goto_0

    .line 779
    :pswitch_0
    sget-boolean v4, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "moveto CREATED: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_5
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v4, :cond_6

    .line 781
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 782
    const-string v5, "android:view_state"

    .line 781
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 783
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 784
    const-string v5, "android:target_state"

    .line 783
    invoke-virtual {p0, v4, v5}, Landroid/support/v2/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v2/app/Fragment;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mTarget:Landroid/support/v2/app/Fragment;

    .line 785
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mTarget:Landroid/support/v2/app/Fragment;

    if-eqz v4, :cond_6

    .line 786
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 787
    const-string v5, "android:target_req_state"

    const/4 v6, 0x0

    .line 786
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p1, Landroid/support/v2/app/Fragment;->mTargetRequestCode:I

    .line 790
    :cond_6
    iget-object v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mActivity:Landroid/support/v2/app/FragmentActivity;

    .line 791
    iget-object v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    iget-object v4, v4, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mFragmentManager:Landroid/support/v2/app/FragmentManager;

    .line 792
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    .line 793
    iget-object v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    invoke-virtual {p1, v4}, Landroid/support/v2/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 794
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    if-nez v4, :cond_7

    .line 795
    new-instance v4, Landroid/support/v2/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fragment "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 796
    const-string v6, " did not call through to super.onAttach()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 795
    invoke-direct {v4, v5}, Landroid/support/v2/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 798
    :cond_7
    iget-object v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    invoke-virtual {v4, p1}, Landroid/support/v2/app/FragmentActivity;->onAttachFragment(Landroid/support/v2/app/Fragment;)V

    .line 800
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mRetaining:Z

    if-nez v4, :cond_8

    .line 801
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    .line 802
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/support/v2/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 803
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    if-nez v4, :cond_8

    .line 804
    new-instance v4, Landroid/support/v2/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fragment "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 805
    const-string v6, " did not call through to super.onCreate()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 804
    invoke-direct {v4, v5}, Landroid/support/v2/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 808
    :cond_8
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v2/app/Fragment;->mRetaining:Z

    .line 809
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mFromLayout:Z

    if-eqz v4, :cond_a

    .line 813
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/support/v2/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 814
    const/4 v5, 0x0

    iget-object v6, p1, Landroid/support/v2/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 813
    invoke-virtual {p1, v4, v5, v6}, Landroid/support/v2/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    .line 815
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_c

    .line 816
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mInnerView:Landroid/view/View;

    .line 817
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v2/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    .line 818
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_9

    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 819
    :cond_9
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    iget-object v5, p1, Landroid/support/v2/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v5}, Landroid/support/v2/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 825
    :cond_a
    :goto_2
    :pswitch_1
    const/4 v4, 0x1

    if-le p2, v4, :cond_15

    .line 826
    sget-boolean v4, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "moveto ACTIVITY_CREATED: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_b
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mFromLayout:Z

    if-nez v4, :cond_11

    .line 828
    const/4 v1, 0x0

    .line 829
    .local v1, "container":Landroid/view/ViewGroup;
    iget v4, p1, Landroid/support/v2/app/Fragment;->mContainerId:I

    if-eqz v4, :cond_d

    .line 830
    iget-object v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    iget v5, p1, Landroid/support/v2/app/Fragment;->mContainerId:I

    invoke-virtual {v4, v5}, Landroid/support/v2/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "container":Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 831
    .restart local v1    # "container":Landroid/view/ViewGroup;
    if-nez v1, :cond_d

    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mRestored:Z

    if-nez v4, :cond_d

    .line 832
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No view found for id 0x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 833
    iget v6, p1, Landroid/support/v2/app/Fragment;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 834
    const-string v6, " for fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 832
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 821
    .end local v1    # "container":Landroid/view/ViewGroup;
    :cond_c
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mInnerView:Landroid/view/View;

    goto :goto_2

    .line 837
    .restart local v1    # "container":Landroid/view/ViewGroup;
    :cond_d
    iput-object v1, p1, Landroid/support/v2/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 838
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/support/v2/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 839
    iget-object v5, p1, Landroid/support/v2/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 838
    invoke-virtual {p1, v4, v1, v5}, Landroid/support/v2/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    .line 840
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_12

    .line 841
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mInnerView:Landroid/view/View;

    .line 842
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v2/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    .line 843
    if-eqz v1, :cond_f

    .line 844
    const/4 v4, 0x1

    invoke-virtual {p0, p1, p3, v4, p4}, Landroid/support/v2/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v2/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 846
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_e

    .line 847
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 849
    :cond_e
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 851
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_f
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_10

    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 852
    :cond_10
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    iget-object v5, p1, Landroid/support/v2/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v5}, Landroid/support/v2/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 858
    .end local v1    # "container":Landroid/view/ViewGroup;
    :cond_11
    :goto_3
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    .line 859
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/support/v2/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 860
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    if-nez v4, :cond_13

    .line 861
    new-instance v4, Landroid/support/v2/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fragment "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 862
    const-string v6, " did not call through to super.onActivityCreated()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 861
    invoke-direct {v4, v5}, Landroid/support/v2/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 854
    .restart local v1    # "container":Landroid/view/ViewGroup;
    :cond_12
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mInnerView:Landroid/view/View;

    goto :goto_3

    .line 864
    .end local v1    # "container":Landroid/view/ViewGroup;
    :cond_13
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_14

    .line 865
    invoke-virtual {p1}, Landroid/support/v2/app/Fragment;->restoreViewState()V

    .line 867
    :cond_14
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 871
    :cond_15
    :pswitch_2
    const/4 v4, 0x3

    if-le p2, v4, :cond_17

    .line 872
    sget-boolean v4, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_16

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "moveto STARTED: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_16
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    .line 874
    invoke-virtual {p1}, Landroid/support/v2/app/Fragment;->performStart()V

    .line 875
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    if-nez v4, :cond_17

    .line 876
    new-instance v4, Landroid/support/v2/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fragment "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 877
    const-string v6, " did not call through to super.onStart()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 876
    invoke-direct {v4, v5}, Landroid/support/v2/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 881
    :cond_17
    :pswitch_3
    const/4 v4, 0x4

    if-le p2, v4, :cond_4

    .line 882
    sget-boolean v4, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_18

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "moveto RESUMED: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_18
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    .line 884
    const/4 v4, 0x1

    iput-boolean v4, p1, Landroid/support/v2/app/Fragment;->mResumed:Z

    .line 885
    invoke-virtual {p1}, Landroid/support/v2/app/Fragment;->onResume()V

    .line 886
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    if-nez v4, :cond_4

    .line 887
    new-instance v4, Landroid/support/v2/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fragment "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 888
    const-string v6, " did not call through to super.onResume()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 887
    invoke-direct {v4, v5}, Landroid/support/v2/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 892
    :cond_19
    iget v4, p1, Landroid/support/v2/app/Fragment;->mState:I

    if-le v4, p2, :cond_4

    .line 893
    iget v4, p1, Landroid/support/v2/app/Fragment;->mState:I

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1

    .line 967
    :cond_1a
    :goto_4
    :pswitch_4
    const/4 v4, 0x1

    if-ge p2, v4, :cond_4

    .line 968
    iget-boolean v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v4, :cond_1b

    .line 969
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v4, :cond_1b

    .line 976
    iget-object v3, p1, Landroid/support/v2/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 977
    .local v3, "v":Landroid/view/View;
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 978
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 981
    .end local v3    # "v":Landroid/view/View;
    :cond_1b
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v4, :cond_27

    .line 986
    iput p2, p1, Landroid/support/v2/app/Fragment;->mStateAfterAnimating:I

    .line 987
    const/4 p2, 0x1

    goto/16 :goto_1

    .line 895
    :pswitch_5
    const/4 v4, 0x5

    if-ge p2, v4, :cond_1e

    .line 896
    sget-boolean v4, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1c

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "movefrom RESUMED: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_1c
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    .line 898
    invoke-virtual {p1}, Landroid/support/v2/app/Fragment;->onPause()V

    .line 899
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    if-nez v4, :cond_1d

    .line 900
    new-instance v4, Landroid/support/v2/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fragment "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 901
    const-string v6, " did not call through to super.onPause()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 900
    invoke-direct {v4, v5}, Landroid/support/v2/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 903
    :cond_1d
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v2/app/Fragment;->mResumed:Z

    .line 906
    :cond_1e
    :pswitch_6
    const/4 v4, 0x4

    if-ge p2, v4, :cond_20

    .line 907
    sget-boolean v4, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1f

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "movefrom STARTED: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_1f
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    .line 909
    invoke-virtual {p1}, Landroid/support/v2/app/Fragment;->performStop()V

    .line 910
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    if-nez v4, :cond_20

    .line 911
    new-instance v4, Landroid/support/v2/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fragment "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 912
    const-string v6, " did not call through to super.onStop()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 911
    invoke-direct {v4, v5}, Landroid/support/v2/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 917
    :cond_20
    :pswitch_7
    const/4 v4, 0x2

    if-ge p2, v4, :cond_1a

    .line 918
    sget-boolean v4, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_21

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "movefrom ACTIVITY_CREATED: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_21
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_22

    .line 922
    iget-object v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/support/v2/app/FragmentActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_22

    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v4, :cond_22

    .line 923
    invoke-virtual {p0, p1}, Landroid/support/v2/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v2/app/Fragment;)V

    .line 926
    :cond_22
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    .line 927
    invoke-virtual {p1}, Landroid/support/v2/app/Fragment;->performDestroyView()V

    .line 928
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    if-nez v4, :cond_23

    .line 929
    new-instance v4, Landroid/support/v2/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fragment "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 930
    const-string v6, " did not call through to super.onDestroyView()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 929
    invoke-direct {v4, v5}, Landroid/support/v2/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 932
    :cond_23
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_26

    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_26

    .line 933
    const/4 v0, 0x0

    .line 934
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mCurState:I

    if-lez v4, :cond_24

    iget-boolean v4, p0, Landroid/support/v2/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v4, :cond_24

    .line 935
    const/4 v4, 0x0

    invoke-virtual {p0, p1, p3, v4, p4}, Landroid/support/v2/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v2/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 938
    :cond_24
    if-eqz v0, :cond_25

    .line 939
    move-object v2, p1

    .line 940
    .local v2, "fragment":Landroid/support/v2/app/Fragment;
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 941
    iput p2, p1, Landroid/support/v2/app/Fragment;->mStateAfterAnimating:I

    .line 942
    new-instance v4, Landroid/support/v2/app/FragmentManagerImpl$5;

    invoke-direct {v4, p0, v2}, Landroid/support/v2/app/FragmentManagerImpl$5;-><init>(Landroid/support/v2/app/FragmentManagerImpl;Landroid/support/v2/app/Fragment;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 958
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 960
    .end local v2    # "fragment":Landroid/support/v2/app/Fragment;
    :cond_25
    iget-object v4, p1, Landroid/support/v2/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v5, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 962
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_26
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 963
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    .line 964
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_4

    .line 989
    :cond_27
    sget-boolean v4, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_28

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "movefrom CREATED: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_28
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mRetaining:Z

    if-nez v4, :cond_29

    .line 991
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    .line 992
    invoke-virtual {p1}, Landroid/support/v2/app/Fragment;->onDestroy()V

    .line 993
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    if-nez v4, :cond_29

    .line 994
    new-instance v4, Landroid/support/v2/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fragment "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 995
    const-string v6, " did not call through to super.onDestroy()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 994
    invoke-direct {v4, v5}, Landroid/support/v2/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 999
    :cond_29
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    .line 1000
    invoke-virtual {p1}, Landroid/support/v2/app/Fragment;->onDetach()V

    .line 1001
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mCalled:Z

    if-nez v4, :cond_2a

    .line 1002
    new-instance v4, Landroid/support/v2/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fragment "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1003
    const-string v6, " did not call through to super.onDetach()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1002
    invoke-direct {v4, v5}, Landroid/support/v2/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1005
    :cond_2a
    iget-boolean v4, p1, Landroid/support/v2/app/Fragment;->mRetaining:Z

    if-nez v4, :cond_2b

    .line 1006
    invoke-virtual {p0, p1}, Landroid/support/v2/app/FragmentManagerImpl;->makeInactive(Landroid/support/v2/app/Fragment;)V

    goto/16 :goto_1

    .line 1008
    :cond_2b
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mImmediateActivity:Landroid/support/v2/app/FragmentActivity;

    .line 1009
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mActivity:Landroid/support/v2/app/FragmentActivity;

    .line 1010
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v2/app/Fragment;->mFragmentManager:Landroid/support/v2/app/FragmentManager;

    goto/16 :goto_1

    .line 777
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 893
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 1

    .prologue
    .line 1725
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1726
    return-void
.end method

.method public popBackStack()V
    .locals 2

    .prologue
    .line 428
    new-instance v0, Landroid/support/v2/app/FragmentManagerImpl$2;

    invoke-direct {v0, p0}, Landroid/support/v2/app/FragmentManagerImpl$2;-><init>(Landroid/support/v2/app/FragmentManagerImpl;)V

    .line 432
    const/4 v1, 0x0

    .line 428
    invoke-virtual {p0, v0, v1}, Landroid/support/v2/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 433
    return-void
.end method

.method public popBackStack(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 460
    if-gez p1, :cond_0

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_0
    new-instance v0, Landroid/support/v2/app/FragmentManagerImpl$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v2/app/FragmentManagerImpl$4;-><init>(Landroid/support/v2/app/FragmentManagerImpl;II)V

    .line 467
    const/4 v1, 0x0

    .line 463
    invoke-virtual {p0, v0, v1}, Landroid/support/v2/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 468
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 444
    new-instance v0, Landroid/support/v2/app/FragmentManagerImpl$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v2/app/FragmentManagerImpl$3;-><init>(Landroid/support/v2/app/FragmentManagerImpl;Ljava/lang/String;I)V

    .line 448
    const/4 v1, 0x0

    .line 444
    invoke-virtual {p0, v0, v1}, Landroid/support/v2/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 449
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 4

    .prologue
    .line 437
    invoke-direct {p0}, Landroid/support/v2/app/FragmentManagerImpl;->checkStateLoss()V

    .line 438
    invoke-virtual {p0}, Landroid/support/v2/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 439
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v2/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v2/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 472
    invoke-direct {p0}, Landroid/support/v2/app/FragmentManagerImpl;->checkStateLoss()V

    .line 473
    invoke-virtual {p0}, Landroid/support/v2/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 474
    if-gez p1, :cond_0

    .line 475
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v2/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v2/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 453
    invoke-direct {p0}, Landroid/support/v2/app/FragmentManagerImpl;->checkStateLoss()V

    .line 454
    invoke-virtual {p0}, Landroid/support/v2/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 455
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v2/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v2/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
    .locals 11
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1384
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 1443
    :cond_0
    :goto_0
    return v9

    .line 1387
    :cond_1
    if-nez p2, :cond_2

    if-gez p3, :cond_2

    and-int/lit8 v6, p4, 0x1

    if-nez v6, :cond_2

    .line 1388
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 1389
    .local v4, "last":I
    if-ltz v4, :cond_0

    .line 1392
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v2/app/BackStackRecord;

    .line 1393
    .local v1, "bss":Landroid/support/v2/app/BackStackRecord;
    invoke-virtual {v1, v8}, Landroid/support/v2/app/BackStackRecord;->popFromBackStack(Z)V

    .line 1394
    invoke-virtual {p0}, Landroid/support/v2/app/FragmentManagerImpl;->reportBackStackChanged()V

    .end local v1    # "bss":Landroid/support/v2/app/BackStackRecord;
    .end local v4    # "last":I
    :goto_1
    move v9, v8

    .line 1443
    goto :goto_0

    .line 1396
    :cond_2
    const/4 v3, -0x1

    .line 1397
    .local v3, "index":I
    if-nez p2, :cond_3

    if-ltz p3, :cond_5

    .line 1400
    :cond_3
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 1401
    :goto_2
    if-gez v3, :cond_6

    .line 1411
    :cond_4
    if-ltz v3, :cond_0

    .line 1414
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_5

    .line 1415
    add-int/lit8 v3, v3, -0x1

    .line 1417
    :goto_3
    if-gez v3, :cond_9

    .line 1428
    :cond_5
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v3, v6, :cond_0

    .line 1432
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1433
    .local v5, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v2/app/BackStackRecord;>;"
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_4
    if-gt v2, v3, :cond_c

    .line 1436
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 1437
    .local v0, "LAST":I
    const/4 v2, 0x0

    :goto_5
    if-le v2, v0, :cond_d

    .line 1441
    invoke-virtual {p0}, Landroid/support/v2/app/FragmentManagerImpl;->reportBackStackChanged()V

    goto :goto_1

    .line 1402
    .end local v0    # "LAST":I
    .end local v2    # "i":I
    .end local v5    # "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v2/app/BackStackRecord;>;"
    :cond_6
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v2/app/BackStackRecord;

    .line 1403
    .restart local v1    # "bss":Landroid/support/v2/app/BackStackRecord;
    if-eqz p2, :cond_7

    invoke-virtual {v1}, Landroid/support/v2/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1406
    :cond_7
    if-ltz p3, :cond_8

    iget v6, v1, Landroid/support/v2/app/BackStackRecord;->mIndex:I

    if-eq p3, v6, :cond_4

    .line 1409
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1418
    .end local v1    # "bss":Landroid/support/v2/app/BackStackRecord;
    :cond_9
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v2/app/BackStackRecord;

    .line 1419
    .restart local v1    # "bss":Landroid/support/v2/app/BackStackRecord;
    if-eqz p2, :cond_a

    invoke-virtual {v1}, Landroid/support/v2/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1420
    :cond_a
    if-ltz p3, :cond_5

    iget v6, v1, Landroid/support/v2/app/BackStackRecord;->mIndex:I

    if-ne p3, v6, :cond_5

    .line 1421
    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1434
    .end local v1    # "bss":Landroid/support/v2/app/BackStackRecord;
    .restart local v2    # "i":I
    .restart local v5    # "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v2/app/BackStackRecord;>;"
    :cond_c
    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v2/app/BackStackRecord;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1438
    .restart local v0    # "LAST":I
    :cond_d
    sget-boolean v6, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_e

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Popping back stack state: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_e
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v2/app/BackStackRecord;

    if-ne v2, v0, :cond_f

    move v7, v8

    :goto_6
    invoke-virtual {v6, v7}, Landroid/support/v2/app/BackStackRecord;->popFromBackStack(Z)V

    .line 1437
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    move v7, v9

    .line 1439
    goto :goto_6
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v2/app/Fragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroid/support/v2/app/Fragment;

    .prologue
    .line 507
    iget v0, p3, Landroid/support/v2/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 508
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 509
    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_0
    iget v0, p3, Landroid/support/v2/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 512
    return-void
.end method

.method public removeFragment(Landroid/support/v2/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/support/v2/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1106
    sget-boolean v3, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "remove: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nesting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/support/v2/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_0
    invoke-virtual {p1}, Landroid/support/v2/app/Fragment;->isInBackStack()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 1108
    .local v0, "inactive":Z
    :goto_0
    iget-boolean v3, p1, Landroid/support/v2/app/Fragment;->mDetached:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_3

    .line 1109
    :cond_1
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1110
    iget-boolean v3, p1, Landroid/support/v2/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_2

    .line 1111
    iput-boolean v2, p0, Landroid/support/v2/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1113
    :cond_2
    iput-boolean v1, p1, Landroid/support/v2/app/Fragment;->mAdded:Z

    .line 1114
    iput-boolean v2, p1, Landroid/support/v2/app/Fragment;->mRemoving:Z

    .line 1115
    if-eqz v0, :cond_5

    :goto_1
    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/support/v2/app/FragmentManagerImpl;->moveToState(Landroid/support/v2/app/Fragment;III)V

    .line 1118
    :cond_3
    return-void

    .end local v0    # "inactive":Z
    :cond_4
    move v0, v2

    .line 1107
    goto :goto_0

    .restart local v0    # "inactive":Z
    :cond_5
    move v1, v2

    .line 1115
    goto :goto_1
.end method

.method public removeOnBackStackChangedListener(Landroid/support/v2/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v2/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 500
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 503
    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 2

    .prologue
    .line 1368
    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1369
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1373
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 1370
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v2/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/support/v2/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 1369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v2/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "nonConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v2/app/Fragment;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1616
    if-nez p1, :cond_1

    .line 1717
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p1

    .line 1617
    check-cast v2, Landroid/support/v2/app/FragmentManagerState;

    .line 1618
    .local v2, "fms":Landroid/support/v2/app/FragmentManagerState;
    iget-object v5, v2, Landroid/support/v2/app/FragmentManagerState;->mActive:[Landroid/support/v2/app/FragmentState;

    if-eqz v5, :cond_0

    .line 1622
    if-eqz p2, :cond_2

    .line 1623
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_7

    .line 1643
    .end local v4    # "i":I
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/support/v2/app/FragmentManagerState;->mActive:[Landroid/support/v2/app/FragmentState;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1644
    iget-object v5, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 1645
    iget-object v5, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1647
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v5, v2, Landroid/support/v2/app/FragmentManagerState;->mActive:[Landroid/support/v2/app/FragmentState;

    array-length v5, v5

    if-lt v4, v5, :cond_a

    .line 1669
    if-eqz p2, :cond_4

    .line 1670
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_10

    .line 1685
    :cond_4
    iget-object v5, v2, Landroid/support/v2/app/FragmentManagerState;->mAdded:[I

    if-eqz v5, :cond_16

    .line 1686
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/support/v2/app/FragmentManagerState;->mAdded:[I

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1687
    const/4 v4, 0x0

    :goto_4
    iget-object v5, v2, Landroid/support/v2/app/FragmentManagerState;->mAdded:[I

    array-length v5, v5

    if-lt v4, v5, :cond_13

    .line 1703
    :goto_5
    iget-object v5, v2, Landroid/support/v2/app/FragmentManagerState;->mBackStack:[Landroid/support/v2/app/BackStackState;

    if-eqz v5, :cond_17

    .line 1704
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/support/v2/app/FragmentManagerState;->mBackStack:[Landroid/support/v2/app/BackStackState;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1705
    const/4 v4, 0x0

    :goto_6
    iget-object v5, v2, Landroid/support/v2/app/FragmentManagerState;->mBackStack:[Landroid/support/v2/app/BackStackState;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 1706
    iget-object v5, v2, Landroid/support/v2/app/FragmentManagerState;->mBackStack:[Landroid/support/v2/app/BackStackState;

    aget-object v5, v5, v4

    invoke-virtual {v5, p0}, Landroid/support/v2/app/BackStackState;->instantiate(Landroid/support/v2/app/FragmentManagerImpl;)Landroid/support/v2/app/BackStackRecord;

    move-result-object v0

    .line 1707
    .local v0, "bse":Landroid/support/v2/app/BackStackRecord;
    sget-boolean v5, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "restoreAllState: adding bse #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1708
    const-string v7, " (index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/support/v2/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1707
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    :cond_5
    iget-object v5, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1710
    iget v5, v0, Landroid/support/v2/app/BackStackRecord;->mIndex:I

    if-ltz v5, :cond_6

    .line 1711
    iget v5, v0, Landroid/support/v2/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v5, v0}, Landroid/support/v2/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/support/v2/app/BackStackRecord;)V

    .line 1705
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1624
    .end local v0    # "bse":Landroid/support/v2/app/BackStackRecord;
    :cond_7
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v2/app/Fragment;

    .line 1625
    .local v1, "f":Landroid/support/v2/app/Fragment;
    sget-boolean v5, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "restoreAllState: re-attaching retained "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :cond_8
    iget-object v5, v2, Landroid/support/v2/app/FragmentManagerState;->mActive:[Landroid/support/v2/app/FragmentState;

    iget v6, v1, Landroid/support/v2/app/Fragment;->mIndex:I

    aget-object v3, v5, v6

    .line 1627
    .local v3, "fs":Landroid/support/v2/app/FragmentState;
    iput-object v1, v3, Landroid/support/v2/app/FragmentState;->mInstance:Landroid/support/v2/app/Fragment;

    .line 1628
    iput-object v8, v1, Landroid/support/v2/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1629
    iput v9, v1, Landroid/support/v2/app/Fragment;->mBackStackNesting:I

    .line 1630
    iput-boolean v9, v1, Landroid/support/v2/app/Fragment;->mInLayout:Z

    .line 1631
    iput-boolean v9, v1, Landroid/support/v2/app/Fragment;->mAdded:Z

    .line 1632
    iput-object v8, v1, Landroid/support/v2/app/Fragment;->mTarget:Landroid/support/v2/app/Fragment;

    .line 1633
    iget-object v5, v3, Landroid/support/v2/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v5, :cond_9

    .line 1634
    iget-object v5, v3, Landroid/support/v2/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    invoke-virtual {v6}, Landroid/support/v2/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1635
    iget-object v5, v3, Landroid/support/v2/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1636
    const-string v6, "android:view_state"

    .line 1635
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v5

    iput-object v5, v1, Landroid/support/v2/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1623
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1648
    .end local v1    # "f":Landroid/support/v2/app/Fragment;
    .end local v3    # "fs":Landroid/support/v2/app/FragmentState;
    :cond_a
    iget-object v5, v2, Landroid/support/v2/app/FragmentManagerState;->mActive:[Landroid/support/v2/app/FragmentState;

    aget-object v3, v5, v4

    .line 1649
    .restart local v3    # "fs":Landroid/support/v2/app/FragmentState;
    if-eqz v3, :cond_c

    .line 1650
    iget-object v5, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    invoke-virtual {v3, v5}, Landroid/support/v2/app/FragmentState;->instantiate(Landroid/support/v2/app/FragmentActivity;)Landroid/support/v2/app/Fragment;

    move-result-object v1

    .line 1651
    .restart local v1    # "f":Landroid/support/v2/app/Fragment;
    sget-boolean v5, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_b

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "restoreAllState: adding #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :cond_b
    iget-object v5, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1656
    iput-object v8, v3, Landroid/support/v2/app/FragmentState;->mInstance:Landroid/support/v2/app/Fragment;

    .line 1647
    .end local v1    # "f":Landroid/support/v2/app/Fragment;
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 1658
    :cond_c
    sget-boolean v5, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_d

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "restoreAllState: adding #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": (null)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    :cond_d
    iget-object v5, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1660
    iget-object v5, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v5, :cond_e

    .line 1661
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1663
    :cond_e
    sget-boolean v5, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_f

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "restoreAllState: adding avail #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_f
    iget-object v5, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1671
    .end local v3    # "fs":Landroid/support/v2/app/FragmentState;
    :cond_10
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v2/app/Fragment;

    .line 1672
    .restart local v1    # "f":Landroid/support/v2/app/Fragment;
    iget v5, v1, Landroid/support/v2/app/Fragment;->mTargetIndex:I

    if-ltz v5, :cond_11

    .line 1673
    iget v5, v1, Landroid/support/v2/app/Fragment;->mTargetIndex:I

    iget-object v6, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    .line 1674
    iget-object v5, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v6, v1, Landroid/support/v2/app/Fragment;->mTargetIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v2/app/Fragment;

    iput-object v5, v1, Landroid/support/v2/app/Fragment;->mTarget:Landroid/support/v2/app/Fragment;

    .line 1670
    :cond_11
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 1676
    :cond_12
    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Re-attaching retained fragment "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1677
    const-string v7, " target no longer exists: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/support/v2/app/Fragment;->mTargetIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1676
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    iput-object v8, v1, Landroid/support/v2/app/Fragment;->mTarget:Landroid/support/v2/app/Fragment;

    goto :goto_8

    .line 1688
    .end local v1    # "f":Landroid/support/v2/app/Fragment;
    :cond_13
    iget-object v5, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/support/v2/app/FragmentManagerState;->mAdded:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v2/app/Fragment;

    .line 1689
    .restart local v1    # "f":Landroid/support/v2/app/Fragment;
    if-nez v1, :cond_14

    .line 1690
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 1691
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "No instantiated fragment for index #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Landroid/support/v2/app/FragmentManagerState;->mAdded:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1690
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1693
    :cond_14
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/support/v2/app/Fragment;->mAdded:Z

    .line 1694
    iget-object v5, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    iput-object v5, v1, Landroid/support/v2/app/Fragment;->mImmediateActivity:Landroid/support/v2/app/FragmentActivity;

    .line 1695
    sget-boolean v5, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_15

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "restoreAllState: making added #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_15
    iget-object v5, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1687
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 1699
    .end local v1    # "f":Landroid/support/v2/app/Fragment;
    :cond_16
    iput-object v8, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    goto/16 :goto_5

    .line 1715
    :cond_17
    iput-object v8, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method retainNonConfig()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v2/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1447
    const/4 v1, 0x0

    .line 1448
    .local v1, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v2/app/Fragment;>;"
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1449
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 1461
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 1450
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/Fragment;

    .line 1451
    .local v0, "f":Landroid/support/v2/app/Fragment;
    if-eqz v0, :cond_3

    iget-boolean v3, v0, Landroid/support/v2/app/Fragment;->mRetainInstance:Z

    if-eqz v3, :cond_3

    .line 1452
    if-nez v1, :cond_2

    .line 1453
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v2/app/Fragment;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1455
    .restart local v1    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v2/app/Fragment;>;"
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v2/app/Fragment;->mRetaining:Z

    .line 1457
    iget-object v3, v0, Landroid/support/v2/app/Fragment;->mTarget:Landroid/support/v2/app/Fragment;

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroid/support/v2/app/Fragment;->mTarget:Landroid/support/v2/app/Fragment;

    iget v3, v3, Landroid/support/v2/app/Fragment;->mIndex:I

    :goto_1
    iput v3, v0, Landroid/support/v2/app/Fragment;->mTargetIndex:I

    .line 1449
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1457
    :cond_4
    const/4 v3, -0x1

    goto :goto_1
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    const/4 v10, 0x0

    .line 1509
    invoke-virtual {p0}, Landroid/support/v2/app/FragmentManagerImpl;->execPendingActions()Z

    .line 1511
    sget-boolean v11, Landroid/support/v2/app/FragmentManagerImpl;->HONEYCOMB:Z

    if-eqz v11, :cond_0

    .line 1521
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1524
    :cond_0
    iget-object v11, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    iget-object v11, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gtz v11, :cond_2

    .line 1610
    :cond_1
    :goto_0
    return-object v10

    .line 1529
    :cond_2
    iget-object v11, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1530
    .local v0, "N":I
    new-array v1, v0, [Landroid/support/v2/app/FragmentState;

    .line 1531
    .local v1, "active":[Landroid/support/v2/app/FragmentState;
    const/4 v7, 0x0

    .line 1532
    .local v7, "haveFragments":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v0, :cond_3

    .line 1572
    if-nez v7, :cond_9

    .line 1573
    sget-boolean v11, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_1

    const-string v11, "FragmentManager"

    const-string v12, "saveAllState: no fragments!"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1533
    :cond_3
    iget-object v11, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v2/app/Fragment;

    .line 1534
    .local v4, "f":Landroid/support/v2/app/Fragment;
    if-eqz v4, :cond_7

    .line 1535
    const/4 v7, 0x1

    .line 1537
    new-instance v6, Landroid/support/v2/app/FragmentState;

    invoke-direct {v6, v4}, Landroid/support/v2/app/FragmentState;-><init>(Landroid/support/v2/app/Fragment;)V

    .line 1538
    .local v6, "fs":Landroid/support/v2/app/FragmentState;
    aput-object v6, v1, v8

    .line 1540
    iget v11, v4, Landroid/support/v2/app/Fragment;->mState:I

    if-lez v11, :cond_8

    iget-object v11, v6, Landroid/support/v2/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v11, :cond_8

    .line 1541
    invoke-virtual {p0, v4}, Landroid/support/v2/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v2/app/Fragment;)Landroid/os/Bundle;

    move-result-object v11

    iput-object v11, v6, Landroid/support/v2/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1543
    iget-object v11, v4, Landroid/support/v2/app/Fragment;->mTarget:Landroid/support/v2/app/Fragment;

    if-eqz v11, :cond_6

    .line 1544
    iget-object v11, v4, Landroid/support/v2/app/Fragment;->mTarget:Landroid/support/v2/app/Fragment;

    iget v11, v11, Landroid/support/v2/app/Fragment;->mIndex:I

    if-gez v11, :cond_4

    .line 1545
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failure saving state: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1546
    const-string v12, " has target not in fragment manager: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Landroid/support/v2/app/Fragment;->mTarget:Landroid/support/v2/app/Fragment;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1545
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1547
    .local v9, "msg":Ljava/lang/String;
    const-string v11, "FragmentManager"

    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    const-string v11, "  "

    new-instance v12, Ljava/io/PrintWriter;

    new-instance v13, Landroid/support/v2/util/LogWriter;

    const-string v14, "FragmentManager"

    invoke-direct {v13, v14}, Landroid/support/v2/util/LogWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {p0, v11, v10, v12, v13}, Landroid/support/v2/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1549
    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1551
    .end local v9    # "msg":Ljava/lang/String;
    :cond_4
    iget-object v11, v6, Landroid/support/v2/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v11, :cond_5

    .line 1552
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v6, Landroid/support/v2/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1554
    :cond_5
    iget-object v11, v6, Landroid/support/v2/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1555
    const-string v12, "android:target_state"

    iget-object v13, v4, Landroid/support/v2/app/Fragment;->mTarget:Landroid/support/v2/app/Fragment;

    .line 1554
    invoke-virtual {p0, v11, v12, v13}, Landroid/support/v2/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v2/app/Fragment;)V

    .line 1556
    iget v11, v4, Landroid/support/v2/app/Fragment;->mTargetRequestCode:I

    if-eqz v11, :cond_6

    .line 1557
    iget-object v11, v6, Landroid/support/v2/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1558
    const-string v12, "android:target_req_state"

    .line 1559
    iget v13, v4, Landroid/support/v2/app/Fragment;->mTargetRequestCode:I

    .line 1557
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1567
    :cond_6
    :goto_2
    sget-boolean v11, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_7

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Saved state of "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1568
    iget-object v13, v6, Landroid/support/v2/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1567
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    .end local v6    # "fs":Landroid/support/v2/app/FragmentState;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1564
    .restart local v6    # "fs":Landroid/support/v2/app/FragmentState;
    :cond_8
    iget-object v11, v4, Landroid/support/v2/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v11, v6, Landroid/support/v2/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_2

    .end local v4    # "f":Landroid/support/v2/app/Fragment;
    .end local v6    # "fs":Landroid/support/v2/app/FragmentState;
    :cond_9
    move-object v2, v10

    .line 1577
    check-cast v2, [I

    .local v2, "added":[I
    move-object v3, v10

    .line 1578
    check-cast v3, [Landroid/support/v2/app/BackStackState;

    .line 1581
    .local v3, "backStack":[Landroid/support/v2/app/BackStackState;
    iget-object v10, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v10, :cond_a

    .line 1582
    iget-object v10, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1583
    if-lez v0, :cond_a

    .line 1584
    new-array v2, v0, [I

    .line 1585
    const/4 v8, 0x0

    :goto_3
    if-lt v8, v0, :cond_c

    .line 1594
    :cond_a
    iget-object v10, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v10, :cond_b

    .line 1595
    iget-object v10, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1596
    if-lez v0, :cond_b

    .line 1597
    new-array v3, v0, [Landroid/support/v2/app/BackStackState;

    .line 1598
    const/4 v8, 0x0

    :goto_4
    if-lt v8, v0, :cond_e

    .line 1606
    :cond_b
    new-instance v5, Landroid/support/v2/app/FragmentManagerState;

    invoke-direct {v5}, Landroid/support/v2/app/FragmentManagerState;-><init>()V

    .line 1607
    .local v5, "fms":Landroid/support/v2/app/FragmentManagerState;
    iput-object v1, v5, Landroid/support/v2/app/FragmentManagerState;->mActive:[Landroid/support/v2/app/FragmentState;

    .line 1608
    iput-object v2, v5, Landroid/support/v2/app/FragmentManagerState;->mAdded:[I

    .line 1609
    iput-object v3, v5, Landroid/support/v2/app/FragmentManagerState;->mBackStack:[Landroid/support/v2/app/BackStackState;

    move-object v10, v5

    .line 1610
    goto/16 :goto_0

    .line 1586
    .end local v5    # "fms":Landroid/support/v2/app/FragmentManagerState;
    :cond_c
    iget-object v10, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v2/app/Fragment;

    iget v10, v10, Landroid/support/v2/app/Fragment;->mIndex:I

    aput v10, v2, v8

    .line 1587
    sget-boolean v10, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v10, :cond_d

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "saveAllState: adding fragment #"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1588
    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1587
    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1599
    :cond_e
    new-instance v11, Landroid/support/v2/app/BackStackState;

    iget-object v10, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v2/app/BackStackRecord;

    invoke-direct {v11, p0, v10}, Landroid/support/v2/app/BackStackState;-><init>(Landroid/support/v2/app/FragmentManagerImpl;Landroid/support/v2/app/BackStackRecord;)V

    aput-object v11, v3, v8

    .line 1600
    sget-boolean v10, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v10, :cond_f

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "saveAllState: adding back stack #"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1601
    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1600
    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_4
.end method

.method saveFragmentBasicState(Landroid/support/v2/app/Fragment;)Landroid/os/Bundle;
    .locals 3
    .param p1, "f"    # Landroid/support/v2/app/Fragment;

    .prologue
    .line 1481
    const/4 v0, 0x0

    .line 1483
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 1484
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1486
    :cond_0
    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v2/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1487
    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1488
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1489
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1492
    :cond_1
    iget-object v1, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1493
    invoke-virtual {p0, p1}, Landroid/support/v2/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v2/app/Fragment;)V

    .line 1495
    :cond_2
    iget-object v1, p1, Landroid/support/v2/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    .line 1496
    if-nez v0, :cond_3

    .line 1497
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "result":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1500
    .restart local v0    # "result":Landroid/os/Bundle;
    :cond_3
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroid/support/v2/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1499
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1503
    :cond_4
    return-object v0
.end method

.method public saveFragmentInstanceState(Landroid/support/v2/app/Fragment;)Landroid/support/v2/app/Fragment$SavedState;
    .locals 4
    .param p1, "fragment"    # Landroid/support/v2/app/Fragment;

    .prologue
    const/4 v1, 0x0

    .line 534
    iget v2, p1, Landroid/support/v2/app/Fragment;->mIndex:I

    if-gez v2, :cond_0

    .line 535
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 536
    const-string v3, " is not currently in the FragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    :cond_0
    iget v2, p1, Landroid/support/v2/app/Fragment;->mState:I

    if-lez v2, :cond_1

    .line 539
    invoke-virtual {p0, p1}, Landroid/support/v2/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v2/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 540
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    new-instance v1, Landroid/support/v2/app/Fragment$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v2/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    .line 542
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_1
    return-object v1
.end method

.method saveFragmentViewState(Landroid/support/v2/app/Fragment;)V
    .locals 2
    .param p1, "f"    # Landroid/support/v2/app/Fragment;

    .prologue
    .line 1465
    iget-object v0, p1, Landroid/support/v2/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1478
    :cond_0
    :goto_0
    return-void

    .line 1468
    :cond_1
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 1469
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 1473
    :goto_1
    iget-object v0, p1, Landroid/support/v2/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1474
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1475
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v2/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1476
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_0

    .line 1471
    :cond_2
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method public setBackStackIndex(ILandroid/support/v2/app/BackStackRecord;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "bse"    # Landroid/support/v2/app/BackStackRecord;

    .prologue
    .line 1292
    monitor-enter p0

    .line 1293
    :try_start_0
    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1296
    :cond_0
    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1297
    .local v0, "N":I
    if-ge p1, v0, :cond_5

    .line 1298
    sget-boolean v1, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_1
    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1292
    :goto_0
    monitor-exit p0

    .line 1314
    return-void

    .line 1302
    :cond_2
    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1304
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1306
    :cond_3
    sget-boolean v1, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding available back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_4
    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    add-int/lit8 v0, v0, 0x1

    .line 1301
    :cond_5
    if-lt v0, p1, :cond_2

    .line 1310
    sget-boolean v1, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :cond_6
    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1292
    .end local v0    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showFragment(Landroid/support/v2/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/support/v2/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1140
    sget-boolean v1, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "show: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_0
    iget-boolean v1, p1, Landroid/support/v2/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_4

    .line 1142
    iput-boolean v4, p1, Landroid/support/v2/app/Fragment;->mHidden:Z

    .line 1143
    iget-object v1, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1144
    invoke-virtual {p0, p1, p2, v5, p3}, Landroid/support/v2/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v2/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1146
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 1147
    iget-object v1, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1149
    :cond_1
    iget-object v1, p1, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1151
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    iget-boolean v1, p1, Landroid/support/v2/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/support/v2/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_3

    .line 1152
    iput-boolean v5, p0, Landroid/support/v2/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1154
    :cond_3
    invoke-virtual {p1, v4}, Landroid/support/v2/app/Fragment;->onHiddenChanged(Z)V

    .line 1156
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 548
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget-object v1, p0, Landroid/support/v2/app/FragmentManagerImpl;->mActivity:Landroid/support/v2/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v2/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 552
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
