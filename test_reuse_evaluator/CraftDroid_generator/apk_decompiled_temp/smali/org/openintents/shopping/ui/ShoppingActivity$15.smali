.class Lorg/openintents/shopping/ui/ShoppingActivity$15;
.super Ljava/lang/Object;
.source "ShoppingActivity.java"

# interfaces
.implements Lorg/openintents/shopping/ui/widget/QuickSelectMenu$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/ShoppingActivity;->showListFilter(Landroid/view/View;)V
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

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$15;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x597c60b10b085d8aL

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity$15"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$15;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$15;->$jacocoInit()[Z

    move-result-object v0

    .line 1345
    iput-object p1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$15;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemSelected(Ljava/lang/CharSequence;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$15;->$jacocoInit()[Z

    move-result-object v0

    .line 1347
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$15;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v1, p2}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$1300(Lorg/openintents/shopping/ui/ShoppingActivity;I)V

    .line 1348
    aput-boolean v2, v0, v2

    return-void
.end method
