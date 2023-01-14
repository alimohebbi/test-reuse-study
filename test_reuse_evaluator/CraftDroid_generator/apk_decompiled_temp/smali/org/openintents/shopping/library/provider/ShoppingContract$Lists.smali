.class public final Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;
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
    name = "Lists"
.end annotation


# static fields
.field public static final ACCESSED_DATE:Ljava/lang/String; = "accessed"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATED_DATE:Ljava/lang/String; = "created"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "modified ASC"

.field public static final IMAGE:Ljava/lang/String; = "image"

.field public static final MODIFIED_DATE:Ljava/lang/String; = "modified"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SHARE_CONTACTS:Ljava/lang/String; = "share_contacts"

.field public static final SHARE_NAME:Ljava/lang/String; = "share_name"

.field public static final SKIN_BACKGROUND:Ljava/lang/String; = "skin_background"

.field public static final SKIN_COLOR:Ljava/lang/String; = "skin_color"

.field public static final SKIN_COLOR_STRIKETHROUGH:Ljava/lang/String; = "skin_color_strikethrough"

.field public static final SKIN_FONT:Ljava/lang/String; = "skin_font"

.field public static final SORT_ORDERS:[Ljava/lang/String;

.field public static final STORE_FILTER:Ljava/lang/String; = "store_filter"

.field public static final TAGS_FILTER:Ljava/lang/String; = "tags_filter"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 175
    const-string v0, "content://org.openintents.shopping/lists"

    .line 176
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    .line 307
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UPPER(name) ASC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "UPPER(name) DESC"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "created DESC"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "created ASC"

    aput-object v2, v0, v1

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->SORT_ORDERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
