.class public final Lorg/openintents/shopping/library/provider/ShoppingContract$ContainsFull;
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
    name = "ContainsFull"
.end annotation


# static fields
.field public static final ACCESSED_DATE:Ljava/lang/String; = "accessed"

.field public static final BARCODE:Ljava/lang/String; = "barcode"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATED_DATE:Ljava/lang/String; = "created"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "contains.modified ASC"

.field public static final DUE_DATE:Ljava/lang/String; = "due"

.field public static final ITEM_HAS_NOTE:Ljava/lang/String; = "item_has_note"

.field public static final ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final ITEM_IMAGE:Ljava/lang/String; = "item_image"

.field public static final ITEM_NAME:Ljava/lang/String; = "item_name"

.field public static final ITEM_PRICE:Ljava/lang/String; = "item_price"

.field public static final ITEM_TAGS:Ljava/lang/String; = "item_tags"

.field public static final ITEM_UNITS:Ljava/lang/String; = "item_units"

.field public static final LIST_ID:Ljava/lang/String; = "list_id"

.field public static final LIST_IMAGE:Ljava/lang/String; = "list_image"

.field public static final LIST_NAME:Ljava/lang/String; = "list_name"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final MODIFIED_DATE:Ljava/lang/String; = "modified"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final QUANTITY:Ljava/lang/String; = "quantity"

.field public static final SHARE_CREATED_BY:Ljava/lang/String; = "share_created_by"

.field public static final SHARE_MODIFIED_BY:Ljava/lang/String; = "share_modified_by"

.field public static final STATUS:Ljava/lang/String; = "status"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 477
    const-string v0, "content://org.openintents.shopping/containsfull"

    .line 478
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$ContainsFull;->CONTENT_URI:Landroid/net/Uri;

    .line 477
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
