.class Lorg/openintents/shopping/ui/dialog/EditItemDialog$1;
.super Ljava/lang/Object;
.source "EditItemDialog.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;


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

    sget-object v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2e0653c08f780c4fL    # 5.611832344215524E-87

    const-string v2, "org/openintents/shopping/ui/dialog/EditItemDialog$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/dialog/EditItemDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 95
    iput-object p1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$1;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 95
    invoke-virtual {p0, p1}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$1;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 97
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-boolean v2, v0, v2

    return-object v1
.end method
