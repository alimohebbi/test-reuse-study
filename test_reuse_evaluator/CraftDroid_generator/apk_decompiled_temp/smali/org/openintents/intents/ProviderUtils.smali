.class public Lorg/openintents/intents/ProviderUtils;
.super Ljava/lang/Object;
.source "ProviderUtils.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/intents/ProviderUtils;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x287f03b6d2deb4b9L    # -3.267883030007471E113

    const-string v2, "org/openintents/intents/ProviderUtils"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/intents/ProviderUtils;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/intents/ProviderUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getAffectedRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J
    .locals 12

    .prologue
    invoke-static {}, Lorg/openintents/intents/ProviderUtils;->$jacocoInit()[Z

    move-result-object v11

    .line 23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const/4 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    .line 37
    .local v8, "affectedRows":[J
    .local v9, "c":Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 27
    .end local v8    # "affectedRows":[J
    .end local v9    # "c":Landroid/database/Cursor;
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 29
    .restart local v9    # "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 30
    .restart local v8    # "affectedRows":[J
    if-nez v9, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    .line 36
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 37
    const/16 v0, 0x9

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    .line 31
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v8, v0, [J

    const/4 v0, 0x4

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    .line 32
    const/4 v10, 0x0

    const/4 v0, 0x5

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x6

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    .line 33
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v8, v10

    .line 32
    add-int/lit8 v10, v10, 0x1

    .local v10, "i":I
    const/16 v0, 0x8

    const/4 v1, 0x1

    aput-boolean v1, v11, v0

    goto :goto_2
.end method
