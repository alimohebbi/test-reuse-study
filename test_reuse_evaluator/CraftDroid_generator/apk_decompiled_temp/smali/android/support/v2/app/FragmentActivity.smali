.class public Landroid/support/v2/app/FragmentActivity;
.super Landroid/app/Activity;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v2/app/FragmentActivity$FragmentTag;,
        Landroid/support/v2/app/FragmentActivity$NonConfigurationInstances;
    }
.end annotation


# static fields
.field private static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field private static final HONEYCOMB:I = 0xb

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mAllLoaderManagers:Landroid/support/v2/app/HCSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v2/app/HCSparseArray",
            "<",
            "Landroid/support/v2/app/LoaderManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedForLoaderManager:Z

.field mCreated:Z

.field final mFragments:Landroid/support/v2/app/FragmentManagerImpl;

.field final mHandler:Landroid/os/Handler;

.field mLoaderManager:Landroid/support/v2/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mOptionsMenuInvalidated:Z

.field mReallyStopped:Z

.field mResumed:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    new-instance v0, Landroid/support/v2/app/FragmentActivity$1;

    invoke-direct {v0, p0}, Landroid/support/v2/app/FragmentActivity$1;-><init>(Landroid/support/v2/app/FragmentActivity;)V

    iput-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Landroid/support/v2/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/support/v2/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    .line 62
    return-void
.end method


# virtual methods
.method doReallyStop(Z)V
    .locals 2
    .param p1, "retaining"    # Z

    .prologue
    const/4 v1, 0x1

    .line 587
    iget-boolean v0, p0, Landroid/support/v2/app/FragmentActivity;->mReallyStopped:Z

    if-nez v0, :cond_0

    .line 588
    iput-boolean v1, p0, Landroid/support/v2/app/FragmentActivity;->mReallyStopped:Z

    .line 589
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 590
    invoke-virtual {p0, p1}, Landroid/support/v2/app/FragmentActivity;->onReallyStop(Z)V

    .line 592
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 562
    sget v1, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    .line 566
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Local FragmentActivity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 567
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 568
    const-string v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    iget-boolean v1, p0, Landroid/support/v2/app/FragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 572
    iget-boolean v1, p0, Landroid/support/v2/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 573
    iget-boolean v1, p0, Landroid/support/v2/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 574
    iget-boolean v1, p0, Landroid/support/v2/app/FragmentActivity;->mReallyStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 575
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLoadersStarted="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    iget-boolean v1, p0, Landroid/support/v2/app/FragmentActivity;->mLoadersStarted:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 577
    iget-object v1, p0, Landroid/support/v2/app/FragmentActivity;->mLoaderManager:Landroid/support/v2/app/LoaderManagerImpl;

    if-eqz v1, :cond_0

    .line 578
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Loader Manager "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 579
    iget-object v1, p0, Landroid/support/v2/app/FragmentActivity;->mLoaderManager:Landroid/support/v2/app/LoaderManagerImpl;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 580
    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Landroid/support/v2/app/FragmentActivity;->mLoaderManager:Landroid/support/v2/app/LoaderManagerImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/support/v2/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 583
    :cond_0
    iget-object v1, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v2/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method getLoaderManager(IZZ)Landroid/support/v2/app/LoaderManagerImpl;
    .locals 2
    .param p1, "index"    # I
    .param p2, "started"    # Z
    .param p3, "create"    # Z

    .prologue
    .line 689
    iget-object v1, p0, Landroid/support/v2/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v2/app/HCSparseArray;

    if-nez v1, :cond_0

    .line 690
    new-instance v1, Landroid/support/v2/app/HCSparseArray;

    invoke-direct {v1}, Landroid/support/v2/app/HCSparseArray;-><init>()V

    iput-object v1, p0, Landroid/support/v2/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v2/app/HCSparseArray;

    .line 692
    :cond_0
    iget-object v1, p0, Landroid/support/v2/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v2/app/HCSparseArray;

    invoke-virtual {v1, p1}, Landroid/support/v2/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/LoaderManagerImpl;

    .line 693
    .local v0, "lm":Landroid/support/v2/app/LoaderManagerImpl;
    if-nez v0, :cond_2

    .line 694
    if-eqz p3, :cond_1

    .line 695
    new-instance v0, Landroid/support/v2/app/LoaderManagerImpl;

    .end local v0    # "lm":Landroid/support/v2/app/LoaderManagerImpl;
    invoke-direct {v0, p0, p2}, Landroid/support/v2/app/LoaderManagerImpl;-><init>(Landroid/support/v2/app/FragmentActivity;Z)V

    .line 696
    .restart local v0    # "lm":Landroid/support/v2/app/LoaderManagerImpl;
    iget-object v1, p0, Landroid/support/v2/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v2/app/HCSparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/support/v2/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 701
    :cond_1
    :goto_0
    return-object v0

    .line 699
    :cond_2
    invoke-virtual {v0, p0}, Landroid/support/v2/app/LoaderManagerImpl;->updateActivity(Landroid/support/v2/app/FragmentActivity;)V

    goto :goto_0
