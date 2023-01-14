.class public Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;
.super Landroid/support/v2/app/ListFragment;
.source "ShoppingListFilterFragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x72e0e0b6456e2b0bL    # 2.3048455964639643E245

    const-string v2, "org/openintents/shopping/ui/tablet/ShoppingListFilterFragment"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    invoke-direct {p0}, Landroid/support/v2/app/ListFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private updateAdapter(Landroid/widget/ListAdapter;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 86
    iget-object v0, p0, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    .line 92
    :goto_0
    const/16 v0, 0xf

    aput-boolean v4, v1, v0

    return-void

    .line 86
    :cond_0
    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    .line 87
    iget-object v0, p0, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    .line 88
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->getActivity()Landroid/support/v2/app/FragmentActivity;

    move-result-object v0

    const v2, 0x102000a

    const/16 v3, 0xc

    aput-boolean v4, v1, v3

    .line 89
    invoke-virtual {v0, v2}, Landroid/support/v2/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->mListView:Landroid/widget/ListView;

    const/16 v0, 0xd

    aput-boolean v4, v1, v0

    .line 90
    iget-object v0, p0, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0xe

    aput-boolean v4, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    invoke-super {p0, p1}, Landroid/support/v2/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 50
    iget-object v1, p0, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-direct {p0, v1}, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->updateAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    aput-boolean v3, v0, v3

    return-object v1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->$jacocoInit()[Z

    move-result-object v6

    .line 58
    iget-object v0, p0, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->mListView:Landroid/widget/ListView;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    aput-boolean v7, v6, v0

    .line 59
    iget-object v0, p0, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    const/4 v1, 0x5

    aput-boolean v7, v6, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 60
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 62
    const/4 v0, 0x6

    aput-boolean v7, v6, v0

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    iput-object p1, p0, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->mListAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    .line 75
    invoke-direct {p0, p1}, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->updateAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    return-void
.end method
