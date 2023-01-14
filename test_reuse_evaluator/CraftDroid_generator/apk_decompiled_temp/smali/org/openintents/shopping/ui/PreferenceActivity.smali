.class public Lorg/openintents/shopping/ui/PreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final EXTRA_SHOW_GET_ADD_ONS:Ljava/lang/String; = "show_get_add_ons"

.field public static final PREFS_ADDFORBARCODE:Ljava/lang/String; = "addforbarcode"

.field public static final PREFS_ADDFORBARCODE_DEFAULT:Z = false

.field public static final PREFS_CAPITALIZATION:Ljava/lang/String; = "capitalization"

.field public static final PREFS_CAPITALIZATION_DEFAULT:I = 0x1

.field public static final PREFS_FASTSCROLL:Ljava/lang/String; = "fastscroll"

.field public static final PREFS_FASTSCROLL_DEFAULT:Z = false

.field public static final PREFS_FONTSIZE:Ljava/lang/String; = "fontsize"

.field public static final PREFS_FONTSIZE_DEFAULT:Ljava/lang/String; = "2"

.field public static final PREFS_HIDECHECKED:Ljava/lang/String; = "hidechecked"

.field public static final PREFS_HIDECHECKED_DEFAULT:Z = false

.field public static final PREFS_LASTLIST_POSITION:Ljava/lang/String; = "lastlist_position"

.field public static final PREFS_LASTLIST_TOP:Ljava/lang/String; = "lastlist_top"

.field public static final PREFS_LASTUSED:Ljava/lang/String; = "lastused"

.field public static final PREFS_LOADLASTUSED:Ljava/lang/String; = "loadlastused"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PREFS_LOADLASTUSED_DEFAULT:Z = true
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PREFS_MARKET_EXTENSIONS:Ljava/lang/String; = "preference_market_extensions"

.field public static final PREFS_MARKET_THEMES:Ljava/lang/String; = "preference_market_themes"

.field public static final PREFS_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final PREFS_ORIENTATION_DEFAULT:Ljava/lang/String; = "-1"

.field public static final PREFS_PERSTOREPRICES:Ljava/lang/String; = "perstoreprices"

.field public static final PREFS_PERSTOREPRICES_DEFAULT:Z = false

.field public static final PREFS_PICKITEMSINLIST:Ljava/lang/String; = "pickitemsinlist"

.field public static final PREFS_PICKITEMSINLIST_DEFAULT:Z = false

.field public static final PREFS_PICKITEMS_SORTORDER:Ljava/lang/String; = "sortorderForPickItems"

.field public static final PREFS_PICKITEMS_SORTORDER_DEFAULT:Ljava/lang/String; = "1"

.field public static final PREFS_PRIOSUBINCLCHECKED:Ljava/lang/String; = "priosubtotal_includes_checked"

.field public static final PREFS_PRIOSUBINCLCHECKED_DEFAULT:Z = true

.field public static final PREFS_PRIOSUBTOTAL:Ljava/lang/String; = "priority_subtotal_threshold"

.field public static final PREFS_PRIOSUBTOTAL_DEFAULT:Ljava/lang/String; = "0"

.field public static final PREFS_QUICKEDITMODE:Ljava/lang/String; = "quickedit"

.field public static final PREFS_QUICKEDITMODE_DEFAULT:Z = false

.field public static final PREFS_RESETQUANTITY:Ljava/lang/String; = "resetquantity"

.field public static final PREFS_RESETQUANTITY_DEFAULT:Z = false

.field public static final PREFS_RESET_ALL_SETTINGS:Ljava/lang/String; = "reset_all_settings"

.field public static final PREFS_SAMESORTFORPICK:Ljava/lang/String; = "samesortforpick"

.field public static final PREFS_SAMESORTFORPICK_DEFAULT:Z = false

.field public static final PREFS_SCREENLOCK:Ljava/lang/String; = "screenlock"

