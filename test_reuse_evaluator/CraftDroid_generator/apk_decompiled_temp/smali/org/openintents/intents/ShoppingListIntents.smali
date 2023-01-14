.class public Lorg/openintents/intents/ShoppingListIntents;
.super Ljava/lang/Object;
.source "ShoppingListIntents.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final EXTRA_ACTION:Ljava/lang/String; = "org.openintents.extra.ACTION"

.field public static final EXTRA_DATA:Ljava/lang/String; = "org.openintents.extra.DATA"

.field public static final EXTRA_STRING_ARRAYLIST_BARCODE:Ljava/lang/String; = "org.openintents.extra.STRING_ARRAYLIST_BARCODE"

.field public static final EXTRA_STRING_ARRAYLIST_PRICE:Ljava/lang/String; = "org.openintents.extra.STRING_ARRAYLIST_PRICE"

.field public static final EXTRA_STRING_ARRAYLIST_QUANTITY:Ljava/lang/String; = "org.openintents.extra.STRING_ARRAYLIST_QUANTITY"

.field public static final EXTRA_STRING_ARRAYLIST_SHOPPING:Ljava/lang/String; = "org.openintents.extra.STRING_ARRAYLIST_SHOPPING"

.field public static final TASK_CLEAN_UP_LIST:Ljava/lang/String; = "org.openintents.shopping.task.clean_up_list"

.field public static final TYPE_STRING_ARRAYLIST_SHOPPING:Ljava/lang/String; = "org.openintents.type/string.arraylist.shopping"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/intents/ShoppingListIntents;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4f1c42dbd3a4a598L    # 1.2483289897407093E73

    const-string v2, "org/openintents/intents/ShoppingListIntents"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/intents/ShoppingListIntents;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/intents/ShoppingListIntents;->$jacocoInit()[Z

    move-result-object v0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
