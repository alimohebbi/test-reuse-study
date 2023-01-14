.class public final Lorg/openintents/shopping/library/provider/ShoppingContract$Units;
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
    name = "Units"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATED_DATE:Ljava/lang/String; = "created"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final MODIFIED_DATE:Ljava/lang/String; = "modified"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SINGULAR:Ljava/lang/String; = "singular"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 830
    const-string v0, "content://org.openintents.shopping/units"

    .line 831
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$Units;->CONTENT_URI:Landroid/net/Uri;

    .line 830
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
