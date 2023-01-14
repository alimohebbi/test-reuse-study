.class Lorg/openintents/shopping/ui/ShoppingActivity$5;
.super Ljava/lang/Object;
.source "ShoppingActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$5;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x13a830465beee6b1L    # -8.016085689641326E213

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity$5"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$5;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$5;->$jacocoInit()[Z

    move-result-object v0

    .line 1087
    iput-object p1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$5;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$5;->$jacocoInit()[Z

    move-result-object v2

    .line 1091
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity$5;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    aput-boolean v1, v2, v1

    .line 1092
    invoke-virtual {v3}, Lorg/openintents/shopping/ui/ShoppingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->getAddForBarcode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1096
    const/4 v3, 0x2

    aput-boolean v1, v2, v3

    .line 1137
    :goto_0
    return v0

    .line 1099
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x3

    aput-boolean v1, v2, v4

    .line 1100
    iget-object v4, p0, Lorg/openintents/shopping/ui/ShoppingActivity$5;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v4}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$500(Lorg/openintents/shopping/ui/ShoppingActivity;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v4, 0x4

    aput-boolean v1, v2, v4

    .line 1101
    const-string v4, "org.openintents.barcodescanner"

    const-string v5, "org.openintents.barcodescanner.BarcodeScanner"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x5

    aput-boolean v1, v2, v4

    .line 1103
    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x6

    aput-boolean v1, v2, v4

    .line 1104
    const-string v4, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x7

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v2, v4

    .line 1106
    iget-object v4, p0, Lorg/openintents/shopping/ui/ShoppingActivity$5;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lorg/openintents/shopping/ui/ShoppingActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    const/16 v0, 0xa

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 1108
    :catch_0
    move-exception v3

    const/16 v3, 0x8

    aput-boolean v1, v2, v3

    .line 1111
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity$5;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-virtual {v3, v6}, Lorg/openintents/shopping/ui/ShoppingActivity;->showDialog(I)V

    .line 1112
    const/16 v3, 0x9

    aput-boolean v1, v2, v3

    goto :goto_0
.end method
