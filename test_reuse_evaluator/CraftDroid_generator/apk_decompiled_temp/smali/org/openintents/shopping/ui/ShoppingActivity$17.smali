.class Lorg/openintents/shopping/ui/ShoppingActivity$17;
.super Ljava/lang/Object;
.source "ShoppingActivity.java"

# interfaces
.implements Lorg/openintents/shopping/ui/widget/QuickSelectMenu$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/ShoppingActivity;->showTagsFilter(Landroid/view/View;)V
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

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$17;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x545bac1d7ee52386L    # 2.364309103997252E98

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity$17"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$17;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/ShoppingActivity;Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$17;->$jacocoInit()[Z

    move-result-object v0

    .line 1430
    iput-object p1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$17;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    iput-object p2, p0, Lorg/openintents/shopping/ui/ShoppingActivity$17;->val$v:Landroid/view/View;

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

    const/4 v6, -0x1

    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$17;->$jacocoInit()[Z

    move-result-object v1

    .line 1433
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-boolean v5, v1, v5

    .line 1434
    const-string v3, "tags_filter"

    if-ne p2, v6, :cond_0

    const-string v0, ""

    const/4 v4, 0x2

    aput-boolean v5, v1, v4

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    aput-boolean v5, v1, v0

    .line 1435
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity$17;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-virtual {v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity$17;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v3}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$500(Lorg/openintents/shopping/ui/ShoppingActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1436
    if-ne p2, v6, :cond_1

    const/4 v0, 0x5

    aput-boolean v5, v1, v0

    .line 1437
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity$17;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0800ca

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x6

    aput-boolean v5, v1, v0

    .line 1440
    :goto_1
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity$17;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$800(Lorg/openintents/shopping/ui/ShoppingActivity;Z)V

    .line 1441
    const/16 v0, 0x8

    aput-boolean v5, v1, v0

    return-void

    :cond_0
    move-object v0, p1

    .line 1434
    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x3

    aput-boolean v5, v1, v4

    goto :goto_0

    .line 1439
    :cond_1
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity$17;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x7

    aput-boolean v5, v1, v0

    goto :goto_1
.end method
