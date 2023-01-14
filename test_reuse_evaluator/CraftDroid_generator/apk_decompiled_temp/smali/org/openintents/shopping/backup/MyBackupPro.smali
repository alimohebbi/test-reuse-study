.class public Lorg/openintents/shopping/backup/MyBackupPro;
.super Landroid/content/ContentProvider;
.source "MyBackupPro.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/shopping/backup/MyBackupPro$utilities;,
        Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;
    }
.end annotation


# instance fields
.field private final CONTENT_AUTHORITY:Ljava/lang/String;

.field private MinSupportedVersion:I

.field private final MyBackupBackupDone:I

.field private final MyBackupBackupStarted:I

.field private final MyBackupQuery:I

.field private final MyBackupQueryInflate:I

.field private final MyBackupQueryVersion:I

.field private final MyBackupRestoreDone:I

.field private final MyBackupRestoreStarted:I

.field private final MybackupContentPro:Ljava/lang/String;

.field private final MybackupContentTrial:Ljava/lang/String;

.field private fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

.field private filedirpath:[Ljava/lang/String;

.field private listUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sURIMatcher:Landroid/content/UriMatcher;

.field private tempFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const/16 v9, 0x3eb

    const/16 v8, 0x3ea

    const/16 v7, 0x3e9

    const/16 v6, 0x3e8

    const/4 v5, -0x1

    .line 144
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 75
    const-string v2, "org.openintents.shopping.backup.MyBackupPro"

    iput-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->CONTENT_AUTHORITY:Ljava/lang/String;

    .line 84
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/data/data/org.openintents.shopping/databases/shopping.db"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "/data/data/org.openintents.shopping/shared_prefs/org.openintents.shopping_preferences.xml"

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->filedirpath:[Ljava/lang/String;

    .line 99
    iput v5, p0, Lorg/openintents/shopping/backup/MyBackupPro;->MinSupportedVersion:I

    .line 127
    const-string v2, "content://com.rerware.android.MyBackupPro"

    iput-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->MybackupContentPro:Ljava/lang/String;

    .line 128
    const-string v2, "content://com.rerware.android.MyBackup"

    iput-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->MybackupContentTrial:Ljava/lang/String;

    .line 130
    iput v6, p0, Lorg/openintents/shopping/backup/MyBackupPro;->MyBackupQuery:I

    .line 131
    iput v7, p0, Lorg/openintents/shopping/backup/MyBackupPro;->MyBackupQueryVersion:I

    .line 132
    iput v8, p0, Lorg/openintents/shopping/backup/MyBackupPro;->MyBackupQueryInflate:I

    .line 133
    iput v9, p0, Lorg/openintents/shopping/backup/MyBackupPro;->MyBackupBackupStarted:I

    .line 134
    const/16 v2, 0x3ec

    iput v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->MyBackupBackupDone:I

    .line 135
    const/16 v2, 0x3ed

    iput v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->MyBackupRestoreStarted:I

    .line 136
    const/16 v2, 0x3ee

    iput v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->MyBackupRestoreDone:I

    .line 139
    const-string v2, ""

    iput-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->tempFile:Ljava/lang/String;

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->listUris:Ljava/util/List;

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->filedirpath:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 151
    new-instance v2, Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    invoke-direct {v2, p0}, Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;-><init>(Lorg/openintents/shopping/backup/MyBackupPro;)V

    iput-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    .line 152
    iget-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    iget-object v3, p0, Lorg/openintents/shopping/backup/MyBackupPro;->filedirpath:[Ljava/lang/String;

    aget-object v3, v3, v0

    iput-object v3, v2, Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;->filepath:Ljava/lang/String;

    .line 153
    iget-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->listUris:Ljava/util/List;

    iget-object v3, p0, Lorg/openintents/shopping/backup/MyBackupPro;->fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    new-instance v2, Landroid/content/UriMatcher;

    invoke-direct {v2, v5}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->sURIMatcher:Landroid/content/UriMatcher;

    .line 163
    const-string v2, "/sdcard/MyBackupTemp.zip"

    iput-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->tempFile:Ljava/lang/String;

    .line 164
    iget-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "org.openintents.shopping.backup.MyBackupPro"

    const-string v4, "MyBackupQuery"

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    iget-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "org.openintents.shopping.backup.MyBackupPro"

    const-string v4, "MyBackupQueryVersion/#"

    invoke-virtual {v2, v3, v4, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 166
    iget-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "org.openintents.shopping.backup.MyBackupPro"

    const-string v4, "MyBackupQueryInflate/#"

    invoke-virtual {v2, v3, v4, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    iget-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "org.openintents.shopping.backup.MyBackupPro"

    const-string v4, "MyBackupBackupStarted"

    invoke-virtual {v2, v3, v4, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    iget-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "org.openintents.shopping.backup.MyBackupPro"

    const-string v4, "MyBackupBackupDone"

    const/16 v5, 0x3ec

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    iget-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "org.openintents.shopping.backup.MyBackupPro"

    const-string v4, "MyBackupRestoreStarted"

    const/16 v5, 0x3ed

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    iget-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "org.openintents.shopping.backup.MyBackupPro"

    const-string v4, "MyBackupRestoreDone"

    const/16 v5, 0x3ee

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    const/4 v1, -0x1

    .line 173
    .local v1, "intUnique":I
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->listUris:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 175
    add-int/lit8 v1, v1, 0x1

    .line 176
    iget-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "org.openintents.shopping.backup.MyBackupPro"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getfile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 178
    iget-object v2, p0, Lorg/openintents/shopping/backup/MyBackupPro;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "org.openintents.shopping.backup.MyBackupPro"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putfile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_1
    return-void
.end method

.method private auth(Ljava/lang/String;I)I
    .locals 9
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "authcode"    # I

    .prologue
    .line 428
    const/4 v7, 0x0

    .line 433
    .local v7, "intRet":I
    :try_start_0
    invoke-virtual {p0}, Lorg/openintents/shopping/backup/MyBackupPro;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/MyBackupAuth/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 435
    .local v8, "uriCur":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 438
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 444
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v8    # "uriCur":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return v7

    .line 454
    :catch_0
    move-exception v6

    .line 456
    .local v6, "ex":Ljava/lang/Exception;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private backupDone()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method private backupStarted()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method private restoreDone()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method private restoreStarted()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 325
    const/4 v8, 0x0

    .line 326
    .local v8, "parcel":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 328
    .local v7, "match":I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 329
    .local v2, "authCode":I
    const-string v14, "content://com.rerware.android.MyBackupPro"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lorg/openintents/shopping/backup/MyBackupPro;->auth(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    const-string v14, "content://com.rerware.android.MyBackup"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lorg/openintents/shopping/backup/MyBackupPro;->auth(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 334
    :cond_0
    rem-int/lit8 v14, v7, 0x2

    if-nez v14, :cond_4

    .line 337
    const-string v6, ""

    .line 338
    .local v6, "getfile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->listUris:Ljava/util/List;

    div-int/lit8 v15, v7, 0x2

    int-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v15, v0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    .line 339
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    iget-object v14, v14, Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;->filepath:Ljava/lang/String;

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 342
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/openintents/shopping/backup/MyBackupPro;->tempFile:Ljava/lang/String;

    .line 350
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    iget-object v14, v14, Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;->filepath:Ljava/lang/String;

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 355
    :try_start_0
    new-instance v13, Ljava/util/zip/ZipOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/openintents/shopping/backup/MyBackupPro;->tempFile:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 358
    .local v13, "zos":Ljava/util/zip/ZipOutputStream;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    iget-object v14, v14, Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;->filepath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/openintents/shopping/backup/MyBackupPro;->fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    iget-object v15, v15, Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;->filepath:Ljava/lang/String;

    invoke-static {v14, v15, v13}, Lorg/openintents/shopping/backup/MyBackupPro$utilities;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 360
    invoke-virtual {v13}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_1
    :goto_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .local v5, "getFile":Ljava/io/File;
    const/high16 v14, 0x30000000

    invoke-static {v5, v14}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 374
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    iget-object v14, v14, Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;->filepath:Ljava/lang/String;

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 376
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->tempFile:Ljava/lang/String;

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v12, "temp":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 422
    .end local v5    # "getFile":Ljava/io/File;
    .end local v6    # "getfile":Ljava/lang/String;
    .end local v12    # "temp":Ljava/io/File;
    :cond_2
    :goto_2
    return-object v8

    .line 347
    .restart local v6    # "getfile":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    iget-object v6, v14, Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;->filepath:Ljava/lang/String;

    goto :goto_0

    .line 363
    :catch_0
    move-exception v4

    .line 365
    .local v4, "ex":Ljava/lang/Exception;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 385
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v6    # "getfile":Ljava/lang/String;
    :cond_4
    const-string v11, ""

    .line 386
    .local v11, "putfile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->listUris:Ljava/util/List;

    div-int/lit8 v15, v7, 0x2

    int-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v15, v0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    .line 387
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    iget-object v14, v14, Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;->filepath:Ljava/lang/String;

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 390
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/openintents/shopping/backup/MyBackupPro;->tempFile:Ljava/lang/String;

    .line 397
    :goto_3
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .local v10, "putFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 400
    new-instance v9, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v9, "parentputFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_5

    .line 404
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 407
    :cond_5
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_6

    .line 410
    :try_start_1
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    :cond_6
    :goto_4
    const/high16 v14, 0x30000000

    invoke-static {v10, v14}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    goto :goto_2

    .line 395
    .end local v9    # "parentputFile":Ljava/io/File;
    .end local v10    # "putFile":Ljava/io/File;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    iget-object v11, v14, Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;->filepath:Ljava/lang/String;

    goto :goto_3

    .line 411
    .restart local v9    # "parentputFile":Ljava/io/File;
    .restart local v10    # "putFile":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 413
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 212
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 213
    .local v8, "match":I
    packed-switch v8, :pswitch_data_0

    .line 312
    const/4 v9, 0x0

    :cond_0
    :goto_0
    return-object v9

    .line 216
    :pswitch_0
    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/String;

    .line 217
    .local v2, "Uris":[Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "URI_NAME"

    aput-object v15, v2, v14

    .line 218
    new-instance v9, Landroid/database/MatrixCursor;

    invoke-direct {v9, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 220
    .local v9, "mc":Landroid/database/MatrixCursor;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->listUris:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_0

    .line 222
    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/Object;

    .line 223
    .local v11, "rowObject":[Ljava/lang/Object;
    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "file"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    .line 224
    invoke-virtual {v9, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 220
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 230
    .end local v2    # "Uris":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v9    # "mc":Landroid/database/MatrixCursor;
    .end local v11    # "rowObject":[Ljava/lang/Object;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 233
    .local v1, "BackupVersionCode":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->MinSupportedVersion:I

    if-lt v1, v14, :cond_1

    .line 235
    const/4 v7, 0x1

    .line 242
    .local v7, "intOk":I
    :goto_2
    const/4 v14, 0x1

    new-array v3, v14, [Ljava/lang/String;

    .line 243
    .local v3, "Uris2":[Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "VERSION_COMPATIBLE"

    aput-object v15, v3, v14

    .line 244
    new-instance v10, Landroid/database/MatrixCursor;

    invoke-direct {v10, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 246
    .local v10, "mc2":Landroid/database/MatrixCursor;
    const/4 v14, 0x1

    new-array v12, v14, [Ljava/lang/Object;

    .line 247
    .local v12, "rowObject2":[Ljava/lang/Object;
    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v12, v14

    .line 248
    invoke-virtual {v10, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v9, v10

    .line 250
    goto :goto_0

    .line 239
    .end local v3    # "Uris2":[Ljava/lang/String;
    .end local v7    # "intOk":I
    .end local v10    # "mc2":Landroid/database/MatrixCursor;
    .end local v12    # "rowObject2":[Ljava/lang/Object;
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "intOk":I
    goto :goto_2

    .line 252
    .end local v1    # "BackupVersionCode":I
    .end local v7    # "intOk":I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 253
    .local v6, "inflateFile":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->listUris:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    .line 254
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    iget-object v14, v14, Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;->filepath:Ljava/lang/String;

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 257
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    iget-object v14, v14, Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;->filepath:Ljava/lang/String;

    invoke-static {v14}, Lorg/openintents/shopping/backup/MyBackupPro$utilities;->access$000(Ljava/lang/String;)Z

    .line 258
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    iget-object v14, v14, Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;->filepath:Ljava/lang/String;

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 262
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 264
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->tempFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/openintents/shopping/backup/MyBackupPro;->fi:Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;

    iget-object v15, v15, Lorg/openintents/shopping/backup/MyBackupPro$fileInfo;->filepath:Ljava/lang/String;

    invoke-static {v14, v15}, Lorg/openintents/shopping/backup/MyBackupPro$utilities;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/openintents/shopping/backup/MyBackupPro;->tempFile:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v13, "temp":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 270
    .end local v4    # "dir":Ljava/io/File;
    .end local v13    # "temp":Ljava/io/File;
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 274
    .end local v6    # "inflateFile":I
    :pswitch_3
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/openintents/shopping/backup/MyBackupPro;->backupStarted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_3
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 284
    :pswitch_4
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lorg/openintents/shopping/backup/MyBackupPro;->backupDone()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 290
    :goto_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 294
    :pswitch_5
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lorg/openintents/shopping/backup/MyBackupPro;->restoreStarted()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 300
    :goto_5
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 304
    :pswitch_6
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lorg/openintents/shopping/backup/MyBackupPro;->restoreDone()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 310
    :goto_6
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 276
    :catch_0
    move-exception v14

    goto :goto_3

    .line 286
    :catch_1
    move-exception v14

    goto :goto_4

    .line 296
    :catch_2
    move-exception v14

    goto :goto_5

    .line 306
    :catch_3
    move-exception v14

    goto :goto_6

    .line 213
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method
