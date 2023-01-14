.class Lorg/openintents/shopping/ui/dialog/EditItemDialog$6;
.super Ljava/lang/Object;
.source "EditItemDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/ui/dialog/EditItemDialog;
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

    sget-object v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$6;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x48abc2d4fe1b6ee9L    # 1.2091648075375547E42

    const-string v2, "org/openintents/shopping/ui/dialog/EditItemDialog$6"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$6;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/dialog/EditItemDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$6;->$jacocoInit()[Z

    move-result-object v0

    .line 257
    iput-object p1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$6;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$6;->$jacocoInit()[Z

    move-result-object v0

    .line 261
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$6;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    invoke-virtual {v1}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->updateQuantityPrice()V

    .line 262
    aput-boolean v2, v0, v2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$6;->$jacocoInit()[Z

    move-result-object v0

    .line 267
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$6;->$jacocoInit()[Z

    move-result-object v0

    .line 272
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
