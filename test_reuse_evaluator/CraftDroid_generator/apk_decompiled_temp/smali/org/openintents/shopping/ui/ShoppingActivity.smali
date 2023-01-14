.class public Lorg/openintents/shopping/ui/ShoppingActivity;
.super Lorg/openintents/distribution/DistributionLibraryFragmentActivity;
.source "ShoppingActivity.java"

# interfaces
.implements Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;
.implements Lorg/openintents/shopping/ui/widget/ShoppingItemsView$OnCustomClickListener;
.implements Lorg/openintents/shopping/ui/widget/ShoppingItemsView$ActionBarListener;
.implements Lorg/openintents/shopping/ui/dialog/EditItemDialog$OnItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/shopping/ui/ShoppingActivity$HoloThemeSimpleCursorAdapter;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final BUNDLE_ITEM_URI:Ljava/lang/String; = "item uri"

.field private static final BUNDLE_MODE:Ljava/lang/String; = "mode"

.field private static final BUNDLE_RELATION_URI:Ljava/lang/String; = "relation_uri"

.field private static final DIALOG_DELETE_ITEM:I = 0x5

.field private static final DIALOG_DISTRIBUTION_START:I = 0x64

.field private static final DIALOG_EDIT_ITEM:I = 0x4

.field public static final DIALOG_GET_FROM_MARKET:I = 0x7

.field private static final DIALOG_NEW_LIST:I = 0x2

.field private static final DIALOG_RENAME_LIST:I = 0x3

.field private static final DIALOG_THEME:I = 0x6

.field private static final MENU_ADD_LOCATION_ALERT:I = 0x6

.field private static final MENU_CLEAN_UP_LIST:I = 0x2

.field private static final MENU_COPY_ITEM:I = 0xc

.field private static final MENU_DELETE_ITEM:I = 0xa

.field private static final MENU_DELETE_LIST:I = 0x3

.field private static final MENU_DISTRIBUTION_START:I = 0x65

.field private static final MENU_EDIT_ITEM:I = 0x9

.field private static final MENU_INSERT_FROM_EXTRAS:I = 0xb

.field private static final MENU_ITEM_STORES:I = 0x17

.field private static final MENU_MARK_ALL_ITEMS:I = 0x16

.field private static final MENU_MARK_ITEM:I = 0x8

.field private static final MENU_MOVE_ITEM:I = 0x15

.field private static final MENU_NEW_LIST:I = 0x1

.field private static final MENU_PICK_ITEMS:I = 0xf

.field private static final MENU_PREFERENCES:I = 0x12

.field private static final MENU_REMOVE_ITEM_FROM_LIST:I = 0x14

.field private static final MENU_RENAME_LIST:I = 0x7

.field private static final MENU_SEND:I = 0x13

.field private static final MENU_SHARE:I = 0x4

.field private static final MENU_THEME:I = 0x5

.field private static final MESSAGE_UPDATE_CURSORS:I = 0x1

.field public static final MODE_ADD_ITEMS:I = 0x2

.field public static final MODE_IN_SHOP:I = 0x1

.field public static final MODE_PICK_ITEMS_DLG:I = 0x3

.field private static final REQUEST_CODE_CATEGORY_ALTERNATIVE:I = 0x1

.field private static final REQUEST_PICK_LIST:I = 0x2

.field private static final STATE_GET_CONTENT_ITEM:I = 0x3

.field private static final STATE_MAIN:I = 0x0

.field private static final STATE_PICK_ITEM:I = 0x2

.field private static final STATE_VIEW_LIST:I = 0x1

.field private static final SUBACTIVITY_LIST_SHARE_SETTINGS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShoppingActivity"

.field private static final debug:Z = false

