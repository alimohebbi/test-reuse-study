.class public Lorg/openintents/shopping/provider/ShoppingProvider;
.super Landroid/content/ContentProvider;
.source "ShoppingProvider.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final ACTIVELIST:I = 0x67

.field private static final CONTAINS:I = 0x5

.field private static final CONTAINS_COPYOFID:I = 0x68

.field private static final CONTAINS_FULL:I = 0x65

.field private static CONTAINS_FULL_CHEAPEST_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTAINS_FULL_ID:I = 0x66

.field private static CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static CONTAINS_FULL_STORE_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTAINS_ID:I = 0x6

.field private static CONTAINS_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ITEMS:I = 0x1

.field private static final ITEMSTORES:I = 0xa

.field private static final ITEMSTORES_ID:I = 0xb

.field private static final ITEMSTORES_ITEMID:I = 0x11

.field private static ITEMSTORES_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ITEMS_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ITEM_ID:I = 0x2

.field private static final LISTS:I = 0x3

.field private static LISTS_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIST_ID:I = 0x4

.field private static final NOTES:I = 0xc

.field private static NOTES_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOTE_ID:I = 0xd

.field private static final PREFS:I = 0x10

.field private static final STORES:I = 0x7

.field private static final STORES_ID:I = 0x8

.field private static final STORES_LISTID:I = 0x9

.field private static STORES_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUBTOTALS:I = 0x12

.field private static final SUBTOTALS_LISTID:I = 0x13

.field private static SUBTOTALS_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "ShoppingProvider"

.field private static final TAGS_LISTID:I = 0x69

.field private static final UNITS:I = 0xe

.field private static final UNITS_ID:I = 0xf

.field private static UNITS_PROJECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final URL_MATCHER:Landroid/content/UriMatcher;

.field private static final debug:Z


