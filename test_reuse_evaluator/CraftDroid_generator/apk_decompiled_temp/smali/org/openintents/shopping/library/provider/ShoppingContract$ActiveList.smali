.class public final Lorg/openintents/shopping/library/provider/ShoppingContract$ActiveList;
.super Ljava/lang/Object;
.source "ShoppingContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/library/provider/ShoppingContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActiveList"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 969
    const-string v0, "content://org.openintents.shopping/lists/active"

    .line 970
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$ActiveList;->CONTENT_URI:Landroid/net/Uri;

    .line 975
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$ActiveList;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
