.class Lcom/rerware/android/MyBackupProProvider/MyBackupPro$utilities;
.super Ljava/lang/Object;
.source "MyBackupPro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rerware/android/MyBackupProProvider/MyBackupPro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "utilities"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Unzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p0, "zipFile"    # Ljava/lang/String;
    .param p1, "targetDir"    # Ljava/lang/String;

    .prologue
    .line 518
    const/16 v1, 0x800

    .line 522
    .local v1, "BUFFER":I
    const/4 v4, 0x0

    .line 523
    .local v4, "dest":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 525
    .local v11, "fis":Ljava/io/FileInputStream;
    new-instance v14, Ljava/util/zip/ZipInputStream;

    new-instance v15, Ljava/io/BufferedInputStream;

    invoke-direct {v15, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v15}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v14, "zis":Ljava/util/zip/ZipInputStream;
    move-object v5, v4

    .line 529
    .end local v4    # "dest":Ljava/io/BufferedOutputStream;
    .local v5, "dest":Ljava/io/BufferedOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v14}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .local v7, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v7, :cond_2

    .line 533
    :try_start_2
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Extracting: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 535
    new-array v3, v1, [B

    .line 538
    .local v3, "data":[B
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    .line 541
    .local v13, "strEntry":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v9, "entryFile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .local v8, "entryDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 545
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 548
    :cond_0
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 550
    .local v12, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v12, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 551
    .end local v5    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v4    # "dest":Ljava/io/BufferedOutputStream;
    :goto_1
    const/4 v15, 0x0

    :try_start_3
    invoke-virtual {v14, v3, v15, v1}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v2

    .local v2, "count":I
    const/4 v15, -0x1

    if-eq v2, v15, :cond_1

    .line 552
    const/4 v15, 0x0

    invoke-virtual {v4, v3, v15, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 557
    .end local v2    # "count":I
    :catch_0
    move-exception v10

    .line 559
    .end local v3    # "data":[B
    .end local v8    # "entryDir":Ljava/io/File;
    .end local v9    # "entryFile":Ljava/io/File;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "strEntry":Ljava/lang/String;
    .local v10, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v5, v4

    .line 560
    .end local v4    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v5    # "dest":Ljava/io/BufferedOutputStream;
    goto :goto_0

    .line 554
    .end local v5    # "dest":Ljava/io/BufferedOutputStream;
    .end local v10    # "ex":Ljava/lang/Exception;
    .restart local v2    # "count":I
    .restart local v3    # "data":[B
    .restart local v4    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v8    # "entryDir":Ljava/io/File;
    .restart local v9    # "entryFile":Ljava/io/File;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "strEntry":Ljava/lang/String;
    :cond_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 555
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v5, v4

    .line 560
    .end local v4    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v5    # "dest":Ljava/io/BufferedOutputStream;
    goto :goto_0

    .line 562
    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v8    # "entryDir":Ljava/io/File;
    .end local v9    # "entryFile":Ljava/io/File;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "strEntry":Ljava/lang/String;
    :cond_2
    :try_start_6
    invoke-virtual {v14}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 566
    .end local v5    # "dest":Ljava/io/BufferedOutputStream;
    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_3
    return-void

    .line 563
    .restart local v4    # "dest":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v6

    .line 564
    .local v6, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 563
    .end local v4    # "dest":Ljava/io/BufferedOutputStream;
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v5    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v4    # "dest":Ljava/io/BufferedOutputStream;
    goto :goto_4

    .line 557
    .end local v4    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v5    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v7    # "entry":Ljava/util/zip/ZipEntry;
    :catch_3
    move-exception v10

    move-object v4, v5

    .end local v5    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v4    # "dest":Ljava/io/BufferedOutputStream;
    goto :goto_2
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-static {p0}, Lcom/rerware/android/MyBackupProProvider/MyBackupPro$utilities;->deleteEverythingInDir(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-static {p0, p1}, Lcom/rerware/android/MyBackupProProvider/MyBackupPro$utilities;->Unzip(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/zip/ZipOutputStream;

    .prologue
    .line 467
    invoke-static {p0, p1, p2}, Lcom/rerware/android/MyBackupProProvider/MyBackupPro$utilities;->zipDir(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    return-void
.end method

.method private static deleteEverythingInDir(Ljava/lang/String;)Z
    .locals 7
    .param p0, "strdir"    # Ljava/lang/String;

    .prologue
    .line 569
    const/4 v1, 0x0

    .line 572
    .local v1, "dir":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v1    # "dir":Ljava/io/File;
    .local v2, "dir":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 574
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "children":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 576
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/rerware/android/MyBackupProProvider/MyBackupPro$utilities;->deleteEverythingInDir(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 577
    .local v4, "success":Z
    if-nez v4, :cond_0

    .line 578
    const/4 v5, 0x0

    move-object v1, v2

    .line 588
    .end local v0    # "children":[Ljava/lang/String;
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "i":I
    .end local v4    # "success":Z
    .restart local v1    # "dir":Ljava/io/File;
    :goto_1
    return v5

    .line 575
    .end local v1    # "dir":Ljava/io/File;
    .restart local v0    # "children":[Ljava/lang/String;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v3    # "i":I
    .restart local v4    # "success":Z
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "children":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "success":Z
    :cond_1
    move-object v1, v2

    .line 588
    .end local v2    # "dir":Ljava/io/File;
    .restart local v1    # "dir":Ljava/io/File;
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    goto :goto_1

    .line 583
    :catch_0
    move-exception v5

    goto :goto_2

    .end local v1    # "dir":Ljava/io/File;
    .restart local v2    # "dir":Ljava/io/File;
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "dir":Ljava/io/File;
    .restart local v1    # "dir":Ljava/io/File;
    goto :goto_2
.end method

.method private static zipDir(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .locals 12
    .param p0, "dir2zip"    # Ljava/lang/String;
    .param p1, "originalDir"    # Ljava/lang/String;
    .param p2, "zos"    # Ljava/util/zip/ZipOutputStream;

    .prologue
    .line 475
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    .local v9, "zipDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "dirList":[Ljava/lang/String;
    const/16 v10, 0x86c

    new-array v8, v10, [B

    .line 479
    .local v8, "readBuffer":[B
    const/4 v1, 0x0

    .line 481
    .local v1, "bytesIn":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v10, v2

    if-ge v7, v10, :cond_1

    .line 483
    new-instance v4, Ljava/io/File;

    aget-object v10, v2, v7

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 484
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 488
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 489
    .local v5, "filePath":Ljava/lang/String;
    invoke-static {v5, p1, p2}, Lcom/rerware/android/MyBackupProProvider/MyBackupPro$utilities;->zipDir(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 481
    .end local v5    # "filePath":Ljava/lang/String;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 496
    :cond_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 498
    .local v6, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 500
    .local v0, "anEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p2, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 502
    :goto_2
    invoke-virtual {v6, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_2

    .line 504
    const/4 v10, 0x0

    invoke-virtual {p2, v8, v10, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 510
    .end local v0    # "anEntry":Ljava/util/zip/ZipEntry;
    .end local v1    # "bytesIn":I
    .end local v2    # "dirList":[Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "i":I
    .end local v8    # "readBuffer":[B
    .end local v9    # "zipDir":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 512
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 515
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 507
    .restart local v0    # "anEntry":Ljava/util/zip/ZipEntry;
    .restart local v1    # "bytesIn":I
    .restart local v2    # "dirList":[Ljava/lang/String;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "i":I
    .restart local v8    # "readBuffer":[B
    .restart local v9    # "zipDir":Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
