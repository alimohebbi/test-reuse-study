.class Lorg/openintents/shopping/ui/PickItemsActivity$1;
.super Ljava/lang/Object;
.source "PickItemsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/PickItemsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/openintents/shopping/ui/PickItemsActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/PickItemsActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x73f0e26f3a956ceL    # -4.58332258631801E273

    const-string v2, "org/openintents/shopping/ui/PickItemsActivity$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/PickItemsActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/PickItemsActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/PickItemsActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    iput-object p1, p0, Lorg/openintents/shopping/ui/PickItemsActivity$1;->this$0:Lorg/openintents/shopping/ui/PickItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PickItemsActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    iget-object v1, p0, Lorg/openintents/shopping/ui/PickItemsActivity$1;->this$0:Lorg/openintents/shopping/ui/PickItemsActivity;

    invoke-virtual {v1, p1}, Lorg/openintents/shopping/ui/PickItemsActivity;->onButton1Click(Landroid/view/View;)V

    .line 54
    aput-boolean v2, v0, v2

    return-void
.end method
