.class Lorg/openintents/shopping/ui/ShoppingActivity$10;
.super Ljava/lang/Object;
.source "ShoppingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/ShoppingActivity;->createList()V
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

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$10;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2e7a114c2db7536bL    # -5.3259315160486025E84

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity$10"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$10;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$10;->$jacocoInit()[Z

    move-result-object v0

    .line 1226
    iput-object p1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$10;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$10;->$jacocoInit()[Z

    move-result-object v2

    .line 1233
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity$10;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$600(Lorg/openintents/shopping/ui/ShoppingActivity;)J

    aput-boolean v1, v2, v1

    .line 1236
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity$10;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity$10;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-virtual {v3}, Lorg/openintents/shopping/ui/ShoppingActivity;->loadListTheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$700(Lorg/openintents/shopping/ui/ShoppingActivity;Ljava/lang/String;)V

    const/4 v0, 0x2

    aput-boolean v1, v2, v0

    .line 1240
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity$10;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity$10;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$300(Lorg/openintents/shopping/ui/ShoppingActivity;)Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getListId()J

    move-result-wide v4

    cmp-long v0, p4, v4

    if-nez v0, :cond_0

    const/4 v0, 0x3

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$800(Lorg/openintents/shopping/ui/ShoppingActivity;Z)V

    const/4 v0, 0x5

    aput-boolean v1, v2, v0

    .line 1243
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity$10;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$900(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    const/4 v0, 0x6

    aput-boolean v1, v2, v0

    .line 1245
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity$10;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$1000(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    const/4 v0, 0x7

    aput-boolean v1, v2, v0

    .line 1247
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity$10;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$1100(Lorg/openintents/shopping/ui/ShoppingActivity;)Landroid/widget/AdapterView;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1249
    const/16 v0, 0x8

    aput-boolean v1, v2, v0

    return-void

    .line 1240
    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x4

    aput-boolean v1, v2, v4

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$10;->$jacocoInit()[Z

    move-result-object v0

    .line 1255
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$10;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$1200(Lorg/openintents/shopping/ui/ShoppingActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 1258
    :goto_0
    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    return-void

    .line 1255
    :cond_0
    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    .line 1256
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$10;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$800(Lorg/openintents/shopping/ui/ShoppingActivity;Z)V

    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
