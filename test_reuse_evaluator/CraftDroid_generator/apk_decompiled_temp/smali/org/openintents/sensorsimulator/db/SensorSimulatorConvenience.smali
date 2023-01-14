.class public Lorg/openintents/sensorsimulator/db/SensorSimulatorConvenience;
.super Ljava/lang/Object;
.source "SensorSimulatorConvenience.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SensorSimulatorConvenience"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/openintents/sensorsimulator/db/SensorSimulatorConvenience;->mContext:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lorg/openintents/sensorsimulator/db/SensorSimulatorConvenience;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/openintents/sensorsimulator/db/SensorSimulatorConvenience;->mContentResolver:Landroid/content/ContentResolver;

    .line 36
    return-void
.end method


# virtual methods
.method public getPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/openintents/sensorsimulator/db/SensorSimulatorConvenience;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lorg/openintents/sensorsimulator/db/SensorSimulator$Settings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/openintents/sensorsimulator/db/SensorSimulator;->SENSORSIMULATOR_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key= \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 116
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 118
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .end local v6    # "c":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 119
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 121
    const-string v0, ""

    goto :goto_0

    .line 123
    :cond_1
    const-string v0, "SensorSimulatorConvenience"

    const-string v1, "table \'preferences\' corrupt. Multiple NAME!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 127
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "SensorSimulatorConvenience"

    const-string v1, "insert into table \'contains\' failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    const-string v0, "Preferences table corrupt!"

    goto :goto_0
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 56
    :try_start_0
    iget-object v0, p0, Lorg/openintents/sensorsimulator/db/SensorSimulatorConvenience;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 57
    const-string v0, "SensorSimulatorConvenience"

    const-string v1, "Panic!."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/openintents/sensorsimulator/db/SensorSimulatorConvenience;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lorg/openintents/sensorsimulator/db/SensorSimulator$Settings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/openintents/sensorsimulator/db/SensorSimulator;->SENSORSIMULATOR_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key= \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 66
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 67
    const-string v0, "SensorSimulatorConvenience"

    const-string v1, "missing hardware provider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    return-void

    .line 72
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v11, :cond_3

    .line 76
    :cond_2
    new-instance v10, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 77
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "key"

    invoke-virtual {v10, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "value"

    invoke-virtual {v10, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lorg/openintents/sensorsimulator/db/SensorSimulatorConvenience;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lorg/openintents/sensorsimulator/db/SensorSimulator$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v10    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 96
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "SensorSimulatorConvenience"

    const-string v1, "setPreference() failed"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 80
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v11, :cond_4

    .line 84
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 85
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "id":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v0, "value"

    invoke-virtual {v7, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lorg/openintents/sensorsimulator/db/SensorSimulatorConvenience;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lorg/openintents/sensorsimulator/db/SensorSimulator$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 91
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    goto :goto_0

    .line 93
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v9    # "id":Ljava/lang/String;
    :cond_4
    const-string v0, "SensorSimulatorConvenience"

    const-string v1, "table \'settings\' corrupt. Multiple KEY!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