.field public static final mStringItems:[Ljava/lang/String;

.field static final mStringItemsCONTAINSID:I = 0x0

.field public static final mStringItemsITEMHASNOTE:I = 0xb

.field public static final mStringItemsITEMID:I = 0x7

.field static final mStringItemsITEMIMAGE:I = 0x2

.field public static final mStringItemsITEMNAME:I = 0x1

.field public static final mStringItemsITEMPRICE:I = 0x4

.field public static final mStringItemsITEMTAGS:I = 0x3

.field public static final mStringItemsITEMUNITS:I = 0xc

.field public static final mStringItemsPRIORITY:I = 0xa

.field public static final mStringItemsQUANTITY:I = 0x5

.field public static final mStringItemsSTATUS:I = 0x6

.field private static final mStringListFilter:[Ljava/lang/String;

.field private static final mStringListFilterID:I = 0x0

.field private static final mStringListFilterNAME:I = 0x1

.field private static final mStringListFilterSKINBACKGROUND:I = 0x5


# instance fields
.field private final ORIGINAL_ITEM:Ljava/lang/String;

.field private lastAppliedPrefChange:I

.field private mButton:Landroid/widget/Button;

.field private mCursorShoppingLists:Landroid/database/Cursor;

.field mDeleteItemPosition:I

.field private mEditItemFocusField:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

.field private mEditText:Landroid/widget/AutoCompleteTextView;

.field private mEditingFilter:Z

.field private mExtraBarcodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraListUri:Landroid/net/Uri;

.field private mExtraPrices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraQuantities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mItemUri:Landroid/net/Uri;

.field private mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

.field private mLayoutParamsItems:Landroid/widget/LinearLayout$LayoutParams;

.field private mListItemUri:Landroid/net/Uri;

.field private mListUri:Landroid/net/Uri;

.field mMethodInvalidateOptionsMenu:Ljava/lang/reflect/Method;

.field private mMoveItemPosition:I

.field private mMySensorListener:Landroid/hardware/SensorListener;

.field private mRelationUri:Landroid/net/Uri;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShoppingListsFilterButton:Landroid/widget/Button;

.field private mShoppingListsView:Landroid/widget/AdapterView;

.field private mSortOrder:Ljava/lang/String;

.field private mState:I

.field private mStoresFilterButton:Landroid/widget/Button;

.field private mTagsFilterButton:Landroid/widget/Button;

.field private mUpdateInterval:I

.field private mUpdating:Z

.field private mUseSensor:Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x81be80fbfa9ad1cL    # -3.317278525860019E269

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity"

    const/16 v3, 0x368

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 383
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "name"

    aput-object v2, v1, v4

    const-string v2, "image"

    aput-object v2, v1, v6

    const-string v2, "share_name"

    aput-object v2, v1, v7

    const-string v2, "share_contacts"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "skin_background"

    aput-object v3, v1, v2

    sput-object v1, Lorg/openintents/shopping/ui/ShoppingActivity;->mStringListFilter:[Ljava/lang/String;

    .line 396
    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "item_name"

    aput-object v2, v1, v4

    const-string v2, "item_image"

    aput-object v2, v1, v6

    const-string v2, "item_tags"

    aput-object v2, v1, v7

    const-string v2, "item_price"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "quantity"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "status"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "item_id"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "share_created_by"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "share_modified_by"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "priority"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "item_has_note"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "item_units"

    aput-object v3, v1, v2

    sput-object v1, Lorg/openintents/shopping/ui/ShoppingActivity;->mStringItems:[Ljava/lang/String;

    const/16 v1, 0x367

    aput-boolean v4, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    invoke-direct {p0}, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;-><init>()V

    .line 291
    const/4 v1, -0x1

    iput v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->lastAppliedPrefChange:I

    .line 308
    iput-boolean v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditingFilter:Z

    .line 423
    iput-object v4, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mStoresFilterButton:Landroid/widget/Button;

    .line 424
    iput-object v4, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mTagsFilterButton:Landroid/widget/Button;

    .line 425
    iput-object v4, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsFilterButton:Landroid/widget/Button;

    .line 431
    const-string v1, "original item"

    iput-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->ORIGINAL_ITEM:Ljava/lang/String;

    aput-boolean v3, v0, v2

    .line 469
    new-instance v1, Lorg/openintents/shopping/ui/ShoppingActivity$1;

    invoke-direct {v1, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$1;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    iput-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mMySensorListener:Landroid/hardware/SensorListener;

    .line 486
    iput-boolean v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mIsActive:Z

    .line 491
    iput-boolean v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mUseSensor:Z

    .line 495
    sget-object v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->ITEMNAME:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    iput-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditItemFocusField:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    .line 2842
    iput-object v4, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mMethodInvalidateOptionsMenu:Ljava/lang/reflect/Method;

    aput-boolean v3, v0, v3

    .line 3056
    new-instance v1, Lorg/openintents/shopping/ui/ShoppingActivity$26;

    invoke-direct {v1, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$26;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    iput-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method private QuickEditFieldPopupMenu(Landroid/database/Cursor;ILorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 1519
    new-instance v1, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;

    invoke-direct {v1, p0, p4}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/16 v4, 0x158

    aput-boolean v2, v3, v4

    .line 1521
    invoke-virtual {v1}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1522
    .local v0, "menu":Landroid/view/Menu;
    if-nez v0, :cond_0

    .line 1523
    const/4 v1, 0x0

    const/16 v4, 0x159

    aput-boolean v2, v3, v4

    .line 1570
    :goto_0
    return v1

    .line 1525
    :cond_0
    const-string v4, "1"

    invoke-interface {v0, v4}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const/16 v4, 0x15a

    aput-boolean v2, v3, v4

    .line 1526
    const-string v4, "2"

    invoke-interface {v0, v4}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const/16 v4, 0x15b

    aput-boolean v2, v3, v4

    .line 1527
    const-string v4, "3"

    invoke-interface {v0, v4}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const/16 v4, 0x15c

    aput-boolean v2, v3, v4

    .line 1528
    const-string v4, "4"

    invoke-interface {v0, v4}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const/16 v4, 0x15d

    aput-boolean v2, v3, v4

    .line 1529
    const-string v4, "5"

    invoke-interface {v0, v4}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1530
    sget-object v4, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->QUANTITY:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    if-eq p3, v4, :cond_1

    const/16 v4, 0x15e

    aput-boolean v2, v3, v4

    .line 1533
    :goto_1
    sget-object v4, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->PRIORITY:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    if-eq p3, v4, :cond_2

    const/16 v4, 0x161

    aput-boolean v2, v3, v4

    .line 1537
    :goto_2
    new-instance v4, Lorg/openintents/shopping/ui/ShoppingActivity$18;

    invoke-direct {v4, p0, p2, p3}, Lorg/openintents/shopping/ui/ShoppingActivity$18;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;ILorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;)V

    invoke-virtual {v1, v4}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->setOnItemSelectedListener(Lorg/openintents/shopping/ui/widget/QuickSelectMenu$OnItemSelectedListener;)V

    const/16 v4, 0x164

    aput-boolean v2, v3, v4

    .line 1569
    invoke-virtual {v1}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->show()V

    .line 1570
    const/16 v1, 0x165

    aput-boolean v2, v3, v1

    move v1, v2

    goto :goto_0

    .line 1530
    :cond_1
    const/16 v4, 0x15f

    aput-boolean v2, v3, v4

    .line 1531
    const v4, 0x7f080061

    invoke-interface {v0, v4}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    const/16 v4, 0x160

    aput-boolean v2, v3, v4

    goto :goto_1

    .line 1533
    :cond_2
    const/16 v4, 0x162

    aput-boolean v2, v3, v4

    .line 1534
    const v4, 0x7f080060

    invoke-interface {v0, v4}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    const/16 v4, 0x163

    aput-boolean v2, v3, v4

    goto :goto_2
.end method

.method static synthetic access$000(Lorg/openintents/shopping/ui/ShoppingActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->cleanupList()V

    const/16 v1, 0x352

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lorg/openintents/shopping/ui/ShoppingActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditText:Landroid/widget/AutoCompleteTextView;

    const/16 v2, 0x353

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1000(Lorg/openintents/shopping/ui/ShoppingActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->updateTitle()V

    const/16 v1, 0x35c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$1100(Lorg/openintents/shopping/ui/ShoppingActivity;)Landroid/widget/AdapterView;
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsView:Landroid/widget/AdapterView;

    const/16 v2, 0x35d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1200(Lorg/openintents/shopping/ui/ShoppingActivity;)Z
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iget-boolean v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mIsActive:Z

    const/16 v2, 0x35e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$1300(Lorg/openintents/shopping/ui/ShoppingActivity;I)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    invoke-direct {p0, p1}, Lorg/openintents/shopping/ui/ShoppingActivity;->setSelectedListPos(I)V

    const/16 v1, 0x35f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$1400(Lorg/openintents/shopping/ui/ShoppingActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->deleteList()V

    const/16 v1, 0x360

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$1500(Lorg/openintents/shopping/ui/ShoppingActivity;Ljava/lang/String;)Z
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    invoke-direct {p0, p1}, Lorg/openintents/shopping/ui/ShoppingActivity;->createNewList(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x361

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$1600(Lorg/openintents/shopping/ui/ShoppingActivity;Ljava/lang/String;)Z
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    invoke-direct {p0, p1}, Lorg/openintents/shopping/ui/ShoppingActivity;->renameList(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x362

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$1700(Lorg/openintents/shopping/ui/ShoppingActivity;)Landroid/database/Cursor;
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    const/16 v2, 0x363

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1800(Lorg/openintents/shopping/ui/ShoppingActivity;Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    invoke-direct {p0, p1}, Lorg/openintents/shopping/ui/ShoppingActivity;->setSpinnerTextColorInHoloTheme(Landroid/view/View;)V

    const/16 v1, 0x364

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$1900(Lorg/openintents/shopping/ui/ShoppingActivity;)Z
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iget-boolean v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mUpdating:Z

    const/16 v2, 0x365

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$200(Lorg/openintents/shopping/ui/ShoppingActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->insertNewItem()V

    const/16 v1, 0x354

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$2000(Lorg/openintents/shopping/ui/ShoppingActivity;)I
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iget v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mUpdateInterval:I

    const/16 v2, 0x366

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$300(Lorg/openintents/shopping/ui/ShoppingActivity;)Lorg/openintents/shopping/ui/widget/ShoppingItemsView;
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    const/16 v2, 0x355

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$400(Lorg/openintents/shopping/ui/ShoppingActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->updateButton()V

    const/16 v1, 0x356

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$500(Lorg/openintents/shopping/ui/ShoppingActivity;)Landroid/net/Uri;
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    const/16 v2, 0x357

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$600(Lorg/openintents/shopping/ui/ShoppingActivity;)J
    .locals 5

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getSelectedListId()J

    move-result-wide v2

    const/16 v1, 0x358

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method static synthetic access$700(Lorg/openintents/shopping/ui/ShoppingActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    invoke-direct {p0, p1}, Lorg/openintents/shopping/ui/ShoppingActivity;->setListTheme(Ljava/lang/String;)V

    const/16 v1, 0x359

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$800(Lorg/openintents/shopping/ui/ShoppingActivity;Z)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    invoke-direct {p0, p1}, Lorg/openintents/shopping/ui/ShoppingActivity;->fillItems(Z)V

    const/16 v1, 0x35a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$900(Lorg/openintents/shopping/ui/ShoppingActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->applyListTheme()V

    const/16 v1, 0x35b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private applyListTheme()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 2050
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->applyListTheme()V

    .line 2052
    sget v0, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    const/16 v0, 0x201

    aput-boolean v3, v1, v0

    .line 2063
    :goto_0
    const/16 v0, 0x208

    aput-boolean v3, v1, v0

    return-void

    .line 2052
    :cond_0
    const/16 v0, 0x202

    aput-boolean v3, v1, v0

    .line 2056
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditText:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v2, v2, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColor:I

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    const/16 v0, 0x203

    aput-boolean v3, v1, v0

    .line 2057
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mButton:Landroid/widget/Button;

    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v2, v2, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColor:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 2058
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsView:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/Spinner;

    if-nez v0, :cond_1

    const/16 v0, 0x204

    aput-boolean v3, v1, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x205

    aput-boolean v3, v1, v0

    .line 2059
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsView:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x206

    aput-boolean v3, v1, v2

    .line 2060
    invoke-direct {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->setSpinnerTextColorInHoloTheme(Landroid/view/View;)V

    const/16 v0, 0x207

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method private cleanupList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2177
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->cleanupList()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x250

    aput-boolean v3, v0, v1

    .line 2182
    :goto_0
    const/16 v1, 0x254

    aput-boolean v3, v0, v1

    return-void

    .line 2177
    :cond_0
    const/16 v1, 0x251

    aput-boolean v3, v0, v1

    .line 2179
    const v1, 0x7f08002c

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    const/16 v2, 0x252

    aput-boolean v3, v0, v2

    .line 2180
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x253

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private compat_invalidateOptionsMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 2848
    sget v2, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    const/16 v2, 0x304

    aput-boolean v7, v1, v2

    .line 2860
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/16 v2, 0x30b

    aput-boolean v7, v1, v2

    return-void

    .line 2848
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v2, 0x305

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v2

    .line 2851
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mMethodInvalidateOptionsMenu:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    const/16 v2, 0x306

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 2855
    :goto_1
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mMethodInvalidateOptionsMenu:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2858
    const/16 v2, 0x309

    aput-boolean v7, v1, v2

    goto :goto_0

    .line 2852
    :cond_1
    :try_start_1
    const-class v2, Landroid/app/Activity;

    const-string v3, "invalidateOptionsMenu"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    const/16 v5, 0x307

    const/4 v6, 0x1

    aput-boolean v6, v1, v5

    .line 2853
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mMethodInvalidateOptionsMenu:Ljava/lang/reflect/Method;

    const/16 v2, 0x308

    const/4 v3, 0x1

    aput-boolean v3, v1, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2856
    :catch_0
    move-exception v0

    .line 2857
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mMethodInvalidateOptionsMenu:Ljava/lang/reflect/Method;

    const/16 v2, 0x30a

    aput-boolean v7, v1, v2

    goto :goto_0
.end method

.method private createList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 1222
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->usingListSpinner()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xf0

    aput-boolean v4, v1, v0

    .line 1224
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsView:Landroid/widget/AdapterView;

    const/16 v0, 0xf1

    aput-boolean v4, v1, v0

    .line 1225
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsView:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    new-instance v2, Lorg/openintents/shopping/ui/ShoppingActivity$10;

    invoke-direct {v2, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$10;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    const/16 v3, 0xf2

    aput-boolean v4, v1, v3

    .line 1226
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/16 v0, 0xf3

    aput-boolean v4, v1, v0

    .line 1308
    :goto_0
    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mStoresFilterButton:Landroid/widget/Button;

    const/16 v0, 0xfa

    aput-boolean v4, v1, v0

    .line 1309
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mStoresFilterButton:Landroid/widget/Button;

    new-instance v2, Lorg/openintents/shopping/ui/ShoppingActivity$13;

    invoke-direct {v2, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$13;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xfb

    aput-boolean v4, v1, v0

    .line 1316
    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mTagsFilterButton:Landroid/widget/Button;

    const/16 v0, 0xfc

    aput-boolean v4, v1, v0

    .line 1317
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mTagsFilterButton:Landroid/widget/Button;

    new-instance v2, Lorg/openintents/shopping/ui/ShoppingActivity$14;

    invoke-direct {v2, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$14;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1324
    const/16 v0, 0xfd

    aput-boolean v4, v1, v0

    return-void

    .line 1262
    :cond_0
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsView:Landroid/widget/AdapterView;

    const/16 v0, 0xf4

    aput-boolean v4, v1, v0

    .line 1263
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsView:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/Spinner;

    new-instance v2, Lorg/openintents/shopping/ui/ShoppingActivity$11;

    invoke-direct {v2, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$11;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    const/16 v3, 0xf5

    aput-boolean v4, v1, v3

    .line 1264
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/16 v0, 0xf6

    aput-boolean v4, v1, v0

    .line 1296
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsFilterButton:Landroid/widget/Button;

    .line 1297
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsFilterButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    const/16 v0, 0xf7

    aput-boolean v4, v1, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0xf8

    aput-boolean v4, v1, v0

    .line 1298
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsFilterButton:Landroid/widget/Button;

    new-instance v2, Lorg/openintents/shopping/ui/ShoppingActivity$12;

    invoke-direct {v2, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$12;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xf9

    aput-boolean v4, v1, v0

    goto/16 :goto_0
.end method

.method private createNewList(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 2023
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1f6

    aput-boolean v1, v2, v3

    .line 2025
    const v3, 0x7f080067

    invoke-virtual {p0, v3}, Lorg/openintents/shopping/ui/ShoppingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    const/16 v4, 0x1f7

    aput-boolean v1, v2, v4

    .line 2026
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2027
    const/16 v3, 0x1f8

    aput-boolean v1, v2, v3

    .line 2042
    :goto_0
    return v0

    .line 2030
    :cond_0
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->loadListTheme()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1f9

    aput-boolean v1, v2, v3

    .line 2032
    invoke-static {p0, p1}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getList(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v3, v4

    const/16 v4, 0x1fa

    aput-boolean v1, v2, v4

    .line 2033
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->fillListFilter()V

    const/16 v4, 0x1fb

    aput-boolean v1, v2, v4

    .line 2035
    invoke-direct {p0, v3}, Lorg/openintents/shopping/ui/ShoppingActivity;->setSelectedListId(I)V

    const/16 v3, 0x1fc

    aput-boolean v1, v2, v3

    .line 2038
    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->saveListTheme(Ljava/lang/String;)V

    const/16 v3, 0x1fd

    aput-boolean v1, v2, v3

    .line 2039
    invoke-direct {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->setListTheme(Ljava/lang/String;)V

    const/16 v0, 0x1fe

    aput-boolean v1, v2, v0

    .line 2040
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->applyListTheme()V

    .line 2042
    const/16 v0, 0x1ff

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0
.end method

.method private createView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 1017
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->createList()V

    const/16 v1, 0xd5

    aput-boolean v5, v2, v1

    .line 1019
    const v1, 0x7f0c0020

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditText:Landroid/widget/AutoCompleteTextView;

    const/16 v1, 0xd6

    aput-boolean v5, v2, v1

    .line 1021
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->fillAutoCompleteTextViewAdapter()V

    const/16 v1, 0xd7

    aput-boolean v5, v2, v1

    .line 1022
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v5}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    const/16 v1, 0xd8

    aput-boolean v5, v2, v1

    .line 1023
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v3, Lorg/openintents/shopping/ui/ShoppingActivity$2;

    invoke-direct {v3, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$2;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/16 v1, 0xd9

    aput-boolean v5, v2, v1

    .line 1057
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditText:Landroid/widget/AutoCompleteTextView;

    new-instance v3, Lorg/openintents/shopping/ui/ShoppingActivity$3;

    invoke-direct {v3, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$3;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v1, 0xda

    aput-boolean v5, v2, v1

    .line 1081
    const v1, 0x7f0c0021

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mButton:Landroid/widget/Button;

    const/16 v1, 0xdb

    aput-boolean v5, v2, v1

    .line 1082
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mButton:Landroid/widget/Button;

    new-instance v3, Lorg/openintents/shopping/ui/ShoppingActivity$4;

    invoke-direct {v3, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$4;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0xdc

    aput-boolean v5, v2, v1

    .line 1087
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mButton:Landroid/widget/Button;

    new-instance v3, Lorg/openintents/shopping/ui/ShoppingActivity$5;

    invoke-direct {v3, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$5;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/16 v1, 0xdd

    aput-boolean v5, v2, v1

    .line 1141
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mLayoutParamsItems:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0xde

    aput-boolean v5, v2, v1

    .line 1145
    const v1, 0x7f0c0014

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iput-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    const/16 v1, 0xdf

    aput-boolean v5, v2, v1

    .line 1146
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    const/high16 v3, 0x7f0c0000

    invoke-virtual {p0, v3}, Lorg/openintents/shopping/ui/ShoppingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setThemedBackground(Landroid/view/View;)V

    const/16 v1, 0xe0

    aput-boolean v5, v2, v1

    .line 1147
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v1, p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setCustomClickListener(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$OnCustomClickListener;)V

    const/16 v1, 0xe1

    aput-boolean v5, v2, v1

    .line 1149
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v1, v5}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setItemsCanFocus(Z)V

    const/16 v1, 0xe2

    aput-boolean v5, v2, v1

    .line 1150
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    new-instance v3, Lorg/openintents/shopping/ui/ShoppingActivity$6;

    invoke-direct {v3, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$6;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    invoke-virtual {v1, v3}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setDragListener(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DragListener;)V

    const/16 v1, 0xe3

    aput-boolean v5, v2, v1

    .line 1159
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    new-instance v3, Lorg/openintents/shopping/ui/ShoppingActivity$7;

    invoke-direct {v3, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$7;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    invoke-virtual {v1, v3}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setDropListener(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DropListener;)V

    const/16 v1, 0xe4

    aput-boolean v5, v2, v1

    .line 1169
    const v1, 0x7f0c001d

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v3, 0xe5

    aput-boolean v5, v2, v3

    .line 1170
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v3, v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setTotalCheckedTextView(Landroid/widget/TextView;)V

    const/16 v1, 0xe6

    aput-boolean v5, v2, v1

    .line 1172
    const v1, 0x7f0c001f

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "tv":Landroid/widget/TextView;
    const/16 v1, 0xe7

    aput-boolean v5, v2, v1

    .line 1173
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v1, v0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setTotalTextView(Landroid/widget/TextView;)V

    const/16 v1, 0xe8

    aput-boolean v5, v2, v1

    .line 1175
    const v1, 0x7f0c001e

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "tv":Landroid/widget/TextView;
    const/16 v1, 0xe9

    aput-boolean v5, v2, v1

    .line 1176
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v1, v0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setPrioritySubtotalTextView(Landroid/widget/TextView;)V

    const/16 v1, 0xea

    aput-boolean v5, v2, v1

    .line 1178
    const v1, 0x7f0c001c

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tv":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "tv":Landroid/widget/TextView;
    const/16 v1, 0xeb

    aput-boolean v5, v2, v1

    .line 1179
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v1, v0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setCountTextView(Landroid/widget/TextView;)V

    const/16 v1, 0xec

    aput-boolean v5, v2, v1

    .line 1181
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    new-instance v3, Lorg/openintents/shopping/ui/ShoppingActivity$8;

    invoke-direct {v3, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$8;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    invoke-virtual {v1, v3}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v1, 0xed

    aput-boolean v5, v2, v1

    .line 1192
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    new-instance v3, Lorg/openintents/shopping/ui/ShoppingActivity$9;

    invoke-direct {v3, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$9;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    const/16 v4, 0xee

    aput-boolean v5, v2, v4

    .line 1193
    invoke-virtual {v1, v3}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1217
    const/16 v1, 0xef

    aput-boolean v5, v2, v1

    return-void
.end method

.method private deleteList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2216
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25a

    aput-boolean v3, v0, v2

    .line 2217
    invoke-static {p0, v1}, Lorg/openintents/shopping/library/util/ShoppingUtils;->deleteList(Landroid/content/Context;Ljava/lang/String;)I

    const/16 v1, 0x25b

    aput-boolean v3, v0, v1

    .line 2220
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->fillListFilter()V

    const/16 v1, 0x25c

    aput-boolean v3, v0, v1

    .line 2222
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getSelectedListId()J

    const/16 v1, 0x25d

    aput-boolean v3, v0, v1

    .line 2225
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->loadListTheme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->setListTheme(Ljava/lang/String;)V

    const/16 v1, 0x25e

    aput-boolean v3, v0, v1

    .line 2227
    invoke-direct {p0, v4}, Lorg/openintents/shopping/ui/ShoppingActivity;->fillItems(Z)V

    const/16 v1, 0x25f

    aput-boolean v3, v0, v1

    .line 2228
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->applyListTheme()V

    const/16 v1, 0x260

    aput-boolean v3, v0, v1

    .line 2229
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->updateTitle()V

    .line 2230
    const/16 v1, 0x261

    aput-boolean v3, v0, v1

    return-void
.end method

.method private deleteListConfirm()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2190
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08000a

    const/16 v3, 0x255

    aput-boolean v5, v0, v3

    .line 2192
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08005f

    new-instance v3, Lorg/openintents/shopping/ui/ShoppingActivity$20;

    invoke-direct {v3, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$20;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    const/16 v4, 0x256

    aput-boolean v5, v0, v4

    .line 2193
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080008

    new-instance v3, Lorg/openintents/shopping/ui/ShoppingActivity$19;

    invoke-direct {v3, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$19;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    const/16 v4, 0x257

    aput-boolean v5, v0, v4

    .line 2201
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x258

    aput-boolean v5, v0, v2

    .line 2209
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2210
    const/16 v1, 0x259

    aput-boolean v5, v0, v1

    return-void
.end method

.method private fillAutoCompleteTextViewAdapter()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2923
    new-instance v1, Lorg/openintents/shopping/ui/ShoppingActivity$25;

    invoke-direct {v1, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$25;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    const/16 v3, 0x31b

    aput-boolean v4, v0, v3

    .line 2963
    invoke-virtual {v1, v2}, Lorg/openintents/shopping/ui/ShoppingActivity$25;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2964
    const/16 v1, 0x31c

    aput-boolean v4, v0, v1

    return-void
.end method

.method private fillItems(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 2882
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getSelectedListId()J

    move-result-wide v0

    .line 2883
    .local v0, "listId":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    const/16 v3, 0x310

    aput-boolean v6, v2, v3

    .line 2886
    const-string v3, "ShoppingActivity"

    const-string v4, "fillItems: listId not availalbe"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    const/16 v3, 0x311

    aput-boolean v6, v2, v3

    .line 2910
    :goto_0
    return-void

    .line 2892
    :cond_0
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraItems:Ljava/util/List;

    if-nez v3, :cond_1

    const/16 v3, 0x312

    aput-boolean v6, v2, v3

    .line 2896
    :goto_1
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->updateFilterWidgets()V

    .line 2898
    if-nez p1, :cond_2

    const/16 v3, 0x315

    aput-boolean v6, v2, v3

    .line 2905
    :goto_2
    sget v3, Lorg/openintents/shopping/ui/PreferenceActivity;->updateCount:I

    iput v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->lastAppliedPrefChange:I

    const/16 v3, 0x318

    aput-boolean v6, v2, v3

    .line 2906
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v3, p0, v0, v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->fillItems(Landroid/app/Activity;J)Landroid/database/Cursor;

    const/16 v3, 0x319

    aput-boolean v6, v2, v3

    .line 2909
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->fillAutoCompleteTextViewAdapter()V

    .line 2910
    const/16 v3, 0x31a

    aput-boolean v6, v2, v3

    goto :goto_0

    .line 2892
    :cond_1
    const/16 v3, 0x313

    aput-boolean v6, v2, v3

    .line 2893
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->insertItemsFromExtras()V

    const/16 v3, 0x314

    aput-boolean v6, v2, v3

    goto :goto_1

    .line 2898
    :cond_2
    iget v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->lastAppliedPrefChange:I

    sget v4, Lorg/openintents/shopping/ui/PreferenceActivity;->updateCount:I

    if-eq v3, v4, :cond_3

    const/16 v3, 0x316

    aput-boolean v6, v2, v3

    goto :goto_2

    .line 2900
    :cond_3
    const/16 v3, 0x317

    aput-boolean v6, v2, v3

    goto :goto_0
.end method

.method private fillListFilter()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const v12, 0x1090008

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v7

    .line 2700
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/openintents/shopping/ui/ShoppingActivity;->mStringListFilter:[Ljava/lang/String;

    iget-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mSortOrder:Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    const/16 v0, 0x2f2

    aput-boolean v10, v7, v0

    .line 2702
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 2704
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/16 v0, 0x2f3

    aput-boolean v10, v7, v0

    .line 2705
    const-string v0, "ShoppingActivity"

    const-string v1, "missing shopping provider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    new-instance v0, Landroid/widget/ArrayAdapter;

    new-array v1, v10, [Ljava/lang/String;

    const v2, 0x7f08002d

    const/16 v3, 0x2f4

    aput-boolean v10, v7, v3

    .line 2708
    invoke-virtual {p0, v2}, Lorg/openintents/shopping/ui/ShoppingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-direct {v0, p0, v12, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/16 v1, 0x2f5

    aput-boolean v10, v7, v1

    .line 2709
    invoke-direct {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->setSpinnerListAdapter(Landroid/widget/ListAdapter;)V

    .line 2711
    const/16 v0, 0x2f6

    aput-boolean v10, v7, v0

    .line 2813
    :goto_0
    return-void

    .line 2714
    :cond_0
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v10, :cond_2

    .line 2716
    const v0, 0x7f080027

    const/16 v1, 0x2f7

    aput-boolean v10, v7, v1

    .line 2717
    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f8

    aput-boolean v10, v7, v1

    .line 2716
    invoke-static {p0, v0}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getList(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    .line 2721
    .local v8, "listId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gez v0, :cond_1

    .line 2723
    const/16 v0, 0x2f9

    aput-boolean v10, v7, v0

    goto :goto_0

    .line 2728
    :cond_1
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->fillListFilter()V

    .line 2729
    const/16 v0, 0x2fa

    aput-boolean v10, v7, v0

    goto :goto_0

    .line 2771
    .end local v8    # "listId":J
    :cond_2
    new-instance v0, Lorg/openintents/shopping/ui/ShoppingActivity$1mListContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity$1mListContentObserver;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;Landroid/os/Handler;)V

    const/16 v1, 0x2fb

    aput-boolean v10, v7, v1

    .line 2772
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 2792
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsView:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    const/16 v0, 0x2fc

    aput-boolean v10, v7, v0

    .line 2793
    new-instance v0, Lorg/openintents/shopping/ui/ShoppingActivity$HoloThemeSimpleCursorAdapter;

    iget-object v4, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    new-array v5, v10, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v5, v11

    new-array v6, v10, [I

    const v1, 0x1020014

    aput v1, v6, v11

    move-object v1, p0

    move-object v2, p0

    move v3, v12

    invoke-direct/range {v0 .. v6}, Lorg/openintents/shopping/ui/ShoppingActivity$HoloThemeSimpleCursorAdapter;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    const/16 v1, 0x2fd

    aput-boolean v10, v7, v1

    .line 2799
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setDropDownViewResource(I)V

    const/16 v1, 0x2fe

    aput-boolean v10, v7, v1

    .line 2811
    :goto_1
    invoke-direct {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->setSpinnerListAdapter(Landroid/widget/ListAdapter;)V

    .line 2813
    const/16 v0, 0x300

    aput-boolean v10, v7, v0

    goto :goto_0

    .line 2802
    :cond_3
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f03000c

    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    new-array v4, v10, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v11

    new-array v5, v10, [I

    const v1, 0x7f0c003f

    aput v1, v5, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    const/16 v1, 0x2ff

    aput-boolean v10, v7, v1

    goto :goto_1
.end method

.method private getCurrentListName()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 2868
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getSelectedListId()J

    move-result-wide v0

    .line 2871
    .local v0, "listId":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    const/16 v2, 0x30d

    aput-boolean v6, v3, v2

    .line 2872
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x30e

    aput-boolean v6, v3, v4

    .line 2874
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    const/16 v4, 0x30f

    aput-boolean v6, v3, v4

    goto :goto_0
.end method

.method private getLastUsedListFromPrefs()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 689
    const-string v1, "org.openintents.shopping_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/openintents/shopping/ui/ShoppingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x58

    aput-boolean v3, v0, v2

    .line 692
    const-string v2, "lastused"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x59

    aput-boolean v3, v0, v2

    return v1
.end method

.method private getSelectedListId()J
    .locals 8

    .prologue
    const/4 v2, -0x1

    const/4 v7, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 2615
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsView:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    const/16 v1, 0x2d0

    aput-boolean v7, v4, v1

    .line 2618
    if-eq v0, v2, :cond_0

    const/16 v1, 0x2d1

    aput-boolean v7, v4, v1

    .line 2626
    .local v0, "pos":I
    :goto_0
    if-gez v0, :cond_3

    .line 2629
    const-wide/16 v2, -0x1

    const/16 v1, 0x2d9

    aput-boolean v7, v4, v1

    .line 2642
    :goto_1
    return-wide v2

    .line 2618
    .end local v0    # "pos":I
    :cond_0
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->usingListSpinner()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2d2

    aput-boolean v7, v4, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x2d3

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v4, v1

    .line 2620
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsView:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0    # "pos":I
    const/16 v1, 0x2d4

    const/4 v3, 0x1

    aput-boolean v3, v4, v1

    .line 2621
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gt v1, v0, :cond_2

    const/16 v1, 0x2d5

    const/4 v3, 0x1

    aput-boolean v3, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 2624
    :goto_2
    const/16 v1, 0x2d7

    aput-boolean v7, v4, v1

    goto :goto_0

    .line 2621
    :cond_2
    const/16 v1, 0x2d6

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v4, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2622
    :catch_0
    move-exception v1

    const/16 v1, 0x2d8

    aput-boolean v7, v4, v1

    goto :goto_0

    .line 2633
    :cond_3
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v1, 0x2da

    aput-boolean v7, v4, v1

    .line 2635
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/16 v1, 0x2db

    aput-boolean v7, v4, v1

    .line 2637
    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    const/16 v1, 0x2dc

    aput-boolean v7, v4, v1

    .line 2640
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2642
    const/16 v1, 0x2dd

    aput-boolean v7, v4, v1

    goto/16 :goto_1
.end method

.method private getShoppingExtras(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 1600
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "org.openintents.extra.STRING_ARRAYLIST_SHOPPING"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraItems:Ljava/util/List;

    const/16 v1, 0x16e

    aput-boolean v4, v0, v1

    .line 1602
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "org.openintents.extra.STRING_ARRAYLIST_QUANTITY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraQuantities:Ljava/util/List;

    const/16 v1, 0x16f

    aput-boolean v4, v0, v1

    .line 1604
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "org.openintents.extra.STRING_ARRAYLIST_PRICE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraPrices:Ljava/util/List;

    const/16 v1, 0x170

    aput-boolean v4, v0, v1

    .line 1606
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "org.openintents.extra.STRING_ARRAYLIST_BARCODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraBarcodes:Ljava/util/List;

    .line 1609
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraListUri:Landroid/net/Uri;

    const/16 v1, 0x171

    aput-boolean v4, v0, v1

    .line 1610
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x172

    aput-boolean v4, v0, v1

    .line 1621
    :goto_0
    const/16 v1, 0x179

    aput-boolean v4, v0, v1

    return-void

    .line 1610
    :cond_0
    const/16 v1, 0x173

    aput-boolean v4, v0, v1

    .line 1611
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    const/16 v3, 0x174

    aput-boolean v4, v0, v3

    .line 1613
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x175

    aput-boolean v4, v0, v3

    .line 1612
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x176

    aput-boolean v4, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x177

    aput-boolean v4, v0, v1

    .line 1617
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraListUri:Landroid/net/Uri;

    const/16 v1, 0x178

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method private initFromPreferences()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 697
    const-string v3, "org.openintents.shopping_preferences"

    invoke-virtual {p0, v3, v7}, Lorg/openintents/shopping/ui/ShoppingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 700
    .local v1, "sp":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    if-nez v3, :cond_0

    const/16 v3, 0x5a

    aput-boolean v6, v2, v3

    .line 726
    :goto_0
    const-string v3, "screenlock"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x63

    aput-boolean v6, v2, v3

    .line 732
    :goto_1
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    if-nez v3, :cond_3

    const/16 v3, 0x67

    aput-boolean v6, v2, v3

    .line 766
    :goto_2
    const-string v3, "shake"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mUseSensor:Z

    const/16 v3, 0x73

    aput-boolean v6, v2, v3

    .line 769
    const-string v3, "use_filters"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 772
    .local v0, "nowEditingFilter":Z
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mStoresFilterButton:Landroid/widget/Button;

    if-nez v3, :cond_9

    const/16 v3, 0x74

    aput-boolean v6, v2, v3

    .line 776
    :goto_3
    const/16 v3, 0x79

    aput-boolean v6, v2, v3

    return-void

    .line 704
    .end local v0    # "nowEditingFilter":Z
    :cond_0
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    const/4 v4, 0x2

    iput v4, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mUpdateLastListPosition:I

    const/16 v3, 0x5b

    aput-boolean v6, v2, v3

    .line 706
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    const-string v4, "lastlist_position"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mLastListPosition:I

    const/16 v3, 0x5c

    aput-boolean v6, v2, v3

    .line 708
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    const-string v4, "lastlist_top"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mLastListTop:I

    .line 717
    const/16 v3, 0x5d

    aput-boolean v6, v2, v3

    .line 718
    invoke-static {p0}, Lorg/openintents/shopping/ui/PreferenceActivity;->getShoppingListSortOrderFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5e

    aput-boolean v6, v2, v4

    .line 719
    iget-object v4, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v3, 0x5f

    aput-boolean v6, v2, v3

    goto :goto_0

    .line 720
    :cond_1
    iput-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mSortOrder:Ljava/lang/String;

    const/16 v3, 0x60

    aput-boolean v6, v2, v3

    .line 721
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->fillListFilter()V

    const/16 v3, 0x61

    aput-boolean v6, v2, v3

    .line 722
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getLastUsedListFromPrefs()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/openintents/shopping/ui/ShoppingActivity;->setSelectedListId(I)V

    const/16 v3, 0x62

    aput-boolean v6, v2, v3

    goto/16 :goto_0

    .line 726
    :cond_2
    const/16 v3, 0x64

    aput-boolean v6, v2, v3

    .line 728
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    const/16 v5, 0x65

    aput-boolean v6, v2, v5

    .line 729
    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    const/16 v3, 0x66

    aput-boolean v6, v2, v3

    goto/16 :goto_1

    .line 732
    :cond_3
    const/16 v3, 0x68

    aput-boolean v6, v2, v3

    .line 733
    const-string v3, "showprice"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 735
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iput v7, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriceVisibility:I

    const/16 v3, 0x69

    aput-boolean v6, v2, v3

    .line 740
    :goto_4
    const-string v3, "showtags"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 742
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iput v7, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTagsVisibility:I

    const/16 v3, 0x6b

    aput-boolean v6, v2, v3

    .line 746
    :goto_5
    const-string v3, "showquantity"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 748
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iput v7, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mQuantityVisibility:I

    const/16 v3, 0x6d

    aput-boolean v6, v2, v3

    .line 752
    :goto_6
    const-string v3, "showunits"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 754
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iput v7, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mUnitsVisibility:I

    const/16 v3, 0x6f

    aput-boolean v6, v2, v3

    .line 758
    :goto_7
    const-string v3, "showpriority"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 760
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iput v7, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriorityVisibility:I

    const/16 v3, 0x71

    aput-boolean v6, v2, v3

    goto/16 :goto_2

    .line 737
    :cond_4
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iput v8, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriceVisibility:I

    const/16 v3, 0x6a

    aput-boolean v6, v2, v3

    goto :goto_4

    .line 744
    :cond_5
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iput v8, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTagsVisibility:I

    const/16 v3, 0x6c

    aput-boolean v6, v2, v3

    goto :goto_5

    .line 750
    :cond_6
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iput v8, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mQuantityVisibility:I

    const/16 v3, 0x6e

    aput-boolean v6, v2, v3

    goto :goto_6

    .line 756
    :cond_7
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iput v8, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mUnitsVisibility:I

    const/16 v3, 0x70

    aput-boolean v6, v2, v3

    goto :goto_7

    .line 762
    :cond_8
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iput v8, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriorityVisibility:I

    const/16 v3, 0x72

    aput-boolean v6, v2, v3

    goto/16 :goto_2

    .line 772
    .restart local v0    # "nowEditingFilter":Z
    :cond_9
    iget-boolean v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditingFilter:Z

    if-ne v3, v0, :cond_a

    const/16 v3, 0x75

    aput-boolean v6, v2, v3

    goto/16 :goto_3

    :cond_a
    const/16 v3, 0x76

    aput-boolean v6, v2, v3

    .line 773
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->updateFilterWidgets()V

    const/16 v3, 0x77

    aput-boolean v6, v2, v3

    .line 774
    invoke-direct {p0, v7}, Lorg/openintents/shopping/ui/ShoppingActivity;->fillItems(Z)V

    const/16 v3, 0x78

    aput-boolean v6, v2, v3

    goto/16 :goto_3
.end method

.method private insertItemsFromExtras()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v13, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v12

    .line 1627
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraItems:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1629
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraListUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/16 v0, 0x17a

    aput-boolean v13, v12, v0

    .line 1642
    :goto_0
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 1643
    .local v8, "max":I
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraQuantities:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraQuantities:Ljava/util/List;

    const/16 v2, 0x181

    aput-boolean v13, v12, v2

    .line 1644
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x182

    aput-boolean v13, v12, v2

    move v10, v0

    :goto_1
    const/16 v0, 0x184

    aput-boolean v13, v12, v0

    .line 1645
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraPrices:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraPrices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x185

    aput-boolean v13, v12, v2

    move v11, v0

    :goto_2
    const/16 v0, 0x187

    aput-boolean v13, v12, v0

    .line 1646
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraBarcodes:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraBarcodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    const/16 v0, 0x188

    aput-boolean v13, v12, v0

    .line 1648
    .local v9, "maxBarcode":I
    :goto_3
    const/16 v0, 0x18a

    aput-boolean v13, v12, v0

    :goto_4
    if-ge v7, v8, :cond_8

    const/16 v0, 0x18b

    aput-boolean v13, v12, v0

    .line 1649
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraItems:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v0, 0x18c

    aput-boolean v13, v12, v0

    .line 1650
    if-ge v7, v10, :cond_5

    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraQuantities:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x18d

    aput-boolean v13, v12, v1

    move-object v3, v0

    :goto_5
    const/16 v0, 0x18f

    aput-boolean v13, v12, v0

    .line 1652
    if-ge v7, v11, :cond_6

    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraPrices:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x190

    aput-boolean v13, v12, v1

    move-object v5, v0

    :goto_6
    const/16 v0, 0x192

    aput-boolean v13, v12, v0

    .line 1653
    if-ge v7, v9, :cond_7

    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraBarcodes:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x193

    aput-boolean v13, v12, v1

    move-object v6, v0

    :goto_7
    const/16 v0, 0x195

    aput-boolean v13, v12, v0

    .line 1658
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->insertNewItem(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    add-int/lit8 v7, v7, 0x1

    .local v7, "i":I
    const/16 v0, 0x196

    aput-boolean v13, v12, v0

    goto :goto_4

    .line 1630
    .end local v7    # "i":I
    .end local v8    # "max":I
    .end local v9    # "maxBarcode":I
    :cond_0
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraListUri:Landroid/net/Uri;

    const/16 v2, 0x17b

    aput-boolean v13, v12, v2

    .line 1631
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v0, 0x17c

    aput-boolean v13, v12, v0

    .line 1634
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getSelectedListId()J

    move-result-wide v10

    cmp-long v0, v2, v10

    if-nez v0, :cond_1

    const/16 v0, 0x17d

    aput-boolean v13, v12, v0

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x17e

    aput-boolean v13, v12, v0

    .line 1637
    long-to-int v0, v2

    invoke-direct {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->setSelectedListId(I)V

    const/16 v0, 0x17f

    aput-boolean v13, v12, v0

    .line 1638
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v0, p0, v2, v3}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->fillItems(Landroid/app/Activity;J)Landroid/database/Cursor;

    const/16 v0, 0x180

    aput-boolean v13, v12, v0

    goto/16 :goto_0

    .line 1644
    .restart local v8    # "max":I
    :cond_2
    const/16 v0, 0x183

    aput-boolean v13, v12, v0

    move v10, v1

    goto/16 :goto_1

    .line 1645
    :cond_3
    const/16 v0, 0x186

    aput-boolean v13, v12, v0

    move v11, v1

    goto/16 :goto_2

    .line 1646
    :cond_4
    const/16 v0, 0x189

    aput-boolean v13, v12, v0

    move v9, v1

    goto/16 :goto_3

    .line 1650
    .restart local v9    # "maxBarcode":I
    :cond_5
    const/16 v0, 0x18e

    aput-boolean v13, v12, v0

    move-object v3, v4

    goto/16 :goto_5

    .line 1652
    :cond_6
    const/16 v0, 0x191

    aput-boolean v13, v12, v0

    move-object v5, v4

    goto :goto_6

    .line 1653
    :cond_7
    const/16 v0, 0x194

    aput-boolean v13, v12, v0

    move-object v6, v4

    goto :goto_7

    .line 1663
    :cond_8
    iput-object v4, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraItems:Ljava/util/List;

    .line 1664
    iput-object v4, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraQuantities:Ljava/util/List;

    .line 1665
    iput-object v4, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraPrices:Ljava/util/List;

    .line 1666
    iput-object v4, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraBarcodes:Ljava/util/List;

    .line 1667
    iput-object v4, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraListUri:Landroid/net/Uri;

    .line 1668
    const/16 v0, 0x197

    aput-boolean v13, v12, v0

    .line 1672
    .end local v8    # "max":I
    .end local v9    # "maxBarcode":I
    :goto_8
    const/16 v0, 0x19a

    aput-boolean v13, v12, v0

    return-void

    .line 1669
    :cond_9
    const v0, 0x7f08002b

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x198

    aput-boolean v13, v12, v1

    .line 1670
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x199

    aput-boolean v13, v12, v0

    goto :goto_8
.end method

.method private insertNewItem()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v7

    .line 1577
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x166

    aput-boolean v10, v7, v0

    .line 1580
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x167

    aput-boolean v10, v7, v0

    .line 1581
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getSelectedListId()J

    move-result-wide v8

    .line 1582
    .local v8, "listId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gez v0, :cond_0

    .line 1585
    const/16 v0, 0x168

    aput-boolean v10, v7, v0

    .line 1594
    :goto_0
    return-void

    .line 1587
    :cond_0
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->insertNewItem(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x169

    aput-boolean v10, v7, v0

    .line 1588
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditText:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x16a

    aput-boolean v10, v7, v0

    .line 1589
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->fillAutoCompleteTextViewAdapter()V

    .line 1590
    const/16 v0, 0x16b

    aput-boolean v10, v7, v0

    .line 1594
    :goto_1
    const/16 v0, 0x16d

    aput-boolean v10, v7, v0

    goto :goto_0

    .line 1592
    .end local v8    # "listId":J
    :cond_1
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->pickItems()V

    const/16 v0, 0x16c

    aput-boolean v10, v7, v0

    goto :goto_1
.end method

.method private onModeChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2835
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->fillItems(Z)V

    const/16 v1, 0x301

    aput-boolean v2, v0, v1

    .line 2837
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->compat_invalidateOptionsMenu()V

    const/16 v1, 0x302

    aput-boolean v2, v0, v1

    .line 2839
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->updateTitle()V

    .line 2840
    const/16 v1, 0x303

    aput-boolean v2, v0, v1

    return-void
.end method

.method private pickItem(Landroid/database/Cursor;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 1678
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/16 v1, 0x19b

    aput-boolean v4, v0, v1

    .line 1679
    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x19c

    aput-boolean v4, v0, v2

    .line 1682
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/16 v3, 0x19d

    aput-boolean v4, v0, v3

    .line 1683
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v1, 0x19e

    aput-boolean v4, v0, v1

    .line 1684
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v2}, Lorg/openintents/shopping/ui/ShoppingActivity;->setResult(ILandroid/content/Intent;)V

    const/16 v1, 0x19f

    aput-boolean v4, v0, v1

    .line 1685
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->finish()V

    .line 1686
    const/16 v1, 0x1a0

    aput-boolean v4, v0, v1

    return-void
.end method

.method private pickItems()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 1950
    const/16 v1, 0x1dc

    aput-boolean v3, v0, v1

    .line 1951
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/openintents/shopping/ui/PreferenceActivity;->getPickItemsInListFromPrefs(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1952
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    if-ne v1, v3, :cond_0

    .line 1953
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    const/4 v2, 0x2

    iput v2, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    const/16 v1, 0x1dd

    aput-boolean v3, v0, v1

    .line 1957
    :goto_0
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->onModeChanged()V

    const/16 v1, 0x1df

    aput-boolean v3, v0, v1

    .line 1965
    :goto_1
    const/16 v1, 0x1e4

    aput-boolean v3, v0, v1

    return-void

    .line 1955
    :cond_0
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iput v3, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    const/16 v1, 0x1de

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 1959
    :cond_1
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    if-ne v1, v3, :cond_2

    const/16 v1, 0x1e0

    aput-boolean v3, v0, v1

    .line 1963
    :goto_2
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->pickItemsUsingDialog()V

    const/16 v1, 0x1e3

    aput-boolean v3, v0, v1

    goto :goto_1

    .line 1960
    :cond_2
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iput v3, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    const/16 v1, 0x1e1

    aput-boolean v3, v0, v1

    .line 1961
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->onModeChanged()V

    const/16 v1, 0x1e2

    aput-boolean v3, v0, v1

    goto :goto_2
.end method

.method private pickItemsUsingDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 1969
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/openintents/shopping/ui/PickItemsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x1e5

    aput-boolean v3, v0, v2

    .line 1970
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v2, 0x1e6

    aput-boolean v3, v0, v2

    .line 1971
    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->startActivity(Landroid/content/Intent;)V

    .line 1972
    const/16 v1, 0x1e7

    aput-boolean v3, v0, v1

    return-void
.end method

.method private registerSensor()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 779
    iget-boolean v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mUseSensor:Z

    if-nez v0, :cond_0

    .line 781
    const/16 v0, 0x7a

    aput-boolean v3, v1, v0

    .line 793
    :goto_0
    return-void

    .line 784
    :cond_0
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    if-eq v0, v3, :cond_1

    const/16 v0, 0x7b

    aput-boolean v3, v1, v0

    .line 793
    :goto_1
    const/16 v0, 0x80

    aput-boolean v3, v1, v0

    goto :goto_0

    .line 785
    :cond_1
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    const/16 v0, 0x7c

    aput-boolean v3, v1, v0

    .line 788
    :goto_2
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mMySensorListener:Landroid/hardware/SensorListener;

    invoke-virtual {v0, v2, v4, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    const/16 v0, 0x7f

    aput-boolean v3, v1, v0

    goto :goto_1

    .line 785
    :cond_2
    const/16 v0, 0x7d

    aput-boolean v3, v1, v0

    .line 786
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0x7e

    aput-boolean v3, v1, v0

    goto :goto_2
.end method

.method private renameList(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 2087
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x20e

    aput-boolean v1, v2, v3

    .line 2089
    const v3, 0x7f080067

    invoke-virtual {p0, v3}, Lorg/openintents/shopping/ui/ShoppingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    const/16 v4, 0x20f

    aput-boolean v1, v2, v4

    .line 2090
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2091
    const/16 v3, 0x210

    aput-boolean v1, v2, v3

    .line 2103
    :goto_0
    return v0

    .line 2095
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/16 v4, 0x211

    aput-boolean v1, v2, v4

    .line 2096
    const-string v4, "name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x212

    aput-boolean v1, v2, v4

    .line 2097
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    const/16 v7, 0x213

    aput-boolean v1, v2, v7

    .line 2099
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x214

    aput-boolean v1, v2, v6

    .line 2098
    invoke-static {v5, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/16 v5, 0x215

    aput-boolean v1, v2, v5

    .line 2097
    invoke-virtual {v4, v0, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v0, 0x216

    aput-boolean v1, v2, v0

    .line 2101
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    const/16 v0, 0x217

    aput-boolean v1, v2, v0

    .line 2102
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->updateTitle()V

    .line 2103
    const/16 v0, 0x218

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0
.end method

.method private sendList()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v5

    .line 2107
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v2}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/CursorAdapter;

    if-eqz v2, :cond_c

    const/16 v2, 0x219

    aput-boolean v4, v5, v2

    .line 2108
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x21a

    aput-boolean v4, v5, v2

    .line 2109
    const/16 v2, 0x21b

    aput-boolean v4, v5, v2

    move v0, v3

    .local v0, "i":I
    .local v1, "t":Z
    :goto_0
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v2}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_b

    const/16 v2, 0x21c

    aput-boolean v4, v5, v2

    .line 2110
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v2}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    const/16 v7, 0x21d

    aput-boolean v4, v5, v7

    .line 2111
    const/4 v7, 0x6

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, 0x2

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    const/16 v7, 0x21e

    aput-boolean v4, v5, v7

    .line 2112
    const-string v7, "[X] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v7, 0x21f

    aput-boolean v4, v5, v7

    .line 2116
    :goto_1
    const/4 v7, 0x5

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x221

    aput-boolean v4, v5, v8

    .line 2117
    const/4 v8, 0x4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/16 v10, 0x222

    aput-boolean v4, v5, v10

    .line 2118
    invoke-static {v8, v9}, Lorg/openintents/shopping/library/util/PriceConverter;->getStringFromCentPrice(J)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x223

    aput-boolean v4, v5, v9

    .line 2119
    const/4 v9, 0x3

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x224

    aput-boolean v4, v5, v10

    .line 2120
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v7, 0x225

    aput-boolean v4, v5, v7

    .line 2124
    :goto_2
    const/16 v7, 0xc

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x229

    aput-boolean v4, v5, v10

    .line 2125
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v7, 0x22a

    aput-boolean v4, v5, v7

    .line 2129
    :goto_3
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x22e

    aput-boolean v4, v5, v2

    .line 2131
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x22f

    aput-boolean v4, v5, v2

    move v2, v4

    :goto_4
    const/16 v7, 0x231

    aput-boolean v4, v5, v7

    .line 2132
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0x232

    aput-boolean v4, v5, v7

    move v1, v4

    .line 2133
    :goto_5
    if-eqz v2, :cond_5

    .end local v0    # "i":I
    const/16 v7, 0x234

    aput-boolean v4, v5, v7

    .line 2134
    :goto_6
    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2135
    if-nez v2, :cond_7

    const/16 v7, 0x237

    aput-boolean v4, v5, v7

    .line 2138
    :goto_7
    if-nez v2, :cond_8

    const/16 v2, 0x23a

    aput-boolean v4, v5, v2

    .line 2141
    :goto_8
    if-nez v1, :cond_a

    const/16 v2, 0x23e

    aput-boolean v4, v5, v2

    .line 2144
    :goto_9
    const-string v2, ")"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x241

    aput-boolean v4, v5, v2

    .line 2146
    :goto_a
    const-string v2, "\n"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2109
    add-int/lit8 v0, v0, 0x1

    .restart local v0    # "i":I
    const/16 v2, 0x242

    aput-boolean v4, v5, v2

    goto/16 :goto_0

    .line 2114
    :cond_0
    const-string v7, "[ ] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v7, 0x220

    aput-boolean v4, v5, v7

    goto/16 :goto_1

    .line 2120
    :cond_1
    const/16 v10, 0x226

    aput-boolean v4, v5, v10

    .line 2121
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v7, 0x227

    aput-boolean v4, v5, v7

    .line 2122
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v7, 0x228

    aput-boolean v4, v5, v7

    goto/16 :goto_2

    .line 2125
    :cond_2
    const/16 v10, 0x22b

    aput-boolean v4, v5, v10

    .line 2126
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v7, 0x22c

    aput-boolean v4, v5, v7

    .line 2127
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v7, 0x22d

    aput-boolean v4, v5, v7

    goto/16 :goto_3

    .line 2131
    :cond_3
    const/16 v2, 0x230

    aput-boolean v4, v5, v2

    move v2, v3

    goto :goto_4

    .line 2132
    :cond_4
    const/16 v7, 0x233

    aput-boolean v4, v5, v7

    move v1, v3

    goto :goto_5

    .line 2133
    .end local v0    # "i":I
    :cond_5
    if-nez v1, :cond_6

    const/16 v2, 0x235

    aput-boolean v4, v5, v2

    goto :goto_a

    :cond_6
    const/16 v7, 0x236

    aput-boolean v4, v5, v7

    goto :goto_6

    .line 2135
    :cond_7
    const/16 v7, 0x238

    aput-boolean v4, v5, v7

    .line 2136
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v7, 0x239

    aput-boolean v4, v5, v7

    goto :goto_7

    .line 2138
    :cond_8
    if-nez v1, :cond_9

    const/16 v2, 0x23b

    aput-boolean v4, v5, v2

    goto :goto_8

    :cond_9
    const/16 v2, 0x23c

    aput-boolean v4, v5, v2

    .line 2139
    const-string v2, ", "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x23d

    aput-boolean v4, v5, v2

    goto/16 :goto_8

    .line 2141
    :cond_a
    const/16 v2, 0x23f

    aput-boolean v4, v5, v2

    .line 2142
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x240

    aput-boolean v4, v5, v2

    goto/16 :goto_9

    .line 2149
    .restart local v0    # "i":I
    :cond_b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/16 v7, 0x243

    aput-boolean v4, v5, v7

    .line 2150
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v7, 0x244

    aput-boolean v4, v5, v7

    .line 2151
    const-string v7, "text/plain"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v7, 0x245

    aput-boolean v4, v5, v7

    .line 2152
    const-string v7, "android.intent.extra.SUBJECT"

    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getCurrentListName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v7, 0x246

    aput-boolean v4, v5, v7

    .line 2153
    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x247

    const/4 v7, 0x1

    :try_start_0
    aput-boolean v7, v5, v6

    .line 2156
    const v6, 0x7f0800c6

    invoke-virtual {p0, v6}, Lorg/openintents/shopping/ui/ShoppingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openintents/shopping/ui/ShoppingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2161
    const/16 v2, 0x248

    aput-boolean v4, v5, v2

    .line 2162
    :goto_b
    const/16 v2, 0x24d

    aput-boolean v4, v5, v2

    .line 2167
    :goto_c
    const/16 v2, 0x24f

    aput-boolean v4, v5, v2

    return-void

    .line 2157
    :catch_0
    move-exception v2

    const/16 v2, 0x249

    aput-boolean v4, v5, v2

    .line 2158
    const v2, 0x7f08000f

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    const/16 v3, 0x24a

    aput-boolean v4, v5, v3

    .line 2159
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x24b

    aput-boolean v4, v5, v2

    .line 2160
    const-string v2, "ShoppingActivity"

    const-string v3, "Email client not installed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x24c

    aput-boolean v4, v5, v2

    goto :goto_b

    .line 2163
    .end local v0    # "i":I
    .end local v1    # "t":Z
    :cond_c
    const v2, 0x7f080011

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    const/16 v2, 0x24e

    aput-boolean v4, v5, v2

    goto :goto_c
.end method

.method private setListTheme(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2046
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v1, p1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setListTheme(Ljava/lang/String;)V

    .line 2047
    const/16 v1, 0x200

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private setSelectedListId(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 2660
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v2, 0x2de

    aput-boolean v4, v1, v2

    .line 2661
    .local v0, "posId":I
    :goto_0
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2df

    aput-boolean v4, v1, v2

    .line 2672
    :goto_1
    const/16 v2, 0x2e5

    aput-boolean v4, v1, v2

    return-void

    .line 2661
    :cond_0
    const/16 v2, 0x2e0

    aput-boolean v4, v1, v2

    .line 2662
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2663
    if-ne v0, p1, :cond_1

    const/16 v2, 0x2e1

    aput-boolean v4, v1, v2

    .line 2664
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    const/16 v3, 0x2e2

    aput-boolean v4, v1, v3

    .line 2668
    invoke-direct {p0, v2}, Lorg/openintents/shopping/ui/ShoppingActivity;->setSelectedListPos(I)V

    .line 2669
    const/16 v2, 0x2e3

    aput-boolean v4, v1, v2

    goto :goto_1

    .line 2671
    :cond_1
    const/16 v2, 0x2e4

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method private setSelectedListPos(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 2675
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsView:Landroid/widget/AdapterView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x2e6

    aput-boolean v6, v1, v0

    .line 2677
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsView:Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    const/16 v0, 0x2e7

    aput-boolean v6, v1, v0

    .line 2679
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getSelectedListId()J

    move-result-wide v2

    const/16 v0, 0x2e8

    aput-boolean v6, v1, v0

    .line 2682
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->loadListTheme()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->setListTheme(Ljava/lang/String;)V

    const/16 v0, 0x2e9

    aput-boolean v6, v1, v0

    .line 2684
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getListId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/16 v0, 0x2ea

    aput-boolean v6, v1, v0

    .line 2687
    :goto_0
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->applyListTheme()V

    const/16 v0, 0x2ed

    aput-boolean v6, v1, v0

    .line 2688
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->updateTitle()V

    .line 2689
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsView:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-nez v0, :cond_1

    const/16 v0, 0x2ee

    aput-boolean v6, v1, v0

    .line 2692
    :goto_1
    const/16 v0, 0x2f1

    aput-boolean v6, v1, v0

    return-void

    .line 2684
    :cond_0
    const/16 v0, 0x2eb

    aput-boolean v6, v1, v0

    .line 2685
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->fillItems(Z)V

    const/16 v0, 0x2ec

    aput-boolean v6, v1, v0

    goto :goto_0

    .line 2689
    :cond_1
    const/16 v0, 0x2ef

    aput-boolean v6, v1, v0

    .line 2690
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsView:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const/16 v0, 0x2f0

    aput-boolean v6, v1, v0

    goto :goto_1
.end method

.method private setSpinnerListAdapter(Landroid/widget/ListAdapter;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 3245
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->usingListSpinner()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x34a

    aput-boolean v4, v1, v0

    .line 3246
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsView:Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    const/16 v0, 0x34b

    aput-boolean v4, v1, v0

    .line 3252
    :goto_0
    const/16 v0, 0x34f

    aput-boolean v4, v1, v0

    return-void

    .line 3248
    :cond_0
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getSupportFragmentManager()Landroid/support/v2/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f0c0023

    const/16 v3, 0x34c

    aput-boolean v4, v1, v3

    .line 3249
    invoke-virtual {v0, v2}, Landroid/support/v2/app/FragmentManager;->findFragmentById(I)Landroid/support/v2/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;

    const/16 v2, 0x34d

    aput-boolean v4, v1, v2

    .line 3250
    invoke-virtual {v0, p1}, Lorg/openintents/shopping/ui/tablet/ShoppingListFilterFragment;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0x34e

    aput-boolean v4, v1, v0

    goto :goto_0
.end method

.method private setSpinnerTextColorInHoloTheme(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2072
    sget v1, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    const/16 v1, 0x209

    aput-boolean v3, v0, v1

    .line 2077
    :goto_0
    const/16 v1, 0x20d

    aput-boolean v3, v0, v1

    return-void

    .line 2073
    :cond_0
    instance-of v1, p1, Landroid/widget/TextView;

    if-nez v1, :cond_1

    const/16 v1, 0x20a

    aput-boolean v3, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x20b

    aput-boolean v3, v0, v1

    .line 2074
    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColor:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x20c

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public static setThemeForAll(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2447
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x2a6

    aput-boolean v4, v0, v2

    .line 2448
    const-string v2, "skin_background"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2a7

    aput-boolean v4, v0, v2

    .line 2449
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2451
    const/16 v1, 0x2a8

    aput-boolean v4, v0, v1

    return-void
.end method

.method private unregisterSensor()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 796
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const/16 v0, 0x81

    aput-boolean v3, v1, v0

    .line 800
    :goto_0
    const/16 v0, 0x85

    aput-boolean v3, v1, v0

    return-void

    .line 796
    :cond_0
    const/16 v0, 0x82

    aput-boolean v3, v1, v0

    .line 797
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0x83

    aput-boolean v3, v1, v0

    .line 798
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mMySensorListener:Landroid/hardware/SensorListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;)V

    const/16 v0, 0x84

    aput-boolean v3, v1, v0

    goto :goto_0
.end method

.method private updateButton()V
    .locals 5

    .prologue
    const v4, 0x7f080002

    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 920
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/16 v1, 0xaf

    aput-boolean v3, v0, v1

    .line 921
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb0

    aput-boolean v3, v0, v2

    .line 922
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb1

    aput-boolean v3, v0, v1

    .line 925
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mButton:Landroid/widget/Button;

    const v2, 0x7f080026

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    const/16 v1, 0xb2

    aput-boolean v3, v0, v1

    .line 929
    :goto_0
    const/16 v1, 0xb4

    aput-boolean v3, v0, v1

    .line 932
    :goto_1
    const/16 v1, 0xb6

    aput-boolean v3, v0, v1

    return-void

    .line 927
    :cond_0
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    const/16 v1, 0xb3

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 930
    :cond_1
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    const/16 v1, 0xb5

    aput-boolean v3, v0, v1

    goto :goto_1
.end method

.method private updateTitle()V
    .locals 6

    .prologue
    const v3, 0x7f080003

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 886
    iget v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mState:I

    if-nez v1, :cond_0

    const/16 v1, 0x99

    aput-boolean v4, v0, v1

    .line 887
    :goto_0
    const/16 v1, 0x9b

    aput-boolean v4, v0, v1

    .line 888
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/openintents/shopping/ui/PreferenceActivity;->getPickItemsInListFromPrefs(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 890
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    if-ne v1, v4, :cond_1

    .line 891
    const v1, 0x7f0800c7

    new-array v2, v4, [Ljava/lang/Object;

    const/16 v3, 0x9c

    aput-boolean v4, v0, v3

    .line 892
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getCurrentListName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x9d

    aput-boolean v4, v0, v3

    .line 891
    invoke-virtual {p0, v1, v2}, Lorg/openintents/shopping/ui/ShoppingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x9e

    aput-boolean v4, v0, v1

    .line 893
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->registerSensor()V

    const/16 v1, 0x9f

    aput-boolean v4, v0, v1

    .line 916
    :goto_1
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->updateButton()V

    .line 917
    const/16 v1, 0xae

    aput-boolean v4, v0, v1

    return-void

    .line 886
    :cond_0
    iget v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mState:I

    if-ne v1, v4, :cond_4

    const/16 v1, 0x9a

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 895
    :cond_1
    const v1, 0x7f080063

    new-array v2, v4, [Ljava/lang/Object;

    const/16 v3, 0xa0

    aput-boolean v4, v0, v3

    .line 896
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getCurrentListName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0xa1

    aput-boolean v4, v0, v3

    .line 895
    invoke-virtual {p0, v1, v2}, Lorg/openintents/shopping/ui/ShoppingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0xa2

    aput-boolean v4, v0, v1

    .line 897
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->unregisterSensor()V

    const/16 v1, 0xa3

    aput-boolean v4, v0, v1

    goto :goto_1

    .line 903
    :cond_2
    invoke-static {p0}, Lorg/openintents/shopping/ui/PreferenceActivity;->getUsingFiltersFromPrefs(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa4

    aput-boolean v4, v0, v1

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getCurrentListName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa5

    aput-boolean v4, v0, v2

    .line 905
    invoke-virtual {p0, v3}, Lorg/openintents/shopping/ui/ShoppingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa6

    aput-boolean v4, v0, v2

    .line 904
    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0xa7

    aput-boolean v4, v0, v1

    goto :goto_1

    .line 907
    :cond_3
    invoke-virtual {p0, v3}, Lorg/openintents/shopping/ui/ShoppingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0xa8

    aput-boolean v4, v0, v1

    goto :goto_1

    .line 909
    :cond_4
    iget v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const/16 v1, 0xa9

    aput-boolean v4, v0, v1

    .line 911
    :goto_2
    const v1, 0x7f080062

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0xac

    aput-boolean v4, v0, v1

    .line 912
    const v1, -0x555501

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->setTitleColor(I)V

    const/16 v1, 0xad

    aput-boolean v4, v0, v1

    goto/16 :goto_1

    .line 909
    :cond_5
    iget v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/16 v1, 0xaa

    aput-boolean v4, v0, v1

    goto/16 :goto_1

    :cond_6
    const/16 v1, 0xab

    aput-boolean v4, v0, v1

    goto :goto_2
.end method

.method private updateWidgets()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 673
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 674
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    const/16 v4, 0x4c

    aput-boolean v7, v3, v4

    .line 675
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lorg/openintents/shopping/widgets/CheckItemsWidget;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x4d

    aput-boolean v7, v3, v4

    .line 674
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 676
    .local v0, "a":[I
    const/16 v2, 0x4e

    aput-boolean v7, v3, v2

    .line 677
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v2

    const/16 v4, 0x4f

    aput-boolean v7, v3, v4

    .line 678
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v2, 0x50

    aput-boolean v7, v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    const/16 v5, 0x51

    aput-boolean v7, v3, v5

    .line 679
    iget-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v2, 0x52

    aput-boolean v7, v3, v2

    .line 683
    :goto_1
    const/16 v2, 0x56

    aput-boolean v7, v3, v2

    goto :goto_0

    .line 679
    :cond_0
    const/16 v5, 0x53

    aput-boolean v7, v3, v5

    .line 680
    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    const/16 v2, 0x54

    aput-boolean v7, v3, v2

    .line 681
    new-instance v2, Lorg/openintents/shopping/widgets/CheckItemsWidget;

    invoke-direct {v2}, Lorg/openintents/shopping/widgets/CheckItemsWidget;-><init>()V

    invoke-virtual {v2, p0, v1, v0}, Lorg/openintents/shopping/widgets/CheckItemsWidget;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    const/16 v2, 0x55

    aput-boolean v7, v3, v2

    goto :goto_1

    .line 684
    :cond_1
    const/16 v2, 0x57

    aput-boolean v7, v3, v2

    return-void
.end method

.method private usingListSpinner()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 457
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/4 v3, 0x5

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x4

    aput-boolean v1, v2, v3

    goto :goto_0
.end method


# virtual methods
.method addLocationAlert()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2508
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.openintents.action.ADD_LOCATION_ALERT"

    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x2b5

    aput-boolean v4, v0, v2

    .line 2511
    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->startActivity(Landroid/content/Intent;)V

    .line 2512
    const/16 v1, 0x2b6

    aput-boolean v4, v0, v1

    return-void
.end method

.method copyItem(I)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v8

    .line 2339
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    const/16 v1, 0x282

    aput-boolean v9, v8, v1

    .line 2340
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    const/16 v1, 0x283

    aput-boolean v9, v8, v1

    .line 2341
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v1, 0x284

    aput-boolean v9, v8, v1

    .line 2342
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x285

    aput-boolean v9, v8, v0

    .line 2346
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "copyof"

    const/16 v5, 0x286

    aput-boolean v9, v8, v5

    .line 2348
    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/16 v4, 0x287

    aput-boolean v9, v8, v4

    .line 2347
    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "item_id"

    aput-object v4, v2, v6

    const-string v4, "contains_id"

    aput-object v4, v2, v9

    const/16 v4, 0x288

    aput-boolean v9, v8, v4

    move-object v4, v3

    move-object v5, v3

    .line 2346
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, "c":Landroid/database/Cursor;
    const/16 v0, 0x289

    aput-boolean v9, v8, v0

    .line 2352
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v0, v9, :cond_0

    .line 2353
    const/16 v0, 0x28a

    aput-boolean v9, v8, v0

    .line 2364
    :goto_0
    return-void

    .line 2355
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v0, 0x28b

    aput-boolean v9, v8, v0

    .line 2356
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x28c

    aput-boolean v9, v8, v1

    .line 2357
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x28d

    aput-boolean v9, v8, v2

    .line 2358
    invoke-interface {v7}, Landroid/database/Cursor;->deactivate()V

    const/16 v2, 0x28e

    aput-boolean v9, v8, v2

    .line 2359
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/16 v2, 0x28f

    aput-boolean v9, v8, v2

    .line 2361
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->ITEMNAME:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/openintents/shopping/ui/ShoppingActivity;->editItem(JJLorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;)V

    .line 2364
    const/16 v0, 0x290

    aput-boolean v9, v8, v0

    goto :goto_0
.end method

.method deleteItem(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2300
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    const/16 v2, 0x26f

    aput-boolean v4, v0, v2

    .line 2301
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v2, 0x270

    aput-boolean v4, v0, v2

    .line 2303
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x271

    aput-boolean v4, v0, v3

    .line 2304
    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x272

    aput-boolean v4, v0, v3

    .line 2305
    invoke-static {p0, v1, v2}, Lorg/openintents/shopping/library/util/ShoppingUtils;->deleteItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x273

    aput-boolean v4, v0, v1

    .line 2308
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->requery()V

    const/16 v1, 0x274

    aput-boolean v4, v0, v1

    .line 2309
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->fillAutoCompleteTextViewAdapter()V

    .line 2310
    const/16 v1, 0x275

    aput-boolean v4, v0, v1

    return-void
.end method

.method deleteItemDialog(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2292
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2293
    iput p1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mDeleteItemPosition:I

    const/16 v1, 0x26d

    aput-boolean v2, v0, v1

    .line 2295
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->showDialog(I)V

    .line 2296
    const/16 v1, 0x26e

    aput-boolean v2, v0, v1

    return-void
.end method

.method editItem(ILorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2261
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v1, 0x267

    aput-boolean v7, v0, v1

    .line 2264
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    const/4 v4, 0x7

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2265
    .local v2, "itemId":J
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    const/4 v4, 0x0

    const/16 v5, 0x268

    aput-boolean v7, v0, v5

    .line 2266
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/16 v1, 0x269

    aput-boolean v7, v0, v1

    move-object v1, p0

    move-object v6, p2

    .line 2268
    invoke-virtual/range {v1 .. v6}, Lorg/openintents/shopping/ui/ShoppingActivity;->editItem(JJLorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;)V

    .line 2269
    const/16 v1, 0x26a

    aput-boolean v7, v0, v1

    return-void
.end method

.method editItem(JJLorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2243
    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemUri:Landroid/net/Uri;

    const/16 v1, 0x263

    aput-boolean v4, v0, v1

    .line 2245
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListItemUri:Landroid/net/Uri;

    const/16 v1, 0x264

    aput-boolean v4, v0, v1

    .line 2246
    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mRelationUri:Landroid/net/Uri;

    .line 2248
    iput-object p5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditItemFocusField:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    const/16 v1, 0x265

    aput-boolean v4, v0, v1

    .line 2250
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->showDialog(I)V

    .line 2251
    const/16 v1, 0x266

    aput-boolean v4, v0, v1

    return-void
.end method

.method editItemStores(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 2275
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v3, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v3, 0x26b

    aput-boolean v5, v2, v3

    .line 2277
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v3, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2284
    .local v0, "itemId":J
    const/16 v3, 0x26c

    aput-boolean v5, v2, v3

    return-void
.end method

.method getTaglist()[Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2976
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->getTaglist(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method getTaglist(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v10

    .line 2991
    if-nez p1, :cond_0

    const/16 v0, 0x31e

    aput-boolean v11, v10, v0

    .line 2992
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v4, "tags"

    aput-object v4, v2, v9

    const-string v5, "modified ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "c":Landroid/database/Cursor;
    const/16 v0, 0x31f

    aput-boolean v11, v10, v0

    .line 3004
    .end local v6    # "c":Landroid/database/Cursor;
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/16 v0, 0x323

    aput-boolean v11, v10, v0

    .line 3005
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v0, 0x324

    aput-boolean v11, v10, v0

    .line 3006
    .local v8, "tags":Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x325

    aput-boolean v11, v10, v0

    .line 3007
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3008
    if-nez v8, :cond_1

    const/16 v0, 0x326

    aput-boolean v11, v10, v0

    .line 3017
    :goto_2
    const/16 v0, 0x32f

    aput-boolean v11, v10, v0

    goto :goto_1

    .line 2996
    .end local v8    # "tags":Ljava/lang/String;
    :cond_0
    const-string v0, "content://org.openintents.shopping/listtags"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/16 v1, 0x320

    aput-boolean v11, v10, v1

    .line 2997
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/16 v0, 0x321

    aput-boolean v11, v10, v0

    .line 2998
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/String;

    const-string v4, "item_tags"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/16 v0, 0x322

    aput-boolean v11, v10, v0

    goto :goto_0

    .line 3008
    .restart local v8    # "tags":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x327

    aput-boolean v11, v10, v0

    .line 3010
    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3011
    .local v7, "smalltaglist":[Ljava/lang/String;
    array-length v2, v7

    const/16 v0, 0x328

    aput-boolean v11, v10, v0

    move v0, v9

    :goto_3
    if-lt v0, v2, :cond_2

    const/16 v0, 0x329

    aput-boolean v11, v10, v0

    goto :goto_2

    :cond_2
    aget-object v3, v7, v0

    const/16 v4, 0x32a

    aput-boolean v11, v10, v4

    .line 3012
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v3, 0x32b

    aput-boolean v11, v10, v3

    .line 3011
    :goto_4
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x32e

    aput-boolean v11, v10, v3

    goto :goto_3

    .line 3012
    :cond_3
    const/16 v4, 0x32c

    aput-boolean v11, v10, v4

    .line 3013
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x32d

    aput-boolean v11, v10, v3

    goto :goto_4

    .line 3018
    .end local v7    # "smalltaglist":[Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/16 v0, 0x330

    aput-boolean v11, v10, v0

    .line 3022
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x331

    aput-boolean v11, v10, v2

    .line 3023
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v1, 0x332

    aput-boolean v11, v10, v1

    .line 3025
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/16 v1, 0x333

    aput-boolean v11, v10, v1

    .line 3027
    new-array v1, v9, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x334

    aput-boolean v11, v10, v1

    return-object v0
.end method

.method public loadListTheme()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 2471
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 2472
    const-string v0, "1"

    const/16 v2, 0x2a9

    aput-boolean v5, v1, v2

    .line 2482
    .local v0, "skinBackground":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2473
    .end local v0    # "skinBackground":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    if-gez v2, :cond_1

    .line 2474
    const-string v0, "1"

    const/16 v2, 0x2aa

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 2479
    :cond_1
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    const/4 v3, 0x5

    const/16 v4, 0x2ab

    aput-boolean v5, v1, v4

    .line 2480
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2482
    .restart local v0    # "skinBackground":Ljava/lang/String;
    const/16 v2, 0x2ac

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method markItem(I)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2234
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v1, p1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->toggleItemBought(I)V

    .line 2235
    const/16 v1, 0x262

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method moveItem(II)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 2314
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v3, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    const/16 v4, 0x276

    aput-boolean v8, v2, v4

    .line 2315
    iget-object v4, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v4, v4, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->requery()Z

    const/16 v4, 0x277

    aput-boolean v8, v2, v4

    .line 2316
    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v4, 0x278

    aput-boolean v8, v2, v4

    .line 2318
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getSelectedListId()J

    const/16 v4, 0x279

    aput-boolean v8, v2, v4

    .line 2324
    iget-object v4, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v0, v4

    .local v0, "listId":J
    const/16 v4, 0x27a

    aput-boolean v8, v2, v4

    .line 2327
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x27b

    aput-boolean v8, v2, v4

    .line 2328
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v8}, Landroid/content/ContentValues;-><init>(I)V

    const/16 v5, 0x27c

    aput-boolean v8, v2, v5

    .line 2329
    const-string v5, "list_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v5, 0x27d

    aput-boolean v8, v2, v5

    .line 2330
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    const/16 v7, 0x27e

    aput-boolean v8, v2, v7

    .line 2331
    invoke-static {v6, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/16 v6, 0x27f

    aput-boolean v8, v2, v6

    .line 2330
    invoke-virtual {v5, v3, v4, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v3, 0x280

    aput-boolean v8, v2, v3

    .line 2334
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v3}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->requery()V

    .line 2335
    const/16 v3, 0x281

    aput-boolean v8, v2, v3

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 3115
    if-nez p1, :cond_2

    .line 3119
    if-nez p2, :cond_0

    const/16 v4, 0x335

    aput-boolean v8, v3, v4

    .line 3207
    .local v1, "position":I
    :goto_0
    const/16 v4, 0x349

    aput-boolean v8, v3, v4

    :goto_1
    return-void

    .line 3133
    .end local v1    # "position":I
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/16 v5, 0x336

    aput-boolean v8, v3, v5

    .line 3135
    iget-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    invoke-virtual {v5, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x337

    aput-boolean v8, v3, v5

    .line 3136
    const-string v5, "ShoppingActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected uri returned: Should be "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    const/16 v4, 0x338

    aput-boolean v8, v3, v4

    goto :goto_1

    .line 3142
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3144
    .local v0, "extras":Landroid/os/Bundle;
    const-string v4, "share_name"

    const/16 v5, 0x339

    aput-boolean v8, v3, v5

    .line 3145
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3146
    .local v2, "sharename":Ljava/lang/String;
    const-string v4, "share_contacts"

    const/16 v5, 0x33a

    aput-boolean v8, v3, v5

    .line 3147
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3169
    const/16 v4, 0x33b

    aput-boolean v8, v3, v4

    goto :goto_0

    .line 3171
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v2    # "sharename":Ljava/lang/String;
    :cond_2
    if-ne v8, p1, :cond_5

    .line 3174
    if-eq v6, p2, :cond_3

    const/16 v4, 0x33c

    aput-boolean v8, v3, v4

    goto :goto_0

    :cond_3
    const/16 v4, 0x33d

    aput-boolean v8, v3, v4

    .line 3187
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_4

    const/16 v4, 0x33e

    aput-boolean v8, v3, v4

    goto :goto_0

    :cond_4
    const/16 v4, 0x33f

    aput-boolean v8, v3, v4

    .line 3190
    invoke-direct {p0, p3}, Lorg/openintents/shopping/ui/ShoppingActivity;->getShoppingExtras(Landroid/content/Intent;)V

    const/16 v4, 0x340

    aput-boolean v8, v3, v4

    goto/16 :goto_0

    .line 3193
    :cond_5
    const/4 v4, 0x2

    if-eq v4, p1, :cond_6

    const/16 v4, 0x341

    aput-boolean v8, v3, v4

    goto/16 :goto_0

    .line 3197
    :cond_6
    if-eq v6, p2, :cond_7

    const/16 v4, 0x342

    aput-boolean v8, v3, v4

    .line 3205
    .restart local v1    # "position":I
    :goto_2
    iput v6, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mMoveItemPosition:I

    const/16 v4, 0x348

    aput-boolean v8, v3, v4

    goto/16 :goto_0

    .line 3198
    .end local v1    # "position":I
    :cond_7
    iget v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mMoveItemPosition:I

    .line 3199
    .restart local v1    # "position":I
    iget v4, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mMoveItemPosition:I

    if-gez v4, :cond_8

    const/16 v4, 0x343

    aput-boolean v8, v3, v4

    goto :goto_2

    :cond_8
    const/16 v4, 0x344

    aput-boolean v8, v3, v4

    .line 3200
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const/16 v5, 0x345

    aput-boolean v8, v3, v5

    .line 3201
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x346

    aput-boolean v8, v3, v5

    .line 3200
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lorg/openintents/shopping/ui/ShoppingActivity;->moveItem(II)V

    const/16 v4, 0x347

    aput-boolean v8, v3, v4

    goto :goto_2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 1976
    invoke-super {p0, p1}, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 1977
    const/16 v0, 0x1e8

    aput-boolean v4, v1, v0

    .line 1978
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    const/16 v2, 0x1e9

    aput-boolean v4, v1, v2

    .line 1979
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x1ea

    aput-boolean v4, v1, v0

    .line 2007
    :goto_0
    const/16 v0, 0x1f5

    aput-boolean v4, v1, v0

    return v4

    .line 1981
    :pswitch_1
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->markItem(I)V

    .line 1982
    const/16 v0, 0x1eb

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 1984
    :pswitch_2
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    sget-object v2, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->ITEMNAME:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    invoke-virtual {p0, v0, v2}, Lorg/openintents/shopping/ui/ShoppingActivity;->editItem(ILorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;)V

    .line 1985
    const/16 v0, 0x1ec

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 1987
    :pswitch_3
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->removeItemFromList(I)V

    .line 1988
    const/16 v0, 0x1ed

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 1990
    :pswitch_4
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->deleteItemDialog(I)V

    .line 1991
    const/16 v0, 0x1ee

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 1993
    :pswitch_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/16 v3, 0x1ef

    aput-boolean v4, v1, v3

    .line 1994
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x1f0

    aput-boolean v4, v1, v3

    .line 1995
    sget-object v3, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v3, 0x1f1

    aput-boolean v4, v1, v3

    .line 1996
    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lorg/openintents/shopping/ui/ShoppingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1997
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mMoveItemPosition:I

    .line 1998
    const/16 v0, 0x1f2

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 2000
    :pswitch_6
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->copyItem(I)V

    .line 2001
    const/16 v0, 0x1f3

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 2003
    :pswitch_7
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->editItemStores(I)V

    const/16 v0, 0x1f4

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 1979
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v6

    .line 504
    invoke-super {p0, p1}, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v5, 0x6

    aput-boolean v10, v6, v5

    .line 508
    invoke-static {p0}, Lorg/openintents/shopping/ui/PreferenceActivity;->getShoppingListSortOrderFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mSortOrder:Ljava/lang/String;

    const/4 v5, 0x7

    aput-boolean v10, v6, v5

    .line 510
    iget-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mDistribution:Lorg/openintents/distribution/DistributionLibrary;

    const/16 v7, 0x65

    const/16 v8, 0x64

    invoke-virtual {v5, v7, v8}, Lorg/openintents/distribution/DistributionLibrary;->setFirst(II)V

    const/16 v5, 0x8

    aput-boolean v10, v6, v5

    .line 519
    const v5, 0x7f030005

    invoke-virtual {p0, v5}, Lorg/openintents/shopping/ui/ShoppingActivity;->setContentView(I)V

    .line 524
    const/16 v5, 0x7d0

    iput v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mUpdateInterval:I

    .line 525
    iput-boolean v11, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mUpdating:Z

    .line 528
    sget-object v5, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    iput-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    .line 529
    sget-object v5, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    iput-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemUri:Landroid/net/Uri;

    .line 530
    sget-object v5, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    iput-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListItemUri:Landroid/net/Uri;

    const/16 v5, 0x9

    aput-boolean v10, v6, v5

    .line 532
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getLastUsedListFromPrefs()I

    move-result v4

    const/16 v5, 0xa

    aput-boolean v10, v6, v5

    .line 535
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const/16 v7, 0xb

    aput-boolean v10, v6, v7

    .line 536
    invoke-virtual {v5, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc

    aput-boolean v10, v6, v8

    .line 537
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 541
    iput v11, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mState:I

    const/16 v7, 0xd

    aput-boolean v10, v6, v7

    .line 543
    sget-object v7, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    const/16 v7, 0xe

    aput-boolean v10, v6, v7

    .line 546
    iget-object v7, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v5, 0xf

    aput-boolean v10, v6, v5

    .line 620
    :goto_0
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->createView()V

    const/16 v5, 0x35

    aput-boolean v10, v6, v5

    .line 623
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->fillListFilter()V

    const/16 v5, 0x36

    const/4 v7, 0x1

    :try_start_0
    aput-boolean v7, v6, v5

    .line 628
    iget-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 631
    .local v4, "selectList":I
    const/16 v5, 0x37

    aput-boolean v10, v6, v5

    .line 634
    .end local v4    # "selectList":I
    :goto_1
    invoke-direct {p0, v4}, Lorg/openintents/shopping/ui/ShoppingActivity;->setSelectedListId(I)V

    .line 636
    if-nez p1, :cond_d

    const/16 v5, 0x39

    aput-boolean v10, v6, v5

    .line 655
    :goto_2
    iget-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    const/16 v5, 0x46

    aput-boolean v10, v6, v5

    .line 659
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->initFromPreferences()V

    const/16 v5, 0x47

    aput-boolean v10, v6, v5

    .line 661
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->onModeChanged()V

    const/16 v5, 0x48

    aput-boolean v10, v6, v5

    .line 663
    iget-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v5, p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setActionBarListener(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$ActionBarListener;)V

    .line 664
    const/16 v5, 0x49

    aput-boolean v10, v6, v5

    :goto_3
    return-void

    .line 547
    :cond_0
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 549
    iput v11, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mState:I

    const/16 v7, 0x10

    aput-boolean v10, v6, v7

    .line 551
    sget-object v7, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    const/16 v7, 0x11

    aput-boolean v10, v6, v7

    .line 554
    iget-object v7, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v5, 0x12

    aput-boolean v10, v6, v5

    goto :goto_0

    .line 556
    :cond_1
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 557
    iput v10, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mState:I

    const/16 v8, 0x13

    aput-boolean v10, v6, v8

    .line 559
    const-string v8, "vnd.android.cursor.item/vnd.openintents.shopping.item"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x14

    aput-boolean v10, v6, v7

    .line 560
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    const/16 v7, 0x15

    aput-boolean v10, v6, v7

    .line 561
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x16

    aput-boolean v10, v6, v7

    .line 560
    invoke-static {p0, v5}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getListForItem(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    const/16 v5, 0x17

    aput-boolean v10, v6, v5

    goto/16 :goto_0

    .line 562
    :cond_2
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_3

    const/16 v5, 0x18

    aput-boolean v10, v6, v5

    goto/16 :goto_0

    :cond_3
    const/16 v7, 0x19

    aput-boolean v10, v6, v7

    .line 563
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    const/16 v5, 0x1a

    aput-boolean v10, v6, v5

    goto/16 :goto_0

    .line 565
    :cond_4
    const-string v8, "android.intent.action.INSERT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 567
    iput v10, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mState:I

    const/16 v8, 0x1b

    aput-boolean v10, v6, v8

    .line 569
    const-string v8, "vnd.android.cursor.item/vnd.openintents.shopping.item"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 570
    const/16 v7, 0x1c

    aput-boolean v10, v6, v7

    .line 571
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    const/16 v8, 0x1d

    aput-boolean v10, v6, v8

    .line 572
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x1e

    aput-boolean v10, v6, v8

    .line 570
    invoke-static {v7, v5}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getListForItem(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    const/16 v5, 0x1f

    aput-boolean v10, v6, v5

    goto/16 :goto_0

    .line 573
    :cond_5
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_6

    const/16 v5, 0x20

    aput-boolean v10, v6, v5

    goto/16 :goto_0

    :cond_6
    const/16 v7, 0x21

    aput-boolean v10, v6, v7

    .line 574
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    const/16 v5, 0x22

    aput-boolean v10, v6, v5

    goto/16 :goto_0

    .line 577
    :cond_7
    const-string v8, "android.intent.action.PICK"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 578
    const/4 v5, 0x2

    iput v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mState:I

    const/16 v5, 0x23

    aput-boolean v10, v6, v5

    .line 580
    sget-object v5, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    const/16 v5, 0x24

    aput-boolean v10, v6, v5

    goto/16 :goto_0

    .line 582
    :cond_8
    const-string v8, "android.intent.action.GET_CONTENT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 583
    const/4 v5, 0x3

    iput v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mState:I

    const/16 v5, 0x25

    aput-boolean v10, v6, v5

    .line 585
    sget-object v5, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    const/16 v5, 0x26

    aput-boolean v10, v6, v5

    goto/16 :goto_0

    .line 587
    :cond_9
    const-string v8, "org.openintents.action.INSERT_FROM_EXTRAS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/16 v8, 0x27

    aput-boolean v10, v6, v8

    .line 588
    const-string v8, "org.openintents.type/string.arraylist.shopping"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x28

    aput-boolean v10, v6, v7

    .line 594
    invoke-direct {p0, v5}, Lorg/openintents/shopping/ui/ShoppingActivity;->getShoppingExtras(Landroid/content/Intent;)V

    .line 595
    iput v11, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mState:I

    const/16 v7, 0x29

    aput-boolean v10, v6, v7

    .line 596
    sget-object v7, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    const/16 v7, 0x2a

    aput-boolean v10, v6, v7

    .line 599
    iget-object v7, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v5, 0x2b

    aput-boolean v10, v6, v5

    goto/16 :goto_0

    .line 600
    :cond_a
    invoke-virtual {v5}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    const/16 v9, 0x2c

    aput-boolean v10, v6, v9

    .line 601
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2d

    aput-boolean v10, v6, v9

    .line 600
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    const/16 v5, 0x2e

    aput-boolean v10, v6, v5

    goto/16 :goto_0

    :cond_b
    const/16 v7, 0x2f

    aput-boolean v10, v6, v7

    .line 606
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    const/16 v7, 0x30

    aput-boolean v10, v6, v7

    .line 608
    invoke-direct {p0, v5}, Lorg/openintents/shopping/ui/ShoppingActivity;->getShoppingExtras(Landroid/content/Intent;)V

    .line 609
    iput v11, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mState:I

    const/16 v7, 0x31

    aput-boolean v10, v6, v7

    .line 610
    iget-object v7, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v5, 0x32

    aput-boolean v10, v6, v5

    goto/16 :goto_0

    .line 614
    :cond_c
    const-string v5, "ShoppingActivity"

    const-string v7, "Shopping: Unknown action, exiting"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x33

    aput-boolean v10, v6, v5

    .line 615
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->finish()V

    .line 616
    const/16 v5, 0x34

    aput-boolean v10, v6, v5

    goto/16 :goto_3

    .line 629
    :catch_0
    move-exception v1

    .line 630
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/16 v5, 0x38

    aput-boolean v10, v6, v5

    goto/16 :goto_1

    .line 636
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    const/16 v5, 0x3a

    aput-boolean v10, v6, v5

    .line 637
    const-string v5, "original item"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 638
    .local v3, "prevText":Ljava/lang/String;
    if-nez v3, :cond_e

    const/16 v5, 0x3b

    aput-boolean v10, v6, v5

    .line 643
    :goto_4
    const-string v5, "item uri"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemUri:Landroid/net/Uri;

    const/16 v5, 0x3e

    aput-boolean v10, v6, v5

    .line 644
    iget-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/16 v7, 0x3f

    aput-boolean v10, v6, v7

    .line 645
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 646
    .local v2, "num":I
    iget-object v7, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    add-int/lit8 v8, v2, -0x1

    const/16 v9, 0x40

    aput-boolean v10, v6, v9

    .line 647
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v7, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListItemUri:Landroid/net/Uri;

    const/16 v5, 0x41

    aput-boolean v10, v6, v5

    .line 648
    const-string v5, "relation_uri"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    const/16 v5, 0x42

    aput-boolean v10, v6, v5

    .line 651
    :goto_5
    iget-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    const-string v7, "mode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    const/16 v5, 0x45

    aput-boolean v10, v6, v5

    goto/16 :goto_2

    .line 638
    .end local v2    # "num":I
    :cond_e
    const/16 v5, 0x3c

    aput-boolean v10, v6, v5

    .line 639
    iget-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5, v3}, Landroid/widget/AutoCompleteTextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    const/16 v5, 0x3d

    aput-boolean v10, v6, v5

    goto :goto_4

    .line 648
    .restart local v2    # "num":I
    :cond_f
    const/16 v5, 0x43

    aput-boolean v10, v6, v5

    .line 649
    const-string v5, "relation_uri"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mRelationUri:Landroid/net/Uri;

    const/16 v5, 0x44

    aput-boolean v10, v6, v5

    goto :goto_5
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 2517
    packed-switch p1, :pswitch_data_0

    .line 2567
    invoke-super {p0, p1}, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    const/16 v2, 0x2c3

    aput-boolean v5, v1, v2

    :goto_0
    return-object v0

    .line 2520
    :pswitch_0
    new-instance v0, Lorg/openintents/shopping/ui/dialog/NewListDialog;

    new-instance v2, Lorg/openintents/shopping/ui/ShoppingActivity$21;

    invoke-direct {v2, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$21;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    invoke-direct {v0, p0, v2}, Lorg/openintents/shopping/ui/dialog/NewListDialog;-><init>(Landroid/content/Context;Lorg/openintents/shopping/ui/dialog/DialogActionListener;)V

    const/16 v2, 0x2b7

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 2528
    :pswitch_1
    new-instance v0, Lorg/openintents/shopping/ui/dialog/RenameListDialog;

    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getCurrentListName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/openintents/shopping/ui/ShoppingActivity$22;

    invoke-direct {v3, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$22;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    invoke-direct {v0, p0, v2, v3}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/openintents/shopping/ui/dialog/DialogActionListener;)V

    const/16 v2, 0x2b8

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 2537
    :pswitch_2
    new-instance v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemUri:Landroid/net/Uri;

    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mRelationUri:Landroid/net/Uri;

    iget-object v4, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListItemUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v2, v3, v4}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    const/16 v2, 0x2b9

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 2541
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    const/16 v3, 0x2ba

    aput-boolean v5, v1, v3

    .line 2542
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f08001d

    const/16 v3, 0x2bb

    aput-boolean v5, v1, v3

    .line 2543
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f08000d

    const/16 v3, 0x2bc

    aput-boolean v5, v1, v3

    .line 2544
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f08000c

    new-instance v3, Lorg/openintents/shopping/ui/ShoppingActivity$24;

    invoke-direct {v3, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$24;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    const/16 v4, 0x2bd

    aput-boolean v5, v1, v4

    .line 2545
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x1040000

    new-instance v3, Lorg/openintents/shopping/ui/ShoppingActivity$23;

    invoke-direct {v3, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$23;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    const/16 v4, 0x2be

    aput-boolean v5, v1, v4

    .line 2552
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v2, 0x2bf

    aput-boolean v5, v1, v2

    .line 2558
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2541
    const/16 v2, 0x2c0

    aput-boolean v5, v1, v2

    goto/16 :goto_0

    .line 2561
    :pswitch_4
    new-instance v0, Lorg/openintents/shopping/ui/dialog/ThemeDialog;

    invoke-direct {v0, p0, p0}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;-><init>(Landroid/content/Context;Lorg/openintents/shopping/ui/dialog/ThemeDialog$ThemeDialogListener;)V

    const/16 v2, 0x2c1

    aput-boolean v5, v1, v2

    goto/16 :goto_0

    .line 2564
    :pswitch_5
    new-instance v0, Lorg/openintents/distribution/DownloadOIAppDialog;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Lorg/openintents/distribution/DownloadOIAppDialog;-><init>(Landroid/content/Context;I)V

    const/16 v2, 0x2c2

    aput-boolean v5, v1, v2

    goto/16 :goto_0

    .line 2517
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9

    .prologue
    const/16 v8, 0x70

    const/4 v5, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 1692
    invoke-super {p0, p1}, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1714
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraItems:Ljava/util/List;

    if-nez v2, :cond_0

    const/16 v2, 0x1a1

    aput-boolean v6, v1, v2

    .line 1720
    :goto_0
    const/16 v2, 0x1a5

    aput-boolean v6, v1, v2

    .line 1722
    const v2, 0x7f080029

    invoke-interface {p1, v7, v6, v7, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020003

    const/16 v4, 0x1a6

    aput-boolean v6, v1, v4

    .line 1723
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x30

    const/16 v4, 0x6e

    invoke-interface {v2, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    .local v0, "item":Landroid/view/MenuItem;
    const/16 v2, 0x1a7

    aput-boolean v6, v1, v2

    .line 1726
    const/4 v2, 0x2

    const v3, 0x7f080009

    invoke-interface {p1, v7, v2, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020004

    const/16 v4, 0x1a8

    aput-boolean v6, v1, v4

    .line 1727
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x31

    const/16 v4, 0x63

    invoke-interface {v2, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x1a9

    aput-boolean v6, v1, v2

    .line 1728
    invoke-static {v0, v5}, Landroid/support/v2/view/MenuCompat;->setShowAsAction(Landroid/view/MenuItem;I)Z

    const/16 v2, 0x1aa

    aput-boolean v6, v1, v2

    .line 1731
    const/16 v2, 0xf

    const v3, 0x7f080023

    invoke-interface {p1, v7, v2, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x1080033

    const/16 v4, 0x1ab

    aput-boolean v6, v1, v4

    .line 1732
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x32

    invoke-interface {v2, v3, v8}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    const/16 v2, 0x1ac

    aput-boolean v6, v1, v2

    .line 1739
    const v2, 0x7f0800cb

    invoke-interface {p1, v7, v5, v7, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x1080042

    const/16 v4, 0x1ad

    aput-boolean v6, v1, v4

    .line 1740
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x33

    const/16 v4, 0x74

    const/16 v5, 0x1ae

    aput-boolean v6, v1, v5

    .line 1741
    invoke-interface {v2, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    const/16 v2, 0x1af

    aput-boolean v6, v1, v2

    .line 1743
    const/16 v2, 0x12

    const v3, 0x7f0800bd

    invoke-interface {p1, v7, v2, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x1080049

    const/16 v4, 0x1b0

    aput-boolean v6, v1, v4

    .line 1744
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x34

    const/16 v4, 0x1b1

    aput-boolean v6, v1, v4

    .line 1745
    invoke-interface {v2, v3, v8}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    const/16 v2, 0x1b2

    aput-boolean v6, v1, v2

    .line 1747
    const/4 v2, 0x7

    const v3, 0x7f0800c5

    invoke-interface {p1, v7, v2, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x108003e

    const/16 v4, 0x1b3

    aput-boolean v6, v1, v4

    .line 1748
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x35

    const/16 v4, 0x72

    invoke-interface {v2, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    const/16 v2, 0x1b4

    aput-boolean v6, v1, v2

    .line 1750
    const/4 v2, 0x3

    const v3, 0x7f08000e

    invoke-interface {p1, v7, v2, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x108003c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v2, 0x1b5

    aput-boolean v6, v1, v2

    .line 1753
    const/16 v2, 0x13

    const v3, 0x7f0800c6

    invoke-interface {p1, v7, v2, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x1080050

    const/16 v4, 0x1b6

    aput-boolean v6, v1, v4

    .line 1754
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x37

    const/16 v4, 0x73

    invoke-interface {v2, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    const/16 v2, 0x1b7

    aput-boolean v6, v1, v2

    .line 1762
    const/16 v2, 0x16

    const v3, 0x7f08001a

    invoke-interface {p1, v7, v2, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x1080034

    const/16 v4, 0x1b8

    aput-boolean v6, v1, v4

    .line 1763
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x39

    const/16 v4, 0x6d

    const/16 v5, 0x1b9

    aput-boolean v6, v1, v5

    .line 1764
    invoke-interface {v2, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    const/16 v2, 0x1ba

    aput-boolean v6, v1, v2

    .line 1767
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mDistribution:Lorg/openintents/distribution/DistributionLibrary;

    invoke-virtual {v2, p1}, Lorg/openintents/distribution/DistributionLibrary;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 1774
    const/16 v2, 0x1bb

    aput-boolean v6, v1, v2

    return v6

    .line 1714
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    const/16 v2, 0x1a2

    aput-boolean v6, v1, v2

    .line 1715
    const/16 v2, 0xb

    const v3, 0x7f08001b

    invoke-interface {p1, v7, v2, v7, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x1080055

    const/16 v4, 0x1a3

    aput-boolean v6, v1, v4

    .line 1716
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v2, 0x1a4

    aput-boolean v6, v1, v2

    goto/16 :goto_0
.end method

.method public onCustomClick(Landroid/database/Cursor;ILorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 1483
    iget v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/16 v2, 0x144

    aput-boolean v4, v1, v2

    .line 1484
    invoke-direct {p0, p1}, Lorg/openintents/shopping/ui/ShoppingActivity;->pickItem(Landroid/database/Cursor;)V

    const/16 v2, 0x145

    aput-boolean v4, v1, v2

    .line 1515
    :goto_0
    const/16 v2, 0x157

    aput-boolean v4, v1, v2

    return-void

    .line 1486
    :cond_0
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-boolean v2, v2, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mShowCheckBox:Z

    if-eqz v2, :cond_7

    .line 1487
    const/4 v0, 0x0

    .line 1492
    .local v0, "handled":Z
    sget-object v2, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->PRICE:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    if-eq p3, v2, :cond_1

    const/16 v2, 0x146

    aput-boolean v4, v1, v2

    .line 1501
    :goto_1
    sget-object v2, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->PRIORITY:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    if-ne p3, v2, :cond_3

    const/16 v2, 0x14b

    aput-boolean v4, v1, v2

    :goto_2
    const/16 v2, 0x14e

    aput-boolean v4, v1, v2

    .line 1502
    invoke-static {p0}, Lorg/openintents/shopping/ui/PreferenceActivity;->getQuickEditModeFromPrefs(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x14f

    aput-boolean v4, v1, v2

    .line 1507
    :goto_3
    if-eqz v0, :cond_6

    const/16 v2, 0x152

    aput-boolean v4, v1, v2

    .line 1509
    :goto_4
    const/16 v2, 0x155

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1492
    :cond_1
    const/16 v2, 0x147

    aput-boolean v4, v1, v2

    .line 1494
    invoke-static {p0}, Lorg/openintents/shopping/ui/PreferenceActivity;->getUsingPerStorePricesFromPrefs(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x148

    aput-boolean v4, v1, v2

    goto :goto_1

    :cond_2
    const/16 v2, 0x149

    aput-boolean v4, v1, v2

    .line 1497
    invoke-virtual {p0, p2}, Lorg/openintents/shopping/ui/ShoppingActivity;->editItemStores(I)V

    .line 1498
    const/4 v0, 0x1

    const/16 v2, 0x14a

    aput-boolean v4, v1, v2

    goto :goto_1

    .line 1501
    :cond_3
    sget-object v2, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->QUANTITY:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    if-eq p3, v2, :cond_4

    const/16 v2, 0x14c

    aput-boolean v4, v1, v2

    goto :goto_3

    :cond_4
    const/16 v2, 0x14d

    aput-boolean v4, v1, v2

    goto :goto_2

    .line 1502
    :cond_5
    const/16 v2, 0x150

    aput-boolean v4, v1, v2

    .line 1503
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openintents/shopping/ui/ShoppingActivity;->QuickEditFieldPopupMenu(Landroid/database/Cursor;ILorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;Landroid/view/View;)Z

    move-result v0

    const/16 v2, 0x151

    aput-boolean v4, v1, v2

    goto :goto_3

    .line 1507
    :cond_6
    const/16 v2, 0x153

    aput-boolean v4, v1, v2

    .line 1508
    invoke-virtual {p0, p2, p3}, Lorg/openintents/shopping/ui/ShoppingActivity;->editItem(ILorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;)V

    const/16 v2, 0x154

    aput-boolean v4, v1, v2

    goto :goto_4

    .line 1512
    .end local v0    # "handled":Z
    :cond_7
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v2, p2}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->toggleItemBought(I)V

    const/16 v2, 0x156

    aput-boolean v4, v1, v2

    goto/16 :goto_0
.end method

.method public onItemChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 3256
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    const/16 v1, 0x350

    aput-boolean v2, v0, v1

    .line 3257
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->fillAutoCompleteTextViewAdapter()V

    .line 3258
    const/16 v1, 0x351

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onLoadTheme()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2421
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->loadListTheme()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a1

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 1883
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1932
    :pswitch_0
    const/high16 v1, 0x40000

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    if-ne v1, v3, :cond_0

    const/16 v1, 0x1d9

    aput-boolean v0, v2, v1

    .line 1938
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1940
    const/16 v1, 0x1da

    aput-boolean v0, v2, v1

    .line 1942
    :goto_0
    return v0

    .line 1885
    :pswitch_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->showDialog(I)V

    .line 1886
    const/16 v1, 0x1cc

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 1889
    :pswitch_2
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->cleanupList()V

    .line 1890
    const/16 v1, 0x1cd

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 1893
    :pswitch_3
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->showDialog(I)V

    .line 1894
    const/16 v1, 0x1ce

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 1897
    :pswitch_4
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->deleteListConfirm()V

    .line 1898
    const/16 v1, 0x1cf

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 1901
    :pswitch_5
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->pickItems()V

    .line 1902
    const/16 v1, 0x1d0

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 1905
    :pswitch_6
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->setShareSettings()V

    .line 1906
    const/16 v1, 0x1d1

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 1909
    :pswitch_7
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->setThemeSettings()V

    .line 1910
    const/16 v1, 0x1d2

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 1913
    :pswitch_8
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->addLocationAlert()V

    .line 1914
    const/16 v1, 0x1d3

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 1917
    :pswitch_9
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lorg/openintents/shopping/ui/PreferenceActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x1d4

    aput-boolean v0, v2, v3

    .line 1918
    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->startActivity(Landroid/content/Intent;)V

    .line 1919
    const/16 v1, 0x1d5

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 1921
    :pswitch_a
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->sendList()V

    .line 1922
    const/16 v1, 0x1d6

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 1924
    :pswitch_b
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->insertItemsFromExtras()V

    .line 1925
    const/16 v1, 0x1d7

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 1927
    :pswitch_c
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->toggleOnAllItems()V

    .line 1928
    const/16 v1, 0x1d8

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 1942
    :cond_0
    invoke-super {p0, p1}, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x1db

    aput-boolean v0, v2, v3

    move v0, v1

    goto :goto_0

    .line 1883
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 942
    invoke-super {p0}, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->onPause()V

    .line 947
    iput-boolean v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mIsActive:Z

    const/16 v1, 0xb7

    aput-boolean v8, v3, v1

    .line 951
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->unregisterSensor()V

    const/16 v1, 0xb8

    aput-boolean v8, v3, v1

    .line 955
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getFirstVisiblePosition()I

    move-result v4

    const/16 v1, 0xb9

    aput-boolean v8, v3, v1

    .line 956
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v1, v2}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v5, 0xba

    aput-boolean v8, v3, v5

    .line 957
    if-nez v1, :cond_0

    const/16 v1, 0xbb

    aput-boolean v8, v3, v1

    move v1, v2

    :goto_0
    const/16 v5, 0xbd

    aput-boolean v8, v3, v5

    .line 962
    const-string v5, "org.openintents.shopping_preferences"

    invoke-virtual {p0, v5, v2}, Lorg/openintents/shopping/ui/ShoppingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/16 v5, 0xbe

    aput-boolean v8, v3, v5

    .line 964
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/16 v5, 0xbf

    aput-boolean v8, v3, v5

    .line 968
    new-instance v5, Ljava/lang/Long;

    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getSelectedListId()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 969
    .local v0, "list_id":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    const/16 v5, 0xc0

    aput-boolean v8, v3, v5

    .line 971
    :goto_1
    const-string v5, "lastlist_position"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/16 v4, 0xc3

    aput-boolean v8, v3, v4

    .line 972
    const-string v4, "lastlist_top"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/16 v1, 0xc4

    aput-boolean v8, v3, v1

    .line 973
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v1, 0xc5

    aput-boolean v8, v3, v1

    .line 980
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->onPause()V

    .line 981
    const/16 v1, 0xc6

    aput-boolean v8, v3, v1

    return-void

    .line 957
    .end local v0    # "list_id":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    const/16 v5, 0xbc

    aput-boolean v8, v3, v5

    goto :goto_0

    .line 969
    .restart local v0    # "list_id":I
    :cond_1
    const/16 v5, 0xc1

    aput-boolean v8, v3, v5

    .line 970
    const-string v5, "lastused"

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/16 v5, 0xc2

    aput-boolean v8, v3, v5

    goto :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2573
    invoke-super {p0, p1, p2}, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 2575
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 v1, 0x2c4

    aput-boolean v3, v0, v1

    .line 2600
    :goto_0
    const/16 v1, 0x2cf

    aput-boolean v3, v0, v1

    return-void

    .line 2578
    :pswitch_1
    check-cast p2, Lorg/openintents/shopping/ui/dialog/RenameListDialog;

    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getCurrentListName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/openintents/shopping/ui/dialog/RenameListDialog;->setName(Ljava/lang/String;)V

    .line 2579
    const/16 v1, 0x2c5

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 2582
    :pswitch_2
    check-cast p2, Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    const/16 v1, 0x2c6

    aput-boolean v3, v0, v1

    .line 2583
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemUri:Landroid/net/Uri;

    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListItemUri:Landroid/net/Uri;

    invoke-virtual {p2, v1, v2}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->setItemUri(Landroid/net/Uri;Landroid/net/Uri;)V

    const/16 v1, 0x2c7

    aput-boolean v3, v0, v1

    .line 2584
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mRelationUri:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->setRelationUri(Landroid/net/Uri;)V

    const/16 v1, 0x2c8

    aput-boolean v3, v0, v1

    .line 2585
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditItemFocusField:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    invoke-virtual {p2, v1}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->setFocusField(Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;)V

    const/16 v1, 0x2c9

    aput-boolean v3, v0, v1

    .line 2587
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getTaglist()[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ca

    aput-boolean v3, v0, v2

    .line 2588
    invoke-virtual {p2, v1}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->setTagList([Ljava/lang/String;)V

    const/16 v1, 0x2cb

    aput-boolean v3, v0, v1

    .line 2590
    invoke-virtual {p2, p0}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->setOnItemChangedListener(Lorg/openintents/shopping/ui/dialog/EditItemDialog$OnItemChangedListener;)V

    .line 2591
    const/16 v1, 0x2cc

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 2594
    :pswitch_3
    check-cast p2, Lorg/openintents/shopping/ui/dialog/ThemeDialog;

    invoke-virtual {p2}, Lorg/openintents/shopping/ui/dialog/ThemeDialog;->prepareDialog()V

    .line 2595
    const/16 v1, 0x2cd

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 2597
    :pswitch_4
    invoke-static {p0, p2}, Lorg/openintents/distribution/DownloadOIAppDialog;->onPrepareDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    const/16 v1, 0x2ce

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 2575
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 14

    .prologue
    const/16 v1, 0xf

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v11

    .line 1815
    invoke-super {p0, p1}, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1822
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraItems:Ljava/util/List;

    if-eqz v0, :cond_0

    const/16 v0, 0x1bc

    aput-boolean v10, v11, v0

    .line 1827
    :goto_0
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getSelectedListId()J

    const/16 v0, 0x1bf

    aput-boolean v10, v11, v0

    .line 1830
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 1832
    .local v9, "menuItem":Landroid/view/MenuItem;
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    if-ne v0, v3, :cond_1

    const/16 v0, 0x1c0

    aput-boolean v10, v11, v0

    .line 1833
    const v0, 0x7f080026

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const/16 v0, 0x1c1

    aput-boolean v10, v11, v0

    .line 1834
    const v0, 0x1080048

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x1c2

    aput-boolean v10, v11, v0

    .line 1840
    :goto_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-wide v6, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mNumChecked:J

    const-wide/16 v12, 0x0

    cmp-long v0, v6, v12

    if-lez v0, :cond_2

    const/16 v0, 0x1c5

    aput-boolean v10, v11, v0

    move v0, v10

    :goto_2
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v9

    const/16 v0, 0x1c7

    aput-boolean v10, v11, v0

    .line 1862
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v6, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v0, 0x1c8

    aput-boolean v10, v11, v0

    .line 1863
    const-string v0, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x1c9

    aput-boolean v10, v11, v0

    .line 1868
    new-instance v0, Lorg/openintents/util/MenuIntentOptionsWithIcons;

    invoke-direct {v0, p0, p1}, Lorg/openintents/util/MenuIntentOptionsWithIcons;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    const/16 v1, 0x1ca

    aput-boolean v10, v11, v1

    .line 1870
    const/high16 v1, 0x40000

    new-instance v4, Landroid/content/ComponentName;

    const-class v3, Lorg/openintents/shopping/ShoppingActivity;

    invoke-direct {v4, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move v3, v2

    move v7, v2

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Lorg/openintents/util/MenuIntentOptionsWithIcons;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 1875
    const/16 v0, 0x1cb

    aput-boolean v10, v11, v0

    return v10

    .line 1822
    .end local v9    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    const/16 v0, 0x1bd

    aput-boolean v10, v11, v0

    .line 1823
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const/16 v0, 0x1be

    aput-boolean v10, v11, v0

    goto/16 :goto_0

    .line 1836
    .restart local v9    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f080023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const/16 v0, 0x1c3

    aput-boolean v10, v11, v0

    .line 1837
    const v0, 0x1080033

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x1c4

    aput-boolean v10, v11, v0

    goto :goto_1

    .line 1840
    :cond_2
    const/16 v0, 0x1c6

    aput-boolean v10, v11, v0

    move v0, v2

    goto :goto_2
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 806
    invoke-super {p0}, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->onResume()V

    const/16 v1, 0x86

    aput-boolean v6, v0, v1

    .line 811
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->initFromPreferences()V

    .line 813
    iput-boolean v6, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mIsActive:Z

    .line 815
    const/16 v1, 0x87

    aput-boolean v6, v0, v1

    .line 816
    invoke-static {p0}, Lorg/openintents/shopping/ui/PreferenceActivity;->getOrientationFromPrefs(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x88

    aput-boolean v6, v0, v2

    .line 815
    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->setRequestedOrientation(I)V

    const/16 v1, 0x89

    aput-boolean v6, v0, v1

    .line 818
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getSelectedListId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/16 v1, 0x8a

    aput-boolean v6, v0, v1

    .line 823
    :goto_0
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->onResume()V

    .line 837
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditText:Landroid/widget/AutoCompleteTextView;

    const/16 v2, 0x8f

    aput-boolean v6, v0, v2

    .line 839
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/openintents/shopping/ui/PreferenceActivity;->getCapitalizationKeyListenerFromPrefs(Landroid/content/Context;)Landroid/text/method/KeyListener;

    move-result-object v2

    const/16 v3, 0x90

    aput-boolean v6, v0, v3

    .line 838
    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 841
    iget-boolean v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mUpdating:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x91

    aput-boolean v6, v0, v1

    .line 857
    :goto_1
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->usingListSpinner()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x93

    aput-boolean v6, v0, v1

    .line 858
    invoke-direct {p0, v6}, Lorg/openintents/shopping/ui/ShoppingActivity;->fillItems(Z)V

    const/16 v1, 0x94

    aput-boolean v6, v0, v1

    .line 878
    :goto_2
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->registerSensor()V

    .line 882
    const/16 v1, 0x98

    aput-boolean v6, v0, v1

    return-void

    .line 818
    :cond_0
    const/16 v1, 0x8b

    aput-boolean v6, v0, v1

    .line 819
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->loadListTheme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->setListTheme(Ljava/lang/String;)V

    const/16 v1, 0x8c

    aput-boolean v6, v0, v1

    .line 820
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->applyListTheme()V

    const/16 v1, 0x8d

    aput-boolean v6, v0, v1

    .line 821
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->updateTitle()V

    const/16 v1, 0x8e

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 842
    :cond_1
    iput-boolean v6, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mUpdating:Z

    const/16 v1, 0x92

    aput-boolean v6, v0, v1

    goto :goto_1

    .line 860
    :cond_2
    const-string v1, "ShoppingActivity"

    const-string v2, "Skipping fillItems()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraItems:Ljava/util/List;

    if-nez v1, :cond_3

    const/16 v1, 0x95

    aput-boolean v6, v0, v1

    goto :goto_2

    :cond_3
    const/16 v1, 0x96

    aput-boolean v6, v0, v1

    .line 864
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->insertItemsFromExtras()V

    const/16 v1, 0x97

    aput-boolean v6, v0, v1

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 985
    invoke-super {p0, p1}, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/16 v1, 0xc7

    aput-boolean v4, v0, v1

    .line 990
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    aput-boolean v4, v0, v2

    .line 991
    const-string v2, "original item"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc9

    aput-boolean v4, v0, v1

    .line 993
    const-string v1, "item uri"

    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mRelationUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    const/16 v1, 0xca

    aput-boolean v4, v0, v1

    .line 997
    :goto_0
    const-string v1, "mode"

    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v2, v2, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 999
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mUpdating:Z

    .line 1004
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mExtraItems:Ljava/util/List;

    if-eqz v1, :cond_1

    const/16 v1, 0xcd

    aput-boolean v4, v0, v1

    .line 1009
    :goto_1
    const/16 v1, 0xd4

    aput-boolean v4, v0, v1

    return-void

    .line 994
    :cond_0
    const/16 v1, 0xcb

    aput-boolean v4, v0, v1

    .line 995
    const-string v1, "relation_uri"

    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mRelationUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xcc

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 1004
    :cond_1
    const-string v1, "org.openintents.action.INSERT_FROM_EXTRAS"

    const/16 v2, 0xce

    aput-boolean v4, v0, v2

    .line 1005
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0xcf

    aput-boolean v4, v0, v3

    .line 1006
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd0

    aput-boolean v4, v0, v3

    .line 1005
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xd1

    aput-boolean v4, v0, v1

    goto :goto_1

    :cond_2
    const/16 v1, 0xd2

    aput-boolean v4, v0, v1

    .line 1007
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->setIntent(Landroid/content/Intent;)V

    const/16 v1, 0xd3

    aput-boolean v4, v0, v1

    goto :goto_1
.end method

.method public onSaveTheme(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2426
    invoke-virtual {p0, p1}, Lorg/openintents/shopping/ui/ShoppingActivity;->saveListTheme(Ljava/lang/String;)V

    .line 2427
    const/16 v1, 0x2a2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onSetTheme(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2431
    invoke-direct {p0, p1}, Lorg/openintents/shopping/ui/ShoppingActivity;->setListTheme(Ljava/lang/String;)V

    const/16 v1, 0x2a3

    aput-boolean v2, v0, v1

    .line 2432
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->applyListTheme()V

    .line 2433
    const/16 v1, 0x2a4

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onSetThemeForAll(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2437
    invoke-static {p0, p1}, Lorg/openintents/shopping/ui/ShoppingActivity;->setThemeForAll(Landroid/content/Context;Ljava/lang/String;)V

    .line 2438
    const/16 v1, 0x2a5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 668
    invoke-super {p0}, Lorg/openintents/distribution/DistributionLibraryFragmentActivity;->onStop()V

    const/16 v1, 0x4a

    aput-boolean v2, v0, v1

    .line 669
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->updateWidgets()V

    .line 670
    const/16 v1, 0x4b

    aput-boolean v2, v0, v1

    return-void
.end method

.method removeItemFromList(I)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2368
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v1, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    const/16 v2, 0x291

    aput-boolean v8, v0, v2

    .line 2369
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v2, 0x292

    aput-boolean v8, v0, v2

    .line 2371
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const/16 v2, 0x293

    aput-boolean v8, v0, v2

    .line 2372
    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    const/16 v2, 0x294

    aput-boolean v8, v0, v2

    .line 2375
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/16 v3, 0x295

    aput-boolean v8, v0, v3

    .line 2376
    const-string v3, "status"

    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v3, 0x296

    aput-boolean v8, v0, v3

    .line 2377
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->getResetQuantity(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x297

    aput-boolean v8, v0, v3

    .line 2379
    :goto_0
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id = ?"

    new-array v6, v8, [Ljava/lang/String;

    const/16 v7, 0x29a

    aput-boolean v8, v0, v7

    .line 2380
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v9

    const/16 v1, 0x29b

    aput-boolean v8, v0, v1

    .line 2379
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v1, 0x29c

    aput-boolean v8, v0, v1

    .line 2384
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mItemsView:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    invoke-virtual {v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->requery()V

    .line 2400
    const/16 v1, 0x29d

    aput-boolean v8, v0, v1

    return-void

    .line 2377
    :cond_0
    const/16 v3, 0x298

    aput-boolean v8, v0, v3

    .line 2378
    const-string v3, "quantity"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x299

    aput-boolean v8, v0, v3

    goto :goto_0
.end method

.method public saveListTheme(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 2486
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getSelectedListId()J

    move-result-wide v0

    .line 2487
    .local v0, "listId":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 2490
    const/16 v3, 0x2ad

    aput-boolean v9, v2, v3

    .line 2500
    :goto_0
    return-void

    .line 2493
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/16 v4, 0x2ae

    aput-boolean v9, v2, v4

    .line 2494
    const-string v4, "skin_background"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2af

    aput-boolean v9, v2, v4

    .line 2495
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/openintents/shopping/library/provider/ShoppingContract$Lists;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    const/4 v7, 0x0

    const/16 v8, 0x2b0

    aput-boolean v9, v2, v8

    .line 2497
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2b1

    aput-boolean v9, v2, v7

    .line 2496
    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/16 v6, 0x2b2

    aput-boolean v9, v2, v6

    .line 2495
    invoke-virtual {v4, v5, v3, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v3, 0x2b3

    aput-boolean v9, v2, v3

    .line 2499
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    .line 2500
    const/16 v3, 0x2b4

    aput-boolean v9, v2, v3

    goto :goto_0
.end method

.method setShareSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2409
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.openintents.action.SET_SHARE_SETTINGS"

    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x29e

    aput-boolean v4, v0, v2

    .line 2411
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/openintents/shopping/ui/ShoppingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2413
    const/16 v1, 0x29f

    aput-boolean v4, v0, v1

    return-void
.end method

.method setThemeSettings()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2416
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->showDialog(I)V

    .line 2417
    const/16 v1, 0x2a0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected showListFilter(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 1327
    new-instance v4, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;

    invoke-direct {v4, p0, p1}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/16 v5, 0xfe

    aput-boolean v8, v3, v5

    .line 1330
    invoke-virtual {v4}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1331
    .local v1, "menu":Landroid/view/Menu;
    if-nez v1, :cond_0

    .line 1332
    const/16 v2, 0xff

    aput-boolean v8, v3, v2

    .line 1352
    :goto_0
    return-void

    .line 1336
    :cond_0
    iget-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->requery()Z

    const/16 v5, 0x100

    aput-boolean v8, v3, v5

    .line 1337
    iget-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/16 v6, 0x101

    aput-boolean v8, v3, v6

    .line 1338
    iget-object v6, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1339
    const/16 v6, 0x102

    aput-boolean v8, v3, v6

    move v0, v2

    :goto_1
    if-ge v0, v5, :cond_1

    const/16 v6, 0x103

    aput-boolean v8, v3, v6

    .line 1340
    iget-object v6, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x104

    aput-boolean v8, v3, v7

    .line 1341
    invoke-interface {v1, v2, v0, v2, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/16 v6, 0x105

    aput-boolean v8, v3, v6

    .line 1342
    iget-object v6, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mCursorShoppingLists:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1339
    add-int/lit8 v0, v0, 0x1

    .local v0, "i_list":I
    const/16 v6, 0x106

    aput-boolean v8, v3, v6

    goto :goto_1

    .line 1345
    .end local v0    # "i_list":I
    :cond_1
    new-instance v2, Lorg/openintents/shopping/ui/ShoppingActivity$15;

    invoke-direct {v2, p0}, Lorg/openintents/shopping/ui/ShoppingActivity$15;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V

    invoke-virtual {v4, v2}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->setOnItemSelectedListener(Lorg/openintents/shopping/ui/widget/QuickSelectMenu$OnItemSelectedListener;)V

    const/16 v2, 0x107

    aput-boolean v8, v3, v2

    .line 1351
    invoke-virtual {v4}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->show()V

    .line 1352
    const/16 v2, 0x108

    aput-boolean v8, v3, v2

    goto :goto_0
.end method

.method protected showStoresFilter(Landroid/view/View;)V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v10

    .line 1355
    new-instance v11, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;

    invoke-direct {v11, p0, p1}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/16 v0, 0x109

    aput-boolean v12, v10, v0

    .line 1357
    invoke-virtual {v11}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    .line 1358
    .local v8, "menu":Landroid/view/Menu;
    if-nez v8, :cond_0

    .line 1359
    const/16 v0, 0x10a

    aput-boolean v12, v10, v0

    .line 1405
    :goto_0
    return-void

    .line 1361
    :cond_0
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Stores;->QUERY_BY_LIST_URI:Landroid/net/Uri;

    const/16 v2, 0x10b

    aput-boolean v12, v10, v2

    .line 1362
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    const/16 v4, 0x10c

    aput-boolean v12, v10, v4

    .line 1363
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v9

    const-string v4, "name"

    aput-object v4, v2, v12

    const-string v5, "stores.name COLLATE NOCASE ASC"

    const/16 v4, 0x10d

    aput-boolean v12, v10, v4

    move-object v4, v3

    .line 1362
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x10e

    aput-boolean v12, v10, v1

    .line 1366
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1367
    .local v6, "count":I
    if-nez v6, :cond_1

    const/16 v1, 0x10f

    aput-boolean v12, v10, v1

    .line 1368
    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    const/16 v1, 0x110

    aput-boolean v12, v10, v1

    .line 1369
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/16 v0, 0x111

    aput-boolean v12, v10, v0

    .line 1370
    const v0, 0x7f08002e

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x112

    aput-boolean v12, v10, v1

    .line 1371
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1372
    const/16 v0, 0x113

    aput-boolean v12, v10, v0

    goto :goto_0

    .line 1376
    :cond_1
    const/4 v1, -0x1

    const v2, 0x7f0800d6

    invoke-interface {v8, v9, v1, v9, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v1, 0x114

    aput-boolean v12, v10, v1

    .line 1379
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1380
    const/16 v1, 0x115

    aput-boolean v12, v10, v1

    move v7, v9

    :goto_1
    if-ge v7, v6, :cond_2

    const/16 v1, 0x116

    aput-boolean v12, v10, v1

    .line 1381
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/16 v1, 0x117

    aput-boolean v12, v10, v1

    .line 1382
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x118

    aput-boolean v12, v10, v4

    .line 1383
    long-to-int v2, v2

    invoke-interface {v8, v9, v2, v9, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/16 v1, 0x119

    aput-boolean v12, v10, v1

    .line 1384
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1380
    add-int/lit8 v7, v7, 0x1

    .local v7, "i_store":I
    const/16 v1, 0x11a

    aput-boolean v12, v10, v1

    goto :goto_1

    .line 1386
    .end local v7    # "i_store":I
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    const/16 v1, 0x11b

    aput-boolean v12, v10, v1

    .line 1387
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/16 v0, 0x11c

    aput-boolean v12, v10, v0

    .line 1389
    new-instance v0, Lorg/openintents/shopping/ui/ShoppingActivity$16;

    invoke-direct {v0, p0, p1}, Lorg/openintents/shopping/ui/ShoppingActivity$16;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;Landroid/view/View;)V

    invoke-virtual {v11, v0}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->setOnItemSelectedListener(Lorg/openintents/shopping/ui/widget/QuickSelectMenu$OnItemSelectedListener;)V

    const/16 v0, 0x11d

    aput-boolean v12, v10, v0

    .line 1404
    invoke-virtual {v11}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->show()V

    .line 1405
    const/16 v0, 0x11e

    aput-boolean v12, v10, v0

    goto/16 :goto_0
.end method

.method protected showTagsFilter(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 1408
    new-instance v5, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;

    invoke-direct {v5, p0, p1}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/16 v6, 0x11f

    aput-boolean v8, v4, v6

    .line 1410
    invoke-virtual {v5}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 1411
    .local v2, "menu":Landroid/view/Menu;
    if-nez v2, :cond_0

    .line 1412
    const/16 v5, 0x120

    aput-boolean v8, v4, v5

    .line 1445
    :goto_0
    return-void

    .line 1414
    :cond_0
    iget-object v6, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/openintents/shopping/ui/ShoppingActivity;->getTaglist(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1415
    .local v3, "tags":[Ljava/lang/String;
    array-length v0, v3

    .line 1417
    .local v0, "count":I
    if-nez v0, :cond_1

    const/16 v5, 0x121

    aput-boolean v8, v4, v5

    .line 1418
    const v5, 0x7f08002f

    invoke-static {p0, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    const/16 v6, 0x122

    aput-boolean v8, v4, v6

    .line 1419
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1420
    const/16 v5, 0x123

    aput-boolean v8, v4, v5

    goto :goto_0

    .line 1424
    :cond_1
    const/4 v6, -0x1

    const v7, 0x7f0800d6

    invoke-interface {v2, v1, v6, v1, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1426
    const/16 v6, 0x124

    aput-boolean v8, v4, v6

    :goto_1
    if-ge v1, v0, :cond_2

    const/16 v6, 0x125

    aput-boolean v8, v4, v6

    .line 1427
    aget-object v6, v3, v1

    invoke-interface {v2, v6}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1426
    add-int/lit8 v1, v1, 0x1

    .local v1, "i_tag":I
    const/16 v6, 0x126

    aput-boolean v8, v4, v6

    goto :goto_1

    .line 1430
    .end local v1    # "i_tag":I
    :cond_2
    new-instance v6, Lorg/openintents/shopping/ui/ShoppingActivity$17;

    invoke-direct {v6, p0, p1}, Lorg/openintents/shopping/ui/ShoppingActivity$17;-><init>(Lorg/openintents/shopping/ui/ShoppingActivity;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->setOnItemSelectedListener(Lorg/openintents/shopping/ui/widget/QuickSelectMenu$OnItemSelectedListener;)V

    const/16 v6, 0x127

    aput-boolean v8, v4, v6

    .line 1444
    invoke-virtual {v5}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu;->show()V

    .line 1445
    const/16 v5, 0x128

    aput-boolean v8, v4, v5

    goto :goto_0
.end method

.method public updateActionBar()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 2864
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->compat_invalidateOptionsMenu()V

    .line 2865
    const/16 v1, 0x30c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected updateFilterWidgets()V
    .locals 9

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity;->$jacocoInit()[Z

    move-result-object v6

    .line 1448
    invoke-static {p0}, Lorg/openintents/shopping/ui/PreferenceActivity;->getUsingFiltersFromPrefs(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditingFilter:Z

    const/16 v3, 0x129

    aput-boolean v8, v6, v3

    .line 1450
    iget-object v7, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mStoresFilterButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditingFilter:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x12a

    aput-boolean v8, v6, v3

    move v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v3, 0x12c

    aput-boolean v8, v6, v3

    .line 1451
    iget-object v7, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mTagsFilterButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditingFilter:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x12d

    aput-boolean v8, v6, v3

    move v3, v4

    :goto_1
    invoke-virtual {v7, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1453
    iget-boolean v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditingFilter:Z

    const/16 v3, 0x12f

    aput-boolean v8, v6, v3

    .line 1454
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity;->usingListSpinner()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x130

    aput-boolean v8, v6, v3

    .line 1458
    .local v0, "showListFilter":Z
    :goto_2
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsFilterButton:Landroid/widget/Button;

    if-nez v3, :cond_3

    const/16 v3, 0x132

    aput-boolean v8, v6, v3

    .line 1462
    :goto_3
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsView:Landroid/widget/AdapterView;

    if-nez v3, :cond_5

    const/16 v3, 0x136

    aput-boolean v8, v6, v3

    .line 1466
    :goto_4
    iget-boolean v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mEditingFilter:Z

    if-nez v3, :cond_7

    const/16 v3, 0x13b

    aput-boolean v8, v6, v3

    .line 1479
    :goto_5
    const/16 v3, 0x143

    aput-boolean v8, v6, v3

    return-void

    .line 1450
    .end local v0    # "showListFilter":Z
    :cond_0
    const/16 v3, 0x12b

    aput-boolean v8, v6, v3

    move v3, v5

    goto :goto_0

    .line 1451
    :cond_1
    const/16 v3, 0x12e

    aput-boolean v8, v6, v3

    move v3, v5

    goto :goto_1

    .line 1456
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "showListFilter":Z
    const/16 v3, 0x131

    aput-boolean v8, v6, v3

    goto :goto_2

    .line 1459
    :cond_3
    iget-object v7, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsFilterButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    const/16 v3, 0x133

    aput-boolean v8, v6, v3

    move v3, v4

    .line 1460
    :goto_6
    invoke-virtual {v7, v3}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v3, 0x135

    aput-boolean v8, v6, v3

    goto :goto_3

    .line 1459
    :cond_4
    const/16 v3, 0x134

    aput-boolean v8, v6, v3

    move v3, v5

    goto :goto_6

    .line 1462
    :cond_5
    const/16 v3, 0x137

    aput-boolean v8, v6, v3

    .line 1463
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mShoppingListsView:Landroid/widget/AdapterView;

    if-eqz v0, :cond_6

    const/16 v4, 0x138

    aput-boolean v8, v6, v4

    :goto_7
    invoke-virtual {v3, v5}, Landroid/widget/AdapterView;->setVisibility(I)V

    const/16 v3, 0x13a

    aput-boolean v8, v6, v3

    goto :goto_4

    :cond_6
    const/16 v5, 0x139

    aput-boolean v8, v6, v5

    move v5, v4

    goto :goto_7

    .line 1466
    :cond_7
    const/16 v3, 0x13c

    aput-boolean v8, v6, v3

    .line 1467
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    invoke-static {p0, v3}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getListFilterStoreName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1469
    .local v1, "storeName":Ljava/lang/String;
    if-eqz v1, :cond_8

    const/16 v3, 0x13d

    aput-boolean v8, v6, v3

    .line 1470
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mStoresFilterButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x13e

    aput-boolean v8, v6, v3

    .line 1473
    :goto_8
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mListUri:Landroid/net/Uri;

    invoke-static {p0, v3}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getListTagsFilter(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1474
    .local v2, "tagFilter":Ljava/lang/String;
    if-eqz v2, :cond_9

    const/16 v3, 0x140

    aput-boolean v8, v6, v3

    .line 1475
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mTagsFilterButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x141

    aput-boolean v8, v6, v3

    goto :goto_5

    .line 1472
    .end local v2    # "tagFilter":Ljava/lang/String;
    :cond_8
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mStoresFilterButton:Landroid/widget/Button;

    const v4, 0x7f0800c8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    const/16 v3, 0x13f

    aput-boolean v8, v6, v3

    goto :goto_8

    .line 1477
    .restart local v2    # "tagFilter":Ljava/lang/String;
    :cond_9
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity;->mTagsFilterButton:Landroid/widget/Button;

    const v4, 0x7f0800ca

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    const/16 v3, 0x142

    aput-boolean v8, v6, v3

    goto/16 :goto_5
.end method
