.class public final Lorg/openintents/shopping/library/provider/ShoppingContract$Stores;
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
    name = "Stores"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATED_DATE:Ljava/lang/String; = "created"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final LIST_ID:Ljava/lang/String; = "list_id"

.field public static final MODIFIED_DATE:Ljava/lang/String; = "modified"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final QUERY_BY_LIST_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 706
    const-string v0, "content://org.openintents.shopping/stores"

    .line 707
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$Stores;->CONTENT_URI:Landroid/net/Uri;

    .line 746
    const-string v0, "content://org.openintents.shopping/liststores"

    .line 747
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$Stores;->QUERY_BY_LIST_URI:Landroid/net/Uri;

    .line 746
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
