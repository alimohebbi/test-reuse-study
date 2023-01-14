.class public Lorg/openintents/shopping/library/util/ShoppingUtils;
.super Ljava/lang/Object;
.source "ShoppingUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShoppingUtils"

.field private static final debug:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addItemToList(Landroid/content/Context;JJJLjava/lang/String;Ljava/lang/String;ZZZ)J
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemId"    # J
    .param p3, "listId"    # J
    .param p5, "status"    # J
    .param p7, "priority"    # Ljava/lang/String;
    .param p8, "quantity"    # Ljava/lang/String;
    .param p9, "togglestatus"    # Z
    .param p10, "known_new"    # Z
    .param p11, "resetQuantity"    # Z

    .prologue
    .line 349
    const-wide/16 v12, -0x1

    .line 350
    .local v12, "id":J
    const/4 v10, 0x0

    .line 352
    .local v10, "existingItems":Landroid/database/Cursor;
    if-nez p10, :cond_0

    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "status"

    aput-object v6, v4, v5

    const-string v5, "list_id = ? AND item_id = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 357
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x1

    .line 358
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x0

    .line 354
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 359
    :cond_0
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 360
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 361
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 362
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 363
    .local v16, "oldstatus":J
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 365
    const-wide/16 v14, 0x1

    .line 367
    .local v14, "newstatus":J
    const-wide/16 v2, 0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_1

    .line 368
    const-wide/16 v14, 0x2

    .line 372
    :cond_1
    new-instance v18, Landroid/content/ContentValues;

    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 373
    .local v18, "values":Landroid/content/ContentValues;
    if-eqz p9, :cond_4

    .line 374
    const-string v2, "status"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 378
    :goto_0
    if-eqz p8, :cond_5

    .line 381
    const-string v2, "quantity"

    move-object/from16 v0, v18

    move-object/from16 v1, p8

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_2
    :goto_1
    if-eqz p7, :cond_3

    .line 386
    const-string v2, "priority"

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_3
    sget-object v2, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    .line 390
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 392
    .local v11, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v11, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v14    # "newstatus":J
    .end local v16    # "oldstatus":J
    :goto_2
    return-wide v12

    .line 376
    .restart local v14    # "newstatus":J
    .restart local v16    # "oldstatus":J
    :cond_4
    const-string v2, "status"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 383
    :cond_5
    if-eqz p11, :cond_2

    const-string v2, "quantity"

    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 394
    .restart local v11    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 397
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "priority"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 399
    move-object/from16 v0, v18

    invoke-virtual {v2, v11, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 401
    :catch_1
    move-exception v9

    .line 402
    .local v9, "e2":Ljava/lang/Exception;
    const-string v2, "ShoppingUtils"

    const-string v3, "insert into table \'contains\' failed"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    const-wide/16 v12, -0x1

    goto :goto_2

    .line 408
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "e2":Ljava/lang/Exception;
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v14    # "newstatus":J
    .end local v16    # "oldstatus":J
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_6
    if-eqz v10, :cond_7

    .line 409
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_7
    new-instance v18, Landroid/content/ContentValues;

    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 412
    .restart local v18    # "values":Landroid/content/ContentValues;
    const-string v2, "item_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 413
    const-string v2, "list_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 414
    if-eqz p9, :cond_a

    .line 415
    const-string v2, "status"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 419
    :goto_3
    if-eqz p8, :cond_8

    .line 420
    const-string v2, "quantity"

    move-object/from16 v0, v18

    move-object/from16 v1, p8

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_8
    if-eqz p7, :cond_9

    .line 423
    const-string v2, "priority"

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_9
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 430
    .restart local v11    # "uri":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v12

    goto/16 :goto_2

    .line 417
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_a
    const-string v2, "status"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3

    .line 431
    :catch_2
    move-exception v8

    .line 434
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "priority"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 438
    .restart local v11    # "uri":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v12

    goto/16 :goto_2

    .line 439
    .end local v11    # "uri":Landroid/net/Uri;
    :catch_3
    move-exception v9

    .line 440
    .restart local v9    # "e2":Ljava/lang/Exception;
    const-string v2, "ShoppingUtils"

    const-string v3, "insert into table \'contains\' failed"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    const-wide/16 v12, -0x1

    goto/16 :goto_2
.end method

.method public static addItemToStore(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;Z)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemId"    # J
    .param p3, "storeId"    # J
    .param p5, "aisle"    # Ljava/lang/String;
    .param p6, "price"    # Ljava/lang/String;
    .param p7, "known_new"    # Z

    .prologue
    .line 529
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lorg/openintents/shopping/library/util/ShoppingUtils;->addItemToStore(Landroid/content/Context;JJZLjava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static addItemToStore(Landroid/content/Context;JJZLjava/lang/String;Ljava/lang/String;Z)J
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemId"    # J
    .param p3, "storeId"    # J
    .param p5, "stocksItem"    # Z
    .param p6, "aisle"    # Ljava/lang/String;
    .param p7, "price"    # Ljava/lang/String;
    .param p8, "known_new"    # Z

    .prologue
    .line 463
    const-wide/16 v10, -0x1

    .line 464
    .local v10, "id":J
    const/4 v9, 0x0

    .line 466
    .local v9, "existingItems":Landroid/database/Cursor;
    if-nez p8, :cond_0

    .line 467
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/openintents/shopping/library/provider/ShoppingContract$ItemStores;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "store_id = ? AND item_id = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 471
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v7

    const/4 v7, 0x1

    .line 472
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v7

    const/4 v7, 0x0

    .line 468
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 473
    :cond_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 474
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 475
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 476
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 479
    new-instance v13, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v13, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 480
    .local v13, "values":Landroid/content/ContentValues;
    const-string v2, "price"

    move-object/from16 v0, p7

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v2, "aisle"

    move-object/from16 v0, p6

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v2, "stocks_item"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 484
    :try_start_0
    sget-object v2, Lorg/openintents/shopping/library/provider/ShoppingContract$ItemStores;->CONTENT_URI:Landroid/net/Uri;

    .line 485
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 484
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 486
    .local v12, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v12, v13, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v12    # "uri":Landroid/net/Uri;
    :goto_0
    return-wide v10

    .line 488
    :catch_0
    move-exception v8

    .line 489
    .local v8, "e":Ljava/lang/Exception;
    const-string v2, "ShoppingUtils"

    const-string v3, "Update itemstore failed"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 493
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_1
    if-eqz v9, :cond_2

    .line 494
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 496
    :cond_2
    new-instance v13, Landroid/content/ContentValues;

    const/4 v2, 0x5

    invoke-direct {v13, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 497
    .restart local v13    # "values":Landroid/content/ContentValues;
    const-string v2, "item_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 498
    const-string v2, "store_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 499
    const-string v2, "price"

    move-object/from16 v0, p7

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v2, "aisle"

    move-object/from16 v0, p6

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v2, "stocks_item"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 503
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/openintents/shopping/library/provider/ShoppingContract$ItemStores;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 506
    .restart local v12    # "uri":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v10

    goto :goto_0

    .line 507
    .end local v12    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v8

    .line 508
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v2, "ShoppingUtils"

    const-string v3, "insert into table \'itemstores\' failed"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    const-wide/16 v10, -0x1

    goto :goto_0
.end method

.method public static addTagToItem(Landroid/content/Context;JLjava/lang/String;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemId"    # J
    .param p3, "store"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 581
    const-string v7, ""

    .line 582
    .local v7, "allTags":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v12, [Ljava/lang/String;

    const-string v4, "tags"

    aput-object v4, v3, v11

    const-string v4, "_id = ?"

    new-array v5, v12, [Ljava/lang/String;

    .line 584
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v11

    .line 582
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 585
    .local v8, "existingTags":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 586
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 587
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 588
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 591
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 597
    :goto_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9, v12}, Landroid/content/ContentValues;-><init>(I)V

    .line 598
    .local v9, "values":Landroid/content/ContentValues;
    const-string v1, "tags"

    invoke-virtual {v9, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    .line 602
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 601
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v9, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 603
    return-void

    .line 594
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_1
    move-object/from16 v7, p3

    goto :goto_0
.end method

.method public static deleteItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "listId"    # Ljava/lang/String;

    .prologue
    .line 641
    invoke-static {p0, p1, p2}, Lorg/openintents/shopping/library/util/ShoppingUtils;->deleteItemFromList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, "itemsDeleted":I
    invoke-static {p0, p1}, Lorg/openintents/shopping/library/util/ShoppingUtils;->isItemContainedInOtherExistingList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 647
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 651
    :cond_0
    return v0
.end method

.method public static deleteItemFromList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "listId"    # Ljava/lang/String;

    .prologue
    .line 618
    invoke-static {p0, p1, p2}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getItemStoreIdsForList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 620
    .local v1, "itemStoreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 621
    .local v0, "itemStoreId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/openintents/shopping/library/provider/ShoppingContract$ItemStores;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "itemstores._id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 626
    .end local v0    # "itemStoreId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "item_id = ? and list_id = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 629
    .local v2, "itemsDeleted":I
    return v2
.end method

.method public static deleteList(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listId"    # Ljava/lang/String;

    .prologue
    .line 720
    invoke-static {p0, p1}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getItemIdsForList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 721
    .local v1, "itemIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 722
    .local v0, "itemId":Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lorg/openintents/shopping/library/util/ShoppingUtils;->deleteItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 726
    .end local v0    # "itemId":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getStoreIdsForList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 727
    .local v4, "storeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 728
    .local v3, "storeId":Ljava/lang/String;
    invoke-static {p0, v3}, Lorg/openintents/shopping/library/util/ShoppingUtils;->deleteStore(Landroid/content/Context;Ljava/lang/String;)I

    goto :goto_1

    .line 732
    .end local v3    # "storeId":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 735
    .local v2, "rowsDeleted":I
    return v2
.end method

.method public static deleteStore(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storeId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 701
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/openintents/shopping/library/provider/ShoppingContract$ItemStores;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "store_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 705
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/openintents/shopping/library/provider/ShoppingContract$Stores;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 707
    .local v0, "storesDeleted":I
    return v0
.end method

.method private static getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "tags"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/String;
    .param p3, "barcode"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 132
    .local v1, "values":Landroid/content/ContentValues;
    if-eqz p0, :cond_0

    .line 133
    const-string v2, "name"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    if-eqz p1, :cond_1

    .line 136
    const-string v2, "tags"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_1
    if-eqz p2, :cond_2

    .line 139
    invoke-static {p2}, Lorg/openintents/shopping/library/util/PriceConverter;->getCentPriceFromString(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 140
    .local v0, "priceLong":Ljava/lang/Long;
    const-string v2, "price"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 142
    .end local v0    # "priceLong":Ljava/lang/Long;
    :cond_2
    if-eqz p3, :cond_3

    .line 143
    const-string v2, "barcode"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_3
    return-object v1
.end method

.method public static getDefaultList(Landroid/content/Context;)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 538
    const-wide/16 v8, 0x1

    .line 540
    .local v8, "id":J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$ActiveList;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/openintents/shopping/library/provider/ShoppingContract$ActiveList;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 543
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 544
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 545
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 546
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-wide v8

    .line 548
    :catch_0
    move-exception v7

    .line 553
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "ShoppingUtils"

    const-string v1, "ActiveList URI not supported"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getItem(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "tags"    # Ljava/lang/String;
    .param p5, "price"    # Ljava/lang/String;
    .param p6, "units"    # Ljava/lang/String;
    .param p7, "note"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 191
    .local v6, "values":Landroid/content/ContentValues;
    const-wide/16 v8, -0x1

    cmp-long v7, p1, v8

    if-nez v7, :cond_0

    .line 192
    const-string v7, "name"

    invoke-virtual {v6, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    const-string v7, "tags"

    invoke-virtual {v6, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 197
    const-string v7, "note"

    move-object/from16 v0, p7

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_1
    if-eqz p5, :cond_2

    .line 200
    const-string v7, "price"

    move-object/from16 v0, p5

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_2
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 206
    move-object/from16 v0, p6

    invoke-static {p0, v0}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getUnits(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 207
    .local v4, "unit_id":J
    const-string v7, "units"

    move-object/from16 v0, p6

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .end local v4    # "unit_id":J
    :cond_3
    const-wide/16 v8, -0x1

    cmp-long v7, p1, v8

    if-nez v7, :cond_4

    .line 212
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 215
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 226
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return-wide p1

    .line 217
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    .line 219
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 218
    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 217
    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "ShoppingUtils"

    const-string v8, "Insert item failed"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tags"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/String;
    .param p4, "units"    # Ljava/lang/String;
    .param p5, "note"    # Ljava/lang/String;
    .param p6, "duplicate"    # Ljava/lang/Boolean;
    .param p7, "update"    # Ljava/lang/Boolean;

    .prologue
    .line 159
    const-wide/16 v2, -0x1

    .line 161
    .local v2, "id":J
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 163
    invoke-static {p0, p1}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getItemId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 166
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move-wide v0, v2

    .line 171
    :goto_0
    return-wide v0

    :cond_1
    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getItem(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getItemId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 54
    const-wide/16 v8, -0x1

    .line 56
    .local v8, "id":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "upper(name) = upper(?)"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 59
    .local v6, "existingItems":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 61
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 64
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 65
    return-wide v8
.end method

.method private static getItemIdsForList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 750
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "item_id"

    aput-object v3, v2, v8

    const-string v3, "list_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 753
    .local v6, "c":Landroid/database/Cursor;
    invoke-static {v6, v8}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getStringListAndCloseCursor(Landroid/database/Cursor;I)Ljava/util/List;

    move-result-object v7

    .line 754
    .local v7, "itemIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v7
.end method

.method public static getItemName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemId"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 69
    const-string v7, ""

    .line 70
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v8

    const-string v3, "_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    .line 73
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    .line 70
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 74
    .local v6, "existingItems":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 76
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 79
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 80
    return-object v7
.end method

.method private static getItemStoreIdsForList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "listId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 741
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$ItemStores;->CONTENT_URI:Landroid/net/Uri;

    .line 742
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "item"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 743
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "itemstores._id"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    .line 741
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 745
    .local v6, "c":Landroid/database/Cursor;
    invoke-static {v6, v8}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getStringListAndCloseCursor(Landroid/database/Cursor;I)Ljava/util/List;

    move-result-object v7

    .line 746
    .local v7, "itemStoreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v7
.end method

.method public static getList(Landroid/content/Context;Ljava/lang/String;)J
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 268
    const-wide/16 v8, -0x1

    .line 269
    .local v8, "id":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v13

    const-string v3, "upper(name) = upper(?)"

    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v13

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 272
    .local v7, "existingItems":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 273
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 274
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 275
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_0
    move-wide v0, v8

    .line 290
    :goto_1
    return-wide v0

    .line 278
    :cond_0
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11, v12}, Landroid/content/ContentValues;-><init>(I)V

    .line 279
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "name"

    invoke-virtual {v11, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 284
    .local v10, "uri":Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    goto :goto_0

    .line 285
    .end local v10    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 286
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ShoppingUtils"

    const-string v1, "insert list failed"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method public static getListFilterStoreName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "list_uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v13, 0x0

    .line 779
    const/4 v11, 0x0

    .line 781
    .local v11, "filter":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "store_filter"

    aput-object v1, v2, v13

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 783
    .local v10, "c":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 784
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 785
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 786
    .local v12, "store_id":Ljava/lang/String;
    invoke-interface {v10}, Landroid/database/Cursor;->deactivate()V

    .line 787
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 789
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 790
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/openintents/shopping/library/provider/ShoppingContract$Stores;->CONTENT_URI:Landroid/net/Uri;

    new-array v6, v8, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v6, v13

    const-string v7, "_id = ?"

    new-array v8, v8, [Ljava/lang/String;

    aput-object v12, v8, v13

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 792
    if-eqz v10, :cond_1

    .line 793
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 794
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 795
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 797
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->deactivate()V

    .line 798
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 802
    .end local v12    # "store_id":Ljava/lang/String;
    :cond_1
    return-object v11
.end method

.method public static getListForItem(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 559
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "list_id"

    aput-object v3, v2, v8

    const-string v3, "item_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 563
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 565
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    sget-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    .line 568
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 567
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 573
    .local v7, "uri":Landroid/net/Uri;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 576
    .end local v7    # "uri":Landroid/net/Uri;
    :goto_1
    return-object v7

    .line 571
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 576
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static getListTagsFilter(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "list_uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 805
    const/4 v7, 0x0

    .line 806
    .local v7, "filter":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "tags_filter"

    aput-object v1, v2, v8

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 808
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 809
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 810
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 811
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V

    .line 812
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 814
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 815
    const/4 v7, 0x0

    .line 818
    :cond_0
    return-object v7
.end method

.method public static getStore(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listId"    # J

    .prologue
    .line 304
    const-wide/16 v8, -0x1

    .line 305
    .local v8, "id":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Stores;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "upper(name) = upper(?) AND list_id = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    .line 308
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    .line 305
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 309
    .local v7, "existingItems":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 310
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 311
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 312
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_0
    move-wide v0, v8

    .line 328
    :goto_1
    return-wide v0

    .line 315
    :cond_0
    new-instance v11, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 316
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "name"

    invoke-virtual {v11, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "list_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 319
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Stores;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 322
    .local v10, "uri":Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    goto :goto_0

    .line 323
    .end local v10    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 324
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ShoppingUtils"

    const-string v1, "insert store failed"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method private static getStoreIdsForList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 759
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Stores;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "list_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 762
    .local v6, "c":Landroid/database/Cursor;
    invoke-static {v6, v8}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getStringListAndCloseCursor(Landroid/database/Cursor;I)Ljava/util/List;

    move-result-object v7

    .line 763
    .local v7, "storeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v7
.end method

.method private static getStringListAndCloseCursor(Landroid/database/Cursor;I)Ljava/util/List;
    .locals 3
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 767
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 768
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 769
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 770
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, "item":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 773
    .end local v0    # "item":Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 775
    :cond_1
    return-object v1
.end method

.method public static getUnits(Landroid/content/Context;Ljava/lang/String;)J
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "units"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 230
    const-wide/16 v8, -0x1

    .line 231
    .local v8, "id":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Units;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v13

    const-string v3, "upper(name) = upper(?)"

    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v13

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 234
    .local v7, "existingUnits":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 235
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 236
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 237
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 254
    :goto_0
    return-wide v8

    .line 240
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 242
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11, v12}, Landroid/content/ContentValues;-><init>(I)V

    .line 243
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "name"

    invoke-virtual {v11, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Units;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 248
    .local v10, "uri":Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    goto :goto_0

    .line 249
    .end local v10    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 250
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ShoppingUtils"

    const-string v1, "Insert units failed"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static isItemContainedInOtherExistingList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 665
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "list_id"

    aput-object v3, v2, v9

    const-string v3, "item_id = ?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 668
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 669
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 672
    .local v8, "listId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "_id = ?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 675
    .local v7, "c2":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 676
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 679
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 688
    .end local v7    # "c2":Landroid/database/Cursor;
    .end local v8    # "listId":Ljava/lang/String;
    :goto_1
    return v0

    .line 682
    .restart local v7    # "c2":Landroid/database/Cursor;
    .restart local v8    # "listId":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 686
    .end local v7    # "c2":Landroid/database/Cursor;
    .end local v8    # "listId":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v9

    .line 688
    goto :goto_1
.end method

.method public static updateOrCreateItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tags"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/String;
    .param p4, "barcode"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p0, p1}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getItemId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 98
    .local v2, "id":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    .line 101
    invoke-static {p1, p2, p3, p4}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 103
    .local v4, "values":Landroid/content/ContentValues;
    :try_start_0
    sget-object v5, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    .line 104
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 103
    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 105
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-nez v5, :cond_1

    .line 114
    invoke-static {p1, p2, p3, p4}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 116
    .restart local v4    # "values":Landroid/content/ContentValues;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 119
    .restart local v1    # "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 125
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_1
    :goto_1
    return-wide v2

    .line 107
    .restart local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "ShoppingUtils"

    const-string v6, "Update item failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 121
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "ShoppingUtils"

    const-string v6, "Insert item failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