.end method

.method public getSupportFragmentManager()Landroid/support/v2/app/FragmentManager;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    return-object v0
.end method

.method public getSupportLoaderManager()Landroid/support/v2/app/LoaderManager;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 680
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mLoaderManager:Landroid/support/v2/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mLoaderManager:Landroid/support/v2/app/LoaderManagerImpl;

    .line 685
    :goto_0
    return-object v0

    .line 683
    :cond_0
    iput-boolean v2, p0, Landroid/support/v2/app/FragmentActivity;->mCheckedForLoaderManager:Z

    .line 684
    const/4 v0, -0x1

    iget-boolean v1, p0, Landroid/support/v2/app/FragmentActivity;->mLoadersStarted:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v2/app/FragmentActivity;->getLoaderManager(IZZ)Landroid/support/v2/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mLoaderManager:Landroid/support/v2/app/LoaderManagerImpl;

    .line 685
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mLoaderManager:Landroid/support/v2/app/LoaderManagerImpl;

    goto :goto_0
.end method

.method invalidateSupportFragmentIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 663
    iget-object v1, p0, Landroid/support/v2/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v2/app/HCSparseArray;

    if-eqz v1, :cond_1

    .line 664
    iget-object v1, p0, Landroid/support/v2/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v2/app/HCSparseArray;

    invoke-virtual {v1, p1}, Landroid/support/v2/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/LoaderManagerImpl;

    .line 665
    .local v0, "lm":Landroid/support/v2/app/LoaderManagerImpl;
    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {v0}, Landroid/support/v2/app/LoaderManagerImpl;->doDestroy()V

    .line 668
    :cond_0
    iget-object v1, p0, Landroid/support/v2/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v2/app/HCSparseArray;

    invoke-virtual {v1, p1}, Landroid/support/v2/app/HCSparseArray;->remove(I)V

    .line 670
    .end local v0    # "lm":Landroid/support/v2/app/LoaderManagerImpl;
    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 131
    shr-int/lit8 v1, p1, 0x10

    .line 132
    .local v1, "index":I
    if-eqz v1, :cond_3

    .line 133
    add-int/lit8 v1, v1, -0x1

    .line 134
    iget-object v2, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 135
    :cond_0
    const-string v2, "FragmentActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Activity result fragment index out of range: 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v2, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/support/v2/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v2/app/Fragment;

    .line 140
    .local v0, "frag":Landroid/support/v2/app/Fragment;
    if-nez v0, :cond_2

    .line 141
    const-string v2, "FragmentActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Activity result no fragment exists for index: 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_2
    const v2, 0xffff

    and-int/2addr v2, p1

    invoke-virtual {v0, v2, p2, p3}, Landroid/support/v2/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 148
    .end local v0    # "frag":Landroid/support/v2/app/Fragment;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/support/v2/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v2/app/Fragment;

    .prologue
    .line 624
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v2/app/FragmentManagerImpl;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Landroid/support/v2/app/FragmentActivity;->finish()V

    .line 159
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 167
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v2/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 168
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    iget-object v2, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v2, p0}, Landroid/support/v2/app/FragmentManagerImpl;->attachActivity(Landroid/support/v2/app/FragmentActivity;)V

    .line 177
    invoke-virtual {p0}, Landroid/support/v2/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v2

    if-nez v2, :cond_0

    .line 178
    invoke-virtual {p0}, Landroid/support/v2/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 181
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 184
    invoke-virtual {p0}, Landroid/support/v2/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 183
    check-cast v0, Landroid/support/v2/app/FragmentActivity$NonConfigurationInstances;

    .line 185
    .local v0, "nc":Landroid/support/v2/app/FragmentActivity$NonConfigurationInstances;
    if-eqz v0, :cond_1

    .line 186
    iget-object v2, v0, Landroid/support/v2/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v2/app/HCSparseArray;

    iput-object v2, p0, Landroid/support/v2/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v2/app/HCSparseArray;

    .line 188
    :cond_1
    if-eqz p1, :cond_2

    .line 189
    const-string v2, "android:support:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 190
    .local v1, "p":Landroid/os/Parcelable;
    iget-object v3, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v2/app/FragmentActivity$NonConfigurationInstances;->fragments:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v3, v1, v2}, Landroid/support/v2/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 192
    .end local v1    # "p":Landroid/os/Parcelable;
    :cond_2
    iget-object v2, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/support/v2/app/FragmentManagerImpl;->dispatchCreate()V

    .line 193
    return-void

    .line 190
    .restart local v1    # "p":Landroid/os/Parcelable;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 200
    if-nez p1, :cond_1

    .line 201
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 202
    .local v0, "show":Z
    iget-object v1, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v2/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v2/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 204
    sget v1, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 212
    .end local v0    # "show":Z
    :goto_0
    return v0

    .line 210
    .restart local v0    # "show":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "show":Z
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v8, -0x1

    .line 220
    const-string v7, "fragment"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 221
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v7

    .line 297
    :goto_0
    return-object v7

    .line 224
    :cond_0
    const-string v7, "class"

    invoke-interface {p3, v3, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "fname":Ljava/lang/String;
    sget-object v7, Landroid/support/v2/app/FragmentActivity$FragmentTag;->Fragment:[I

    invoke-virtual {p2, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 226
    .local v0, "a":Landroid/content/res/TypedArray;
    if-nez v2, :cond_1

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    :cond_1
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 230
    .local v4, "id":I
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    const/4 v5, 0x0

    .line 234
    .local v5, "parent":Landroid/view/View;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v1

    .line 235
    .local v1, "containerId":I
    :cond_2
    if-ne v1, v8, :cond_3

    if-ne v4, v8, :cond_3

    if-nez v6, :cond_3

    .line 236
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    const-string v9, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 236
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 243
    :cond_3
    if-eq v4, v8, :cond_4

    iget-object v7, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v7, v4}, Landroid/support/v2/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v2/app/Fragment;

    move-result-object v3

    .line 244
    .local v3, "fragment":Landroid/support/v2/app/Fragment;
    :cond_4
    if-nez v3, :cond_5

    if-eqz v6, :cond_5

    .line 245
    iget-object v7, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v7, v6}, Landroid/support/v2/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v2/app/Fragment;

    move-result-object v3

    .line 247
    :cond_5
    if-nez v3, :cond_6

    if-eq v1, v8, :cond_6

    .line 248
    iget-object v7, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v7, v1}, Landroid/support/v2/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v2/app/Fragment;

    move-result-object v3

    .line 251
    :cond_6
    sget-boolean v7, Landroid/support/v2/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "FragmentActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onCreateView: id=0x"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " fname="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 253
    const-string v9, " existing="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 251
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_7
    if-nez v3, :cond_9

    .line 255
    invoke-static {p0, v2}, Landroid/support/v2/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v2/app/Fragment;

    move-result-object v3

    .line 256
    iput-boolean v10, v3, Landroid/support/v2/app/Fragment;->mFromLayout:Z

    .line 257
    if-eqz v4, :cond_8

    move v7, v4

    :goto_1
    iput v7, v3, Landroid/support/v2/app/Fragment;->mFragmentId:I

    .line 258
    iput v1, v3, Landroid/support/v2/app/Fragment;->mContainerId:I

    .line 259
    iput-object v6, v3, Landroid/support/v2/app/Fragment;->mTag:Ljava/lang/String;

    .line 260
    iput-boolean v10, v3, Landroid/support/v2/app/Fragment;->mInLayout:Z

    .line 261
    iput-object p0, v3, Landroid/support/v2/app/Fragment;->mImmediateActivity:Landroid/support/v2/app/FragmentActivity;

    .line 262
    iget-object v7, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    iput-object v7, v3, Landroid/support/v2/app/Fragment;->mFragmentManager:Landroid/support/v2/app/FragmentManager;

    .line 263
    iget-object v7, v3, Landroid/support/v2/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, p0, p3, v7}, Landroid/support/v2/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 264
    iget-object v7, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v7, v3, v10}, Landroid/support/v2/app/FragmentManagerImpl;->addFragment(Landroid/support/v2/app/Fragment;Z)V

    .line 287
    :goto_2
    iget-object v7, v3, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    if-nez v7, :cond_c

    .line 288
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Fragment "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 289
    const-string v9, " did not create a view."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 288
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    move v7, v1

    .line 257
    goto :goto_1

    .line 266
    :cond_9
    iget-boolean v7, v3, Landroid/support/v2/app/Fragment;->mInLayout:Z

    if-eqz v7, :cond_a

    .line 269
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    const-string v9, ": Duplicate id 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 271
    const-string v9, ", tag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", or parent id 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 272
    const-string v9, " with another fragment for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 269
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 276
    :cond_a
    iput-boolean v10, v3, Landroid/support/v2/app/Fragment;->mInLayout:Z

    .line 277
    iput-object p0, v3, Landroid/support/v2/app/Fragment;->mImmediateActivity:Landroid/support/v2/app/FragmentActivity;

    .line 281
    iget-boolean v7, v3, Landroid/support/v2/app/Fragment;->mRetaining:Z

    if-nez v7, :cond_b

    .line 282
    iget-object v7, v3, Landroid/support/v2/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, p0, p3, v7}, Landroid/support/v2/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 284
    :cond_b
    iget-object v7, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v7, v3}, Landroid/support/v2/app/FragmentManagerImpl;->moveToState(Landroid/support/v2/app/Fragment;)V

    goto :goto_2

    .line 291
    :cond_c
    if-eqz v4, :cond_d

    .line 292
    iget-object v7, v3, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setId(I)V

    .line 294
    :cond_d
    iget-object v7, v3, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_e

    .line 295
    iget-object v7, v3, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 297
    :cond_e
    iget-object v7, v3, Landroid/support/v2/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v2/app/FragmentActivity;->doReallyStop(Z)V

    .line 309
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v2/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 310
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mLoaderManager:Landroid/support/v2/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mLoaderManager:Landroid/support/v2/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v2/app/LoaderManagerImpl;->doDestroy()V

    .line 313
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 321
    sget v0, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 322
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 323
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 326
    invoke-virtual {p0}, Landroid/support/v2/app/FragmentActivity;->onBackPressed()V

    .line 327
    const/4 v0, 0x1

    .line 330
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 338
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 339
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v2/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 340
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 347
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x1

    .line 359
    :goto_0
    return v0

    .line 351
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 359
    const/4 v0, 0x0

    goto :goto_0

    .line 353
    :sswitch_0
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v0, p2}, Landroid/support/v2/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 356
    :sswitch_1
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v0, p2}, Landroid/support/v2/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 351
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 368
    packed-switch p1, :pswitch_data_0

    .line 373
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 374
    return-void

    .line 370
    :pswitch_0
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v0, p2}, Landroid/support/v2/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 381
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v2/app/FragmentActivity;->mResumed:Z

    .line 383
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v2/app/FragmentManagerImpl;->dispatchResume()V

    .line 387
    :cond_0
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v2/app/FragmentManagerImpl;->dispatchPause()V

    .line 388
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 406
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 407
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 408
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v2/app/FragmentManagerImpl;->dispatchResume()V

    .line 409
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v2/app/FragmentManagerImpl;->execPendingActions()Z

    .line 410
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 417
    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    .line 418
    iget-boolean v2, p0, Landroid/support/v2/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    if-eqz v2, :cond_0

    .line 419
    iput-boolean v1, p0, Landroid/support/v2/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    .line 420
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    .line 421
    invoke-virtual {p0, p1, p3}, Landroid/support/v2/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 423
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 424
    .local v0, "goforit":Z
    iget-object v2, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v2, p3}, Landroid/support/v2/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 425
    if-eqz v0, :cond_1

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 427
    .end local v0    # "goforit":Z
    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method onReallyStop(Z)V
    .locals 1
    .param p1, "retaining"    # Z

    .prologue
    .line 602
    iget-boolean v0, p0, Landroid/support/v2/app/FragmentActivity;->mLoadersStarted:Z

    if-eqz v0, :cond_0

    .line 603
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v2/app/FragmentActivity;->mLoadersStarted:Z

    .line 604
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mLoaderManager:Landroid/support/v2/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 605
    if-nez p1, :cond_1

    .line 606
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mLoaderManager:Landroid/support/v2/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v2/app/LoaderManagerImpl;->doStop()V

    .line 613
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v2/app/FragmentManagerImpl;->dispatchReallyStop(Z)V

    .line 614
    return-void

    .line 608
    :cond_1
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mLoaderManager:Landroid/support/v2/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v2/app/LoaderManagerImpl;->doRetain()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 395
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 396
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v2/app/FragmentActivity;->mResumed:Z

    .line 398
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v2/app/FragmentManagerImpl;->execPendingActions()Z

    .line 399
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 436
    iget-boolean v6, p0, Landroid/support/v2/app/FragmentActivity;->mStopped:Z

    if-eqz v6, :cond_0

    .line 437
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/support/v2/app/FragmentActivity;->doReallyStop(Z)V

    .line 440
    :cond_0
    iget-object v6, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v6}, Landroid/support/v2/app/FragmentManagerImpl;->retainNonConfig()Ljava/util/ArrayList;

    move-result-object v0

    .line 441
    .local v0, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v2/app/Fragment;>;"
    const/4 v4, 0x0

    .line 442
    .local v4, "retainLoaders":Z
    iget-object v6, p0, Landroid/support/v2/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v2/app/HCSparseArray;

    if-eqz v6, :cond_1

    .line 445
    iget-object v6, p0, Landroid/support/v2/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v2/app/HCSparseArray;

    invoke-virtual {v6}, Landroid/support/v2/app/HCSparseArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_2

    .line 455
    .end local v1    # "i":I
    :cond_1
    if-nez v0, :cond_4

    if-nez v4, :cond_4

    move-object v3, v5

    .line 464
    :goto_1
    return-object v3

    .line 446
    .restart local v1    # "i":I
    :cond_2
    iget-object v6, p0, Landroid/support/v2/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v2/app/HCSparseArray;

    invoke-virtual {v6, v1}, Landroid/support/v2/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v2/app/LoaderManagerImpl;

    .line 447
    .local v2, "lm":Landroid/support/v2/app/LoaderManagerImpl;
    iget-boolean v6, v2, Landroid/support/v2/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v6, :cond_3

    .line 448
    const/4 v4, 0x1

    .line 445
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 450
    :cond_3
    invoke-virtual {v2}, Landroid/support/v2/app/LoaderManagerImpl;->doDestroy()V

    .line 451
    iget-object v6, p0, Landroid/support/v2/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v2/app/HCSparseArray;

    invoke-virtual {v6, v1}, Landroid/support/v2/app/HCSparseArray;->removeAt(I)V

    goto :goto_2

    .line 459
    .end local v1    # "i":I
    .end local v2    # "lm":Landroid/support/v2/app/LoaderManagerImpl;
    :cond_4
    new-instance v3, Landroid/support/v2/app/FragmentActivity$NonConfigurationInstances;

    invoke-direct {v3}, Landroid/support/v2/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    .line 460
    .local v3, "nci":Landroid/support/v2/app/FragmentActivity$NonConfigurationInstances;
    iput-object v5, v3, Landroid/support/v2/app/FragmentActivity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 461
    iput-object v5, v3, Landroid/support/v2/app/FragmentActivity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    .line 462
    iput-object v0, v3, Landroid/support/v2/app/FragmentActivity$NonConfigurationInstances;->fragments:Ljava/util/ArrayList;

    .line 463
    iget-object v5, p0, Landroid/support/v2/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v2/app/HCSparseArray;

    iput-object v5, v3, Landroid/support/v2/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v2/app/HCSparseArray;

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 472
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 473
    iget-object v1, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v2/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 474
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 475
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 477
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 485
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 487
    iput-boolean v5, p0, Landroid/support/v2/app/FragmentActivity;->mStopped:Z

    .line 488
    iget-object v2, p0, Landroid/support/v2/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 490
    iget-boolean v2, p0, Landroid/support/v2/app/FragmentActivity;->mCreated:Z

    if-nez v2, :cond_0

    .line 491
    iput-boolean v4, p0, Landroid/support/v2/app/FragmentActivity;->mCreated:Z

    .line 492
    iget-object v2, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/support/v2/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 495
    :cond_0
    iget-object v2, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/support/v2/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 496
    iget-object v2, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/support/v2/app/FragmentManagerImpl;->execPendingActions()Z

    .line 498
    iget-boolean v2, p0, Landroid/support/v2/app/FragmentActivity;->mLoadersStarted:Z

    if-nez v2, :cond_2

    .line 499
    iput-boolean v4, p0, Landroid/support/v2/app/FragmentActivity;->mLoadersStarted:Z

    .line 500
    iget-object v2, p0, Landroid/support/v2/app/FragmentActivity;->mLoaderManager:Landroid/support/v2/app/LoaderManagerImpl;

    if-eqz v2, :cond_4

    .line 501
    iget-object v2, p0, Landroid/support/v2/app/FragmentActivity;->mLoaderManager:Landroid/support/v2/app/LoaderManagerImpl;

    invoke-virtual {v2}, Landroid/support/v2/app/LoaderManagerImpl;->doStart()V

    .line 505
    :cond_1
    :goto_0
    iput-boolean v4, p0, Landroid/support/v2/app/FragmentActivity;->mCheckedForLoaderManager:Z

    .line 509
    :cond_2
    iget-object v2, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/support/v2/app/FragmentManagerImpl;->dispatchStart()V

    .line 510
    iget-object v2, p0, Landroid/support/v2/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v2/app/HCSparseArray;

    if-eqz v2, :cond_3

    .line 511
    iget-object v2, p0, Landroid/support/v2/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v2/app/HCSparseArray;

    invoke-virtual {v2}, Landroid/support/v2/app/HCSparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-gez v0, :cond_5

    .line 517
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 502
    :cond_4
    iget-boolean v2, p0, Landroid/support/v2/app/FragmentActivity;->mCheckedForLoaderManager:Z

    if-nez v2, :cond_1

    .line 503
    const/4 v2, -0x1

    iget-boolean v3, p0, Landroid/support/v2/app/FragmentActivity;->mLoadersStarted:Z

    invoke-virtual {p0, v2, v3, v5}, Landroid/support/v2/app/FragmentActivity;->getLoaderManager(IZZ)Landroid/support/v2/app/LoaderManagerImpl;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v2/app/FragmentActivity;->mLoaderManager:Landroid/support/v2/app/LoaderManagerImpl;

    goto :goto_0

    .line 512
    .restart local v0    # "i":I
    :cond_5
    iget-object v2, p0, Landroid/support/v2/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v2/app/HCSparseArray;

    invoke-virtual {v2, v0}, Landroid/support/v2/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v2/app/LoaderManagerImpl;

    .line 513
    .local v1, "lm":Landroid/support/v2/app/LoaderManagerImpl;
    invoke-virtual {v1}, Landroid/support/v2/app/LoaderManagerImpl;->finishRetain()V

    .line 514
    invoke-virtual {v1}, Landroid/support/v2/app/LoaderManagerImpl;->doReportStart()V

    .line 511
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 524
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 526
    iput-boolean v1, p0, Landroid/support/v2/app/FragmentActivity;->mStopped:Z

    .line 527
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 529
    iget-object v0, p0, Landroid/support/v2/app/FragmentActivity;->mFragments:Landroid/support/v2/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v2/app/FragmentManagerImpl;->dispatchStop()V

    .line 530
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 640
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x10000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 641
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 644
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v2/app/Fragment;Landroid/content/Intent;I)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v2/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v0, -0x1

    .line 651
    if-ne p3, v0, :cond_0

    .line 652
    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 659
    :goto_0
    return-void

    .line 655
    :cond_0
    const/high16 v0, -0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    .line 656
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_1
    iget v0, p1, Landroid/support/v2/app/Fragment;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method supportInvalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 538
    sget v0, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 541
    invoke-static {p0}, Landroid/support/v2/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 548
    :goto_0
    return-void

    .line 547
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v2/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    goto :goto_0
.end method
