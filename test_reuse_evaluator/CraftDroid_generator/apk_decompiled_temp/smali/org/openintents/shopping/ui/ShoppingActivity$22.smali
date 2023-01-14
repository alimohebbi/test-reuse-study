.class Lorg/openintents/shopping/ui/ShoppingActivity$22;
.super Ljava/lang/Object;
.source "ShoppingActivity.java"

# interfaces
.implements Lorg/openintents/shopping/ui/dialog/DialogActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/ShoppingActivity;->onCreateDialog(I)Landroid/app/Dialog;
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

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$22;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1b5882891d0233a3L    # -7.436562822858597E176

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity$22"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$22;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$22;->$jacocoInit()[Z

    move-result-object v0

    .line 2529
    iput-object p1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$22;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onAction(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$22;->$jacocoInit()[Z

    move-result-object v0

    .line 2532
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$22;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v1, p1}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$1600(Lorg/openintents/shopping/ui/ShoppingActivity;Ljava/lang/String;)Z

    .line 2533
    aput-boolean v2, v0, v2

    return-void
.end method
