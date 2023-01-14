.class public final Lorg/openintents/shopping/library/provider/ShoppingContract$Notes;
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
    name = "Notes"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.openintents.notepad.note"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.openintents.notepad.note"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATED_DATE:Ljava/lang/String; = "created"

.field public static final ENCRYPTED:Ljava/lang/String; = "encrypted"

.field public static final MODIFIED_DATE:Ljava/lang/String; = "modified"

.field public static final NOTE:Ljava/lang/String; = "note"

.field public static final TAGS:Ljava/lang/String; = "tags"

.field public static final THEME:Ljava/lang/String; = "theme"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 885
    const-string v0, "content://org.openintents.shopping/notes"

    .line 886
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$Notes;->CONTENT_URI:Landroid/net/Uri;

    .line 885
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    return-void
.end method
