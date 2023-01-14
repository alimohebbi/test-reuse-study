.class Lorg/openintents/shopping/ui/ShoppingActivity$1;
.super Lorg/openintents/util/ShakeSensorListener;
.source "ShoppingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/ui/ShoppingActivity;
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

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x730b6994515449b2L

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity$1"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 469
    iput-object p1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$1;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-direct {p0}, Lorg/openintents/util/ShakeSensorListener;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 474
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$1;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    const v2, 0x7f040001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    aput-boolean v4, v0, v4

    .line 476
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity$1;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    const/high16 v3, 0x7f0c0000

    invoke-virtual {v2, v3}, Lorg/openintents/shopping/ui/ShoppingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 478
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$1;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$000(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    .line 479
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-void
.end method
