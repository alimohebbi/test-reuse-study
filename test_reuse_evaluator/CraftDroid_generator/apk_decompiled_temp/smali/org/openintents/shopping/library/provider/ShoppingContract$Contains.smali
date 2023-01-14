.class public final Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;
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
    name = "Contains"
.end annotation


# static fields
.field public static final ACCESSED_DATE:Ljava/lang/String; = "accessed"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATED_DATE:Ljava/lang/String; = "created"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "modified DESC"

.field public static final ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final LIST_ID:Ljava/lang/String; = "list_id"

.field public static final MODIFIED_DATE:Ljava/lang/String; = "modified"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final PROJECTION_TO_COPY:[Ljava/lang/String;

.field public static final QUANTITY:Ljava/lang/String; = "quantity"

.field public static final SHARE_CREATED_BY:Ljava/lang/String; = "share_created_by"

.field public static final SHARE_MODIFIED_BY:Ljava/lang/String; = "share_modified_by"

.field public static final SORT_KEY:Ljava/lang/String; = "sort_key"

.field public static final SORT_ORDERS:[Ljava/lang/String;

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final StatusAffectsSortOrder:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 322
    const-string v0, "content://org.openintents.shopping/contains"

    .line 323
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    .line 426
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contains.status ASC, items.name COLLATE NOCASE ASC"

    aput-object v1, v0, v3

    const-string v1, "items.name COLLATE NOCASE ASC"

    aput-object v1, v0, v4

    const-string v1, "contains.modified DESC"

    aput-object v1, v0, v5

    const-string v1, "contains.modified ASC"

    aput-object v1, v0, v6

    const-string v1, "(items.tags IS NULL or items.tags = \'\') ASC, items.tags COLLATE NOCASE ASC, items.name COLLATE NOCASE ASC"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "items.price DESC, items.name COLLATE NOCASE ASC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contains.status ASC, (items.tags IS NULL or items.tags = \'\') ASC, items.tags COLLATE NOCASE ASC, items.name COLLATE NOCASE ASC"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "contains.status ASC, contains.priority ASC, items.name COLLATE NOCASE ASC"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "contains.status ASC, contains.priority ASC, (items.tags IS NULL or items.tags = \'\') ASC, items.tags COLLATE NOCASE ASC, items.name COLLATE NOCASE ASC"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "contains.priority ASC, (items.tags IS NULL or items.tags = \'\') ASC, items.tags COLLATE NOCASE ASC, items.name COLLATE NOCASE ASC"

    aput-object v2, v0, v1

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->SORT_ORDERS:[Ljava/lang/String;

    .line 458
    const/16 v0, 0xa

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->StatusAffectsSortOrder:[Z

    .line 462
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "list_id"

    aput-object v1, v0, v3

    const-string v1, "quantity"

    aput-object v1, v0, v4

    const-string v1, "priority"

    aput-object v1, v0, v5

    const-string v1, "status"

    aput-object v1, v0, v6

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->PROJECTION_TO_COPY:[Ljava/lang/String;

    return-void

    .line 458
    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