.field public static final PREFS_SCREENLOCK_DEFAULT:Z = false

.field public static final PREFS_SCREEN_ADDONS:Ljava/lang/String; = "preference_screen_addons"

.field public static final PREFS_SHAKE:Ljava/lang/String; = "shake"

.field public static final PREFS_SHAKE_DEFAULT:Z = false

.field public static final PREFS_SHOW_PRICE:Ljava/lang/String; = "showprice"

.field public static final PREFS_SHOW_PRICE_DEFAULT:Z = true

.field public static final PREFS_SHOW_PRIORITY:Ljava/lang/String; = "showpriority"

.field public static final PREFS_SHOW_PRIORITY_DEFAULT:Z = true

.field public static final PREFS_SHOW_QUANTITY:Ljava/lang/String; = "showquantity"

.field public static final PREFS_SHOW_QUANTITY_DEFAULT:Z = true

.field public static final PREFS_SHOW_TAGS:Ljava/lang/String; = "showtags"

.field public static final PREFS_SHOW_TAGS_DEFAULT:Z = true

.field public static final PREFS_SHOW_UNITS:Ljava/lang/String; = "showunits"

.field public static final PREFS_SHOW_UNITS_DEFAULT:Z = true

.field public static final PREFS_SORTORDER:Ljava/lang/String; = "sortorder"

.field public static final PREFS_SORTORDER_DEFAULT:Ljava/lang/String; = "3"

.field public static final PREFS_SORTORDER_SHOPPINGLISTS:Ljava/lang/String; = "sortorderForShoppingLists"

.field public static final PREFS_SORTORDER_SHOPPINGLISTS_DEFAULT:Ljava/lang/String; = "0"

.field public static final PREFS_THEME_SET_FOR_ALL:Ljava/lang/String; = "theme_set_for_all"

.field public static final PREFS_USE_FILTERS:Ljava/lang/String; = "use_filters"

.field public static final PREFS_USE_FILTERS_DEFAULT:Z

.field private static mBackupManagerAvailable:Z

