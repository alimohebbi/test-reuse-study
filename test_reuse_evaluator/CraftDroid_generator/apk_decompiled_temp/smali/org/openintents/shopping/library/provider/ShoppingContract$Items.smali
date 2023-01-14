.class public final Lorg/openintents/shopping/library/provider/ShoppingContract$Items;
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
    name = "Items"
.end annotation


# static fields
.field public static final ACCESSED_DATE:Ljava/lang/String; = "accessed"

.field public static final BARCODE:Ljava/lang/String; = "barcode"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATED_DATE:Ljava/lang/String; = "created"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "modified ASC"

.field public static final DUE_DATE:Ljava/lang/String; = "due"

.field public static final IMAGE:Ljava/lang/String; = "image"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final MODIFIED_DATE:Ljava/lang/String; = "modified"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NOTE:Ljava/lang/String; = "note"

.field public static final PRICE:Ljava/lang/String; = "price"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final PROJECTION_ACCESSED_DATE:I = 0x6

.field public static final PROJECTION_CREATED_DATE:I = 0x4

.field public static final PROJECTION_ID:I = 0x0

.field public static final PROJECTION_IMAGE:I = 0x2

.field public static final PROJECTION_MODIFIED_DATE:I = 0x5

.field public static final PROJECTION_NAME:I = 0x1

.field public static final PROJECTION_PRICE:I = 0x3

.field public static final PROJECTION_TO_COPY:[Ljava/lang/String;

.field public static final PROJECTION_UNITS:I = 0x7

.field public static final TAGS:Ljava/lang/String; = "tags"

.field public static final UNITS:Ljava/lang/String; = "units"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    const-string v0, "content://org.openintents.shopping/items"

    .line 42
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    .line 148
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "image"

    aput-object v1, v0, v5

    const-string v1, "price"

    aput-object v1, v0, v6

    const-string v1, "created"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "accessed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "units"

    aput-object v2, v0, v1

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->PROJECTION:[Ljava/lang/String;

    .line 151
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "image"

    aput-object v1, v0, v4

    const-string v1, "price"

    aput-object v1, v0, v5

    const-string v1, "units"

    aput-object v1, v0, v6

    const-string v1, "tags"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "barcode"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "note"

    aput-object v2, v0, v1

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->PROJECTION_TO_COPY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
