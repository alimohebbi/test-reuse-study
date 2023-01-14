.class public Lorg/openintents/shopping/provider/ShoppingDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ShoppingDatabase.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final DATABASE_NAME:Ljava/lang/String; = "shopping.db"

.field static final DATABASE_VERSION:I = 0xc


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/provider/ShoppingDatabase;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5ab8aa06ea98015L

    const-string v2, "org/openintents/shopping/provider/ShoppingDatabase"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/provider/ShoppingDatabase;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingDatabase;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    const-string v1, "shopping.db"

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 49
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingDatabase;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    const-string v1, "CREATE TABLE items (_id INTEGER PRIMARY KEY,name VARCHAR,image VARCHAR,price INTEGER,units VARCHAR,tags VARCHAR,barcode VARCHAR,location VARCHAR,note VARCHAR,due INTEGER,created INTEGER,modified INTEGER,accessed INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    aput-boolean v2, v0, v2

    .line 70
    const-string v1, "CREATE TABLE lists (_id INTEGER PRIMARY KEY,name VARCHAR,image VARCHAR,created INTEGER,modified INTEGER,accessed INTEGER,share_name VARCHAR,share_contacts VARCHAR,skin_background VARCHAR,skin_font VARCHAR,skin_color INTEGER,skin_color_strikethrough INTEGER,store_filter INTEGER DEFAULT -1,tags_filter VARCHAR);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 85
    const-string v1, "CREATE TABLE contains (_id INTEGER PRIMARY KEY,item_id INTEGER,list_id INTEGER,quantity VARCHAR,status INTEGER,created INTEGER,modified INTEGER,accessed INTEGER,share_created_by VARCHAR,share_modified_by VARCHAR,sort_key INTEGER,priority INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 98
    const-string v1, "CREATE TABLE stores (_id INTEGER PRIMARY KEY,name VARCHAR, list_id INTEGER,created INTEGER,modified INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 104
    const-string v1, "CREATE TABLE itemstores(_id INTEGER PRIMARY KEY,item_id INTEGER,store_id INTEGER,stocks_item INTEGER DEFAULT 1,aisle INTEGER,price INTEGER,created INTEGER,modified INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 113
    const-string v1, "CREATE TABLE units (_id INTEGER PRIMARY KEY,name VARCHAR, singular VARCHAR, created INTEGER,modified INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    .line 119
    const-string v1, "CREATE INDEX itemstores_item_id on itemstores  ( item_id asc, price asc );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingDatabase;->$jacocoInit()[Z

    move-result-object v0

    .line 311
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
