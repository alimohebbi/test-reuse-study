.class public Lorg/openintents/shopping/widgets/CheckItemsWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "CheckItemsWidget.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final ACTION_CHECK:Ljava/lang/String; = "ActionCheck"

.field private static final ACTION_NEXT_PAGE:Ljava/lang/String; = "ActionNextPage"

.field private static final ACTION_PREV_PAGE:Ljava/lang/String; = "ActionPrevPage"

.field private static final LIMIT_ITEMS:I = 0x5

.field private static final PREFS:Ljava/lang/String; = "check_items_widget"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/widgets/CheckItemsWidget;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6a43d9cfcdd3ea02L    # -5.61136588259529E-204

    const-string v2, "org/openintents/shopping/widgets/CheckItemsWidget"

    const/16 v3, 0x85

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/widgets/CheckItemsWidget;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/widgets/CheckItemsWidget;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static fillItems(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lorg/openintents/shopping/widgets/CheckItemsWidget;->$jacocoInit()[Z

    move-result-object v7

    .line 255
    invoke-static {p0, v10}, Lorg/openintents/shopping/ui/PreferenceActivity;->getSortOrderFromPrefs(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "sortOrder":Ljava/lang/String;
    const-string v3, "list_id = ? AND status == 1"

    const/16 v0, 0x81

    aput-boolean v10, v7, v0

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$ContainsFull;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/openintents/shopping/ShoppingActivity;->mStringItems:[Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0x82

    aput-boolean v10, v7, v9

    .line 263
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    const/16 v8, 0x83

    aput-boolean v10, v7, v8

    .line 261
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 265
    .local v6, "cursor":Landroid/database/Cursor;
    const/16 v0, 0x84

    aput-boolean v10, v7, v0

    return-object v6
.end method

.method private getTitle(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lorg/openintents/shopping/widgets/CheckItemsWidget;->$jacocoInit()[Z

    move-result-object v6

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v2, v8

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/16 v0, 0x75

    aput-boolean v7, v6, v0

    .line 238
    if-nez v1, :cond_0

    const/16 v0, 0x76

    aput-boolean v7, v6, v0

    .line 244
    :goto_0
    if-nez v1, :cond_2

    const/16 v0, 0x7c

    aput-boolean v7, v6, v0

    .line 251
    :goto_1
    const v0, 0x7f080003

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    aput-boolean v7, v6, v1

    :goto_2
    return-object v0

    .line 238
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x77

    aput-boolean v7, v6, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x78

    aput-boolean v7, v6, v0

    .line 239
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x79

    aput-boolean v7, v6, v2

    .line 240
    invoke-interface {v1}, Landroid/database/Cursor;->deactivate()V

    const/16 v2, 0x7a

    aput-boolean v7, v6, v2

    .line 241
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 242
    const/16 v1, 0x7b

    aput-boolean v7, v6, v1

    goto :goto_2

    .line 244
    :cond_2
    const/16 v0, 0x7d

    aput-boolean v7, v6, v0

    .line 245
    invoke-interface {v1}, Landroid/database/Cursor;->deactivate()V

    const/16 v0, 0x7e

    aput-boolean v7, v6, v0

    .line 246
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/16 v0, 0x7f

    aput-boolean v7, v6, v0

    goto :goto_1
.end method

.method private updateWidgets(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/openintents/shopping/widgets/CheckItemsWidget;->$jacocoInit()[Z

    move-result-object v3

    .line 83
    const/16 v2, 0x25

    aput-boolean v7, v3, v2

    .line 84
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 85
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    const/16 v4, 0x26

    aput-boolean v7, v3, v4

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lorg/openintents/shopping/widgets/CheckItemsWidget;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x27

    aput-boolean v7, v3, v4

    .line 85
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 87
    .local v0, "a":[I
    const/16 v2, 0x28

    aput-boolean v7, v3, v2

    .line 88
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v2

    const/16 v4, 0x29

    aput-boolean v7, v3, v4

    .line 89
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v2, 0x2a

    aput-boolean v7, v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    const/16 v5, 0x2b

    aput-boolean v7, v3, v5

    .line 90
    iget-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v2, 0x2c

    aput-boolean v7, v3, v2

    .line 94
    :goto_1
    const/16 v2, 0x30

    aput-boolean v7, v3, v2

    goto :goto_0

    .line 90
    :cond_0
    const/16 v5, 0x2d

    aput-boolean v7, v3, v5

    .line 91
    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    const/16 v2, 0x2e

    aput-boolean v7, v3, v2

    .line 92
    new-instance v2, Lorg/openintents/shopping/widgets/CheckItemsWidget;

    invoke-direct {v2}, Lorg/openintents/shopping/widgets/CheckItemsWidget;-><init>()V

    invoke-virtual {v2, p1, v1, v0}, Lorg/openintents/shopping/widgets/CheckItemsWidget;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    const/16 v2, 0x2f

    aput-boolean v7, v3, v2

    goto :goto_1

    .line 95
    :cond_1
    const/16 v2, 0x31

    aput-boolean v7, v3, v2

    return-void
.end method


# virtual methods
.method public buildUpdate(Landroid/content/Context;JII)Landroid/widget/RemoteViews;
    .locals 14

    .prologue
    invoke-static {}, Lorg/openintents/shopping/widgets/CheckItemsWidget;->$jacocoInit()[Z

    move-result-object v5

    .line 118
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f030017

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/16 v7, 0x3b

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 121
    invoke-static/range {p1 .. p3}, Lorg/openintents/shopping/widgets/CheckItemsWidget;->fillItems(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v2

    .line 125
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x1

    const/16 v7, 0x3c

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    :goto_0
    const/4 v7, 0x5

    if-gt v3, v7, :cond_0

    const/16 v7, 0x3d

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "item_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "id"

    const/16 v10, 0x3e

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3f

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    .line 126
    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x40

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 128
    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 125
    add-int/lit8 v3, v3, 0x1

    .local v3, "i":I
    const/16 v7, 0x41

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    goto :goto_0

    .line 131
    .end local v3    # "i":I
    :cond_0
    const v7, 0x7f0c0052

    const v8, 0x7f0800db

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, p5, 0x1

    const/16 v12, 0x42

    const/4 v13, 0x1

    aput-boolean v13, v5, v12

    .line 132
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x43

    const/4 v10, 0x1

    aput-boolean v10, v5, v9

    .line 131
    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v7, 0x44

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 134
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gtz v7, :cond_1

    const/16 v7, 0x45

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 224
    :goto_1
    if-nez v2, :cond_4

    const/16 v7, 0x70

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 229
    :goto_2
    const/16 v7, 0x74

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    return-object v6

    .line 135
    :cond_1
    const/4 v3, 0x1

    const/16 v7, 0x46

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 137
    mul-int/lit8 v7, p5, 0x5

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v7, 0x47

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 139
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v7, 0x48

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 165
    :goto_4
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lorg/openintents/shopping/ShoppingActivity;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v8, 0x57

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 166
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v8, 0x58

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 167
    sget-object v8, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p2

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v8, 0x59

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 169
    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {p1, v8, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/16 v8, 0x5a

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 176
    sget-object v8, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p2

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x5b

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 178
    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/16 v9, 0x5c

    const/4 v10, 0x1

    aput-boolean v10, v5, v9

    .line 176
    invoke-direct {p0, p1, v8}, Lorg/openintents/shopping/widgets/CheckItemsWidget;->getTitle(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x5d

    const/4 v10, 0x1

    aput-boolean v10, v5, v9

    .line 180
    const v9, 0x7f0c0050

    invoke-virtual {v6, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v8, 0x5e

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 181
    const v8, 0x7f0c0050

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/16 v8, 0x5f

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 182
    const v8, 0x7f0c004f

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/16 v7, 0x60

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 188
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v8, 0x61

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 190
    const-string v8, "appWidgetId"

    move/from16 v0, p4

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v8, 0x62

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 192
    const/high16 v8, 0x400000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v8, 0x63

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 193
    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {p1, v8, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/16 v8, 0x64

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 196
    const v8, 0x7f0c0051

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/16 v7, 0x65

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 202
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lorg/openintents/shopping/widgets/CheckItemsWidget;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v8, 0x66

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 203
    const-string v8, "ActionPrevPage"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v8, 0x67

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 204
    const-string v8, "widgetId"

    move/from16 v0, p4

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v8, 0x68

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 205
    const/high16 v8, 0x40000000    # 2.0f

    move/from16 v0, p4

    invoke-static {p1, v0, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/16 v8, 0x69

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 208
    const v8, 0x7f0c0057

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/16 v7, 0x6a

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 214
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lorg/openintents/shopping/widgets/CheckItemsWidget;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v8, 0x6b

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 215
    const-string v8, "ActionNextPage"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v8, 0x6c

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 216
    const-string v8, "widgetId"

    move/from16 v0, p4

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v8, 0x6d

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 217
    const/high16 v8, 0x40000000    # 2.0f

    move/from16 v0, p4

    invoke-static {p1, v0, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/16 v8, 0x6e

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 220
    const v8, 0x7f0c0058

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/16 v7, 0x6f

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    goto/16 :goto_1

    .line 140
    :cond_2
    const/4 v7, 0x5

    if-le v3, v7, :cond_3

    .line 141
    const/16 v7, 0x49

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    goto/16 :goto_4

    .line 143
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "item_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "id"

    const/16 v10, 0x4a

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x4b

    const/4 v12, 0x1

    aput-boolean v12, v5, v11

    .line 143
    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 145
    .local v4, "viewId":I
    const-string v7, "item_name"

    const/16 v8, 0x4c

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 146
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x4d

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 145
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v7, 0x4e

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 148
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lorg/openintents/shopping/widgets/CheckItemsWidget;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v8, 0x4f

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 150
    const-string v8, "widgetId"

    move/from16 v0, p4

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    const-string v8, "id"

    const/4 v9, 0x0

    const/16 v10, 0x50

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 152
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x51

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 151
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v8, 0x52

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 153
    const-string v8, "ActionCheck"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const/4 v8, 0x0

    const/16 v9, 0x53

    const/4 v10, 0x1

    aput-boolean v10, v5, v9

    .line 156
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    const/16 v10, 0x54

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 155
    invoke-static {p1, v8, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/16 v8, 0x55

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 158
    invoke-virtual {v6, v4, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 160
    add-int/lit8 v3, v3, 0x1

    .line 161
    .restart local v3    # "i":I
    const/16 v7, 0x56

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    goto/16 :goto_3

    .line 224
    .end local v3    # "i":I
    .end local v4    # "viewId":I
    :cond_4
    const/16 v7, 0x71

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 225
    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    const/16 v7, 0x72

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 226
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/16 v7, 0x73

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    goto/16 :goto_2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .prologue
    invoke-static {}, Lorg/openintents/shopping/widgets/CheckItemsWidget;->$jacocoInit()[Z

    move-result-object v5

    .line 34
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v6, 0x2

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 79
    :goto_0
    invoke-direct {p0, p1}, Lorg/openintents/shopping/widgets/CheckItemsWidget;->updateWidgets(Landroid/content/Context;)V

    .line 80
    const/16 v6, 0x24

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    return-void

    .line 37
    :cond_0
    const/4 v6, 0x3

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 38
    const-string v6, "widgetId"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 41
    new-instance v1, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v7, 0x5

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 42
    new-instance v2, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v7, 0x6

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ActionCheck"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x7

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 44
    const-string v7, "id"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "id":Ljava/lang/Integer;
    const/16 v7, 0x8

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 50
    .end local v1    # "id":Ljava/lang/Integer;
    :goto_1
    const-string v7, "check_items_widget"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const/16 v8, 0xe

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 53
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_4

    const/16 v6, 0xf

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 69
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_8

    const/16 v6, 0x1b

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ActionNextPage"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x9

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 46
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .local v2, "page":Ljava/lang/Integer;
    const/16 v7, 0xa

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    goto :goto_1

    .line 47
    .end local v2    # "page":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ActionPrevPage"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v7, 0xb

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    goto :goto_1

    :cond_3
    const/16 v7, 0xc

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 48
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .restart local v2    # "page":Ljava/lang/Integer;
    const/16 v7, 0xd

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    goto :goto_1

    .line 53
    .end local v2    # "page":Ljava/lang/Integer;
    :cond_4
    const/16 v8, 0x10

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 54
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Page"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v8, 0x11

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 57
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    const/16 v8, 0x12

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 59
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_7

    const/16 v8, 0x15

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 62
    :goto_4
    const/16 v8, 0x17

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 63
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const/16 v8, 0x18

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 64
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "Page"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/16 v6, 0x19

    const/4 v8, 0x1

    aput-boolean v8, v5, v6

    .line 66
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v6, 0x1a

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    goto/16 :goto_2

    .line 57
    :cond_5
    if-nez v3, :cond_6

    const/16 v8, 0x13

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    goto :goto_3

    .line 58
    :cond_6
    add-int/lit8 v3, v3, -0x1

    .local v3, "pagePreference":I
    const/16 v8, 0x14

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    goto :goto_4

    .line 60
    .end local v3    # "pagePreference":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .restart local v3    # "pagePreference":I
    const/16 v8, 0x16

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    goto :goto_4

    .line 69
    .end local v3    # "pagePreference":I
    :cond_8
    const/16 v6, 0x1c

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 70
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 71
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "status"

    const-wide/16 v8, 0x2

    const/16 v7, 0x1d

    const/4 v10, 0x1

    aput-boolean v10, v5, v7

    .line 72
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v8, 0x1e

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 71
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v6, 0x1f

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    const/16 v8, 0x20

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    .line 76
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x21

    const/4 v10, 0x1

    aput-boolean v10, v5, v9

    .line 74
    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x22

    const/4 v11, 0x1

    aput-boolean v11, v5, v10

    .line 73
    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v6, 0x23

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 10

    .prologue
    invoke-static {}, Lorg/openintents/shopping/widgets/CheckItemsWidget;->$jacocoInit()[Z

    move-result-object v8

    .line 100
    const-string v0, "check_items_widget"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 103
    .local v6, "sharedPreferences":Landroid/content/SharedPreferences;
    array-length v9, p3

    const/4 v0, 0x0

    const/16 v1, 0x32

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    move v7, v0

    :goto_0
    if-ge v7, v9, :cond_1

    aget v4, p3, v7

    const/16 v0, 0x33

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 104
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-interface {v6, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/16 v0, 0x34

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Page"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 108
    .local v5, "page":I
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/16 v0, 0x35

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 103
    :goto_1
    add-int/lit8 v0, v7, 0x1

    const/16 v1, 0x39

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    move v7, v0

    goto :goto_0

    .line 108
    :cond_0
    const/16 v0, 0x36

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    move-object v0, p0

    move-object v1, p1

    .line 109
    invoke-virtual/range {v0 .. v5}, Lorg/openintents/shopping/widgets/CheckItemsWidget;->buildUpdate(Landroid/content/Context;JII)Landroid/widget/RemoteViews;

    move-result-object v0

    const/16 v1, 0x37

    const/4 v2, 0x1

    aput-boolean v2, v8, v1

    .line 111
    invoke-virtual {p2, v4, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    const/16 v0, 0x38

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    goto :goto_1

    .line 114
    .end local v5    # "page":I
    :cond_1
    const/16 v0, 0x3a

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    return-void
.end method
