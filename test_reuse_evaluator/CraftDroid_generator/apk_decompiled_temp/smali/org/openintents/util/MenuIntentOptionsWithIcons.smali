.class public Lorg/openintents/util/MenuIntentOptionsWithIcons;
.super Ljava/lang/Object;
.source "MenuIntentOptionsWithIcons.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field mContext:Landroid/content/Context;

.field mMenu:Landroid/view/Menu;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/util/MenuIntentOptionsWithIcons;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x67855958f49133feL    # -9.346220984017497E-191

    const-string v2, "org/openintents/util/MenuIntentOptionsWithIcons"

    const/16 v3, 0x15

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/util/MenuIntentOptionsWithIcons;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/util/MenuIntentOptionsWithIcons;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/openintents/util/MenuIntentOptionsWithIcons;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lorg/openintents/util/MenuIntentOptionsWithIcons;->mMenu:Landroid/view/Menu;

    .line 29
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 14

    .prologue
    invoke-static {}, Lorg/openintents/util/MenuIntentOptionsWithIcons;->$jacocoInit()[Z

    move-result-object v8

    .line 34
    iget-object v6, p0, Lorg/openintents/util/MenuIntentOptionsWithIcons;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v6, 0x1

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    .line 35
    const/4 v6, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v9, v0, v1, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    const/4 v6, 0x2

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    .line 37
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x3

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    .line 38
    .local v3, "N":I
    :goto_0
    and-int/lit8 v6, p7, 0x1

    if-eqz v6, :cond_1

    const/4 v6, 0x5

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    .line 41
    :goto_1
    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    :goto_2
    if-ge v4, v3, :cond_5

    const/16 v6, 0x9

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    .line 42
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    const/16 v7, 0xa

    const/4 v11, 0x1

    aput-boolean v11, v8, v7

    .line 43
    new-instance v11, Landroid/content/Intent;

    iget v7, v6, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v7, :cond_2

    const/16 v7, 0xb

    const/4 v12, 0x1

    aput-boolean v12, v8, v7

    move-object/from16 v7, p6

    :goto_3
    invoke-direct {v11, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/16 v7, 0xd

    const/4 v12, 0x1

    aput-boolean v12, v8, v7

    .line 45
    new-instance v7, Landroid/content/ComponentName;

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v13, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 48
    iget-object v7, p0, Lorg/openintents/util/MenuIntentOptionsWithIcons;->mMenu:Landroid/view/Menu;

    const/16 v12, 0xe

    const/4 v13, 0x1

    aput-boolean v13, v8, v12

    .line 49
    invoke-virtual {v6, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v7, p1, v0, v1, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    const/16 v12, 0xf

    const/4 v13, 0x1

    aput-boolean v13, v8, v12

    .line 50
    invoke-virtual {v6, v9}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    .line 51
    .local v5, "item":Landroid/view/MenuItem;
    if-nez p8, :cond_3

    const/16 v6, 0x10

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    .line 41
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .local v4, "i":I
    const/16 v6, 0x13

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    goto :goto_2

    .line 37
    .end local v3    # "N":I
    .end local v4    # "i":I
    .end local v5    # "item":Landroid/view/MenuItem;
    :cond_0
    const/4 v3, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    goto :goto_0

    .line 38
    .restart local v3    # "N":I
    :cond_1
    const/4 v6, 0x6

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    .line 39
    iget-object v6, p0, Lorg/openintents/util/MenuIntentOptionsWithIcons;->mMenu:Landroid/view/Menu;

    invoke-interface {v6, p1}, Landroid/view/Menu;->removeGroup(I)V

    const/4 v6, 0x7

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    goto/16 :goto_1

    .line 43
    :cond_2
    iget v7, v6, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v7, p5, v7

    const/16 v12, 0xc

    const/4 v13, 0x1

    aput-boolean v13, v8, v12

    goto :goto_3

    .line 51
    .restart local v5    # "item":Landroid/view/MenuItem;
    :cond_3
    iget v7, v6, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v7, :cond_4

    const/16 v6, 0x11

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    goto :goto_4

    .line 52
    :cond_4
    iget v6, v6, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v6

    const/16 v6, 0x12

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    goto :goto_4

    .line 55
    .end local v5    # "item":Landroid/view/MenuItem;
    :cond_5
    const/16 v6, 0x14

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    return v3
.end method
