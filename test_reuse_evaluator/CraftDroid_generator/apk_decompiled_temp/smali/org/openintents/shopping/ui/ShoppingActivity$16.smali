.class Lorg/openintents/shopping/ui/ShoppingActivity$16;
.super Ljava/lang/Object;
.source "ShoppingActivity.java"

# interfaces
.implements Lorg/openintents/shopping/ui/widget/QuickSelectMenu$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/ShoppingActivity;->showStoresFilter(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$16;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xd5f1771d07ea518L

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity$16"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$16;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/ShoppingActivity;Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$16;->$jacocoInit()[Z

    move-result-object v0

    .line 1389
    iput-object p1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$16;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    iput-object p2, p0, Lorg/openintents/shopping/ui/ShoppingActivity$16;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemSelected(Ljava/lang/CharSequence;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$16;->$jacocoInit()[Z

    move-result-object v1

    .line 1393
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    aput-boolean v6, v1, v6

    .line 1394
    const-string v2, "store_filter"

    int-to-long v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x2

    aput-boolean v6, v1, v2

    .line 1395
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity$16;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-virtual {v2}, Lorg/openintents/shopping/ui/ShoppingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity$16;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v3}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$500(Lorg/openintents/shopping/ui/ShoppingActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1396
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x3

    aput-boolean v6, v1, v0

    .line 1397
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity$16;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0800c8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x4

    aput-boolean v6, v1, v0

    .line 1400
    :goto_0
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity$16;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$800(Lorg/openintents/shopping/ui/ShoppingActivity;Z)V

    .line 1401
    const/4 v0, 0x6

    aput-boolean v6, v1, v0

    return-void

    .line 1399
    :cond_0
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity$16;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x5

    aput-boolean v6, v1, v0

    goto :goto_0
.end method
