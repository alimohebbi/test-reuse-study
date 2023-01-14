.class public final Lorg/openintents/shopping/library/provider/ShoppingContract$ItemStores;
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
    name = "ItemStores"
.end annotation


# static fields
.field public static final AISLE:Ljava/lang/String; = "aisle"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATED_DATE:Ljava/lang/String; = "created"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "item_id ASC"

.field public static final ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final MODIFIED_DATE:Ljava/lang/String; = "modified"

.field public static final PRICE:Ljava/lang/String; = "price"

.field public static final STOCKS_ITEM:Ljava/lang/String; = "stocks_item"

.field public static final STORE_ID:Ljava/lang/String; = "store_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 758
    const-string v0, "content://org.openintents.shopping/itemstores"

    .line 759
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$ItemStores;->CONTENT_URI:Landroid/net/Uri;

    .line 758
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
