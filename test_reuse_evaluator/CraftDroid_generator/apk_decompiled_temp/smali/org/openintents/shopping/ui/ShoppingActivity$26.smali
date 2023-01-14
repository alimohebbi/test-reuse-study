.class Lorg/openintents/shopping/ui/ShoppingActivity$26;
.super Landroid/os/Handler;
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

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$26;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3ef78d7b6b47655dL    # -200272.57261772928

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity$26"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$26;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$26;->$jacocoInit()[Z

    move-result-object v0

    .line 3056
    iput-object p1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$26;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$26;->$jacocoInit()[Z

    move-result-object v0

    .line 3059
    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v5, :cond_0

    aput-boolean v5, v0, v5

    .line 3068
    :goto_0
    const/16 v1, 0x9

    aput-boolean v5, v0, v1

    return-void

    .line 3059
    :cond_0
    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    .line 3060
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$26;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$1700(Lorg/openintents/shopping/ui/ShoppingActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    const/4 v1, 0x3

    aput-boolean v5, v0, v1

    .line 3062
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$26;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$1900(Lorg/openintents/shopping/ui/ShoppingActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    aput-boolean v5, v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    aput-boolean v5, v0, v1

    .line 3063
    invoke-virtual {p0, v5}, Lorg/openintents/shopping/ui/ShoppingActivity$26;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity$26;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    const/4 v3, 0x6

    aput-boolean v5, v0, v3

    .line 3064
    invoke-static {v2}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$2000(Lorg/openintents/shopping/ui/ShoppingActivity;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x7

    aput-boolean v5, v0, v4

    .line 3063
    invoke-virtual {p0, v1, v2, v3}, Lorg/openintents/shopping/ui/ShoppingActivity$26;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/16 v1, 0x8

    aput-boolean v5, v0, v1

    goto :goto_0
.end method
