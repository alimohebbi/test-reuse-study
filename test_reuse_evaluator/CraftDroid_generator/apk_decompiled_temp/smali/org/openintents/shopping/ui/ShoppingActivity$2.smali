.class Lorg/openintents/shopping/ui/ShoppingActivity$2;
.super Ljava/lang/Object;
.source "ShoppingActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
.field private mLastKeyAction:I

.field final synthetic this$0:Lorg/openintents/shopping/ui/ShoppingActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3b9c352be9e314bfL    # 1.4933032739520855E-21

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity$2"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 1023
    iput-object p1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$2;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    iput v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity$2;->mLastKeyAction:I

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$2;->$jacocoInit()[Z

    move-result-object v2

    .line 1034
    const/16 v1, 0x42

    if-ne p2, v1, :cond_3

    aput-boolean v0, v2, v0

    .line 1036
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$2;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$100(Lorg/openintents/shopping/ui/ShoppingActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aput-boolean v0, v2, v1

    .line 1045
    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    aput-boolean v0, v2, v1

    .line 1050
    :goto_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    iput v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$2;->mLastKeyAction:I

    .line 1051
    const/16 v1, 0x9

    aput-boolean v0, v2, v1

    .line 1054
    :goto_2
    return v0

    .line 1036
    :cond_0
    const/4 v1, 0x3

    aput-boolean v0, v2, v1

    .line 1037
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$2;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$100(Lorg/openintents/shopping/ui/ShoppingActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->performCompletion()V

    const/4 v1, 0x4

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 1045
    :cond_1
    iget v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$2;->mLastKeyAction:I

    if-eq v1, v0, :cond_2

    const/4 v1, 0x6

    aput-boolean v0, v2, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x7

    aput-boolean v0, v2, v1

    .line 1047
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$2;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$200(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    const/16 v1, 0x8

    aput-boolean v0, v2, v1

    goto :goto_1

    .line 1054
    :cond_3
    const/4 v1, 0x0

    const/16 v3, 0xa

    aput-boolean v0, v2, v3

    move v0, v1

    goto :goto_2
.end method
