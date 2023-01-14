.class Lorg/openintents/shopping/ui/ShoppingActivity$3;
.super Ljava/lang/Object;
.source "ShoppingActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/ShoppingActivity;->createView()V
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

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6c8162931a9e2847L    # -8.880891372001154E-215

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity$3"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 1057
    iput-object p1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$3;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 1061
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$3;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$300(Lorg/openintents/shopping/ui/ShoppingActivity;)Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-result-object v1

    iget v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    if-eq v1, v3, :cond_0

    aput-boolean v2, v0, v2

    .line 1067
    :goto_0
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void

    .line 1061
    :cond_0
    aput-boolean v2, v0, v3

    .line 1065
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$3;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$400(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 1072
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 1077
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
