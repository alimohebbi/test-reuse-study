.class public abstract Lorg/openintents/shopping/library/provider/ShoppingContract;
.super Ljava/lang/Object;
.source "ShoppingContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/shopping/library/provider/ShoppingContract$Subtotals;,
        Lorg/openintents/shopping/library/provider/ShoppingContract$ActiveList;,
        Lorg/openintents/shopping/library/provider/ShoppingContract$Notes;,
        Lorg/openintents/shopping/library/provider/ShoppingContract$Units;,
        Lorg/openintents/shopping/library/provider/ShoppingContract$ItemStores;,
        Lorg/openintents/shopping/library/provider/ShoppingContract$Stores;,
        Lorg/openintents/shopping/library/provider/ShoppingContract$Status;,
        Lorg/openintents/shopping/library/provider/ShoppingContract$ContainsFull;,
        Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;,
        Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;,
        Lorg/openintents/shopping/library/provider/ShoppingContract$Items;
    }
.end annotation


# static fields
.field public static final ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.openintents.shopping.item"

.field public static final QUERY_ITEMS_WITH_STATE:Ljava/lang/String; = "itemsWithState"

.field private static final TAG:Ljava/lang/String; = "Shopping"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
