.class Lorg/openintents/shopping/ui/dialog/EditItemDialog$5;
.super Ljava/lang/Object;
.source "EditItemDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/dialog/EditItemDialog;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$5;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x66955683f00b4e66L    # 1.4506747277391514E186

    const-string v2, "org/openintents/shopping/ui/dialog/EditItemDialog$5"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$5;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/dialog/EditItemDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$5;->$jacocoInit()[Z

    move-result-object v0

    .line 195
    iput-object p1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$5;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

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

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$5;->$jacocoInit()[Z

    move-result-object v0

    .line 198
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$5;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    invoke-static {v1}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->access$000(Lorg/openintents/shopping/ui/dialog/EditItemDialog;)V

    .line 199
    aput-boolean v2, v0, v2

    return-void
.end method
