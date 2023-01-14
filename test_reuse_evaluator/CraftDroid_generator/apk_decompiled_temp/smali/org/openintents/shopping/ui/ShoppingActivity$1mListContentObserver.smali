.class Lorg/openintents/shopping/ui/ShoppingActivity$1mListContentObserver;
.super Landroid/database/ContentObserver;
.source "ShoppingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/ShoppingActivity;->fillListFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "mListContentObserver"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/openintents/shopping/ui/ShoppingActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$1mListContentObserver;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x307621e3697846cbL    # 3.0582229134839894E-75

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity$1mListContentObserver"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$1mListContentObserver;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lorg/openintents/shopping/ui/ShoppingActivity;Landroid/os/Handler;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$1mListContentObserver;->$jacocoInit()[Z

    move-result-object v0

    .line 2734
    iput-object p1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$1mListContentObserver;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 2735
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2738
    aput-boolean v2, v0, v2

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$1mListContentObserver;->$jacocoInit()[Z

    move-result-object v0

    .line 2750
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public onChange(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$1mListContentObserver;->$jacocoInit()[Z

    move-result-object v0

    .line 2764
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$1mListContentObserver;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$1700(Lorg/openintents/shopping/ui/ShoppingActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 2766
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2767
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method
