.class public final Lorg/openintents/shopping/library/provider/ShoppingContract$Subtotals;
.super Ljava/lang/Object;
.source "ShoppingContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/library/provider/ShoppingContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Subtotals"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final COUNT_INDEX:I = 0x2

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final PRIORITY_INDEX:I = 0x0

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_INDEX:I = 0x1

.field public static final SUBTOTAL:Ljava/lang/String; = "subtotal"

.field public static final SUBTOTAL_INDEX:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 985
    const-string v0, "content://org.openintents.shopping/subtotals"

    .line 986
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$Subtotals;->CONTENT_URI:Landroid/net/Uri;

    .line 1023
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "subtotal"

    aput-object v2, v0, v1

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$Subtotals;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