.field private static final smCapitalizationSettings:[Landroid/text/method/TextKeyListener$Capitalize;

.field public static updateCount:I


# instance fields
.field private mIncludesChecked:Landroid/preference/CheckBoxPreference;

.field private mPickItemsSort:Landroid/preference/ListPreference;

.field private mPrioSubtotal:Landroid/preference/ListPreference;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xedb778604a2e2caL

    const-string v2, "org/openintents/shopping/ui/PreferenceActivity"

    const/16 v3, 0x96

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 33
    sput v4, Lorg/openintents/shopping/ui/PreferenceActivity;->updateCount:I

    const/16 v2, 0x92

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v2

    .line 37
    invoke-static {}, Lorg/openintents/util/BackupManagerWrapper;->checkAvailable()V

    .line 38
    const/4 v2, 0x1

    sput-boolean v2, Lorg/openintents/shopping/ui/PreferenceActivity;->mBackupManagerAvailable:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    const/16 v2, 0x93

    aput-boolean v5, v1, v2

    .line 116
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/text/method/TextKeyListener$Capitalize;

    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    aput-object v3, v2, v4

    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    sget-object v4, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    aput-object v4, v2, v3

    sput-object v2, Lorg/openintents/shopping/ui/PreferenceActivity;->smCapitalizationSettings:[Landroid/text/method/TextKeyListener$Capitalize;

    const/16 v2, 0x95

    aput-boolean v5, v1, v2

    return-void

    .line 39
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 40
    .restart local v0    # "e":Ljava/lang/Throwable;
    sput-boolean v4, Lorg/openintents/shopping/ui/PreferenceActivity;->mBackupManagerAvailable:Z

    const/16 v2, 0x94

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getAddForBarcode(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 521
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "addforbarcode"

    const/4 v3, 0x0

    const/16 v4, 0x8b

    aput-boolean v5, v0, v4

    .line 522
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 521
    const/16 v2, 0x8c

    aput-boolean v5, v0, v2

    return v1
.end method

.method public static getCapitalizationKeyListenerFromPrefs(Landroid/content/Context;)Landroid/text/method/KeyListener;
    .locals 8

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 487
    const/16 v3, 0x7a

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v2, v3

    .line 489
    const/16 v3, 0x7b

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 490
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "capitalization"

    const/4 v5, 0x1

    const/16 v6, 0x7c

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 492
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x7d

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 490
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x7e

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 489
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 497
    .local v0, "capitalization":I
    const/16 v3, 0x7f

    aput-boolean v1, v2, v3

    .line 499
    .end local v0    # "capitalization":I
    :goto_0
    if-gez v0, :cond_0

    const/16 v3, 0x81

    aput-boolean v1, v2, v3

    .line 502
    :goto_1
    const/4 v0, 0x1

    .restart local v0    # "capitalization":I
    const/16 v3, 0x84

    aput-boolean v1, v2, v3

    .line 505
    .end local v0    # "capitalization":I
    :goto_2
    new-instance v3, Landroid/text/method/TextKeyListener;

    sget-object v4, Lorg/openintents/shopping/ui/PreferenceActivity;->smCapitalizationSettings:[Landroid/text/method/TextKeyListener$Capitalize;

    aget-object v4, v4, v0

    invoke-direct {v3, v4, v1}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    const/16 v4, 0x85

    aput-boolean v1, v2, v4

    return-object v3

    .line 493
    :catch_0
    move-exception v3

    const/16 v3, 0x80

    aput-boolean v1, v2, v3

    move v0, v1

    goto :goto_0

    .line 499
    :cond_0
    sget-object v3, Lorg/openintents/shopping/ui/PreferenceActivity;->smCapitalizationSettings:[Landroid/text/method/TextKeyListener$Capitalize;

    array-length v3, v3

    if-gt v0, v3, :cond_1

    const/16 v3, 0x82

    aput-boolean v1, v2, v3

    goto :goto_2

    :cond_1
    const/16 v3, 0x83

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method public static getFastScrollEnabledFromPrefs(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 447
    const/16 v1, 0x6d

    aput-boolean v4, v0, v1

    .line 448
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x6e

    aput-boolean v4, v0, v2

    .line 449
    const-string v2, "fastscroll"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x6f

    aput-boolean v4, v0, v2

    return v1
.end method

.method public static getFontSizeFromPrefs(Landroid/content/Context;)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 319
    const/16 v2, 0x3c

    aput-boolean v5, v1, v2

    .line 320
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "fontsize"

    const-string v4, "2"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3d

    aput-boolean v5, v1, v3

    .line 319
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 322
    .local v0, "size":I
    const/16 v2, 0x3e

    aput-boolean v5, v1, v2

    return v0
.end method

.method public static getHideCheckedItemsFromPrefs(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 441
    const/16 v1, 0x6a

    aput-boolean v4, v0, v1

    .line 442
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x6b

    aput-boolean v4, v0, v2

    .line 443
    const-string v2, "hidechecked"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x6c

    aput-boolean v4, v0, v2

    return v1
.end method

.method public static getOrientationFromPrefs(Landroid/content/Context;)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 326
    const/16 v2, 0x3f

    aput-boolean v5, v1, v2

    .line 327
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "orientation"

    const-string v4, "-1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    aput-boolean v5, v1, v3

    .line 326
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 329
    .local v0, "orientation":I
    const/16 v2, 0x41

    aput-boolean v5, v1, v2

    return v0
.end method

.method public static getPickItemsInListFromPrefs(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 351
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pickitemsinlist"

    const/4 v4, 0x0

    const/16 v5, 0x48

    aput-boolean v6, v1, v5

    .line 352
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 354
    .local v0, "using":Z
    const/16 v2, 0x49

    aput-boolean v6, v1, v2

    return v0
.end method

.method public static getQuickEditModeFromPrefs(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 339
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "quickedit"

    const/4 v4, 0x0

    const/16 v5, 0x44

    aput-boolean v6, v1, v5

    .line 340
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 341
    .local v0, "using":Z
    const/16 v2, 0x45

    aput-boolean v6, v1, v2

    return v0
.end method

.method public static getResetQuantity(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 516
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "resetquantity"

    const/4 v3, 0x0

    const/16 v4, 0x89

    aput-boolean v5, v0, v4

    .line 517
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 516
    const/16 v2, 0x8a

    aput-boolean v5, v0, v2

    return v1
.end method

.method public static getShoppingListSortOrderFromPrefs(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 429
    const/16 v1, 0x64

    aput-boolean v5, v2, v1

    .line 430
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "sortorderForShoppingLists"

    const-string v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x65

    aput-boolean v5, v2, v3

    .line 429
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 433
    .local v0, "index":I
    if-gez v0, :cond_0

    const/16 v1, 0x66

    aput-boolean v5, v2, v1

    .line 437
    :goto_0
    const-string v1, "modified ASC"

    const/16 v3, 0x69

    aput-boolean v5, v2, v3

    :goto_1
    return-object v1

    .line 433
    :cond_0
    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->SORT_ORDERS:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const/16 v1, 0x67

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 434
    :cond_1
    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->SORT_ORDERS:[Ljava/lang/String;

    aget-object v1, v1, v0

    const/16 v3, 0x68

    aput-boolean v5, v2, v3

    goto :goto_1
.end method

.method public static getSortOrderFromPrefs(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 413
    invoke-static {p0, p1}, Lorg/openintents/shopping/ui/PreferenceActivity;->getSortOrderIndexFromPrefs(Landroid/content/Context;I)I

    move-result v0

    .line 414
    .local v0, "index":I
    sget-object v2, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->SORT_ORDERS:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/16 v3, 0x5e

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    return-object v2
.end method

.method public static getSortOrderIndexFromPrefs(Landroid/content/Context;I)I
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v5

    .line 365
    const/4 v3, 0x0

    .line 367
    .local v3, "sortOrder":I
    if-ne p1, v9, :cond_0

    const/16 v6, 0x4a

    aput-boolean v9, v5, v6

    move v2, p1

    .line 377
    :goto_0
    if-ne v2, v9, :cond_2

    const/16 v6, 0x4e

    aput-boolean v9, v5, v6

    .line 392
    :goto_1
    if-eq v2, v9, :cond_3

    const/16 v6, 0x54

    aput-boolean v9, v5, v6

    .line 404
    :goto_2
    if-gez v3, :cond_4

    const/16 v6, 0x5a

    aput-boolean v9, v5, v6

    .line 409
    :goto_3
    const/16 v6, 0x5d

    aput-boolean v9, v5, v6

    move v3, v4

    :goto_4
    return v3

    .line 368
    :cond_0
    const/16 v6, 0x4b

    aput-boolean v9, v5, v6

    .line 369
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "samesortforpick"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 372
    .local v1, "followShopping":Z
    if-nez v1, :cond_1

    const/16 v6, 0x4c

    aput-boolean v9, v5, v6

    move v2, p1

    goto :goto_0

    .line 373
    :cond_1
    const/4 v2, 0x1

    .local v2, "mode":I
    const/16 v6, 0x4d

    aput-boolean v9, v5, v6

    goto :goto_0

    .line 377
    .end local v1    # "followShopping":Z
    .end local v2    # "mode":I
    :cond_2
    const/16 v6, 0x4f

    const/4 v7, 0x1

    :try_start_0
    aput-boolean v7, v5, v6

    .line 380
    const/16 v6, 0x50

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 381
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "sortorderForPickItems"

    const-string v8, "1"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x51

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 380
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 389
    const/16 v6, 0x52

    aput-boolean v9, v5, v6

    goto :goto_1

    .line 384
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    .restart local v2    # "mode":I
    const/16 v6, 0x53

    aput-boolean v9, v5, v6

    goto :goto_1

    .line 392
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "mode":I
    :cond_3
    const/16 v6, 0x55

    const/4 v7, 0x1

    :try_start_1
    aput-boolean v7, v5, v6

    .line 394
    const/16 v6, 0x56

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 395
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "sortorder"

    const-string v8, "3"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x57

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 394
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 401
    const/16 v6, 0x58

    aput-boolean v9, v5, v6

    goto :goto_2

    .line 397
    :catch_1
    move-exception v6

    const/16 v6, 0x59

    aput-boolean v9, v5, v6

    goto :goto_2

    .line 404
    :cond_4
    sget-object v6, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->SORT_ORDERS:[Ljava/lang/String;

    array-length v6, v6

    if-lt v3, v6, :cond_5

    const/16 v6, 0x5b

    aput-boolean v9, v5, v6

    goto :goto_3

    .line 405
    :cond_5
    const/16 v4, 0x5c

    aput-boolean v9, v5, v4

    goto :goto_4
.end method

.method public static getSubtotalByPriorityThreshold(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 467
    const/16 v1, 0x74

    aput-boolean v3, v0, v1

    .line 468
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x75

    aput-boolean v3, v0, v2

    .line 469
    invoke-static {v1}, Lorg/openintents/shopping/ui/PreferenceActivity;->getSubtotalByPriorityThreshold(Landroid/content/SharedPreferences;)I

    move-result v1

    const/16 v2, 0x76

    aput-boolean v3, v0, v2

    return v1
.end method

.method private static getSubtotalByPriorityThreshold(Landroid/content/SharedPreferences;)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 453
    const-string v3, "priority_subtotal_threshold"

    const-string v4, "0"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "pref":Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v3, 0x70

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v2, v3

    .line 457
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 462
    .local v1, "threshold":I
    const/16 v3, 0x71

    aput-boolean v5, v2, v3

    .line 463
    .end local v1    # "threshold":I
    :goto_0
    const/16 v3, 0x73

    aput-boolean v5, v2, v3

    return v1

    .line 458
    :catch_0
    move-exception v3

    const/16 v3, 0x72

    aput-boolean v5, v2, v3

    goto :goto_0
.end method

.method public static getThemeSetForAll(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 510
    const/16 v1, 0x86

    aput-boolean v4, v0, v1

    .line 511
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x87

    aput-boolean v4, v0, v2

    .line 512
    const-string v2, "theme_set_for_all"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x88

    aput-boolean v4, v0, v2

    return v1
.end method

.method public static getUsingFiltersFromPrefs(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 345
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "use_filters"

    const/4 v4, 0x0

    const/16 v5, 0x46

    aput-boolean v6, v1, v5

    .line 346
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 347
    .local v0, "using":Z
    const/16 v2, 0x47

    aput-boolean v6, v1, v2

    return v0
.end method

.method public static getUsingPerStorePricesFromPrefs(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 333
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "perstoreprices"

    const/4 v4, 0x0

    const/16 v5, 0x42

    aput-boolean v6, v1, v5

    .line 334
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 335
    .local v0, "using":Z
    const/16 v2, 0x43

    aput-boolean v6, v1, v2

    return v0
.end method

.method private isMarketAvailable()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v0, "i":Landroid/content/Intent;
    const v2, 0x7f080101

    const/16 v3, 0x38

    aput-boolean v4, v1, v3

    .line 314
    invoke-virtual {p0, v2}, Lorg/openintents/shopping/ui/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/16 v3, 0x39

    aput-boolean v4, v1, v3

    .line 313
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v2, 0x3a

    aput-boolean v4, v1, v2

    .line 315
    invoke-static {p0, v0}, Lorg/openintents/util/IntentUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    const/16 v3, 0x3b

    aput-boolean v4, v1, v3

    return v2
.end method

.method public static prefsStatusAffectsSort(Landroid/content/Context;I)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 418
    invoke-static {p0, p1}, Lorg/openintents/shopping/ui/PreferenceActivity;->getSortOrderIndexFromPrefs(Landroid/content/Context;I)I

    move-result v1

    .line 419
    .local v1, "index":I
    sget-object v3, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->StatusAffectsSortOrder:[Z

    aget-boolean v0, v3, v1

    .line 420
    .local v0, "affects":Z
    if-eq p1, v4, :cond_0

    const/16 v3, 0x5f

    aput-boolean v4, v2, v3

    .line 425
    :goto_0
    const/16 v3, 0x63

    aput-boolean v4, v2, v3

    return v0

    .line 420
    :cond_0
    if-eqz v0, :cond_1

    const/16 v3, 0x60

    aput-boolean v4, v2, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x61

    aput-boolean v4, v2, v3

    .line 423
    invoke-static {p0}, Lorg/openintents/shopping/ui/PreferenceActivity;->getHideCheckedItemsFromPrefs(Landroid/content/Context;)Z

    move-result v0

    const/16 v3, 0x62

    aput-boolean v4, v2, v3

    goto :goto_0
.end method

.method public static prioritySubtotalIncludesChecked(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 473
    const/16 v1, 0x77

    aput-boolean v3, v0, v1

    .line 474
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x78

    aput-boolean v3, v0, v2

    .line 475
    const-string v2, "priosubtotal_includes_checked"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x79

    aput-boolean v3, v0, v2

    return v1
.end method

.method private resetAllSettings(Landroid/content/SharedPreferences;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 191
    const-string v1, "reset_all_settings"

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/16 v2, 0x2b

    aput-boolean v4, v0, v2

    .line 192
    new-instance v2, Lorg/openintents/shopping/ui/PreferenceActivity$1;

    invoke-direct {v2, p0, p1}, Lorg/openintents/shopping/ui/PreferenceActivity$1;-><init>(Lorg/openintents/shopping/ui/PreferenceActivity;Landroid/content/SharedPreferences;)V

    const/16 v3, 0x2c

    aput-boolean v4, v0, v3

    .line 193
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 288
    const/16 v1, 0x2d

    aput-boolean v4, v0, v1

    return-void
.end method

.method public static setThemeSetForAll(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 526
    const/16 v1, 0x8d

    aput-boolean v3, v0, v1

    .line 527
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x8e

    aput-boolean v3, v0, v2

    .line 528
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/16 v2, 0x8f

    aput-boolean v3, v0, v2

    .line 529
    const-string v2, "theme_set_for_all"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x90

    aput-boolean v3, v0, v2

    .line 530
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 531
    const/16 v1, 0x91

    aput-boolean v3, v0, v1

    return-void
.end method

.method private updatePickItemsSortPref(Landroid/content/SharedPreferences;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 298
    const-string v3, "samesortforpick"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/16 v4, 0x34

    aput-boolean v1, v2, v4

    .line 300
    iget-object v4, p0, Lorg/openintents/shopping/ui/PreferenceActivity;->mPickItemsSort:Landroid/preference/ListPreference;

    if-nez v3, :cond_0

    const/16 v0, 0x35

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 304
    const/16 v0, 0x37

    aput-boolean v1, v2, v0

    return-void

    .line 300
    :cond_0
    const/16 v3, 0x36

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method private updatePrioSubtotalSummary(Landroid/content/SharedPreferences;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 291
    invoke-static {p1}, Lorg/openintents/shopping/ui/PreferenceActivity;->getSubtotalByPriorityThreshold(Landroid/content/SharedPreferences;)I

    move-result v0

    const/16 v3, 0x2e

    aput-boolean v1, v2, v3

    .line 292
    iget-object v3, p0, Lorg/openintents/shopping/ui/PreferenceActivity;->mPrioSubtotal:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    const/16 v4, 0x2f

    aput-boolean v1, v2, v4

    .line 293
    iget-object v4, p0, Lorg/openintents/shopping/ui/PreferenceActivity;->mPrioSubtotal:Landroid/preference/ListPreference;

    aget-object v3, v3, v0

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v3, 0x30

    aput-boolean v1, v2, v3

    .line 294
    iget-object v3, p0, Lorg/openintents/shopping/ui/PreferenceActivity;->mIncludesChecked:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 295
    const/16 v0, 0x33

    aput-boolean v1, v2, v0

    return-void

    .line 294
    :cond_0
    const/4 v0, 0x0

    const/16 v4, 0x32

    aput-boolean v1, v2, v4

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0x8

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v6

    .line 127
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v4, v6, v4

    .line 129
    const v3, 0x7f050001

    invoke-virtual {p0, v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->addPreferencesFromResource(I)V

    const/4 v3, 0x2

    aput-boolean v4, v6, v3

    .line 132
    const-string v3, "preference_market_extensions"

    invoke-virtual {p0, v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    const/4 v7, 0x3

    aput-boolean v4, v6, v7

    .line 133
    invoke-direct {p0}, Lorg/openintents/shopping/ui/PreferenceActivity;->isMarketAvailable()Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    const/4 v3, 0x4

    aput-boolean v4, v6, v3

    .line 134
    const-string v3, "preference_market_themes"

    invoke-virtual {p0, v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .local v1, "sp":Landroid/preference/PreferenceScreen;
    const/4 v3, 0x5

    aput-boolean v4, v6, v3

    .line 135
    invoke-direct {p0}, Lorg/openintents/shopping/ui/PreferenceActivity;->isMarketAvailable()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    const/4 v3, 0x6

    aput-boolean v4, v6, v3

    .line 137
    const-string v3, "priority_subtotal_threshold"

    invoke-virtual {p0, v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lorg/openintents/shopping/ui/PreferenceActivity;->mPrioSubtotal:Landroid/preference/ListPreference;

    const/4 v3, 0x7

    aput-boolean v4, v6, v3

    .line 138
    const-string v3, "sortorderForPickItems"

    invoke-virtual {p0, v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lorg/openintents/shopping/ui/PreferenceActivity;->mPickItemsSort:Landroid/preference/ListPreference;

    aput-boolean v4, v6, v8

    .line 140
    const-string v3, "priosubtotal_includes_checked"

    invoke-virtual {p0, v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lorg/openintents/shopping/ui/PreferenceActivity;->mIncludesChecked:Landroid/preference/CheckBoxPreference;

    const/16 v3, 0x9

    aput-boolean v4, v6, v3

    .line 143
    const-string v3, "quickedit"

    invoke-virtual {p0, v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 144
    .local v0, "quickedit":Landroid/preference/CheckBoxPreference;
    sget v3, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_0

    const/16 v3, 0xa

    aput-boolean v4, v6, v3

    move v3, v4

    .line 145
    :goto_0
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const/16 v3, 0xc

    aput-boolean v4, v6, v3

    .line 146
    const-string v3, "use_filters"

    invoke-virtual {p0, v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 147
    .local v2, "usefilters":Landroid/preference/CheckBoxPreference;
    sget v3, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_1

    const/16 v3, 0xd

    aput-boolean v4, v6, v3

    move v5, v4

    .line 148
    :goto_1
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const/16 v3, 0xf

    aput-boolean v4, v6, v3

    .line 150
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const/16 v5, 0x10

    aput-boolean v4, v6, v5

    .line 151
    invoke-direct {p0, v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->updatePrioSubtotalSummary(Landroid/content/SharedPreferences;)V

    const/16 v5, 0x11

    aput-boolean v4, v6, v5

    .line 152
    invoke-direct {p0, v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->updatePickItemsSortPref(Landroid/content/SharedPreferences;)V

    const/16 v5, 0x12

    aput-boolean v4, v6, v5

    .line 153
    invoke-direct {p0, v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->resetAllSettings(Landroid/content/SharedPreferences;)V

    .line 154
    const/16 v3, 0x13

    aput-boolean v4, v6, v3

    return-void

    .line 144
    .end local v2    # "usefilters":Landroid/preference/CheckBoxPreference;
    :cond_0
    const/16 v3, 0xb

    aput-boolean v4, v6, v3

    move v3, v5

    goto :goto_0

    .line 147
    .restart local v2    # "usefilters":Landroid/preference/CheckBoxPreference;
    :cond_1
    const/16 v3, 0xe

    aput-boolean v4, v6, v3

    goto :goto_1
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 172
    sget-boolean v1, Lorg/openintents/shopping/ui/PreferenceActivity;->mBackupManagerAvailable:Z

    if-nez v1, :cond_0

    const/16 v1, 0x1d

    aput-boolean v3, v0, v1

    .line 175
    :goto_0
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x20

    aput-boolean v3, v0, v2

    .line 176
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/16 v1, 0x21

    aput-boolean v3, v0, v1

    .line 177
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 178
    const/16 v1, 0x22

    aput-boolean v3, v0, v1

    return-void

    .line 172
    :cond_0
    const/16 v1, 0x1e

    aput-boolean v3, v0, v1

    .line 173
    new-instance v1, Lorg/openintents/util/BackupManagerWrapper;

    invoke-direct {v1, p0}, Lorg/openintents/util/BackupManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lorg/openintents/util/BackupManagerWrapper;->dataChanged()V

    const/16 v1, 0x1f

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 158
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const/16 v0, 0x14

    aput-boolean v4, v1, v0

    .line 160
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x15

    aput-boolean v4, v1, v0

    .line 166
    :goto_0
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v2, 0x1b

    aput-boolean v4, v1, v2

    .line 167
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 168
    const/16 v0, 0x1c

    aput-boolean v4, v1, v0

    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "show_get_add_ons"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x16

    aput-boolean v4, v1, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    aput-boolean v4, v1, v0

    .line 162
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "preference_screen_addons"

    const/16 v3, 0x18

    aput-boolean v4, v1, v3

    .line 163
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    const/16 v2, 0x19

    aput-boolean v4, v1, v2

    .line 164
    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    const/16 v0, 0x1a

    aput-boolean v4, v1, v0

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 181
    sget v1, Lorg/openintents/shopping/ui/PreferenceActivity;->updateCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/openintents/shopping/ui/PreferenceActivity;->updateCount:I

    const/16 v1, 0x23

    aput-boolean v2, v0, v1

    .line 182
    const-string v1, "priority_subtotal_threshold"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x24

    aput-boolean v2, v0, v1

    .line 185
    :goto_0
    const-string v1, "samesortforpick"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x27

    aput-boolean v2, v0, v1

    .line 188
    :goto_1
    const/16 v1, 0x2a

    aput-boolean v2, v0, v1

    return-void

    .line 182
    :cond_0
    const/16 v1, 0x25

    aput-boolean v2, v0, v1

    .line 183
    invoke-direct {p0, p1}, Lorg/openintents/shopping/ui/PreferenceActivity;->updatePrioSubtotalSummary(Landroid/content/SharedPreferences;)V

    const/16 v1, 0x26

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 185
    :cond_1
    const/16 v1, 0x28

    aput-boolean v2, v0, v1

    .line 186
    invoke-direct {p0, p1}, Lorg/openintents/shopping/ui/PreferenceActivity;->updatePickItemsSortPref(Landroid/content/SharedPreferences;)V

    const/16 v1, 0x29

    aput-boolean v2, v0, v1

    goto :goto_1
.end method