# instance fields
.field private mOpenHelper:Lorg/openintents/shopping/provider/ShoppingDatabase;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x76878f6e5fd7e86L    # -7.954841858882827E272

    const-string v2, "org/openintents/shopping/provider/ShoppingProvider"

    const/16 v3, 0x237

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 1171
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const/16 v1, 0x1be

    aput-boolean v6, v0, v1

    .line 1172
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "items"

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1bf

    aput-boolean v6, v0, v1

    .line 1173
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "items/#"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1c0

    aput-boolean v6, v0, v1

    .line 1174
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "lists"

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1c1

    aput-boolean v6, v0, v1

    .line 1175
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "lists/active"

    const/16 v4, 0x67

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1c2

    aput-boolean v6, v0, v1

    .line 1177
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "lists/#"

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1c3

    aput-boolean v6, v0, v1

    .line 1178
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "contains"

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1c4

    aput-boolean v6, v0, v1

    .line 1179
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "contains/#"

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1c5

    aput-boolean v6, v0, v1

    .line 1181
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "contains/copyof/#"

    const/16 v4, 0x68

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1c6

    aput-boolean v6, v0, v1

    .line 1183
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "containsfull"

    const/16 v4, 0x65

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1c7

    aput-boolean v6, v0, v1

    .line 1185
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "containsfull/#"

    const/16 v4, 0x66

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1c8

    aput-boolean v6, v0, v1

    .line 1187
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "stores"

    const/4 v4, 0x7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1c9

    aput-boolean v6, v0, v1

    .line 1188
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "stores/#"

    const/16 v4, 0x8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1189
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "itemstores"

    const/16 v4, 0xa

    const/16 v5, 0x1ca

    aput-boolean v6, v0, v5

    .line 1190
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1cb

    aput-boolean v6, v0, v1

    .line 1191
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "itemstores/#"

    const/16 v4, 0xb

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1cc

    aput-boolean v6, v0, v1

    .line 1193
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "itemstores/item/#/#"

    const/16 v4, 0x11

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1cd

    aput-boolean v6, v0, v1

    .line 1195
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "liststores/#"

    const/16 v4, 0x9

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1ce

    aput-boolean v6, v0, v1

    .line 1197
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "listtags/#"

    const/16 v4, 0x69

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1cf

    aput-boolean v6, v0, v1

    .line 1199
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "notes"

    const/16 v4, 0xc

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1d0

    aput-boolean v6, v0, v1

    .line 1200
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "notes/#"

    const/16 v4, 0xd

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1d1

    aput-boolean v6, v0, v1

    .line 1201
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "units"

    const/16 v4, 0xe

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1d2

    aput-boolean v6, v0, v1

    .line 1202
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "units/#"

    const/16 v4, 0xf

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1d3

    aput-boolean v6, v0, v1

    .line 1204
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "prefs"

    const/16 v4, 0x10

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1d4

    aput-boolean v6, v0, v1

    .line 1206
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "subtotals/#"

    const/16 v4, 0x13

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1d5

    aput-boolean v6, v0, v1

    .line 1208
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "org.openintents.shopping"

    const-string v3, "subtotals"

    const/16 v4, 0x12

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x1d6

    aput-boolean v6, v0, v1

    .line 1210
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMS_PROJECTION_MAP:Ljava/util/HashMap;

    const/16 v1, 0x1d7

    aput-boolean v6, v0, v1

    .line 1211
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "items._id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1d8

    aput-boolean v6, v0, v1

    .line 1212
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "name"

    const-string v3, "items.name"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1d9

    aput-boolean v6, v0, v1

    .line 1213
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "image"

    const-string v3, "items.image"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1da

    aput-boolean v6, v0, v1

    .line 1214
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "price"

    const-string v3, "items.price"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1db

    aput-boolean v6, v0, v1

    .line 1215
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "units"

    const-string v3, "items.units"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1dc

    aput-boolean v6, v0, v1

    .line 1216
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "tags"

    const-string v3, "items.tags"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1dd

    aput-boolean v6, v0, v1

    .line 1217
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "barcode"

    const-string v3, "items.barcode"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1de

    aput-boolean v6, v0, v1

    .line 1218
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "location"

    const-string v3, "items.location"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1df

    aput-boolean v6, v0, v1

    .line 1219
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "due"

    const-string v3, "items.due"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1e0

    aput-boolean v6, v0, v1

    .line 1220
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "created"

    const-string v3, "items.created"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1e1

    aput-boolean v6, v0, v1

    .line 1221
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "modified"

    const-string v3, "items.modified"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1e2

    aput-boolean v6, v0, v1

    .line 1222
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "accessed"

    const-string v3, "items.accessed"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1e3

    aput-boolean v6, v0, v1

    .line 1224
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->LISTS_PROJECTION_MAP:Ljava/util/HashMap;

    const/16 v1, 0x1e4

    aput-boolean v6, v0, v1

    .line 1225
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->LISTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "lists._id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1e5

    aput-boolean v6, v0, v1

    .line 1226
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->LISTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "name"

    const-string v3, "lists.name"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1e6

    aput-boolean v6, v0, v1

    .line 1227
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->LISTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "image"

    const-string v3, "lists.image"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1e7

    aput-boolean v6, v0, v1

    .line 1228
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->LISTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "created"

    const-string v3, "lists.created"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1e8

    aput-boolean v6, v0, v1

    .line 1229
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->LISTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "modified"

    const-string v3, "lists.modified"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1e9

    aput-boolean v6, v0, v1

    .line 1230
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->LISTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "accessed"

    const-string v3, "lists.accessed"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1ea

    aput-boolean v6, v0, v1

    .line 1231
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->LISTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "share_name"

    const-string v3, "lists.share_name"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1eb

    aput-boolean v6, v0, v1

    .line 1232
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->LISTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "share_contacts"

    const-string v3, "lists.share_contacts"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->LISTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "skin_background"

    const-string v3, "lists.skin_background"

    const/16 v4, 0x1ec

    aput-boolean v6, v0, v4

    .line 1234
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1ed

    aput-boolean v6, v0, v1

    .line 1235
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->LISTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "skin_font"

    const-string v3, "lists.skin_font"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1ee

    aput-boolean v6, v0, v1

    .line 1236
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->LISTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "skin_color"

    const-string v3, "lists.skin_color"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1ef

    aput-boolean v6, v0, v1

    .line 1237
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->LISTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "skin_color_strikethrough"

    const-string v3, "lists.skin_color_strikethrough"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1f0

    aput-boolean v6, v0, v1

    .line 1240
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_PROJECTION_MAP:Ljava/util/HashMap;

    const/16 v1, 0x1f1

    aput-boolean v6, v0, v1

    .line 1241
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "contains._id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1f2

    aput-boolean v6, v0, v1

    .line 1242
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "item_id"

    const-string v3, "contains.item_id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1f3

    aput-boolean v6, v0, v1

    .line 1243
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "list_id"

    const-string v3, "contains.list_id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1f4

    aput-boolean v6, v0, v1

    .line 1244
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "quantity"

    const-string v3, "contains.quantity"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1f5

    aput-boolean v6, v0, v1

    .line 1245
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "priority"

    const-string v3, "contains.priority"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1f6

    aput-boolean v6, v0, v1

    .line 1247
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "status"

    const-string v3, "contains.status"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1f7

    aput-boolean v6, v0, v1

    .line 1248
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "created"

    const-string v3, "contains.created"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "modified"

    const-string v3, "contains.modified"

    const/16 v4, 0x1f8

    aput-boolean v6, v0, v4

    .line 1250
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "accessed"

    const-string v3, "contains.accessed"

    const/16 v4, 0x1f9

    aput-boolean v6, v0, v4

    .line 1252
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1fa

    aput-boolean v6, v0, v1

    .line 1253
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "share_created_by"

    const-string v3, "contains.share_created_by"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1fb

    aput-boolean v6, v0, v1

    .line 1255
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "share_modified_by"

    const-string v3, "contains.share_modified_by"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1fc

    aput-boolean v6, v0, v1

    .line 1258
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const/16 v1, 0x1fd

    aput-boolean v6, v0, v1

    .line 1259
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "contains._id as _id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1fe

    aput-boolean v6, v0, v1

    .line 1261
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "item_id"

    const-string v3, "contains.item_id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1ff

    aput-boolean v6, v0, v1

    .line 1263
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "list_id"

    const-string v3, "contains.list_id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x200

    aput-boolean v6, v0, v1

    .line 1265
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "quantity"

    const-string v3, "contains.quantity as quantity"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x201

    aput-boolean v6, v0, v1

    .line 1267
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "priority"

    const-string v3, "contains.priority as priority"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "status"

    const-string v3, "contains.status"

    const/16 v4, 0x202

    aput-boolean v6, v0, v4

    .line 1270
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x203

    aput-boolean v6, v0, v1

    .line 1271
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "created"

    const-string v3, "contains.created"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x204

    aput-boolean v6, v0, v1

    .line 1273
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "modified"

    const-string v3, "contains.modified"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x205

    aput-boolean v6, v0, v1

    .line 1275
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "accessed"

    const-string v3, "contains.accessed"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x206

    aput-boolean v6, v0, v1

    .line 1277
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "share_created_by"

    const-string v3, "contains.share_created_by"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x207

    aput-boolean v6, v0, v1

    .line 1279
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "share_modified_by"

    const-string v3, "contains.share_modified_by"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x208

    aput-boolean v6, v0, v1

    .line 1281
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "item_name"

    const-string v3, "items.name as item_name"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x209

    aput-boolean v6, v0, v1

    .line 1283
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "item_image"

    const-string v3, "items.image as item_image"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20a

    aput-boolean v6, v0, v1

    .line 1285
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "item_price"

    const-string v3, "items.price as item_price"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20b

    aput-boolean v6, v0, v1

    .line 1287
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "item_units"

    const-string v3, "items.units as item_units"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20c

    aput-boolean v6, v0, v1

    .line 1289
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "item_tags"

    const-string v3, "items.tags as item_tags"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20d

    aput-boolean v6, v0, v1

    .line 1291
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "list_name"

    const-string v3, "lists.name as list_name"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20e

    aput-boolean v6, v0, v1

    .line 1293
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "list_image"

    const-string v3, "lists.image as list_image"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20f

    aput-boolean v6, v0, v1

    .line 1295
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "item_has_note"

    const-string v3, "items.note is not NULL and items.note <> \'\' as item_has_note"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x210

    aput-boolean v6, v0, v1

    .line 1298
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_CHEAPEST_PROJECTION_MAP:Ljava/util/HashMap;

    const/16 v1, 0x211

    aput-boolean v6, v0, v1

    .line 1300
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_CHEAPEST_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "item_price"

    const-string v3, "min(itemstores.price) as item_price"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x212

    aput-boolean v6, v0, v1

    .line 1303
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_STORE_PROJECTION_MAP:Ljava/util/HashMap;

    const/16 v1, 0x213

    aput-boolean v6, v0, v1

    .line 1305
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_STORE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "item_price"

    const-string v3, "itemstores.price as item_price"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x214

    aput-boolean v6, v0, v1

    .line 1308
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->UNITS_PROJECTION_MAP:Ljava/util/HashMap;

    const/16 v1, 0x215

    aput-boolean v6, v0, v1

    .line 1309
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->UNITS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "units._id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x216

    aput-boolean v6, v0, v1

    .line 1310
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->UNITS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "created"

    const-string v3, "units.created"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x217

    aput-boolean v6, v0, v1

    .line 1311
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->UNITS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "modified"

    const-string v3, "units.modified"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x218

    aput-boolean v6, v0, v1

    .line 1312
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->UNITS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "name"

    const-string v3, "units.name"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x219

    aput-boolean v6, v0, v1

    .line 1313
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->UNITS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "singular"

    const-string v3, "units.singular"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x21a

    aput-boolean v6, v0, v1

    .line 1315
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->STORES_PROJECTION_MAP:Ljava/util/HashMap;

    const/16 v1, 0x21b

    aput-boolean v6, v0, v1

    .line 1316
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->STORES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "stores._id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x21c

    aput-boolean v6, v0, v1

    .line 1317
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->STORES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "created"

    const-string v3, "stores.created"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x21d

    aput-boolean v6, v0, v1

    .line 1318
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->STORES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "modified"

    const-string v3, "stores.modified"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x21e

    aput-boolean v6, v0, v1

    .line 1319
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->STORES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "name"

    const-string v3, "stores.name"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x21f

    aput-boolean v6, v0, v1

    .line 1320
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->STORES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "list_id"

    const-string v3, "stores.list_id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x220

    aput-boolean v6, v0, v1

    .line 1322
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMSTORES_PROJECTION_MAP:Ljava/util/HashMap;

    const/16 v1, 0x221

    aput-boolean v6, v0, v1

    .line 1323
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMSTORES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "itemstores._id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x222

    aput-boolean v6, v0, v1

    .line 1324
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMSTORES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "created"

    const-string v3, "itemstores.created"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x223

    aput-boolean v6, v0, v1

    .line 1326
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMSTORES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "modified"

    const-string v3, "itemstores.modified"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x224

    aput-boolean v6, v0, v1

    .line 1328
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMSTORES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "item_id"

    const-string v3, "itemstores.item_id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x225

    aput-boolean v6, v0, v1

    .line 1329
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMSTORES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "store_id"

    const-string v3, "itemstores.store_id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x226

    aput-boolean v6, v0, v1

    .line 1331
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMSTORES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "name"

    const-string v3, "stores.name"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x227

    aput-boolean v6, v0, v1

    .line 1332
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMSTORES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "aisle"

    const-string v3, "itemstores.aisle"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x228

    aput-boolean v6, v0, v1

    .line 1333
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMSTORES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "price"

    const-string v3, "itemstores.price"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x229

    aput-boolean v6, v0, v1

    .line 1334
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMSTORES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "stocks_item"

    const-string v3, "itemstores.stocks_item"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x22a

    aput-boolean v6, v0, v1

    .line 1337
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->NOTES_PROJECTION_MAP:Ljava/util/HashMap;

    const/16 v1, 0x22b

    aput-boolean v6, v0, v1

    .line 1338
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->NOTES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "items._id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x22c

    aput-boolean v6, v0, v1

    .line 1339
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->NOTES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "note"

    const-string v3, "items.note"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x22d

    aput-boolean v6, v0, v1

    .line 1340
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->NOTES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "title"

    const-string v3, "null as title"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x22e

    aput-boolean v6, v0, v1

    .line 1341
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->NOTES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "tags"

    const-string v3, "null as tags"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x22f

    aput-boolean v6, v0, v1

    .line 1342
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->NOTES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "encrypted"

    const-string v3, "null as encrypted"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x230

    aput-boolean v6, v0, v1

    .line 1344
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->NOTES_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "theme"

    const-string v3, "null as theme"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x231

    aput-boolean v6, v0, v1

    .line 1346
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->SUBTOTALS_PROJECTION_MAP:Ljava/util/HashMap;

    const/16 v1, 0x232

    aput-boolean v6, v0, v1

    .line 1347
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->SUBTOTALS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "count"

    const-string v3, "count() as count"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x233

    aput-boolean v6, v0, v1

    .line 1349
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->SUBTOTALS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "priority"

    const-string v3, "priority"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x234

    aput-boolean v6, v0, v1

    .line 1351
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->SUBTOTALS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "subtotal"

    const-string v3, "sum(qty_price) as subtotal"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x235

    aput-boolean v6, v0, v1

    .line 1353
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->SUBTOTALS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v2, "status"

    const-string v3, "status"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    const/16 v1, 0x236

    aput-boolean v6, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private copyItemAndContains([Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 12

    .prologue
    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v9

    .line 428
    iget-object v1, p0, Lorg/openintents/shopping/provider/ShoppingProvider;->mOpenHelper:Lorg/openintents/shopping/provider/ShoppingDatabase;

    invoke-virtual {v1}, Lorg/openintents/shopping/provider/ShoppingDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/16 v2, 0x76

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 431
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/16 v2, 0x77

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 432
    const-string v2, "contains"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v2, 0x78

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/16 v2, 0x79

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 434
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "item_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/16 v3, 0x7a

    const/4 v4, 0x1

    aput-boolean v4, v9, v3

    .line 436
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 437
    const/4 v1, 0x0

    const/16 v2, 0x7b

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 488
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v8, "c":Landroid/database/Cursor;
    :goto_0
    return-object v1

    .line 440
    .end local v0    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v3, 0x7c

    const/4 v4, 0x1

    aput-boolean v4, v9, v3

    .line 441
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/16 v3, 0x7d

    const/4 v6, 0x1

    aput-boolean v6, v9, v3

    .line 442
    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    const/16 v3, 0x7e

    const/4 v6, 0x1

    aput-boolean v6, v9, v3

    .line 443
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/16 v2, 0x7f

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 446
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .restart local v0    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/16 v2, 0x80

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 447
    const-string v2, "items"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v2, 0x81

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/16 v2, 0x82

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 449
    sget-object v2, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->PROJECTION_TO_COPY:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .restart local v8    # "c":Landroid/database/Cursor;
    const/16 v2, 0x83

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 450
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 451
    const/4 v1, 0x0

    const/16 v2, 0x84

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    goto :goto_0

    .line 453
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v2, 0x85

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 454
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x86

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 455
    invoke-static {v8, v10}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    const/16 v2, 0x87

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 456
    invoke-interface {v8}, Landroid/database/Cursor;->deactivate()V

    const/16 v2, 0x88

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 457
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/16 v2, 0x89

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 460
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v0    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .restart local v0    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/16 v2, 0x8a

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 461
    const-string v2, "contains"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v2, 0x8b

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8c

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 463
    sget-object v2, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->PROJECTION_TO_COPY:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/16 v2, 0x8d

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 465
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 466
    const/4 v1, 0x0

    const/16 v2, 0x8e

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    goto/16 :goto_0

    .line 468
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v2, 0x8f

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 469
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/16 v3, 0x90

    const/4 v4, 0x1

    aput-boolean v4, v9, v3

    .line 470
    invoke-static {v8, v2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    const/16 v3, 0x91

    const/4 v4, 0x1

    aput-boolean v4, v9, v3

    .line 471
    invoke-interface {v8}, Landroid/database/Cursor;->deactivate()V

    const/16 v3, 0x92

    const/4 v4, 0x1

    aput-boolean v4, v9, v3

    .line 472
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/16 v3, 0x93

    const/4 v4, 0x1

    aput-boolean v4, v9, v3

    .line 475
    invoke-direct {p0, v10}, Lorg/openintents/shopping/provider/ShoppingProvider;->validateItemValues(Landroid/content/ContentValues;)V

    const/16 v3, 0x94

    const/4 v4, 0x1

    aput-boolean v4, v9, v3

    .line 476
    const-string v3, "items"

    const-string v4, "items"

    invoke-virtual {v1, v3, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const/16 v3, 0x95

    const/4 v6, 0x1

    aput-boolean v6, v9, v3

    .line 479
    const-string v3, "item_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v3, 0x96

    const/4 v6, 0x1

    aput-boolean v6, v9, v3

    .line 480
    invoke-direct {p0, v2}, Lorg/openintents/shopping/provider/ShoppingProvider;->validateContainsValues(Landroid/content/ContentValues;)V

    const/16 v3, 0x97

    const/4 v6, 0x1

    aput-boolean v6, v9, v3

    .line 481
    const-string v3, "contains"

    const-string v6, "contains"

    invoke-virtual {v1, v3, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const/16 v1, 0x98

    const/4 v6, 0x1

    aput-boolean v6, v9, v1

    .line 485
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v6, 0x99

    const/4 v7, 0x1

    aput-boolean v7, v9, v6

    .line 486
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x1

    const/16 v5, 0x9a

    const/4 v7, 0x1

    aput-boolean v7, v9, v5

    .line 487
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    const/16 v2, 0x9b

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    .line 486
    invoke-virtual {v1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 488
    const/16 v2, 0x9c

    const/4 v3, 0x1

    aput-boolean v3, v9, v2

    goto/16 :goto_0
.end method

.method private getListTagsFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v8

    .line 406
    iget-object v0, p0, Lorg/openintents/shopping/provider/ShoppingProvider;->mOpenHelper:Lorg/openintents/shopping/provider/ShoppingDatabase;

    invoke-virtual {v0}, Lorg/openintents/shopping/provider/ShoppingDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/16 v0, 0x6c

    aput-boolean v9, v8, v0

    .line 407
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/16 v2, 0x6d

    aput-boolean v9, v8, v2

    .line 408
    const-string v2, "lists"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v2, 0x6e

    aput-boolean v9, v8, v2

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/16 v2, 0x6f

    aput-boolean v9, v8, v2

    .line 410
    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "tags_filter"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x70

    aput-boolean v9, v8, v1

    .line 412
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v1, v9, :cond_0

    .line 413
    const/16 v0, 0x71

    aput-boolean v9, v8, v0

    .line 421
    :goto_0
    return-object v3

    .line 416
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v1, 0x72

    aput-boolean v9, v8, v1

    .line 417
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x73

    aput-boolean v9, v8, v1

    .line 418
    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    const/16 v1, 0x74

    aput-boolean v9, v8, v1

    .line 419
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 421
    const/16 v0, 0x75

    aput-boolean v9, v8, v0

    goto :goto_0
.end method

.method private insertContains(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v2

    .line 650
    iget-object v3, p0, Lorg/openintents/shopping/provider/ShoppingProvider;->mOpenHelper:Lorg/openintents/shopping/provider/ShoppingDatabase;

    invoke-virtual {v3}, Lorg/openintents/shopping/provider/ShoppingDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/16 v4, 0xeb

    aput-boolean v8, v2, v4

    .line 651
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    const/16 v4, 0xec

    aput-boolean v8, v2, v4

    .line 654
    const-string v4, "item_id"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v3, 0xed

    aput-boolean v8, v2, v3

    .line 657
    :goto_0
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": ITEM_ID and LIST_ID must be given."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xf0

    aput-boolean v8, v2, v4

    throw v3

    .line 654
    :cond_0
    const-string v4, "list_id"

    const/16 v5, 0xee

    aput-boolean v8, v2, v5

    .line 655
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v3, 0xef

    aput-boolean v8, v2, v3

    goto :goto_0

    .line 663
    :cond_1
    const-string v4, "status"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0xf1

    aput-boolean v8, v2, v4

    .line 664
    const-string v4, "status"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0xf2

    aput-boolean v8, v2, v4

    .line 674
    :goto_1
    invoke-direct {p0, p2}, Lorg/openintents/shopping/provider/ShoppingProvider;->validateContainsValues(Landroid/content/ContentValues;)V

    const/16 v4, 0xf7

    aput-boolean v8, v2, v4

    .line 680
    const-string v4, "contains"

    const-string v5, "contains"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 681
    .local v0, "rowId":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_4

    const/16 v3, 0xf8

    aput-boolean v8, v2, v3

    .line 682
    sget-object v3, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0xf9

    aput-boolean v8, v2, v4

    .line 683
    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/16 v4, 0xfa

    aput-boolean v8, v2, v4

    .line 685
    new-instance v4, Landroid/content/Intent;

    const-string v5, "org.openintents.action.INSERTED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xfb

    aput-boolean v8, v2, v5

    .line 686
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v5, 0xfc

    aput-boolean v8, v2, v5

    .line 687
    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 689
    const/16 v4, 0xfd

    aput-boolean v8, v2, v4

    return-object v3

    .line 667
    .end local v0    # "rowId":J
    :cond_2
    const-string v4, "status"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0xf3

    aput-boolean v8, v2, v6

    .line 668
    invoke-static {v4, v5}, Lorg/openintents/shopping/library/provider/ShoppingContract$Status;->isValid(J)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v4, 0xf4

    aput-boolean v8, v2, v4

    goto :goto_1

    :cond_3
    const/16 v3, 0xf5

    aput-boolean v8, v2, v3

    .line 669
    new-instance v3, Landroid/database/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to insert row into "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Status "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not valid."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xf6

    aput-boolean v8, v2, v4

    throw v3

    .line 693
    .restart local v0    # "rowId":J
    :cond_4
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xfe

    aput-boolean v8, v2, v4

    throw v3
.end method

.method private insertItem(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v2

    .line 531
    iget-object v3, p0, Lorg/openintents/shopping/provider/ShoppingProvider;->mOpenHelper:Lorg/openintents/shopping/provider/ShoppingDatabase;

    invoke-virtual {v3}, Lorg/openintents/shopping/provider/ShoppingDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/16 v4, 0xa8

    aput-boolean v6, v2, v4

    .line 534
    invoke-direct {p0, p2}, Lorg/openintents/shopping/provider/ShoppingProvider;->validateItemValues(Landroid/content/ContentValues;)V

    const/16 v4, 0xa9

    aput-boolean v6, v2, v4

    .line 539
    const-string v4, "items"

    const-string v5, "items"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 540
    .local v0, "rowID":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    const/16 v3, 0xaa

    aput-boolean v6, v2, v3

    .line 541
    sget-object v3, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0xab

    aput-boolean v6, v2, v4

    .line 542
    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/16 v4, 0xac

    aput-boolean v6, v2, v4

    .line 544
    new-instance v4, Landroid/content/Intent;

    const-string v5, "org.openintents.action.INSERTED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xad

    aput-boolean v6, v2, v5

    .line 545
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v5, 0xae

    aput-boolean v6, v2, v5

    .line 546
    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 548
    const/16 v4, 0xaf

    aput-boolean v6, v2, v4

    return-object v3

    .line 552
    :cond_0
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xb0

    aput-boolean v6, v2, v4

    throw v3
.end method

.method private insertItemStore(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v2

    .line 763
    iget-object v3, p0, Lorg/openintents/shopping/provider/ShoppingProvider;->mOpenHelper:Lorg/openintents/shopping/provider/ShoppingDatabase;

    invoke-virtual {v3}, Lorg/openintents/shopping/provider/ShoppingDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/16 v4, 0x122

    aput-boolean v7, v2, v4

    .line 764
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x123

    aput-boolean v7, v2, v5

    .line 765
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    const/16 v5, 0x124

    aput-boolean v7, v2, v5

    .line 768
    const-string v5, "item_id"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v3, 0x125

    aput-boolean v7, v2, v3

    .line 771
    :goto_0
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": ITEM_ID and STORE_ID must be given."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x128

    aput-boolean v7, v2, v4

    throw v3

    .line 768
    :cond_0
    const-string v5, "store_id"

    const/16 v6, 0x126

    aput-boolean v7, v2, v6

    .line 769
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v3, 0x127

    aput-boolean v7, v2, v3

    goto :goto_0

    .line 778
    :cond_1
    const-string v5, "price"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x129

    aput-boolean v7, v2, v5

    .line 781
    :goto_1
    const-string v5, "aisle"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x12c

    aput-boolean v7, v2, v5

    .line 785
    :goto_2
    const-string v5, "created"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x12f

    aput-boolean v7, v2, v5

    .line 789
    :goto_3
    const-string v5, "modified"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v4, 0x132

    aput-boolean v7, v2, v4

    .line 797
    :goto_4
    const-string v4, "itemstores"

    const-string v5, "itemstores"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 798
    .local v0, "rowId":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_6

    const/16 v3, 0x135

    aput-boolean v7, v2, v3

    .line 799
    sget-object v3, Lorg/openintents/shopping/library/provider/ShoppingContract$ItemStores;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0x136

    aput-boolean v7, v2, v4

    .line 800
    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/16 v4, 0x137

    aput-boolean v7, v2, v4

    .line 802
    new-instance v4, Landroid/content/Intent;

    const-string v5, "org.openintents.action.INSERTED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x138

    aput-boolean v7, v2, v5

    .line 803
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v5, 0x139

    aput-boolean v7, v2, v5

    .line 804
    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 806
    const/16 v4, 0x13a

    aput-boolean v7, v2, v4

    return-object v3

    .line 778
    .end local v0    # "rowId":J
    :cond_2
    const/16 v5, 0x12a

    aput-boolean v7, v2, v5

    .line 779
    const-string v5, "price"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v5, 0x12b

    aput-boolean v7, v2, v5

    goto :goto_1

    .line 781
    :cond_3
    const/16 v5, 0x12d

    aput-boolean v7, v2, v5

    .line 782
    const-string v5, "aisle"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const/16 v5, 0x12e

    aput-boolean v7, v2, v5

    goto/16 :goto_2

    .line 785
    :cond_4
    const/16 v5, 0x130

    aput-boolean v7, v2, v5

    .line 786
    const-string v5, "created"

    invoke-virtual {p2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v5, 0x131

    aput-boolean v7, v2, v5

    goto/16 :goto_3

    .line 789
    :cond_5
    const/16 v5, 0x133

    aput-boolean v7, v2, v5

    .line 790
    const-string v5, "modified"

    invoke-virtual {p2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0x134

    aput-boolean v7, v2, v4

    goto/16 :goto_4

    .line 810
    .restart local v0    # "rowId":J
    :cond_6
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x13b

    aput-boolean v7, v2, v4

    throw v3
.end method

.method private insertList(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v2

    .line 581
    iget-object v3, p0, Lorg/openintents/shopping/provider/ShoppingProvider;->mOpenHelper:Lorg/openintents/shopping/provider/ShoppingDatabase;

    invoke-virtual {v3}, Lorg/openintents/shopping/provider/ShoppingDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/16 v4, 0xc3

    aput-boolean v8, v2, v4

    .line 584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0xc4

    aput-boolean v8, v2, v5

    .line 585
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const/16 v6, 0xc5

    aput-boolean v8, v2, v6

    .line 588
    const-string v6, "name"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0xc6

    aput-boolean v8, v2, v5

    .line 592
    :goto_0
    const-string v5, "image"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0xc9

    aput-boolean v8, v2, v5

    .line 596
    :goto_1
    const-string v5, "created"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xcc

    aput-boolean v8, v2, v5

    .line 600
    :goto_2
    const-string v5, "modified"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0xcf

    aput-boolean v8, v2, v5

    .line 604
    :goto_3
    const-string v5, "accessed"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v4, 0xd2

    aput-boolean v8, v2, v4

    .line 608
    :goto_4
    const-string v4, "share_contacts"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0xd5

    aput-boolean v8, v2, v4

    .line 612
    :goto_5
    const-string v4, "skin_background"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0xd8

    aput-boolean v8, v2, v4

    .line 616
    :goto_6
    const-string v4, "skin_font"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0xdb

    aput-boolean v8, v2, v4

    .line 620
    :goto_7
    const-string v4, "skin_color"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0xde

    aput-boolean v8, v2, v4

    .line 624
    :goto_8
    const-string v4, "skin_color_strikethrough"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0xe1

    aput-boolean v8, v2, v4

    .line 632
    :goto_9
    const-string v4, "lists"

    const-string v5, "lists"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 633
    .local v0, "rowID":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_a

    const/16 v3, 0xe4

    aput-boolean v8, v2, v3

    .line 634
    sget-object v3, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0xe5

    aput-boolean v8, v2, v4

    .line 635
    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/16 v4, 0xe6

    aput-boolean v8, v2, v4

    .line 637
    new-instance v4, Landroid/content/Intent;

    const-string v5, "org.openintents.action.INSERTED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xe7

    aput-boolean v8, v2, v5

    .line 638
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v5, 0xe8

    aput-boolean v8, v2, v5

    .line 639
    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 641
    const/16 v4, 0xe9

    aput-boolean v8, v2, v4

    return-object v3

    .line 588
    .end local v0    # "rowID":J
    :cond_0
    const/16 v6, 0xc7

    aput-boolean v8, v2, v6

    .line 589
    const-string v6, "name"

    const v7, 0x7f080029

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xc8

    aput-boolean v8, v2, v5

    goto/16 :goto_0

    .line 592
    :cond_1
    const/16 v5, 0xca

    aput-boolean v8, v2, v5

    .line 593
    const-string v5, "image"

    const-string v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xcb

    aput-boolean v8, v2, v5

    goto/16 :goto_1

    .line 596
    :cond_2
    const/16 v5, 0xcd

    aput-boolean v8, v2, v5

    .line 597
    const-string v5, "created"

    invoke-virtual {p2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v5, 0xce

    aput-boolean v8, v2, v5

    goto/16 :goto_2

    .line 600
    :cond_3
    const/16 v5, 0xd0

    aput-boolean v8, v2, v5

    .line 601
    const-string v5, "modified"

    invoke-virtual {p2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v5, 0xd1

    aput-boolean v8, v2, v5

    goto/16 :goto_3

    .line 604
    :cond_4
    const/16 v5, 0xd3

    aput-boolean v8, v2, v5

    .line 605
    const-string v5, "accessed"

    invoke-virtual {p2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0xd4

    aput-boolean v8, v2, v4

    goto/16 :goto_4

    .line 608
    :cond_5
    const/16 v4, 0xd6

    aput-boolean v8, v2, v4

    .line 609
    const-string v4, "share_contacts"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xd7

    aput-boolean v8, v2, v4

    goto/16 :goto_5

    .line 612
    :cond_6
    const/16 v4, 0xd9

    aput-boolean v8, v2, v4

    .line 613
    const-string v4, "skin_background"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xda

    aput-boolean v8, v2, v4

    goto/16 :goto_6

    .line 616
    :cond_7
    const/16 v4, 0xdc

    aput-boolean v8, v2, v4

    .line 617
    const-string v4, "skin_font"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xdd

    aput-boolean v8, v2, v4

    goto/16 :goto_7

    .line 620
    :cond_8
    const/16 v4, 0xdf

    aput-boolean v8, v2, v4

    .line 621
    const-string v4, "skin_color"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v4, 0xe0

    aput-boolean v8, v2, v4

    goto/16 :goto_8

    .line 624
    :cond_9
    const/16 v4, 0xe2

    aput-boolean v8, v2, v4

    .line 625
    const-string v4, "skin_color_strikethrough"

    const v5, -0xff9a00

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v4, 0xe3

    aput-boolean v8, v2, v4

    goto/16 :goto_9

    .line 645
    .restart local v0    # "rowID":J
    :cond_a
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xea

    aput-boolean v8, v2, v4

    throw v3
.end method

.method private insertStore(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v2

    .line 721
    iget-object v3, p0, Lorg/openintents/shopping/provider/ShoppingProvider;->mOpenHelper:Lorg/openintents/shopping/provider/ShoppingDatabase;

    invoke-virtual {v3}, Lorg/openintents/shopping/provider/ShoppingDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/16 v4, 0x110

    aput-boolean v6, v2, v4

    .line 724
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x111

    aput-boolean v6, v2, v5

    .line 725
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    const/16 v5, 0x112

    aput-boolean v6, v2, v5

    .line 728
    const-string v5, "name"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v3, 0x113

    aput-boolean v6, v2, v3

    .line 729
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Store NAME must be given."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x114

    aput-boolean v6, v2, v4

    throw v3

    .line 733
    :cond_0
    const-string v5, "created"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x115

    aput-boolean v6, v2, v5

    .line 737
    :goto_0
    const-string v5, "modified"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v4, 0x118

    aput-boolean v6, v2, v4

    .line 745
    :goto_1
    const-string v4, "stores"

    const-string v5, "stores"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 746
    .local v0, "rowID":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_3

    const/16 v3, 0x11b

    aput-boolean v6, v2, v3

    .line 747
    sget-object v3, Lorg/openintents/shopping/library/provider/ShoppingContract$Stores;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0x11c

    aput-boolean v6, v2, v4

    .line 748
    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/16 v4, 0x11d

    aput-boolean v6, v2, v4

    .line 750
    new-instance v4, Landroid/content/Intent;

    const-string v5, "org.openintents.action.INSERTED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x11e

    aput-boolean v6, v2, v5

    .line 751
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v5, 0x11f

    aput-boolean v6, v2, v5

    .line 752
    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 754
    const/16 v4, 0x120

    aput-boolean v6, v2, v4

    return-object v3

    .line 733
    .end local v0    # "rowID":J
    :cond_1
    const/16 v5, 0x116

    aput-boolean v6, v2, v5

    .line 734
    const-string v5, "created"

    invoke-virtual {p2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v5, 0x117

    aput-boolean v6, v2, v5

    goto :goto_0

    .line 737
    :cond_2
    const/16 v5, 0x119

    aput-boolean v6, v2, v5

    .line 738
    const-string v5, "modified"

    invoke-virtual {p2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0x11a

    aput-boolean v6, v2, v4

    goto :goto_1

    .line 758
    .restart local v0    # "rowID":J
    :cond_3
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x121

    aput-boolean v6, v2, v4

    throw v3
.end method

.method private insertUnits(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v2

    .line 814
    iget-object v3, p0, Lorg/openintents/shopping/provider/ShoppingProvider;->mOpenHelper:Lorg/openintents/shopping/provider/ShoppingDatabase;

    invoke-virtual {v3}, Lorg/openintents/shopping/provider/ShoppingDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/16 v4, 0x13c

    aput-boolean v6, v2, v4

    .line 817
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x13d

    aput-boolean v6, v2, v5

    .line 820
    const-string v5, "name"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v3, 0x13e

    aput-boolean v6, v2, v3

    .line 821
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Units NAME must be given."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x13f

    aput-boolean v6, v2, v4

    throw v3

    .line 825
    :cond_0
    const-string v5, "created"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x140

    aput-boolean v6, v2, v5

    .line 829
    :goto_0
    const-string v5, "modified"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v4, 0x143

    aput-boolean v6, v2, v4

    .line 837
    :goto_1
    const-string v4, "units"

    const-string v5, "units"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 838
    .local v0, "rowID":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_3

    const/16 v3, 0x146

    aput-boolean v6, v2, v3

    .line 839
    sget-object v3, Lorg/openintents/shopping/library/provider/ShoppingContract$Units;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0x147

    aput-boolean v6, v2, v4

    .line 840
    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/16 v4, 0x148

    aput-boolean v6, v2, v4

    .line 842
    new-instance v4, Landroid/content/Intent;

    const-string v5, "org.openintents.action.INSERTED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x149

    aput-boolean v6, v2, v5

    .line 843
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v5, 0x14a

    aput-boolean v6, v2, v5

    .line 844
    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 846
    const/16 v4, 0x14b

    aput-boolean v6, v2, v4

    return-object v3

    .line 825
    .end local v0    # "rowID":J
    :cond_1
    const/16 v5, 0x141

    aput-boolean v6, v2, v5

    .line 826
    const-string v5, "created"

    invoke-virtual {p2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v5, 0x142

    aput-boolean v6, v2, v5

    goto :goto_0

    .line 829
    :cond_2
    const/16 v5, 0x144

    aput-boolean v6, v2, v5

    .line 830
    const-string v5, "modified"

    invoke-virtual {p2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0x145

    aput-boolean v6, v2, v4

    goto :goto_1

    .line 850
    .restart local v0    # "rowID":J
    :cond_3
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x14c

    aput-boolean v6, v2, v4

    throw v3
.end method

.method private listUsesStoreFilter(Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v10

    .line 387
    iget-object v0, p0, Lorg/openintents/shopping/provider/ShoppingProvider;->mOpenHelper:Lorg/openintents/shopping/provider/ShoppingDatabase;

    invoke-virtual {v0}, Lorg/openintents/shopping/provider/ShoppingDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/16 v0, 0x60

    aput-boolean v8, v10, v0

    .line 388
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/16 v2, 0x61

    aput-boolean v8, v10, v2

    .line 389
    const-string v2, "lists"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v2, 0x62

    aput-boolean v8, v10, v2

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/16 v2, 0x63

    aput-boolean v8, v10, v2

    .line 391
    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "store_filter"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x64

    aput-boolean v8, v10, v1

    .line 393
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v1, v8, :cond_0

    .line 394
    const/16 v0, 0x65

    aput-boolean v8, v10, v0

    .line 402
    :goto_0
    return v9

    .line 397
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v1, 0x66

    aput-boolean v8, v10, v1

    .line 398
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/16 v1, 0x67

    aput-boolean v8, v10, v1

    .line 399
    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    const/16 v1, 0x68

    aput-boolean v8, v10, v1

    .line 400
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 402
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    const/16 v0, 0x69

    aput-boolean v8, v10, v0

    move v0, v8

    :goto_1
    const/16 v1, 0x6b

    aput-boolean v8, v10, v1

    move v9, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x6a

    aput-boolean v8, v10, v0

    move v0, v9

    goto :goto_1
.end method

.method private validateContainsValues(Landroid/content/ContentValues;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 697
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xff

    aput-boolean v4, v0, v2

    .line 699
    const-string v2, "created"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x100

    aput-boolean v4, v0, v2

    .line 702
    :goto_0
    const-string v2, "modified"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x103

    aput-boolean v4, v0, v2

    .line 706
    :goto_1
    const-string v2, "accessed"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x106

    aput-boolean v4, v0, v1

    .line 710
    :goto_2
    const-string v1, "share_created_by"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x109

    aput-boolean v4, v0, v1

    .line 714
    :goto_3
    const-string v1, "share_modified_by"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x10c

    aput-boolean v4, v0, v1

    .line 718
    :goto_4
    const/16 v1, 0x10f

    aput-boolean v4, v0, v1

    return-void

    .line 699
    :cond_0
    const/16 v2, 0x101

    aput-boolean v4, v0, v2

    .line 700
    const-string v2, "created"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v2, 0x102

    aput-boolean v4, v0, v2

    goto :goto_0

    .line 702
    :cond_1
    const/16 v2, 0x104

    aput-boolean v4, v0, v2

    .line 703
    const-string v2, "modified"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v2, 0x105

    aput-boolean v4, v0, v2

    goto :goto_1

    .line 706
    :cond_2
    const/16 v2, 0x107

    aput-boolean v4, v0, v2

    .line 707
    const-string v2, "accessed"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v1, 0x108

    aput-boolean v4, v0, v1

    goto :goto_2

    .line 710
    :cond_3
    const/16 v1, 0x10a

    aput-boolean v4, v0, v1

    .line 711
    const-string v1, "share_created_by"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x10b

    aput-boolean v4, v0, v1

    goto :goto_3

    .line 714
    :cond_4
    const/16 v1, 0x10d

    aput-boolean v4, v0, v1

    .line 715
    const-string v1, "share_modified_by"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x10e

    aput-boolean v4, v0, v1

    goto :goto_4
.end method

.method private validateItemValues(Landroid/content/ContentValues;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb1

    aput-boolean v5, v0, v2

    .line 558
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb2

    aput-boolean v5, v0, v2

    .line 563
    :goto_0
    const-string v2, "image"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb6

    aput-boolean v5, v0, v2

    .line 567
    :goto_1
    const-string v2, "created"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xb9

    aput-boolean v5, v0, v2

    .line 571
    :goto_2
    const-string v2, "modified"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xbc

    aput-boolean v5, v0, v2

    .line 575
    :goto_3
    const-string v2, "accessed"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v1, 0xbf

    aput-boolean v5, v0, v1

    .line 578
    :goto_4
    const/16 v1, 0xc2

    aput-boolean v5, v0, v1

    return-void

    .line 558
    :cond_0
    const/16 v2, 0xb3

    aput-boolean v5, v0, v2

    .line 559
    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0xb4

    aput-boolean v5, v0, v3

    .line 560
    const-string v3, "name"

    const v4, 0x7f080028

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb5

    aput-boolean v5, v0, v2

    goto :goto_0

    .line 563
    :cond_1
    const/16 v2, 0xb7

    aput-boolean v5, v0, v2

    .line 564
    const-string v2, "image"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb8

    aput-boolean v5, v0, v2

    goto :goto_1

    .line 567
    :cond_2
    const/16 v2, 0xba

    aput-boolean v5, v0, v2

    .line 568
    const-string v2, "created"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v2, 0xbb

    aput-boolean v5, v0, v2

    goto :goto_2

    .line 571
    :cond_3
    const/16 v2, 0xbd

    aput-boolean v5, v0, v2

    .line 572
    const-string v2, "modified"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v2, 0xbe

    aput-boolean v5, v0, v2

    goto :goto_3

    .line 575
    :cond_4
    const/16 v2, 0xc0

    aput-boolean v5, v0, v2

    .line 576
    const-string v2, "accessed"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v1, 0xc1

    aput-boolean v5, v0, v1

    goto :goto_4
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/16 v9, 0x29

    const/4 v10, 0x1

    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v6

    .line 856
    iget-object v4, p0, Lorg/openintents/shopping/provider/ShoppingProvider;->mOpenHelper:Lorg/openintents/shopping/provider/ShoppingDatabase;

    invoke-virtual {v4}, Lorg/openintents/shopping/provider/ShoppingDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 858
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v4, 0x14d

    aput-boolean v10, v6, v4

    .line 860
    sget-object v4, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 960
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URL "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x173

    aput-boolean v10, v6, v5

    throw v4

    .line 862
    :pswitch_1
    const-string v4, "items"

    invoke-static {v2, v4, p2, p3}, Lorg/openintents/intents/ProviderUtils;->getAffectedRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object v0

    .local v0, "affectedRows":[J
    const/16 v4, 0x14e

    aput-boolean v10, v6, v4

    .line 864
    const-string v4, "items"

    invoke-virtual {v2, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 865
    .local v1, "count":I
    const/16 v4, 0x14f

    aput-boolean v10, v6, v4

    .line 963
    .end local v0    # "affectedRows":[J
    :goto_0
    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/16 v4, 0x174

    aput-boolean v10, v6, v4

    .line 965
    new-instance v4, Landroid/content/Intent;

    const-string v5, "org.openintents.action.DELETED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x175

    aput-boolean v10, v6, v5

    .line 966
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v5, 0x176

    aput-boolean v10, v6, v5

    .line 967
    const-string v5, "org.openintents.extra.AFFECTED_ROWS"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const/16 v5, 0x177

    aput-boolean v10, v6, v5

    .line 968
    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 970
    const/16 v4, 0x178

    aput-boolean v10, v6, v4

    return v1

    .line 868
    .end local v1    # "count":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x150

    aput-boolean v10, v6, v7

    .line 871
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v7, 0x151

    aput-boolean v10, v6, v7

    .line 872
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "whereString":Ljava/lang/String;
    const/16 v7, 0x152

    aput-boolean v10, v6, v7

    .line 877
    .end local v3    # "whereString":Ljava/lang/String;
    :goto_1
    const-string v7, "items"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v7, v8, p3}, Lorg/openintents/intents/ProviderUtils;->getAffectedRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object v0

    .restart local v0    # "affectedRows":[J
    const/16 v7, 0x154

    aput-boolean v10, v6, v7

    .line 879
    const-string v7, "items"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 881
    .restart local v1    # "count":I
    const/16 v4, 0x155

    aput-boolean v10, v6, v4

    goto/16 :goto_0

    .line 874
    .end local v0    # "affectedRows":[J
    .end local v1    # "count":I
    :cond_0
    const-string v3, ""

    const/16 v7, 0x153

    aput-boolean v10, v6, v7

    goto :goto_1

    .line 884
    :pswitch_3
    const-string v4, "lists"

    invoke-static {v2, v4, p2, p3}, Lorg/openintents/intents/ProviderUtils;->getAffectedRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object v0

    .restart local v0    # "affectedRows":[J
    const/16 v4, 0x156

    aput-boolean v10, v6, v4

    .line 886
    const-string v4, "lists"

    invoke-virtual {v2, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 887
    .restart local v1    # "count":I
    const/16 v4, 0x157

    aput-boolean v10, v6, v4

    goto/16 :goto_0

    .line 890
    .end local v0    # "affectedRows":[J
    .end local v1    # "count":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x158

    aput-boolean v10, v6, v7

    .line 892
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const/16 v7, 0x159

    aput-boolean v10, v6, v7

    .line 893
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "whereString":Ljava/lang/String;
    const/16 v7, 0x15a

    aput-boolean v10, v6, v7

    .line 898
    .end local v3    # "whereString":Ljava/lang/String;
    :goto_2
    const-string v7, "lists"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v7, v8, p3}, Lorg/openintents/intents/ProviderUtils;->getAffectedRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object v0

    .restart local v0    # "affectedRows":[J
    const/16 v7, 0x15c

    aput-boolean v10, v6, v7

    .line 900
    const-string v7, "lists"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 902
    .restart local v1    # "count":I
    const/16 v4, 0x15d

    aput-boolean v10, v6, v4

    goto/16 :goto_0

    .line 895
    .end local v0    # "affectedRows":[J
    .end local v1    # "count":I
    :cond_1
    const-string v3, ""

    const/16 v7, 0x15b

    aput-boolean v10, v6, v7

    goto :goto_2

    .line 905
    :pswitch_5
    const-string v4, "contains"

    invoke-static {v2, v4, p2, p3}, Lorg/openintents/intents/ProviderUtils;->getAffectedRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object v0

    .restart local v0    # "affectedRows":[J
    const/16 v4, 0x15e

    aput-boolean v10, v6, v4

    .line 907
    const-string v4, "contains"

    invoke-virtual {v2, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 908
    .restart local v1    # "count":I
    const/16 v4, 0x15f

    aput-boolean v10, v6, v4

    goto/16 :goto_0

    .line 911
    .end local v0    # "affectedRows":[J
    .end local v1    # "count":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x160

    aput-boolean v10, v6, v7

    .line 913
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v7, 0x161

    aput-boolean v10, v6, v7

    .line 914
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "whereString":Ljava/lang/String;
    const/16 v7, 0x162

    aput-boolean v10, v6, v7

    .line 919
    .end local v3    # "whereString":Ljava/lang/String;
    :goto_3
    const-string v7, "contains"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v7, v8, p3}, Lorg/openintents/intents/ProviderUtils;->getAffectedRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object v0

    .restart local v0    # "affectedRows":[J
    const/16 v7, 0x164

    aput-boolean v10, v6, v7

    .line 921
    const-string v7, "contains"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 923
    .restart local v1    # "count":I
    const/16 v4, 0x165

    aput-boolean v10, v6, v4

    goto/16 :goto_0

    .line 916
    .end local v0    # "affectedRows":[J
    .end local v1    # "count":I
    :cond_2
    const-string v3, ""

    const/16 v7, 0x163

    aput-boolean v10, v6, v7

    goto :goto_3

    .line 927
    :pswitch_7
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/16 v7, 0x166

    aput-boolean v10, v6, v7

    .line 928
    const-string v7, "note"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const/16 v7, 0x167

    aput-boolean v10, v6, v7

    .line 929
    invoke-virtual {p0, p1, v4, v5, v5}, Lorg/openintents/shopping/provider/ShoppingProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 930
    .restart local v1    # "count":I
    const/16 v4, 0x168

    aput-boolean v10, v6, v4

    move-object v0, v5

    goto/16 :goto_0

    .line 933
    .end local v1    # "count":I
    :pswitch_8
    const-string v4, "stores"

    invoke-static {v2, v4, p2, p3}, Lorg/openintents/intents/ProviderUtils;->getAffectedRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object v0

    .restart local v0    # "affectedRows":[J
    const/16 v4, 0x169

    aput-boolean v10, v6, v4

    .line 935
    const-string v4, "stores"

    invoke-virtual {v2, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 936
    .restart local v1    # "count":I
    const/16 v4, 0x16a

    aput-boolean v10, v6, v4

    goto/16 :goto_0

    .line 939
    .end local v0    # "affectedRows":[J
    .end local v1    # "count":I
    :pswitch_9
    const-string v4, "itemstores"

    invoke-static {v2, v4, p2, p3}, Lorg/openintents/intents/ProviderUtils;->getAffectedRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object v0

    .restart local v0    # "affectedRows":[J
    const/16 v4, 0x16b

    aput-boolean v10, v6, v4

    .line 941
    const-string v4, "itemstores"

    invoke-virtual {v2, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 942
    .restart local v1    # "count":I
    const/16 v4, 0x16c

    aput-boolean v10, v6, v4

    goto/16 :goto_0

    .line 945
    .end local v0    # "affectedRows":[J
    .end local v1    # "count":I
    :pswitch_a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x16d

    aput-boolean v10, v6, v7

    .line 947
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v7, 0x16e

    aput-boolean v10, v6, v7

    .line 948
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "whereString":Ljava/lang/String;
    const/16 v7, 0x16f

    aput-boolean v10, v6, v7

    .line 953
    .end local v3    # "whereString":Ljava/lang/String;
    :goto_4
    const-string v7, "itemstores"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v7, v8, p3}, Lorg/openintents/intents/ProviderUtils;->getAffectedRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object v0

    .restart local v0    # "affectedRows":[J
    const/16 v7, 0x171

    aput-boolean v10, v6, v7

    .line 955
    const-string v7, "itemstores"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 957
    .restart local v1    # "count":I
    const/16 v4, 0x172

    aput-boolean v10, v6, v4

    goto/16 :goto_0

    .line 950
    .end local v0    # "affectedRows":[J
    .end local v1    # "count":I
    :cond_3
    const-string v3, ""

    const/16 v7, 0x170

    aput-boolean v10, v6, v7

    goto :goto_4

    .line 860
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v1

    .line 1112
    sget-object v0, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x1bd

    aput-boolean v4, v1, v2

    throw v0

    .line 1114
    :sswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.openintents.shopping.item"

    const/16 v2, 0x1ab

    aput-boolean v4, v1, v2

    .line 1163
    :goto_0
    return-object v0

    .line 1117
    :sswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.openintents.shopping.item"

    const/16 v2, 0x1ac

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1120
    :sswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.openintents.shopping.list"

    const/16 v2, 0x1ad

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1123
    :sswitch_3
    const-string v0, "vnd.android.cursor.item/vnd.openintents.shopping.list"

    const/16 v2, 0x1ae

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1126
    :sswitch_4
    const-string v0, "vnd.android.cursor.dir/vnd.openintents.shopping.contains"

    const/16 v2, 0x1af

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1129
    :sswitch_5
    const-string v0, "vnd.android.cursor.item/vnd.openintents.shopping.contains"

    const/16 v2, 0x1b0

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1132
    :sswitch_6
    const-string v0, "vnd.android.cursor.dir/vnd.openintents.shopping.containsfull"

    const/16 v2, 0x1b1

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1135
    :sswitch_7
    const-string v0, "vnd.android.cursor.item/vnd.openintents.shopping.containsfull"

    const/16 v2, 0x1b2

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1138
    :sswitch_8
    const-string v0, "vnd.android.cursor.dir/vnd.openintents.shopping.stores"

    const/16 v2, 0x1b3

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1142
    :sswitch_9
    const-string v0, "vnd.android.cursor.item/vnd.openintents.shopping.stores"

    const/16 v2, 0x1b4

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1145
    :sswitch_a
    const-string v0, "vnd.android.cursor.dir/vnd.openintents.notepad.note"

    const/16 v2, 0x1b5

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1147
    :sswitch_b
    const-string v0, "vnd.android.cursor.item/vnd.openintents.notepad.note"

    const/16 v2, 0x1b6

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1150
    :sswitch_c
    const-string v0, "vnd.android.cursor.dir/vnd.openintents.shopping.itemstores"

    const/16 v2, 0x1b7

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1152
    :sswitch_d
    const-string v0, "vnd.android.cursor.item/vnd.openintents.shopping.itemstores"

    const/16 v2, 0x1b8

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1154
    :sswitch_e
    const-string v0, "vnd.android.cursor.dir/vnd.openintents.shopping.itemstores"

    const/16 v2, 0x1b9

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1157
    :sswitch_f
    const-string v0, "vnd.android.cursor.dir/vnd.openintents.shopping.units"

    const/16 v2, 0x1ba

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1159
    :sswitch_10
    const-string v0, "vnd.android.cursor.item/vnd.openintents.shopping.units"

    const/16 v2, 0x1bb

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1163
    :sswitch_11
    const-string v0, "vnd.android.cursor.item/vnd.openintents.shopping.list"

    const/16 v2, 0x1bc

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1112
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_9
        0xa -> :sswitch_c
        0xb -> :sswitch_d
        0xc -> :sswitch_a
        0xd -> :sswitch_b
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x11 -> :sswitch_e
        0x65 -> :sswitch_6
        0x66 -> :sswitch_7
        0x67 -> :sswitch_11
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v2

    .line 494
    if-eqz p2, :cond_0

    const/16 v1, 0x9d

    aput-boolean v5, v2, v1

    .line 495
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .local v0, "values":Landroid/content/ContentValues;
    const/16 v1, 0x9e

    aput-boolean v5, v2, v1

    .line 501
    .end local v0    # "values":Landroid/content/ContentValues;
    :goto_0
    sget-object v1, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 526
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xa7

    aput-boolean v5, v2, v3

    throw v1

    .line 497
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x9f

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 504
    :sswitch_0
    invoke-direct {p0, p1, v0}, Lorg/openintents/shopping/provider/ShoppingProvider;->insertItem(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    const/16 v3, 0xa0

    aput-boolean v5, v2, v3

    .line 523
    :goto_1
    return-object v1

    .line 507
    :sswitch_1
    invoke-direct {p0, p1, v0}, Lorg/openintents/shopping/provider/ShoppingProvider;->insertList(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    const/16 v3, 0xa1

    aput-boolean v5, v2, v3

    goto :goto_1

    .line 510
    :sswitch_2
    invoke-direct {p0, p1, v0}, Lorg/openintents/shopping/provider/ShoppingProvider;->insertContains(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    const/16 v3, 0xa2

    aput-boolean v5, v2, v3

    goto :goto_1

    .line 513
    :sswitch_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insert not supported for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", use CONTAINS instead of CONTAINS_FULL."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xa3

    aput-boolean v5, v2, v3

    throw v1

    .line 517
    :sswitch_4
    invoke-direct {p0, p1, v0}, Lorg/openintents/shopping/provider/ShoppingProvider;->insertStore(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    const/16 v3, 0xa4

    aput-boolean v5, v2, v3

    goto :goto_1

    .line 520
    :sswitch_5
    invoke-direct {p0, p1, v0}, Lorg/openintents/shopping/provider/ShoppingProvider;->insertItemStore(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    const/16 v3, 0xa5

    aput-boolean v5, v2, v3

    goto :goto_1

    .line 523
    :sswitch_6
    invoke-direct {p0, p1, v0}, Lorg/openintents/shopping/provider/ShoppingProvider;->insertUnits(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    const/16 v3, 0xa6

    aput-boolean v5, v2, v3

    goto :goto_1

    .line 501
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x7 -> :sswitch_4
        0xa -> :sswitch_5
        0xc -> :sswitch_0
        0xe -> :sswitch_6
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v0

    .line 118
    new-instance v1, Lorg/openintents/shopping/provider/ShoppingDatabase;

    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/openintents/shopping/provider/ShoppingDatabase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/openintents/shopping/provider/ShoppingProvider;->mOpenHelper:Lorg/openintents/shopping/provider/ShoppingDatabase;

    .line 119
    aput-boolean v3, v0, v3

    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17

    .prologue
    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v16

    .line 125
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 127
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-wide/16 v12, -0x1

    .line 132
    .local v12, "list_id":J
    const/4 v10, 0x0

    .line 133
    .local v10, "defaultOrderBy":Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 135
    sget-object v3, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 361
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x5a

    const/4 v5, 0x1

    aput-boolean v5, v16, v4

    throw v3

    .line 135
    :sswitch_0
    const/4 v3, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 324
    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v3, v12, v4

    if-eqz v3, :cond_4

    const/16 v3, 0x50

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 332
    :goto_1
    sget-object v3, Lorg/openintents/shopping/provider/ShoppingProvider;->SUBTOTALS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 333
    const-string v11, "priority, status"

    .line 334
    .local v11, "groupBy":Ljava/lang/String;
    const/16 v3, 0x54

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 335
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->getUsingPerStorePricesFromPrefs(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x55

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(SELECT (min(itemstores.price) * case when ((contains.quantity is null) or (length(contains.quantity) = 0)) then 1 else contains.quantity end) as qty_price, contains.status as status, contains.priority as priority FROM contains, items left outer join itemstores on (items._id = itemstores.item_id) WHERE (contains.item_id = items._id AND contains.list_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) AND contains.status != 3 GROUP BY itemstores.item_id, status) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0x56

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    .line 367
    .end local v11    # "groupBy":Ljava/lang/String;
    :goto_2
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 368
    move-object v15, v10

    .local v15, "orderBy":Ljava/lang/String;
    const/16 v3, 0x5b

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v9, v15

    .line 373
    .end local v15    # "orderBy":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/openintents/shopping/provider/ShoppingProvider;->mOpenHelper:Lorg/openintents/shopping/provider/ShoppingDatabase;

    invoke-virtual {v3}, Lorg/openintents/shopping/provider/ShoppingDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/16 v4, 0x5d

    const/4 v5, 0x1

    aput-boolean v5, v16, v4

    .line 380
    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    const/16 v3, 0x5e

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 382
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v14, v3, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 383
    const/16 v3, 0x5f

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    :goto_4
    return-object v14

    .line 138
    :sswitch_1
    const-string v3, "items"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v3, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 139
    sget-object v3, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 140
    const-string v10, "modified ASC"

    .line 141
    const/4 v3, 0x5

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto :goto_2

    .line 144
    :sswitch_2
    const-string v3, "items"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v3, 0x6

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 146
    const/4 v3, 0x7

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 149
    :sswitch_3
    const-string v3, "lists"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0x8

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 150
    sget-object v3, Lorg/openintents/shopping/provider/ShoppingProvider;->LISTS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 151
    const-string v10, "modified ASC"

    .line 152
    const/16 v3, 0x9

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 155
    :sswitch_4
    const-string v3, "lists"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0xa

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 157
    const/16 v3, 0xb

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 160
    :sswitch_5
    const-string v3, "contains"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0xc

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 161
    sget-object v3, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 162
    const-string v10, "modified DESC"

    .line 163
    const/16 v3, 0xd

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 166
    :sswitch_6
    const-string v3, "contains"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0xe

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 168
    const/16 v3, 0xf

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 175
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->getUsingFiltersFromPrefs(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x10

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 201
    :goto_5
    const/16 v3, 0x17

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 202
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->getUsingPerStorePricesFromPrefs(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x18

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 203
    const-string v3, "contains, items, lists left outer join itemstores on (items._id = itemstores.item_id)"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0x19

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 204
    sget-object v3, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_CHEAPEST_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const/16 v3, 0x1a

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 205
    const-string v3, "contains.item_id = items._id AND contains.list_id = lists._id"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 207
    const-string v11, "items._id"

    .restart local v11    # "groupBy":Ljava/lang/String;
    const/16 v3, 0x1b

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 216
    .end local v11    # "groupBy":Ljava/lang/String;
    :goto_6
    const-string v10, "contains.modified ASC"

    const/16 v3, 0x1f

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 217
    const/4 v3, 0x0

    aget-object v3, p4, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/openintents/shopping/provider/ShoppingProvider;->getListTagsFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/4 v5, 0x1

    aput-boolean v5, v16, v4

    .line 218
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v3, 0x21

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 175
    :cond_0
    const/4 v3, 0x0

    aget-object v3, p4, v3

    const/16 v4, 0x11

    const/4 v5, 0x1

    aput-boolean v5, v16, v4

    .line 176
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/openintents/shopping/provider/ShoppingProvider;->listUsesStoreFilter(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x12

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    goto :goto_5

    :cond_1
    const/16 v3, 0x13

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 183
    const-string v3, "contains, items, lists, itemstores"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0x14

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 184
    sget-object v3, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_STORE_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const/16 v3, 0x15

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 185
    const-string v3, "contains.item_id = items._id AND contains.list_id = lists._id AND items._id = itemstores.item_id AND lists.store_filter = itemstores.store_id"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/16 v3, 0x16

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    goto :goto_6

    .line 210
    :cond_2
    const-string v3, "contains, items, lists"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0x1c

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 211
    sget-object v3, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const/16 v3, 0x1d

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 212
    const-string v3, "contains.item_id = items._id AND contains.list_id = lists._id"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/16 v3, 0x1e

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    goto :goto_6

    .line 218
    :cond_3
    const/16 v4, 0x22

    const/4 v5, 0x1

    aput-boolean v5, v16, v4

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND item_tags like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/16 v3, 0x23

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 224
    :sswitch_8
    const-string v3, "contains, items, lists"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0x24

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/16 v3, 0x25

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 226
    const-string v3, "contains.item_id = items._id AND contains.list_id = lists._id"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 228
    const/16 v3, 0x26

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 231
    :sswitch_9
    const-string v3, "stores"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0x27

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 232
    sget-object v3, Lorg/openintents/shopping/provider/ShoppingProvider;->STORES_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 233
    const/16 v3, 0x28

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 236
    :sswitch_a
    const-string v3, "stores"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0x29

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 238
    const/16 v3, 0x2a

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 241
    :sswitch_b
    const-string v3, "stores"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0x2b

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 242
    sget-object v3, Lorg/openintents/shopping/provider/ShoppingProvider;->STORES_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const/16 v3, 0x2c

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 244
    const/16 v3, 0x2d

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 249
    :sswitch_c
    const-string v3, "contains, items, lists"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0x2e

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 250
    sget-object v3, Lorg/openintents/shopping/provider/ShoppingProvider;->CONTAINS_FULL_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const/16 v3, 0x2f

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contains.item_id = items._id AND contains.list_id = lists._id AND contains.list_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0x30

    const/4 v5, 0x1

    aput-boolean v5, v16, v3

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x31

    const/4 v5, 0x1

    aput-boolean v5, v16, v4

    .line 251
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 254
    const-string v11, "items.tags"

    .line 255
    .restart local v11    # "groupBy":Ljava/lang/String;
    const/16 v3, 0x32

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 258
    .end local v11    # "groupBy":Ljava/lang/String;
    :sswitch_d
    const-string v3, "itemstores, items, stores"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0x33

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 259
    sget-object v3, Lorg/openintents/shopping/provider/ShoppingProvider;->ITEMSTORES_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const/16 v3, 0x34

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 260
    const-string v3, "itemstores.item_id = items._id AND itemstores.store_id = stores._id"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 261
    const/16 v3, 0x35

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 264
    :sswitch_e
    const-string v3, "itemstores, items, stores"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0x36

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/16 v3, 0x37

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 266
    const-string v3, "itemstores.item_id = items._id AND itemstores.store_id = stores._id"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 267
    const/16 v3, 0x38

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 272
    :sswitch_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stores left outer join itemstores on (stores._id = itemstores.store_id and itemstores.item_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0x39

    const/4 v5, 0x1

    aput-boolean v5, v16, v3

    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    const/4 v5, 0x1

    aput-boolean v5, v16, v4

    .line 272
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0x3b

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stores.list_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 277
    const/16 v3, 0x3c

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 280
    :sswitch_10
    const-string v3, "items"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0x3d

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 281
    sget-object v3, Lorg/openintents/shopping/provider/ShoppingProvider;->NOTES_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 282
    const/16 v3, 0x3e

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 285
    :sswitch_11
    const-string v3, "items"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0x3f

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 286
    sget-object v3, Lorg/openintents/shopping/provider/ShoppingProvider;->NOTES_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const/16 v3, 0x40

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 288
    const/16 v3, 0x41

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 291
    :sswitch_12
    const-string v3, "units"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0x42

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 292
    sget-object v3, Lorg/openintents/shopping/provider/ShoppingProvider;->UNITS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 293
    const/16 v3, 0x43

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 296
    :sswitch_13
    const-string v3, "units"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v3, 0x44

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 297
    sget-object v3, Lorg/openintents/shopping/provider/ShoppingProvider;->UNITS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const/16 v3, 0x45

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 299
    const/16 v3, 0x46

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 302
    :sswitch_14
    new-instance v14, Landroid/database/MatrixCursor;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v3, 0x47

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 305
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "org.openintents.shopping_preferences"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/16 v4, 0x48

    const/4 v5, 0x1

    aput-boolean v5, v16, v4

    .line 308
    const-string v4, "lastused"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v12, v3

    const/16 v3, 0x49

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 309
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v14, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 310
    const/16 v3, 0x4a

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    goto/16 :goto_4

    .line 312
    :sswitch_15
    new-instance v14, Landroid/database/MatrixCursor;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 315
    .local v14, "m":Landroid/database/MatrixCursor;
    const/16 v3, 0x4b

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 316
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x4c

    const/4 v6, 0x1

    aput-boolean v6, v16, v5

    .line 315
    invoke-static {v3, v4}, Lorg/openintents/shopping/ui/PreferenceActivity;->getSortOrderFromPrefs(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4d

    const/4 v5, 0x1

    aput-boolean v5, v16, v4

    .line 317
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v14, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 318
    const/16 v3, 0x4e

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    goto/16 :goto_4

    .line 321
    .end local v14    # "m":Landroid/database/MatrixCursor;
    :sswitch_16
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const/16 v3, 0x4f

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    goto/16 :goto_0

    .line 324
    :cond_4
    const/16 v3, 0x51

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    .line 327
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "org.openintents.shopping_preferences"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/16 v4, 0x52

    const/4 v5, 0x1

    aput-boolean v5, v16, v4

    .line 330
    const-string v4, "lastused"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v12, v3

    const/16 v3, 0x53

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    goto/16 :goto_1

    .line 348
    .restart local v11    # "groupBy":Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(SELECT (items.price * case when ((contains.quantity is null) or (length(contains.quantity) = 0)) then 1 else contains.quantity end) as qty_price, contains.status as status, contains.priority as priority FROM contains, items WHERE (contains.item_id = items._id AND contains.list_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) AND contains.status != 3) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 354
    const/16 v3, 0x57

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object v7, v11

    goto/16 :goto_2

    .line 357
    .end local v11    # "groupBy":Ljava/lang/String;
    :sswitch_17
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/16 v3, 0x58

    const/4 v6, 0x1

    aput-boolean v6, v16, v3

    .line 358
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v5}, Lorg/openintents/shopping/provider/ShoppingProvider;->copyItemAndContains([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v14

    const/16 v3, 0x59

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    goto/16 :goto_4

    .line 370
    :cond_6
    const/16 v3, 0x5c

    const/4 v4, 0x1

    aput-boolean v4, v16, v3

    move-object/from16 v9, p5

    goto/16 :goto_3

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x9 -> :sswitch_b
        0xa -> :sswitch_d
        0xb -> :sswitch_e
        0xc -> :sswitch_10
        0xd -> :sswitch_11
        0xe -> :sswitch_12
        0xf -> :sswitch_13
        0x10 -> :sswitch_15
        0x11 -> :sswitch_f
        0x12 -> :sswitch_0
        0x13 -> :sswitch_16
        0x65 -> :sswitch_7
        0x66 -> :sswitch_8
        0x67 -> :sswitch_14
        0x68 -> :sswitch_17
        0x69 -> :sswitch_c
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/16 v9, 0x29

    const/4 v10, 0x1

    invoke-static {}, Lorg/openintents/shopping/provider/ShoppingProvider;->$jacocoInit()[Z

    move-result-object v6

    .line 978
    iget-object v4, p0, Lorg/openintents/shopping/provider/ShoppingProvider;->mOpenHelper:Lorg/openintents/shopping/provider/ShoppingDatabase;

    invoke-virtual {v4}, Lorg/openintents/shopping/provider/ShoppingDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 980
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v4, 0x179

    aput-boolean v10, v6, v4

    .line 983
    sget-object v4, Lorg/openintents/shopping/provider/ShoppingProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1094
    :pswitch_0
    const-string v4, "ShoppingProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update received unknown URL: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x1a3

    aput-boolean v10, v6, v4

    .line 1095
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URL "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1a4

    aput-boolean v10, v6, v5

    throw v4

    .line 983
    :pswitch_1
    const/16 v4, 0x17a

    aput-boolean v10, v6, v4

    .line 997
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x180

    aput-boolean v10, v6, v7

    .line 1000
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v7, 0x181

    aput-boolean v10, v6, v7

    .line 1001
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "whereString":Ljava/lang/String;
    const/16 v7, 0x182

    aput-boolean v10, v6, v7

    .line 1006
    .end local v3    # "whereString":Ljava/lang/String;
    :goto_1
    const-string v7, "items"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, p2, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1008
    .local v0, "count":I
    sget-object v2, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    .line 1009
    .local v2, "secondUri":Landroid/net/Uri;
    const/16 v4, 0x184

    aput-boolean v10, v6, v4

    .line 1098
    .end local v2    # "secondUri":Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1099
    if-nez v2, :cond_6

    const/16 v4, 0x1a5

    aput-boolean v10, v6, v4

    .line 1103
    :goto_3
    new-instance v4, Landroid/content/Intent;

    const-string v5, "org.openintents.action.MODIFIED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1a8

    aput-boolean v10, v6, v5

    .line 1104
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v5, 0x1a9

    aput-boolean v10, v6, v5

    .line 1105
    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1107
    const/16 v4, 0x1aa

    aput-boolean v10, v6, v4

    return v0

    .line 986
    .end local v0    # "count":I
    :pswitch_2
    const-string v4, "items"

    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 987
    .restart local v0    # "count":I
    const/16 v4, 0x17b

    aput-boolean v10, v6, v4

    move-object v2, v5

    goto :goto_2

    .line 991
    .end local v0    # "count":I
    :pswitch_3
    const-string v4, "title"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/16 v4, 0x17c

    aput-boolean v10, v6, v4

    .line 992
    const-string v4, "encrypted"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/16 v4, 0x17d

    aput-boolean v10, v6, v4

    .line 993
    const-string v4, "theme"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/16 v4, 0x17e

    aput-boolean v10, v6, v4

    .line 994
    const-string v4, "nothing_To_see_here"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/16 v4, 0x17f

    aput-boolean v10, v6, v4

    goto/16 :goto_0

    .line 1003
    :cond_0
    const-string v3, ""

    const/16 v7, 0x183

    aput-boolean v10, v6, v7

    goto/16 :goto_1

    .line 1012
    :pswitch_4
    const-string v4, "lists"

    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1013
    .restart local v0    # "count":I
    const/16 v4, 0x185

    aput-boolean v10, v6, v4

    move-object v2, v5

    goto :goto_2

    .line 1016
    .end local v0    # "count":I
    :pswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x186

    aput-boolean v10, v6, v7

    .line 1018
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const/16 v7, 0x187

    aput-boolean v10, v6, v7

    .line 1019
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "whereString":Ljava/lang/String;
    const/16 v7, 0x188

    aput-boolean v10, v6, v7

    .line 1024
    .end local v3    # "whereString":Ljava/lang/String;
    :goto_4
    const-string v7, "lists"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, p2, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1026
    .restart local v0    # "count":I
    const/16 v4, 0x18a

    aput-boolean v10, v6, v4

    move-object v2, v5

    goto/16 :goto_2

    .line 1021
    .end local v0    # "count":I
    :cond_1
    const-string v3, ""

    const/16 v7, 0x189

    aput-boolean v10, v6, v7

    goto :goto_4

    .line 1029
    :pswitch_6
    const-string v4, "contains"

    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1030
    .restart local v0    # "count":I
    const/16 v4, 0x18b

    aput-boolean v10, v6, v4

    move-object v2, v5

    goto/16 :goto_2

    .line 1033
    .end local v0    # "count":I
    :pswitch_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x18c

    aput-boolean v10, v6, v7

    .line 1035
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v7, 0x18d

    aput-boolean v10, v6, v7

    .line 1036
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "whereString":Ljava/lang/String;
    const/16 v7, 0x18e

    aput-boolean v10, v6, v7

    .line 1041
    .end local v3    # "whereString":Ljava/lang/String;
    :goto_5
    const-string v7, "contains"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, p2, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1043
    .restart local v0    # "count":I
    const/16 v4, 0x190

    aput-boolean v10, v6, v4

    move-object v2, v5

    goto/16 :goto_2

    .line 1038
    .end local v0    # "count":I
    :cond_2
    const-string v3, ""

    const/16 v7, 0x18f

    aput-boolean v10, v6, v7

    goto :goto_5

    .line 1046
    :pswitch_8
    const-string v4, "stores"

    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1047
    .restart local v0    # "count":I
    const/16 v4, 0x191

    aput-boolean v10, v6, v4

    move-object v2, v5

    goto/16 :goto_2

    .line 1050
    .end local v0    # "count":I
    :pswitch_9
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x192

    aput-boolean v10, v6, v7

    .line 1052
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v7, 0x193

    aput-boolean v10, v6, v7

    .line 1053
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "whereString":Ljava/lang/String;
    const/16 v7, 0x194

    aput-boolean v10, v6, v7

    .line 1057
    .end local v3    # "whereString":Ljava/lang/String;
    :goto_6
    const-string v7, "stores"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, p2, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1059
    .restart local v0    # "count":I
    const/16 v4, 0x196

    aput-boolean v10, v6, v4

    move-object v2, v5

    goto/16 :goto_2

    .line 1055
    .end local v0    # "count":I
    :cond_3
    const-string v3, ""

    const/16 v7, 0x195

    aput-boolean v10, v6, v7

    goto :goto_6

    .line 1062
    :pswitch_a
    const-string v4, "itemstores"

    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1063
    .restart local v0    # "count":I
    const/16 v4, 0x197

    aput-boolean v10, v6, v4

    move-object v2, v5

    goto/16 :goto_2

    .line 1066
    .end local v0    # "count":I
    :pswitch_b
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x198

    aput-boolean v10, v6, v7

    .line 1068
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0x199

    aput-boolean v10, v6, v7

    .line 1069
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "whereString":Ljava/lang/String;
    const/16 v7, 0x19a

    aput-boolean v10, v6, v7

    .line 1073
    .end local v3    # "whereString":Ljava/lang/String;
    :goto_7
    const-string v7, "itemstores"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, p2, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1075
    .restart local v0    # "count":I
    const/16 v4, 0x19c

    aput-boolean v10, v6, v4

    move-object v2, v5

    goto/16 :goto_2

    .line 1071
    .end local v0    # "count":I
    :cond_4
    const-string v3, ""

    const/16 v7, 0x19b

    aput-boolean v10, v6, v7

    goto :goto_7

    .line 1078
    :pswitch_c
    const-string v4, "units"

    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1079
    .restart local v0    # "count":I
    const/16 v4, 0x19d

    aput-boolean v10, v6, v4

    move-object v2, v5

    goto/16 :goto_2

    .line 1082
    .end local v0    # "count":I
    :pswitch_d
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x19e

    aput-boolean v10, v6, v7

    .line 1084
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const/16 v7, 0x19f

    aput-boolean v10, v6, v7

    .line 1085
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "whereString":Ljava/lang/String;
    const/16 v7, 0x1a0

    aput-boolean v10, v6, v7

    .line 1089
    .end local v3    # "whereString":Ljava/lang/String;
    :goto_8
    const-string v7, "units"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, p2, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1091
    .restart local v0    # "count":I
    const/16 v4, 0x1a2

    aput-boolean v10, v6, v4

    move-object v2, v5

    goto/16 :goto_2

    .line 1087
    .end local v0    # "count":I
    :cond_5
    const-string v3, ""

    const/16 v7, 0x1a1

    aput-boolean v10, v6, v7

    goto :goto_8

    .line 1099
    .restart local v0    # "count":I
    :cond_6
    const/16 v4, 0x1a6

    aput-boolean v10, v6, v4

    .line 1100
    invoke-virtual {p0}, Lorg/openintents/shopping/provider/ShoppingProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/16 v4, 0x1a7

    aput-boolean v10, v6, v4

    goto/16 :goto_3

    .line 983
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_3
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
