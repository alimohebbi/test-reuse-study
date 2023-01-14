.class public Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;
.super Landroid/app/ListActivity;
.source "CheckItemsWidgetConfig.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final PREFS:Ljava/lang/String; = "check_items_widget"


# instance fields
.field private mAppWidgetId:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x245e6c59984bccbfL    # -2.495208648863176E133

    const-string v2, "org/openintents/shopping/widgets/CheckItemsWidgetConfig"

    const/16 v3, 0x22

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 24
    iput v2, p0, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->mAppWidgetId:I

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method private updateWidgets()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->$jacocoInit()[Z

    move-result-object v3

    .line 69
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 70
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    const/16 v4, 0x16

    aput-boolean v7, v3, v4

    .line 71
    invoke-virtual {p0}, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lorg/openintents/shopping/widgets/CheckItemsWidget;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x17

    aput-boolean v7, v3, v4

    .line 70
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 72
    .local v0, "a":[I
    const/16 v2, 0x18

    aput-boolean v7, v3, v2

    .line 73
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v2

    const/16 v4, 0x19

    aput-boolean v7, v3, v4

    .line 74
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v2, 0x1a

    aput-boolean v7, v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    const/16 v5, 0x1b

    aput-boolean v7, v3, v5

    .line 75
    iget-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v2, 0x1c

    aput-boolean v7, v3, v2

    .line 79
    :goto_1
    const/16 v2, 0x20

    aput-boolean v7, v3, v2

    goto :goto_0

    .line 75
    :cond_0
    const/16 v5, 0x1d

    aput-boolean v7, v3, v5

    .line 76
    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    const/16 v2, 0x1e

    aput-boolean v7, v3, v2

    .line 77
    new-instance v2, Lorg/openintents/shopping/widgets/CheckItemsWidget;

    invoke-direct {v2}, Lorg/openintents/shopping/widgets/CheckItemsWidget;-><init>()V

    invoke-virtual {v2, p0, v1, v0}, Lorg/openintents/shopping/widgets/CheckItemsWidget;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    const/16 v2, 0x1f

    aput-boolean v7, v3, v2

    goto :goto_1

    .line 80
    :cond_1
    const/16 v2, 0x21

    aput-boolean v7, v3, v2

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->$jacocoInit()[Z

    move-result-object v7

    .line 28
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v8, v7, v8

    .line 30
    invoke-virtual {p0, v9}, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->setResult(I)V

    .line 32
    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "name"

    aput-object v0, v2, v8

    aput-boolean v8, v7, v4

    .line 34
    invoke-static {p0}, Lorg/openintents/shopping/ui/PreferenceActivity;->getShoppingListSortOrderFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x3

    aput-boolean v8, v7, v0

    move-object v0, p0

    move-object v4, v3

    .line 32
    invoke-virtual/range {v0 .. v5}, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v0, 0x4

    aput-boolean v8, v7, v0

    .line 35
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090003

    new-array v4, v8, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v9

    new-array v5, v8, [I

    const v1, 0x1020014

    aput v1, v5, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->setListAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x5

    aput-boolean v8, v7, v0

    .line 39
    invoke-virtual {p0}, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 40
    .local v6, "extras":Landroid/os/Bundle;
    if-nez v6, :cond_0

    const/4 v0, 0x6

    aput-boolean v8, v7, v0

    .line 44
    :goto_0
    iget v0, p0, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->mAppWidgetId:I

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    aput-boolean v8, v7, v0

    .line 48
    :goto_1
    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->setTitle(I)V

    .line 49
    const/16 v0, 0xc

    aput-boolean v8, v7, v0

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x7

    aput-boolean v8, v7, v0

    .line 41
    const-string v0, "appWidgetId"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->mAppWidgetId:I

    const/16 v0, 0x8

    aput-boolean v8, v7, v0

    goto :goto_0

    .line 44
    :cond_1
    const/16 v0, 0xa

    aput-boolean v8, v7, v0

    .line 45
    invoke-virtual {p0}, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->finish()V

    const/16 v0, 0xb

    aput-boolean v8, v7, v0

    goto :goto_1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->$jacocoInit()[Z

    move-result-object v1

    .line 53
    const-string v2, "check_items_widget"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const/16 v2, 0xd

    aput-boolean v5, v1, v2

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/16 v3, 0xe

    aput-boolean v5, v1, v3

    .line 56
    iget v3, p0, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->mAppWidgetId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const/16 v3, 0xf

    aput-boolean v5, v1, v3

    .line 57
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v2, 0x10

    aput-boolean v5, v1, v2

    .line 59
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/16 v3, 0x11

    aput-boolean v5, v1, v3

    .line 60
    const-string v3, "appWidgetId"

    iget v4, p0, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->mAppWidgetId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v3, 0x12

    aput-boolean v5, v1, v3

    .line 61
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->setResult(ILandroid/content/Intent;)V

    const/16 v2, 0x13

    aput-boolean v5, v1, v2

    .line 63
    invoke-direct {p0}, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->updateWidgets()V

    const/16 v2, 0x14

    aput-boolean v5, v1, v2

    .line 65
    invoke-virtual {p0}, Lorg/openintents/shopping/widgets/CheckItemsWidgetConfig;->finish()V

    .line 66
    const/16 v2, 0x15

    aput-boolean v5, v1, v2

    return-void
.end method
