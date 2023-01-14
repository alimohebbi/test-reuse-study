.class public Lorg/openintents/shopping/ui/widget/ShoppingItemsView;
.super Landroid/widget/ListView;
.source "ShoppingItemsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/shopping/ui/widget/ShoppingItemsView$ActionBarListener;,
        Lorg/openintents/shopping/ui/widget/ShoppingItemsView$RemoveListener;,
        Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DropListener;,
        Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DragListener;,
        Lorg/openintents/shopping/ui/widget/ShoppingItemsView$OnCustomClickListener;,
        Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "ShoppingListView"

.field private static final debug:Z


# instance fields
.field private mActionBarListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$ActionBarListener;

.field public mBackgroundPadding:I

.field mContentObserver:Landroid/database/ContentObserver;

.field private mContentObserverRegistered:Z

.field private mCoordOffset:I

.field private mCountTextView:Landroid/widget/TextView;

.field mCurrentTypeface:Landroid/graphics/Typeface;

.field private mCursorActivity:Landroid/app/Activity;

.field public mCursorItems:Landroid/database/Cursor;

.field private mDefaultDivider:Landroid/graphics/drawable/Drawable;

.field private mDragAndDropEnabled:Z

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DropListener;

.field private mFirstDragPos:I

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightHalf:I

.field private mItemHeightNormal:I

.field public mLastListPosition:I

.field public mLastListTop:I

.field private mListId:J

.field mListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$OnCustomClickListener;

.field private mLowerBound:I

.field public mMode:I

.field public mNumChecked:J

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mPriTotalTextView:Landroid/widget/TextView;

.field mPriceFormatter:Ljava/text/NumberFormat;

.field public mPriceVisibility:I

.field public mPriorityVisibility:I

.field public mQuantityVisibility:I

.field public mShowCheckBox:Z

.field public mShowStrikethrough:Z

.field public mTagsVisibility:I

.field private mTempRect:Landroid/graphics/Rect;

.field public mTextColor:I

.field public mTextColorChecked:I

.field public mTextColorPrice:I

.field public mTextColorPriority:I

.field public mTextSize:F

.field public mTextSuffixChecked:Ljava/lang/String;

.field public mTextSuffixUnchecked:Ljava/lang/String;

.field public mTextTypeface:Ljava/lang/String;

.field public mTextUpperCaseFont:Z

.field private mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

.field private mThemedBackground:Landroid/view/View;

.field private mTotalCheckedTextView:Landroid/widget/TextView;

.field private mTotalTextView:Landroid/widget/TextView;

.field private mTouchSlop:I

.field public mUnitsVisibility:I

.field public mUpdateLastListPosition:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x29d7649a3a3f7647L    # -1.1287234030884482E107

    const-string v2, "org/openintents/shopping/ui/widget/ShoppingItemsView"

    const/16 v3, 0x1cb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 640
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 78
    iput-object v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCurrentTypeface:Landroid/graphics/Typeface;

    .line 97
    iput v6, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mUpdateLastListPosition:I

    .line 100
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mNumChecked:J

    .line 106
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v2, 0x12

    aput-boolean v4, v0, v2

    .line 107
    invoke-static {v1}, Ljava/text/DecimalFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriceFormatter:Ljava/text/NumberFormat;

    .line 109
    iput v4, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    .line 110
    iput-object v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    .line 112
    iput-object v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorActivity:Landroid/app/Activity;

    const/16 v1, 0x13

    aput-boolean v4, v0, v1

    .line 132
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTempRect:Landroid/graphics/Rect;

    .line 605
    iput-boolean v6, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mContentObserverRegistered:Z

    const/16 v1, 0x14

    aput-boolean v4, v0, v1

    .line 606
    new-instance v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;-><init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mContentObserver:Landroid/database/ContentObserver;

    .line 1457
    iput-object v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$OnCustomClickListener;

    .line 1458
    iput-boolean v6, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragAndDropEnabled:Z

    const/16 v1, 0x15

    aput-boolean v4, v0, v1

    .line 641
    invoke-direct {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->init()V

    .line 642
    const/16 v1, 0x16

    aput-boolean v4, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 635
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-object v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCurrentTypeface:Landroid/graphics/Typeface;

    .line 97
    iput v6, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mUpdateLastListPosition:I

    .line 100
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mNumChecked:J

    .line 106
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v2, 0xd

    aput-boolean v4, v0, v2

    .line 107
    invoke-static {v1}, Ljava/text/DecimalFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriceFormatter:Ljava/text/NumberFormat;

    .line 109
    iput v4, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    .line 110
    iput-object v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    .line 112
    iput-object v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorActivity:Landroid/app/Activity;

    const/16 v1, 0xe

    aput-boolean v4, v0, v1

    .line 132
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTempRect:Landroid/graphics/Rect;

    .line 605
    iput-boolean v6, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mContentObserverRegistered:Z

    const/16 v1, 0xf

    aput-boolean v4, v0, v1

    .line 606
    new-instance v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;-><init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mContentObserver:Landroid/database/ContentObserver;

    .line 1457
    iput-object v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$OnCustomClickListener;

    .line 1458
    iput-boolean v6, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragAndDropEnabled:Z

    const/16 v1, 0x10

    aput-boolean v4, v0, v1

    .line 636
    invoke-direct {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->init()V

    .line 637
    const/16 v1, 0x11

    aput-boolean v4, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 630
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput-object v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCurrentTypeface:Landroid/graphics/Typeface;

    .line 97
    iput v6, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mUpdateLastListPosition:I

    .line 100
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mNumChecked:J

    .line 106
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v2, 0x8

    aput-boolean v4, v0, v2

    .line 107
    invoke-static {v1}, Ljava/text/DecimalFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriceFormatter:Ljava/text/NumberFormat;

    .line 109
    iput v4, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    .line 110
    iput-object v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    .line 112
    iput-object v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorActivity:Landroid/app/Activity;

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    .line 132
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTempRect:Landroid/graphics/Rect;

    .line 605
    iput-boolean v6, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mContentObserverRegistered:Z

    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    .line 606
    new-instance v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;-><init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mContentObserver:Landroid/database/ContentObserver;

    .line 1457
    iput-object v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$OnCustomClickListener;

    .line 1458
    iput-boolean v6, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragAndDropEnabled:Z

    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    .line 631
    invoke-direct {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->init()V

    .line 632
    const/16 v1, 0xc

    aput-boolean v4, v0, v1

    return-void
.end method

.method static synthetic access$200(Lorg/openintents/shopping/ui/widget/ShoppingItemsView;Landroid/database/Cursor;)J
    .locals 5

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    invoke-direct {p0, p1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getQuantityPrice(Landroid/database/Cursor;)J

    move-result-wide v2

    const/16 v1, 0x1c9

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method static synthetic access$300(Lorg/openintents/shopping/ui/widget/ShoppingItemsView;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    invoke-direct {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->disposeItemsCursor()V

    const/16 v1, 0x1ca

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 1533
    iget v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mHeight:I

    div-int/lit8 v1, v1, 0x3

    if-ge p1, v1, :cond_0

    const/16 v1, 0x162

    aput-boolean v2, v0, v1

    .line 1536
    :goto_0
    iget v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mHeight:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    if-le p1, v1, :cond_1

    const/16 v1, 0x164

    aput-boolean v2, v0, v1

    .line 1539
    :goto_1
    const/16 v1, 0x166

    aput-boolean v2, v0, v1

    return-void

    .line 1534
    :cond_0
    iget v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mHeight:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mUpperBound:I

    const/16 v1, 0x163

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 1537
    :cond_1
    iget v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mHeight:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mLowerBound:I

    const/16 v1, 0x165

    aput-boolean v2, v0, v1

    goto :goto_1
.end method

.method private disposeItemsCursor()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 594
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 598
    :goto_0
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deactivate()V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 599
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 602
    :goto_1
    iput-object v4, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    .line 603
    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    return-void

    .line 594
    :cond_0
    aput-boolean v3, v0, v3

    .line 595
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorActivity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 596
    iput-object v4, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorActivity:Landroid/app/Activity;

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 599
    :cond_1
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 600
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    goto :goto_1
.end method

.method private doExpansion()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v8

    .line 1565
    iget v9, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragPos:I

    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v0, v9, v10

    .line 1566
    .local v0, "childnum":I
    iget v9, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragPos:I

    iget v10, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mFirstDragPos:I

    if-gt v9, v10, :cond_0

    const/16 v9, 0x175

    aput-boolean v11, v8, v9

    .line 1570
    :goto_0
    iget v9, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mFirstDragPos:I

    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getFirstVisiblePosition()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1572
    .local v1, "first":Landroid/view/View;
    const/16 v9, 0x177

    aput-boolean v11, v8, v9

    move v3, v7

    .line 1573
    :goto_1
    invoke-virtual {p0, v3}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1574
    .local v6, "vv":Landroid/view/View;
    if-nez v6, :cond_1

    .line 1595
    const/16 v7, 0x182

    aput-boolean v11, v8, v7

    return-void

    .line 1567
    .end local v1    # "first":Landroid/view/View;
    .end local v6    # "vv":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    const/16 v9, 0x176

    aput-boolean v11, v8, v9

    goto :goto_0

    .line 1577
    .restart local v1    # "first":Landroid/view/View;
    .restart local v6    # "vv":Landroid/view/View;
    :cond_1
    iget v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mItemHeightNormal:I

    .line 1578
    .local v2, "height":I
    const/16 v9, 0x178

    aput-boolean v11, v8, v9

    .line 1579
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1580
    iget v9, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragPos:I

    iget v10, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mFirstDragPos:I

    if-ne v9, v10, :cond_2

    .line 1581
    const/4 v5, 0x4

    .local v5, "visibility":I
    const/16 v9, 0x179

    aput-boolean v11, v8, v9

    .line 1590
    .end local v5    # "visibility":I
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1591
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v9, 0x17f

    aput-boolean v11, v8, v9

    .line 1592
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v9, 0x180

    aput-boolean v11, v8, v9

    .line 1593
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1572
    add-int/lit8 v3, v3, 0x1

    .local v3, "i":I
    const/16 v9, 0x181

    aput-boolean v11, v8, v9

    goto :goto_1

    .line 1583
    .end local v3    # "i":I
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const/4 v2, 0x1

    const/16 v9, 0x17a

    aput-boolean v11, v8, v9

    move v5, v7

    goto :goto_2

    .line 1585
    :cond_3
    if-eq v3, v0, :cond_4

    const/16 v9, 0x17b

    aput-boolean v11, v8, v9

    move v5, v7

    goto :goto_2

    :cond_4
    const/16 v9, 0x17c

    aput-boolean v11, v8, v9

    .line 1586
    iget v9, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragPos:I

    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-lt v9, v10, :cond_5

    const/16 v9, 0x17d

    aput-boolean v11, v8, v9

    move v5, v7

    goto :goto_2

    .line 1587
    :cond_5
    iget v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mItemHeightExpanded:I

    const/16 v9, 0x17e

    aput-boolean v11, v8, v9

    move v5, v7

    goto :goto_2
.end method

.method private dragView(II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 1693
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragPoint:I

    sub-int v2, p2, v2

    iget v3, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCoordOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0x1bc

    aput-boolean v4, v0, v1

    .line 1694
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragView:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1695
    const/16 v1, 0x1bd

    aput-boolean v4, v0, v1

    return-void
.end method

.method private getItemForPosition(I)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v1

    .line 1520
    iget v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragPoint:I

    sub-int v2, p1, v2

    iget v3, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mItemHeightHalf:I

    sub-int/2addr v2, v3

    const/16 v3, 0x15c

    aput-boolean v4, v1, v3

    .line 1521
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->myPointToPosition(II)I

    move-result v0

    .line 1522
    .local v0, "pos":I
    if-ltz v0, :cond_1

    .line 1523
    iget v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mFirstDragPos:I

    if-le v0, v2, :cond_0

    const/16 v2, 0x15d

    aput-boolean v4, v1, v2

    .line 1529
    :goto_0
    const/16 v2, 0x161

    aput-boolean v4, v1, v2

    return v0

    .line 1524
    :cond_0
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x15e

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1526
    :cond_1
    if-ltz v2, :cond_2

    const/16 v2, 0x15f

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 1527
    :cond_2
    const/4 v0, 0x0

    const/16 v2, 0x160

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method private getQuantityPrice(Landroid/database/Cursor;)J
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v4

    .line 1441
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1442
    .local v0, "price":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_0

    const/16 v5, 0x132

    aput-boolean v8, v4, v5

    .line 1454
    :goto_0
    const/16 v5, 0x139

    aput-boolean v8, v4, v5

    return-wide v0

    .line 1443
    :cond_0
    const/4 v5, 0x5

    const/16 v6, 0x133

    aput-boolean v8, v4, v6

    .line 1444
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x134

    aput-boolean v8, v4, v6

    .line 1445
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x135

    aput-boolean v8, v4, v5

    goto :goto_0

    :cond_1
    const/16 v6, 0x136

    const/4 v7, 0x1

    :try_start_0
    aput-boolean v7, v4, v6

    .line 1447
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1448
    .local v2, "quantity":D
    long-to-double v6, v0

    mul-double/2addr v6, v2

    double-to-long v0, v6

    .line 1451
    const/16 v5, 0x137

    aput-boolean v8, v4, v5

    goto :goto_0

    .line 1449
    .end local v2    # "quantity":D
    :catch_0
    move-exception v5

    const/16 v5, 0x138

    aput-boolean v8, v4, v5

    goto :goto_0
.end method

.method private getTextSizeLarge(Lorg/openintents/shopping/theme/ThemeAttributes;)F
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v1

    .line 1042
    const-string v2, "textSizeLarge"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Lorg/openintents/shopping/theme/ThemeAttributes;->getDimensionPixelOffset(Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    .line 1044
    .local v0, "size":F
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa9

    aput-boolean v4, v1, v2

    .line 1048
    :goto_0
    const/16 v2, 0xac

    aput-boolean v4, v1, v2

    return v0

    .line 1044
    :cond_0
    const/16 v2, 0xaa

    aput-boolean v4, v1, v2

    .line 1046
    const v2, 0x3f9bd37a

    invoke-direct {p0, p1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getTextSizeMedium(Lorg/openintents/shopping/theme/ThemeAttributes;)F

    move-result v3

    mul-float v0, v2, v3

    const/16 v2, 0xab

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method private getTextSizeMedium(Lorg/openintents/shopping/theme/ThemeAttributes;)F
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v1

    .line 1035
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/16 v3, 0xa7

    aput-boolean v5, v1, v3

    .line 1036
    const-string v3, "textSizeMedium"

    const/high16 v4, 0x41b80000    # 23.0f

    mul-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p1, v3, v2}, Lorg/openintents/shopping/theme/ThemeAttributes;->getDimensionPixelOffset(Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    .line 1038
    .local v0, "size":F
    const/16 v2, 0xa8

    aput-boolean v5, v1, v2

    return v0
.end method

.method private getTextSizeSmall(Lorg/openintents/shopping/theme/ThemeAttributes;)F
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v1

    .line 1025
    const-string v2, "textSizeSmall"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Lorg/openintents/shopping/theme/ThemeAttributes;->getDimensionPixelOffset(Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    .line 1027
    .local v0, "size":F
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa3

    aput-boolean v4, v1, v2

    .line 1031
    :goto_0
    const/16 v2, 0xa6

    aput-boolean v4, v1, v2

    return v0

    .line 1027
    :cond_0
    const/16 v2, 0xa4

    aput-boolean v4, v1, v2

    .line 1029
    const v2, 0x3f48590b

    invoke-direct {p0, p1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getTextSizeMedium(Lorg/openintents/shopping/theme/ThemeAttributes;)F

    move-result v3

    mul-float v0, v2, v3

    const/16 v2, 0xa5

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method private getTextSizeTiny(Lorg/openintents/shopping/theme/ThemeAttributes;)F
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v1

    .line 1015
    const-string v2, "textSizeTiny"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Lorg/openintents/shopping/theme/ThemeAttributes;->getDimensionPixelOffset(Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    .line 1017
    .local v0, "size":F
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9f

    aput-boolean v4, v1, v2

    .line 1021
    :goto_0
    const/16 v2, 0xa2

    aput-boolean v4, v1, v2

    return v0

    .line 1017
    :cond_0
    const/16 v2, 0xa0

    aput-boolean v4, v1, v2

    .line 1019
    const v2, 0x3f2aaaab

    invoke-direct {p0, p1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getTextSizeSmall(Lorg/openintents/shopping/theme/ThemeAttributes;)F

    move-result v3

    mul-float v0, v2, v3

    const/16 v2, 0xa1

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 645
    const/16 v1, 0x2d

    iput v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mItemHeightNormal:I

    .line 646
    iget v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mItemHeightNormal:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mItemHeightHalf:I

    .line 647
    const/16 v1, 0x5a

    iput v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mItemHeightExpanded:I

    const/16 v1, 0x17

    aput-boolean v2, v0, v1

    .line 650
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    .line 651
    const/16 v1, 0x18

    aput-boolean v2, v0, v1

    return-void
.end method

.method private myPointToPosition(II)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v4

    .line 1501
    if-ltz p2, :cond_0

    const/16 v3, 0x14f

    aput-boolean v7, v4, v3

    .line 1507
    .local v2, "pos":I
    :goto_0
    iget-object v3, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTempRect:Landroid/graphics/Rect;

    const/16 v5, 0x153

    aput-boolean v7, v4, v5

    .line 1508
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getChildCount()I

    move-result v0

    .line 1509
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    const/16 v5, 0x154

    aput-boolean v7, v4, v5

    :goto_1
    if-ltz v1, :cond_3

    const/16 v5, 0x155

    aput-boolean v7, v4, v5

    .line 1510
    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x156

    aput-boolean v7, v4, v6

    .line 1511
    invoke-virtual {v5, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    const/16 v5, 0x157

    aput-boolean v7, v4, v5

    .line 1512
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v3, 0x158

    aput-boolean v7, v4, v3

    .line 1513
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getFirstVisiblePosition()I

    move-result v3

    add-int/2addr v3, v1

    const/16 v5, 0x159

    aput-boolean v7, v4, v5

    .line 1516
    .end local v0    # "count":I
    :goto_2
    return v3

    .line 1501
    .end local v2    # "pos":I
    :cond_0
    const/16 v3, 0x150

    aput-boolean v7, v4, v3

    .line 1502
    iget v3, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mItemHeightNormal:I

    add-int/2addr v3, p2

    invoke-direct {p0, p1, v3}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->myPointToPosition(II)I

    move-result v2

    .line 1503
    .restart local v2    # "pos":I
    if-gtz v2, :cond_1

    const/16 v3, 0x151

    aput-boolean v7, v4, v3

    goto :goto_0

    .line 1504
    :cond_1
    add-int/lit8 v3, v2, -0x1

    const/16 v5, 0x152

    aput-boolean v7, v4, v5

    goto :goto_2

    .line 1509
    .restart local v0    # "count":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    const/16 v5, 0x15a

    aput-boolean v7, v4, v5

    goto :goto_1

    .line 1516
    .end local v1    # "i":I
    :cond_3
    const/4 v3, -0x1

    const/16 v5, 0x15b

    aput-boolean v7, v4, v5

    goto :goto_2
.end method

.method private registerContentObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 775
    iget-boolean v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mContentObserverRegistered:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x38

    aput-boolean v4, v0, v1

    .line 780
    :goto_0
    const/16 v1, 0x3b

    aput-boolean v4, v0, v1

    return-void

    .line 776
    :cond_0
    iput-boolean v4, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mContentObserverRegistered:Z

    const/16 v1, 0x39

    aput-boolean v4, v0, v1

    .line 777
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/16 v1, 0x3a

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method private setLocalStyle(II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v1

    .line 822
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4d

    aput-boolean v6, v1, v3

    .line 824
    invoke-direct {p0, v2, p2}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setRemoteStyle(Ljava/lang/String;I)Z

    move-result v0

    .line 826
    .local v0, "themefound":Z
    if-eqz v0, :cond_0

    const/16 v2, 0x4e

    aput-boolean v6, v1, v2

    .line 830
    :goto_0
    const/16 v2, 0x51

    aput-boolean v6, v1, v2

    return-void

    .line 826
    :cond_0
    const/16 v3, 0x4f

    aput-boolean v6, v1, v3

    .line 828
    const-string v3, "ShoppingListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local theme not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x50

    aput-boolean v6, v1, v2

    goto :goto_0
.end method

.method private setRemoteStyle(Ljava/lang/String;I)Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v8

    .line 833
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 836
    const/16 v7, 0x52

    aput-boolean v6, v8, v7

    .line 956
    :goto_0
    return v5

    .line 839
    :cond_0
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x53

    aput-boolean v6, v8, v7

    .line 841
    invoke-static {p1}, Lorg/openintents/shopping/theme/ThemeUtils;->getPackageNameFromStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPackageName:Ljava/lang/String;

    .line 843
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPackageName:Ljava/lang/String;

    if-nez v7, :cond_1

    const/16 v7, 0x54

    aput-boolean v6, v8, v7

    .line 844
    const-string v7, "ShoppingListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid style name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/16 v7, 0x55

    aput-boolean v6, v8, v7

    goto :goto_0

    .line 848
    :cond_1
    const/16 v7, 0x56

    const/4 v9, 0x1

    :try_start_0
    aput-boolean v9, v8, v7

    .line 850
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v9, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPackageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 857
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/16 v9, 0x59

    aput-boolean v6, v8, v9

    .line 859
    invoke-virtual {v7, p1, v11, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 861
    .local v4, "themeid":I
    if-eqz v4, :cond_2

    const/16 v7, 0x5a

    aput-boolean v6, v8, v7

    .line 867
    :try_start_1
    new-instance v7, Lorg/openintents/shopping/theme/ThemeAttributes;

    iget-object v9, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPackageName:Ljava/lang/String;

    invoke-direct {v7, v0, v9, v4}, Lorg/openintents/shopping/theme/ThemeAttributes;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    const/16 v7, 0x5d

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 869
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    const-string v9, "textTypeface"

    invoke-virtual {v7, v9}, Lorg/openintents/shopping/theme/ThemeAttributes;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextTypeface:Ljava/lang/String;

    .line 870
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCurrentTypeface:Landroid/graphics/Typeface;

    const/16 v7, 0x5e

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 873
    const-string v7, "monospace"

    iget-object v9, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextTypeface:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x5f

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 874
    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    iput-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCurrentTypeface:Landroid/graphics/Typeface;

    const/16 v7, 0x60

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 897
    :goto_1
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    const-string v9, "textUpperCaseFont"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lorg/openintents/shopping/theme/ThemeAttributes;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextUpperCaseFont:Z

    const/16 v7, 0x6d

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 900
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    const-string v9, "textColor"

    const v10, 0x106000b

    invoke-virtual {v7, v9, v10}, Lorg/openintents/shopping/theme/ThemeAttributes;->getColor(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColor:I

    const/16 v7, 0x6e

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 903
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    const-string v9, "textColorPrice"

    const v10, 0x106000b

    invoke-virtual {v7, v9, v10}, Lorg/openintents/shopping/theme/ThemeAttributes;->getColor(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColorPrice:I

    const/16 v7, 0x6f

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 907
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    const-string v9, "textColorPriority"

    iget v10, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColorPrice:I

    invoke-virtual {v7, v9, v10}, Lorg/openintents/shopping/theme/ThemeAttributes;->getColor(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColorPriority:I

    .line 910
    if-nez p2, :cond_7

    const/16 v7, 0x70

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 911
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    invoke-direct {p0, v7}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getTextSizeTiny(Lorg/openintents/shopping/theme/ThemeAttributes;)F

    move-result v7

    iput v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextSize:F

    const/16 v7, 0x71

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 922
    :goto_2
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    const-string v9, "textColorChecked"

    const v10, 0x106000b

    invoke-virtual {v7, v9, v10}, Lorg/openintents/shopping/theme/ThemeAttributes;->getColor(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColorChecked:I

    const/16 v7, 0x77

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 924
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    const-string v9, "showCheckBox"

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Lorg/openintents/shopping/theme/ThemeAttributes;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mShowCheckBox:Z

    const/16 v7, 0x78

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 925
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    const-string v9, "textStrikethroughChecked"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lorg/openintents/shopping/theme/ThemeAttributes;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mShowStrikethrough:Z

    .line 927
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    const-string v9, "textSuffixUnchecked"

    const/16 v10, 0x79

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 928
    invoke-virtual {v7, v9}, Lorg/openintents/shopping/theme/ThemeAttributes;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextSuffixUnchecked:Ljava/lang/String;

    .line 929
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    const-string v9, "textSuffixChecked"

    const/16 v10, 0x7a

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 930
    invoke-virtual {v7, v9}, Lorg/openintents/shopping/theme/ThemeAttributes;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextSuffixChecked:Ljava/lang/String;

    const/16 v7, 0x7b

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 932
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    const-string v9, "divider"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lorg/openintents/shopping/theme/ThemeAttributes;->getInteger(Ljava/lang/String;I)I

    move-result v2

    .line 934
    .local v2, "divider":I
    const/4 v1, 0x0

    .line 935
    .local v1, "div":Landroid/graphics/drawable/Drawable;
    if-lez v2, :cond_a

    const/16 v7, 0x7c

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 936
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v7, 0x7d

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 943
    :goto_3
    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setDivider(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 945
    const/16 v5, 0x80

    aput-boolean v6, v8, v5

    move v5, v6

    goto/16 :goto_0

    .line 851
    .end local v0    # "c":Landroid/content/Context;
    .end local v1    # "div":Landroid/graphics/drawable/Drawable;
    .end local v2    # "divider":I
    .end local v4    # "themeid":I
    :catch_0
    move-exception v7

    const/16 v7, 0x57

    aput-boolean v6, v8, v7

    .line 852
    const-string v7, "ShoppingListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package for style not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/16 v7, 0x58

    aput-boolean v6, v8, v7

    goto/16 :goto_0

    .line 861
    .restart local v0    # "c":Landroid/content/Context;
    .restart local v4    # "themeid":I
    :cond_2
    const/16 v7, 0x5b

    aput-boolean v6, v8, v7

    .line 862
    const-string v7, "ShoppingListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Theme name not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const/16 v7, 0x5c

    aput-boolean v6, v8, v7

    goto/16 :goto_0

    .line 876
    :cond_3
    :try_start_2
    const-string v7, "sans"

    iget-object v9, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextTypeface:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x61

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 877
    sget-object v7, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    iput-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCurrentTypeface:Landroid/graphics/Typeface;

    const/16 v7, 0x62

    const/4 v9, 0x1

    aput-boolean v9, v8, v7
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 947
    :catch_1
    move-exception v7

    const/16 v9, 0x81

    aput-boolean v6, v8, v9

    .line 950
    const-string v9, "ShoppingListView"

    const-string v10, "UnsupportedOperationException"

    invoke-static {v9, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 951
    const/16 v7, 0x82

    aput-boolean v6, v8, v7

    goto/16 :goto_0

    .line 879
    :cond_4
    :try_start_3
    const-string v7, "serif"

    iget-object v9, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextTypeface:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x63

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 880
    sget-object v7, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    iput-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCurrentTypeface:Landroid/graphics/Typeface;

    const/16 v7, 0x64

    const/4 v9, 0x1

    aput-boolean v9, v8, v7
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 952
    :catch_2
    move-exception v7

    const/16 v9, 0x83

    aput-boolean v6, v8, v9

    .line 955
    const-string v9, "ShoppingListView"

    const-string v10, "NumberFormatException"

    invoke-static {v9, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    const/16 v7, 0x84

    aput-boolean v6, v8, v7

    goto/16 :goto_0

    .line 882
    :cond_5
    :try_start_4
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextTypeface:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x65

    const/4 v9, 0x1

    aput-boolean v9, v8, v7
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    :cond_6
    const/16 v7, 0x66

    const/4 v9, 0x1

    :try_start_5
    aput-boolean v9, v8, v7

    .line 887
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v9, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPackageName:Ljava/lang/String;

    const/16 v10, 0x67

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 888
    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 889
    .local v3, "remoteRes":Landroid/content/res/Resources;
    const/16 v7, 0x68

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 890
    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    iget-object v9, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextTypeface:Ljava/lang/String;

    const/16 v10, 0x69

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 889
    invoke-static {v7, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    iput-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCurrentTypeface:Landroid/graphics/Typeface;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    .line 894
    const/16 v7, 0x6a

    const/4 v9, 0x1

    :try_start_6
    aput-boolean v9, v8, v7

    goto/16 :goto_1

    .line 892
    .end local v3    # "remoteRes":Landroid/content/res/Resources;
    :catch_3
    move-exception v7

    const/16 v9, 0x6b

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 893
    const-string v9, "ShoppingListView"

    const-string v10, "Package not found for Typeface"

    invoke-static {v9, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v7, 0x6c

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    goto/16 :goto_1

    .line 912
    :cond_7
    if-ne p2, v6, :cond_8

    const/16 v7, 0x72

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 913
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    invoke-direct {p0, v7}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getTextSizeSmall(Lorg/openintents/shopping/theme/ThemeAttributes;)F

    move-result v7

    iput v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextSize:F

    const/16 v7, 0x73

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    goto/16 :goto_2

    .line 914
    :cond_8
    const/4 v7, 0x2

    if-ne p2, v7, :cond_9

    const/16 v7, 0x74

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 915
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    invoke-direct {p0, v7}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getTextSizeMedium(Lorg/openintents/shopping/theme/ThemeAttributes;)F

    move-result v7

    iput v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextSize:F

    const/16 v7, 0x75

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    goto/16 :goto_2

    .line 917
    :cond_9
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    invoke-direct {p0, v7}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getTextSizeLarge(Lorg/openintents/shopping/theme/ThemeAttributes;)F

    move-result v7

    iput v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextSize:F

    const/16 v7, 0x76

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    goto/16 :goto_2

    .line 937
    .restart local v1    # "div":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "divider":I
    :cond_a
    if-gez v2, :cond_b

    .line 938
    const/4 v1, 0x0

    const/16 v7, 0x7e

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    goto/16 :goto_3

    .line 940
    :cond_b
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0x7f

    const/4 v9, 0x1

    aput-boolean v9, v8, v7
    :try_end_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v1

    .line 1661
    invoke-direct {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->stopDragging()V

    const/16 v0, 0x1b2

    aput-boolean v6, v1, v0

    .line 1663
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 1664
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1665
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1666
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragPoint:I

    sub-int v2, p2, v2

    iget v3, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCoordOffset:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1668
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1669
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1670
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x398

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1675
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1676
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v0, 0x1b3

    aput-boolean v6, v1, v0

    .line 1678
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x1b4

    aput-boolean v6, v1, v2

    .line 1679
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x1b5

    aput-boolean v6, v1, v3

    .line 1680
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090001

    const/16 v5, 0x1b6

    aput-boolean v6, v1, v5

    .line 1681
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/16 v4, 0x1b7

    aput-boolean v6, v1, v4

    .line 1682
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const/16 v3, 0x1b8

    aput-boolean v6, v1, v3

    .line 1683
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1684
    iput-object p1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 1686
    const-string v3, "window"

    const/16 v4, 0x1b9

    aput-boolean v6, v1, v4

    .line 1687
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mWindowManager:Landroid/view/WindowManager;

    const/16 v0, 0x1ba

    aput-boolean v6, v1, v0

    .line 1688
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1689
    iput-object v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragView:Landroid/widget/ImageView;

    .line 1690
    const/16 v0, 0x1bb

    aput-boolean v6, v1, v0

    return-void
.end method

.method private stopDragging()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v1

    .line 1698
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const/16 v0, 0x1be

    aput-boolean v3, v1, v0

    .line 1705
    :goto_0
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const/16 v0, 0x1c3

    aput-boolean v3, v1, v0

    .line 1709
    :goto_1
    const/16 v0, 0x1c6

    aput-boolean v3, v1, v0

    return-void

    .line 1698
    :cond_0
    const/16 v0, 0x1bf

    aput-boolean v3, v1, v0

    .line 1699
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/16 v2, 0x1c0

    aput-boolean v3, v1, v2

    .line 1701
    iget-object v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/16 v0, 0x1c1

    aput-boolean v3, v1, v0

    .line 1702
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1703
    iput-object v4, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragView:Landroid/widget/ImageView;

    const/16 v0, 0x1c2

    aput-boolean v3, v1, v0

    goto :goto_0

    .line 1705
    :cond_1
    const/16 v0, 0x1c4

    aput-boolean v3, v1, v0

    .line 1706
    iget-object v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1707
    iput-object v4, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragBitmap:Landroid/graphics/Bitmap;

    const/16 v0, 0x1c5

    aput-boolean v3, v1, v0

    goto :goto_1
.end method

.method private unExpandViews(Z)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v4

    .line 1542
    const/16 v5, 0x167

    aput-boolean v8, v4, v5

    move v0, v3

    .line 1543
    .local v0, "i":I
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    .local v2, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1544
    if-eqz v2, :cond_0

    .end local v0    # "i":I
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/16 v5, 0x168

    aput-boolean v8, v4, v5

    .line 1557
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1558
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mItemHeightNormal:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v5, 0x171

    aput-boolean v8, v4, v5

    .line 1559
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x172

    aput-boolean v8, v4, v5

    .line 1560
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1542
    add-int/lit8 v0, v0, 0x1

    .restart local v0    # "i":I
    const/16 v5, 0x173

    aput-boolean v8, v4, v5

    goto :goto_0

    .line 1545
    .end local v0    # "i":I
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    if-nez p1, :cond_1

    const/16 v5, 0x169

    aput-boolean v8, v4, v5

    .line 1551
    :goto_2
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->layoutChildren()V

    const/16 v5, 0x16f

    aput-boolean v8, v4, v5

    .line 1552
    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1553
    if-eqz v2, :cond_2

    const/16 v5, 0x170

    aput-boolean v8, v4, v5

    goto :goto_1

    .line 1545
    :cond_1
    const/16 v5, 0x16a

    aput-boolean v8, v4, v5

    .line 1546
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getFirstVisiblePosition()I

    move-result v5

    const/16 v6, 0x16b

    aput-boolean v8, v4, v6

    .line 1547
    invoke-virtual {p0, v3}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    const/16 v7, 0x16c

    aput-boolean v8, v4, v7

    .line 1548
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v7, 0x16d

    aput-boolean v8, v4, v7

    .line 1549
    invoke-virtual {p0, v5, v6}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setSelectionFromTop(II)V

    const/16 v5, 0x16e

    aput-boolean v8, v4, v5

    goto :goto_2

    .line 1562
    :cond_2
    const/16 v3, 0x174

    aput-boolean v8, v4, v3

    return-void
.end method

.method private unregisterContentObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 783
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mContentObserverRegistered:Z

    const/16 v1, 0x3c

    aput-boolean v3, v0, v1

    .line 784
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 786
    const/16 v1, 0x3d

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public applyListTheme()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v2

    .line 965
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemedBackground:Landroid/view/View;

    if-nez v1, :cond_0

    const/16 v1, 0x85

    aput-boolean v10, v2, v1

    .line 1012
    .local v0, "resid":I
    :goto_0
    const/16 v1, 0x9e

    aput-boolean v10, v2, v1

    return-void

    .line 965
    .end local v0    # "resid":I
    :cond_0
    const/16 v1, 0x86

    aput-boolean v10, v2, v1

    .line 966
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    const-string v3, "backgroundPadding"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/openintents/shopping/theme/ThemeAttributes;->getDimensionPixelOffset(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mBackgroundPadding:I

    const/16 v1, 0x87

    aput-boolean v10, v2, v1

    .line 968
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    const-string v3, "backgroundPaddingLeft"

    iget v4, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mBackgroundPadding:I

    invoke-virtual {v1, v3, v4}, Lorg/openintents/shopping/theme/ThemeAttributes;->getDimensionPixelOffset(Ljava/lang/String;I)I

    move-result v3

    const/16 v1, 0x88

    aput-boolean v10, v2, v1

    .line 971
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    const-string v4, "backgroundPaddingTop"

    iget v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mBackgroundPadding:I

    invoke-virtual {v1, v4, v5}, Lorg/openintents/shopping/theme/ThemeAttributes;->getDimensionPixelOffset(Ljava/lang/String;I)I

    move-result v4

    const/16 v1, 0x89

    aput-boolean v10, v2, v1

    .line 974
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    const-string v5, "backgroundPaddingRight"

    iget v6, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mBackgroundPadding:I

    invoke-virtual {v1, v5, v6}, Lorg/openintents/shopping/theme/ThemeAttributes;->getDimensionPixelOffset(Ljava/lang/String;I)I

    move-result v5

    const/16 v1, 0x8a

    aput-boolean v10, v2, v1

    .line 977
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    const-string v6, "backgroundPaddingBottom"

    iget v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mBackgroundPadding:I

    invoke-virtual {v1, v6, v7}, Lorg/openintents/shopping/theme/ThemeAttributes;->getDimensionPixelOffset(Ljava/lang/String;I)I

    move-result v6

    const/16 v1, 0x8b

    const/4 v7, 0x1

    :try_start_0
    aput-boolean v7, v2, v1

    .line 981
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPackageName:Ljava/lang/String;

    const/16 v8, 0x8c

    const/4 v9, 0x1

    aput-boolean v9, v2, v8

    .line 982
    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const/16 v7, 0x8d

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    .line 983
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemeAttributes:Lorg/openintents/shopping/theme/ThemeAttributes;

    const-string v8, "background"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/openintents/shopping/theme/ThemeAttributes;->getResourceId(Ljava/lang/String;I)I

    move-result v0

    .line 985
    .restart local v0    # "resid":I
    if-eqz v0, :cond_1

    const/16 v7, 0x8e

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    .line 986
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v7, 0x8f

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    .line 987
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemedBackground:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 988
    const/16 v1, 0x90

    const/4 v7, 0x1

    aput-boolean v7, v2, v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 996
    :goto_1
    const/16 v1, 0x92

    aput-boolean v10, v2, v1

    .line 999
    :goto_2
    iget v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mBackgroundPadding:I

    if-ltz v1, :cond_2

    const/16 v1, 0x97

    aput-boolean v10, v2, v1

    .line 1003
    :goto_3
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemedBackground:Landroid/view/View;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    const/16 v1, 0x9d

    aput-boolean v10, v2, v1

    goto/16 :goto_0

    .line 990
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemedBackground:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v1, 0x91

    const/4 v7, 0x1

    aput-boolean v7, v2, v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 992
    :catch_0
    move-exception v1

    const/16 v7, 0x93

    aput-boolean v10, v2, v7

    .line 993
    const-string v7, "ShoppingListView"

    const-string v8, "Package not found for Theme background."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 996
    const/16 v1, 0x94

    aput-boolean v10, v2, v1

    goto :goto_2

    .line 994
    :catch_1
    move-exception v1

    const/16 v7, 0x95

    aput-boolean v10, v2, v7

    .line 995
    const-string v7, "ShoppingListView"

    const-string v8, "Resource not found for Theme background."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x96

    aput-boolean v10, v2, v1

    goto :goto_2

    .line 999
    :cond_2
    if-ltz v3, :cond_3

    const/16 v1, 0x98

    aput-boolean v10, v2, v1

    goto :goto_3

    :cond_3
    if-ltz v4, :cond_4

    const/16 v1, 0x99

    aput-boolean v10, v2, v1

    goto :goto_3

    :cond_4
    if-ltz v5, :cond_5

    const/16 v1, 0x9a

    aput-boolean v10, v2, v1

    goto :goto_3

    :cond_5
    if-gez v6, :cond_6

    const/16 v1, 0x9b

    aput-boolean v10, v2, v1

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x9c

    aput-boolean v10, v2, v1

    goto :goto_3
.end method

.method public cleanupList()Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v3

    .line 1132
    const/16 v4, 0xce

    aput-boolean v1, v3, v4

    .line 1144
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/16 v5, 0xcf

    aput-boolean v1, v3, v5

    .line 1145
    const-string v5, "status"

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v5, 0xd0

    aput-boolean v1, v3, v5

    .line 1146
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lorg/openintents/shopping/ui/PreferenceActivity;->getResetQuantity(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0xd1

    aput-boolean v1, v3, v5

    .line 1148
    :goto_0
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "list_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mListId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v8, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0xd4

    aput-boolean v1, v3, v4

    move v0, v1

    .local v0, "nothingdeleted":Z
    :goto_1
    const/16 v4, 0xd6

    aput-boolean v1, v3, v4

    .line 1156
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->requery()V

    .line 1158
    if-nez v0, :cond_2

    const/16 v2, 0xd7

    aput-boolean v1, v3, v2

    move v2, v1

    :goto_2
    const/16 v4, 0xd9

    aput-boolean v1, v3, v4

    return v2

    .line 1146
    .end local v0    # "nothingdeleted":Z
    :cond_0
    const/16 v5, 0xd2

    aput-boolean v1, v3, v5

    .line 1147
    const-string v5, "quantity"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xd3

    aput-boolean v1, v3, v5

    goto :goto_0

    .line 1148
    :cond_1
    const/16 v4, 0xd5

    aput-boolean v1, v3, v4

    move v0, v2

    goto :goto_1

    .line 1158
    .restart local v0    # "nothingdeleted":Z
    :cond_2
    const/16 v4, 0xd8

    aput-boolean v1, v3, v4

    goto :goto_2
.end method

.method public fillItems(Landroid/app/Activity;J)Landroid/database/Cursor;
    .locals 24

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v22

    .line 680
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mListId:J

    .line 681
    const/16 v3, 0x1d

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    .line 682
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    const/16 v5, 0x1e

    const/4 v6, 0x1

    aput-boolean v6, v22, v5

    .line 681
    invoke-static {v3, v4}, Lorg/openintents/shopping/ui/PreferenceActivity;->getSortOrderFromPrefs(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 683
    .local v8, "sortOrder":Ljava/lang/String;
    const/16 v3, 0x1f

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    .line 684
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->getHideCheckedItemsFromPrefs(Landroid/content/Context;)Z

    move-result v18

    .line 686
    .local v18, "hideBought":Z
    move-object/from16 v0, p0

    iget v3, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 687
    if-eqz v18, :cond_0

    .line 688
    const-string v20, "list_id = ? AND status == 1"

    .local v20, "selection":Ljava/lang/String;
    const/16 v3, 0x20

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    move-object/from16 v6, v20

    .line 698
    .end local v20    # "selection":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    if-nez v3, :cond_2

    const/16 v3, 0x23

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    .line 704
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/openintents/shopping/library/provider/ShoppingContract$ContainsFull;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lorg/openintents/shopping/ui/ShoppingActivity;->mStringItems:[Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v10, 0x26

    const/4 v12, 0x1

    aput-boolean v12, v22, v10

    .line 706
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/16 v9, 0x27

    const/4 v10, 0x1

    aput-boolean v10, v22, v9

    .line 704
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    const/16 v3, 0x28

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    .line 711
    invoke-direct/range {p0 .. p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->registerContentObserver()V

    .line 713
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    if-nez v3, :cond_3

    const/16 v3, 0x29

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    .line 714
    const-string v3, "ShoppingListView"

    const-string v4, "missing shopping provider"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x2a

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    .line 715
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090003

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, "no shopping provider"

    aput-object v9, v6, v7

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    const/16 v4, 0x2b

    const/4 v5, 0x1

    aput-boolean v5, v22, v4

    .line 768
    :goto_2
    return-object v3

    .line 691
    :cond_0
    const-string v20, "list_id = ? AND status <> 3"

    .restart local v20    # "selection":Ljava/lang/String;
    const/16 v3, 0x21

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    move-object/from16 v6, v20

    goto :goto_0

    .line 695
    .end local v20    # "selection":Ljava/lang/String;
    :cond_1
    const-string v20, "list_id = ? "

    const/16 v3, 0x22

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    move-object/from16 v6, v20

    goto/16 :goto_0

    .line 698
    :cond_2
    const/16 v3, 0x24

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    .line 699
    invoke-direct/range {p0 .. p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->disposeItemsCursor()V

    const/16 v3, 0x25

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    goto/16 :goto_1

    .line 720
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorActivity:Landroid/app/Activity;

    const/16 v3, 0x2c

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 724
    const v12, 0x7f03000a

    const/16 v3, 0x2d

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    .line 726
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->getFontSizeFromPrefs(Landroid/content/Context;)I

    move-result v21

    .line 727
    .local v21, "size":I
    const/4 v3, 0x3

    move/from16 v0, v21

    if-lt v0, v3, :cond_4

    const/16 v3, 0x2e

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    .line 731
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 733
    .local v11, "context":Landroid/content/Context;
    sget v3, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_5

    const/16 v3, 0x30

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    .line 745
    :goto_4
    new-instance v9, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    const/4 v3, 0x6

    new-array v14, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "item_name"

    aput-object v4, v14, v3

    const/4 v3, 0x1

    const-string v4, "item_tags"

    aput-object v4, v14, v3

    const/4 v3, 0x2

    const-string v4, "item_price"

    aput-object v4, v14, v3

    const/4 v3, 0x3

    const-string v4, "quantity"

    aput-object v4, v14, v3

    const/4 v3, 0x4

    const-string v4, "priority"

    aput-object v4, v14, v3

    const/4 v3, 0x5

    const-string v4, "item_units"

    aput-object v4, v14, v3

    const/4 v3, 0x6

    new-array v15, v3, [I

    fill-array-data v15, :array_0

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v15}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;-><init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    const/16 v3, 0x35

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    .line 763
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v3, 0x36

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    .line 766
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->updateTotal()V

    .line 768
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    const/16 v4, 0x37

    const/4 v5, 0x1

    aput-boolean v5, v22, v4

    goto/16 :goto_2

    .line 728
    .end local v11    # "context":Landroid/content/Context;
    :cond_4
    const v19, 0x7f03000b

    .local v19, "layout_row":I
    const/16 v3, 0x2f

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    move/from16 v12, v19

    goto :goto_3

    .line 733
    .end local v19    # "layout_row":I
    .restart local v11    # "context":Landroid/content/Context;
    :cond_5
    const/16 v3, 0x31

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    .line 737
    move-object/from16 v0, p0

    iget v3, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int v17, v3, v4

    .line 738
    .local v17, "gray":I
    const/16 v3, 0x180

    move/from16 v0, v17

    if-lt v0, v3, :cond_6

    const/16 v3, 0x32

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    goto/16 :goto_4

    :cond_6
    const/16 v3, 0x33

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    .line 740
    new-instance v16, Landroid/view/ContextThemeWrapper;

    const v3, 0x103006e

    move-object/from16 v0, v16

    invoke-direct {v0, v11, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local v11    # "context":Landroid/content/Context;
    .local v16, "context":Landroid/content/Context;
    const/16 v3, 0x34

    const/4 v4, 0x1

    aput-boolean v4, v22, v3

    move-object/from16 v11, v16

    .end local v16    # "context":Landroid/content/Context;
    .restart local v11    # "context":Landroid/content/Context;
    goto/16 :goto_4

    .line 745
    :array_0
    .array-data 4
        0x7f0c003e
        0x7f0c0004
        0x7f0c003a
        0x7f0c003c
        0x7f0c003b
        0x7f0c003d
    .end array-data
.end method

.method public getListId()J
    .locals 5

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 668
    iget-wide v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mListId:J

    const/16 v1, 0x1c

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public insertNewItem(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v15

    .line 1174
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .local v2, "newItem":Ljava/lang/String;
    const/16 v3, 0xda

    const/4 v4, 0x1

    aput-boolean v4, v15, v3

    .line 1176
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-static {v3, v2, v4, v0, v1}, Lorg/openintents/shopping/library/util/ShoppingUtils;->updateOrCreateItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const/16 v3, 0xdb

    const/4 v6, 0x1

    aput-boolean v6, v15, v3

    .line 1181
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->getResetQuantity(Landroid/content/Context;)Z

    move-result v14

    const/16 v3, 0xdc

    const/4 v6, 0x1

    aput-boolean v6, v15, v3

    .line 1182
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mListId:J

    const-wide/16 v8, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v10, p4

    move-object/from16 v11, p3

    invoke-static/range {v3 .. v14}, Lorg/openintents/shopping/library/util/ShoppingUtils;->addItemToList(Landroid/content/Context;JJJLjava/lang/String;Ljava/lang/String;ZZZ)J

    const/16 v3, 0xdd

    const/4 v6, 0x1

    aput-boolean v6, v15, v3

    .line 1185
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mListId:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->fillItems(Landroid/app/Activity;J)Landroid/database/Cursor;

    const/16 v3, 0xde

    const/4 v6, 0x1

    aput-boolean v6, v15, v3

    .line 1189
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    const/4 v6, -0x1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v3, 0xdf

    const/4 v6, 0x1

    aput-boolean v6, v15, v3

    .line 1190
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xe0

    const/4 v4, 0x1

    aput-boolean v4, v15, v3

    .line 1204
    :goto_1
    const/16 v3, 0xe6

    const/4 v4, 0x1

    aput-boolean v4, v15, v3

    return-void

    .line 1190
    :cond_0
    const/16 v3, 0xe1

    const/4 v6, 0x1

    aput-boolean v6, v15, v3

    .line 1191
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    const/4 v6, 0x7

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_1

    const/16 v3, 0xe2

    const/4 v6, 0x1

    aput-boolean v6, v15, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0xe3

    const/4 v4, 0x1

    aput-boolean v4, v15, v3

    .line 1192
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    const/16 v4, 0xe4

    const/4 v5, 0x1

    aput-boolean v5, v15, v4

    .line 1198
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->postDelayedSetSelection(I)V

    .line 1200
    const/16 v3, 0xe5

    const/4 v4, 0x1

    aput-boolean v4, v15, v3

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v2

    .line 1470
    iget-boolean v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragAndDropEnabled:Z

    if-nez v1, :cond_0

    const/16 v1, 0x13b

    aput-boolean v6, v2, v1

    .line 1497
    .local v0, "itemnum":I
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/16 v3, 0x14e

    aput-boolean v6, v2, v3

    :goto_1
    return v1

    .line 1471
    .end local v0    # "itemnum":I
    :cond_0
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DragListener;

    if-eqz v1, :cond_1

    const/16 v1, 0x13c

    aput-boolean v6, v2, v1

    .line 1472
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x13f

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 1471
    :cond_1
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDropListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DropListener;

    if-nez v1, :cond_2

    const/16 v1, 0x13d

    aput-boolean v6, v2, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x13e

    aput-boolean v6, v2, v1

    goto :goto_2

    .line 1474
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    const/16 v3, 0x140

    aput-boolean v6, v2, v3

    .line 1475
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    const/16 v4, 0x141

    aput-boolean v6, v2, v4

    .line 1476
    invoke-virtual {p0, v1, v3}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->pointToPosition(II)I

    move-result v0

    .line 1477
    .restart local v0    # "itemnum":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 1478
    const/16 v1, 0x142

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 1480
    :cond_3
    const/16 v1, 0x143

    aput-boolean v6, v2, v1

    .line 1481
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    const/16 v4, 0x144

    aput-boolean v6, v2, v4

    .line 1480
    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/16 v4, 0x145

    aput-boolean v6, v2, v4

    .line 1482
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    sub-int v4, v3, v4

    iput v4, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragPoint:I

    const/16 v4, 0x146

    aput-boolean v6, v2, v4

    .line 1483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v4, v3

    iput v4, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCoordOffset:I

    const/16 v4, 0x147

    aput-boolean v6, v2, v4

    .line 1484
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    const/16 v4, 0x148

    aput-boolean v6, v2, v4

    .line 1485
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v4, 0x149

    aput-boolean v6, v2, v4

    .line 1486
    invoke-direct {p0, v1, v3}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->startDragging(Landroid/graphics/Bitmap;I)V

    .line 1487
    iput v0, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragPos:I

    .line 1488
    iget v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragPos:I

    iput v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mFirstDragPos:I

    const/16 v1, 0x14a

    aput-boolean v6, v2, v1

    .line 1489
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mHeight:I

    .line 1490
    iget v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTouchSlop:I

    const/16 v4, 0x14b

    aput-boolean v6, v2, v4

    .line 1491
    sub-int v4, v3, v1

    iget v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mHeight:I

    div-int/lit8 v5, v5, 0x3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mUpperBound:I

    const/16 v4, 0x14c

    aput-boolean v6, v2, v4

    .line 1492
    add-int/2addr v1, v3

    iget v3, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mHeight:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mLowerBound:I

    .line 1493
    const/4 v1, 0x0

    const/16 v3, 0x14d

    aput-boolean v6, v2, v3

    goto/16 :goto_1

    .line 1472
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 664
    invoke-direct {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->unregisterContentObserver()V

    .line 665
    const/16 v1, 0x1b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 660
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/openintents/shopping/ui/PreferenceActivity;->getFastScrollEnabledFromPrefs(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setFastScrollEnabled(Z)V

    .line 661
    const/16 v1, 0x1a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v7

    .line 1599
    iget-object v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DragListener;

    if-eqz v8, :cond_0

    const/16 v8, 0x183

    aput-boolean v5, v7, v8

    :goto_0
    iget-object v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragView:Landroid/widget/ImageView;

    if-nez v8, :cond_2

    const/16 v6, 0x186

    aput-boolean v5, v7, v6

    .line 1657
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    const/16 v8, 0x1b1

    aput-boolean v5, v7, v8

    move v5, v6

    :goto_2
    return v5

    .line 1599
    :cond_0
    iget-object v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDropListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DropListener;

    if-nez v8, :cond_1

    const/16 v6, 0x184

    aput-boolean v5, v7, v6

    goto :goto_1

    :cond_1
    const/16 v8, 0x185

    aput-boolean v5, v7, v8

    goto :goto_0

    :cond_2
    const/16 v8, 0x187

    aput-boolean v5, v7, v8

    .line 1601
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1602
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    const/16 v6, 0x188

    aput-boolean v5, v7, v6

    .line 1655
    :goto_3
    const/16 v6, 0x1b0

    aput-boolean v5, v7, v6

    goto :goto_2

    .line 1605
    :pswitch_0
    iget-object v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTempRect:Landroid/graphics/Rect;

    const/16 v9, 0x189

    aput-boolean v5, v7, v9

    .line 1606
    iget-object v9, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    const/16 v8, 0x18a

    aput-boolean v5, v7, v8

    .line 1607
    invoke-direct {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->stopDragging()V

    .line 1608
    iget-object v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDropListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DropListener;

    if-nez v8, :cond_3

    const/16 v8, 0x18b

    aput-boolean v5, v7, v8

    .line 1612
    :goto_4
    invoke-direct {p0, v6}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->unExpandViews(Z)V

    .line 1613
    const/16 v6, 0x191

    aput-boolean v5, v7, v6

    goto :goto_3

    .line 1608
    :cond_3
    iget v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragPos:I

    if-gez v8, :cond_4

    const/16 v8, 0x18c

    aput-boolean v5, v7, v8

    goto :goto_4

    :cond_4
    iget v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragPos:I

    const/16 v9, 0x18d

    aput-boolean v5, v7, v9

    .line 1609
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getCount()I

    move-result v9

    if-lt v8, v9, :cond_5

    const/16 v8, 0x18e

    aput-boolean v5, v7, v8

    goto :goto_4

    :cond_5
    const/16 v8, 0x18f

    aput-boolean v5, v7, v8

    .line 1610
    iget-object v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDropListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DropListener;

    iget v9, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mFirstDragPos:I

    iget v10, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragPos:I

    invoke-interface {v8, v9, v10}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DropListener;->drop(II)V

    const/16 v8, 0x190

    aput-boolean v5, v7, v8

    goto :goto_4

    .line 1616
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    const/16 v9, 0x192

    aput-boolean v5, v7, v9

    .line 1617
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    const/16 v10, 0x193

    aput-boolean v5, v7, v10

    .line 1618
    invoke-direct {p0, v8, v9}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->dragView(II)V

    const/16 v8, 0x194

    aput-boolean v5, v7, v8

    .line 1619
    invoke-direct {p0, v9}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getItemForPosition(I)I

    move-result v1

    .line 1620
    .local v1, "itemnum":I
    if-gez v1, :cond_6

    const/16 v6, 0x195

    aput-boolean v5, v7, v6

    goto :goto_3

    .line 1621
    :cond_6
    if-nez v0, :cond_7

    const/16 v8, 0x196

    aput-boolean v5, v7, v8

    .line 1623
    :goto_5
    iget-object v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DragListener;

    if-nez v8, :cond_9

    const/16 v8, 0x199

    aput-boolean v5, v7, v8

    .line 1626
    :goto_6
    iput v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragPos:I

    const/16 v8, 0x19c

    aput-boolean v5, v7, v8

    .line 1627
    invoke-direct {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->doExpansion()V

    const/16 v8, 0x19d

    aput-boolean v5, v7, v8

    .line 1629
    :goto_7
    const/16 v8, 0x19e

    aput-boolean v5, v7, v8

    .line 1630
    invoke-direct {p0, v9}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->adjustScrollBounds(I)V

    .line 1631
    iget v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mLowerBound:I

    if-le v9, v8, :cond_b

    .line 1633
    iget v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mHeight:I

    iget v10, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mLowerBound:I

    add-int/2addr v8, v10

    div-int/lit8 v8, v8, 0x2

    if-le v9, v8, :cond_a

    const/16 v3, 0x10

    const/16 v8, 0x19f

    aput-boolean v5, v7, v8

    .local v3, "speed":I
    :goto_8
    const/16 v8, 0x1a1

    aput-boolean v5, v7, v8

    .line 1638
    .end local v3    # "speed":I
    :goto_9
    if-nez v3, :cond_e

    const/16 v6, 0x1a6

    aput-boolean v5, v7, v6

    goto/16 :goto_3

    .line 1621
    :cond_7
    iget v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragPos:I

    if-ne v1, v8, :cond_8

    const/16 v8, 0x197

    aput-boolean v5, v7, v8

    goto :goto_7

    :cond_8
    const/16 v8, 0x198

    aput-boolean v5, v7, v8

    goto :goto_5

    .line 1623
    :cond_9
    const/16 v8, 0x19a

    aput-boolean v5, v7, v8

    .line 1624
    iget-object v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DragListener;

    iget v10, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragPos:I

    invoke-interface {v8, v10, v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DragListener;->drag(II)V

    const/16 v8, 0x19b

    aput-boolean v5, v7, v8

    goto :goto_6

    .line 1633
    :cond_a
    const/4 v3, 0x4

    const/16 v8, 0x1a0

    aput-boolean v5, v7, v8

    goto :goto_8

    .line 1634
    :cond_b
    iget v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mUpperBound:I

    if-lt v9, v8, :cond_c

    const/16 v8, 0x1a2

    aput-boolean v5, v7, v8

    move v3, v6

    goto :goto_9

    .line 1636
    :cond_c
    iget v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mUpperBound:I

    div-int/lit8 v8, v8, 0x2

    if-ge v9, v8, :cond_d

    const/16 v3, -0x10

    const/16 v8, 0x1a3

    aput-boolean v5, v7, v8

    .restart local v3    # "speed":I
    :goto_a
    const/16 v8, 0x1a5

    aput-boolean v5, v7, v8

    goto :goto_9

    .end local v3    # "speed":I
    :cond_d
    const/4 v3, -0x4

    const/16 v8, 0x1a4

    aput-boolean v5, v7, v8

    goto :goto_a

    .line 1638
    :cond_e
    const/16 v8, 0x1a7

    aput-boolean v5, v7, v8

    .line 1639
    iget v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mHeight:I

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p0, v6, v8}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->pointToPosition(II)I

    move-result v2

    .line 1640
    .local v2, "ref":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_f

    const/16 v6, 0x1a8

    aput-boolean v5, v7, v6

    .line 1646
    :goto_b
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1647
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_10

    const/16 v6, 0x1ac

    aput-boolean v5, v7, v6

    goto/16 :goto_3

    .line 1643
    .end local v4    # "v":Landroid/view/View;
    :cond_f
    iget v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mHeight:I

    div-int/lit8 v8, v8, 0x2

    const/16 v9, 0x1a9

    aput-boolean v5, v7, v9

    .line 1644
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getDividerHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x40

    const/16 v9, 0x1aa

    aput-boolean v5, v7, v9

    .line 1643
    invoke-virtual {p0, v6, v8}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->pointToPosition(II)I

    move-result v2

    const/16 v6, 0x1ab

    aput-boolean v5, v7, v6

    goto :goto_b

    .line 1647
    .restart local v4    # "v":Landroid/view/View;
    :cond_10
    const/16 v6, 0x1ad

    aput-boolean v5, v7, v6

    .line 1648
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    const/16 v8, 0x1ae

    aput-boolean v5, v7, v8

    .line 1649
    sub-int/2addr v6, v3

    invoke-virtual {p0, v2, v6}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setSelectionFromTop(II)V

    const/16 v6, 0x1af

    aput-boolean v5, v7, v6

    goto/16 :goto_3

    .line 1602
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method postDelayedSetSelection(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 1216
    invoke-virtual {p0, p1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setSelection(I)V

    const/16 v1, 0xe7

    aput-boolean v4, v0, v1

    .line 1220
    new-instance v1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$2;

    invoke-direct {v1, p0, p1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$2;-><init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1228
    const/16 v1, 0xe8

    aput-boolean v4, v0, v1

    return-void
.end method

.method public requery()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 1235
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    if-nez v1, :cond_0

    const/16 v1, 0xe9

    aput-boolean v3, v0, v1

    .line 1247
    :goto_0
    const/16 v1, 0xef

    aput-boolean v3, v0, v1

    return-void

    .line 1235
    :cond_0
    const/16 v1, 0xea

    aput-boolean v3, v0, v1

    .line 1236
    iget-object v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    const/16 v1, 0xeb

    aput-boolean v3, v0, v1

    .line 1237
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->updateTotal()V

    .line 1240
    iget v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mUpdateLastListPosition:I

    if-gtz v1, :cond_1

    const/16 v1, 0xec

    aput-boolean v3, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0xed

    aput-boolean v3, v0, v1

    .line 1243
    iget v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mLastListPosition:I

    iget v2, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mLastListTop:I

    invoke-virtual {p0, v1, v2}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setSelectionFromTop(II)V

    .line 1244
    iget v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mUpdateLastListPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mUpdateLastListPosition:I

    const/16 v1, 0xee

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public setActionBarListener(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$ActionBarListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 654
    iput-object p1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mActionBarListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$ActionBarListener;

    .line 655
    const/16 v1, 0x19

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setCountTextView(Landroid/widget/TextView;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 1263
    iput-object p1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCountTextView:Landroid/widget/TextView;

    .line 1265
    const/16 v1, 0xf3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setCustomClickListener(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$OnCustomClickListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 1461
    iput-object p1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$OnCustomClickListener;

    .line 1462
    const/16 v1, 0x13a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setDragListener(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DragListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 1712
    iput-object p1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDragListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DragListener;

    .line 1713
    const/16 v1, 0x1c7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setDropListener(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DropListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 1716
    iput-object p1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mDropListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$DropListener;

    .line 1717
    const/16 v1, 0x1c8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setListTheme(Ljava/lang/String;)V
    .locals 6

    .prologue
    const v5, 0x7f0b0003

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v2

    .line 794
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/openintents/shopping/ui/PreferenceActivity;->getFontSizeFromPrefs(Landroid/content/Context;)I

    move-result v0

    .line 797
    .local v0, "size":I
    if-nez p1, :cond_0

    const/16 v3, 0x3e

    aput-boolean v4, v2, v3

    .line 798
    invoke-direct {p0, v5, v0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setLocalStyle(II)V

    const/16 v3, 0x3f

    aput-boolean v4, v2, v3

    .line 815
    :goto_0
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->invalidate()V

    .line 816
    iget-object v3, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    if-nez v3, :cond_5

    const/16 v3, 0x49

    aput-boolean v4, v2, v3

    .line 819
    :goto_1
    const/16 v3, 0x4c

    aput-boolean v4, v2, v3

    return-void

    .line 799
    :cond_0
    const-string v3, "1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x40

    aput-boolean v4, v2, v3

    .line 800
    invoke-direct {p0, v5, v0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setLocalStyle(II)V

    const/16 v3, 0x41

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 801
    :cond_1
    const-string v3, "2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x42

    aput-boolean v4, v2, v3

    .line 802
    const v3, 0x7f0b0005

    invoke-direct {p0, v3, v0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setLocalStyle(II)V

    const/16 v3, 0x43

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 803
    :cond_2
    const-string v3, "3"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x44

    aput-boolean v4, v2, v3

    .line 804
    const v3, 0x7f0b0004

    invoke-direct {p0, v3, v0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setLocalStyle(II)V

    const/16 v3, 0x45

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 807
    :cond_3
    invoke-direct {p0, p1, v0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setRemoteStyle(Ljava/lang/String;I)Z

    move-result v1

    .line 809
    .local v1, "themeFound":Z
    if-eqz v1, :cond_4

    const/16 v3, 0x46

    aput-boolean v4, v2, v3

    goto :goto_0

    :cond_4
    const/16 v3, 0x47

    aput-boolean v4, v2, v3

    .line 811
    invoke-direct {p0, v5, v0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->setLocalStyle(II)V

    const/16 v3, 0x48

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 816
    .end local v1    # "themeFound":Z
    :cond_5
    const/16 v3, 0x4a

    aput-boolean v4, v2, v3

    .line 817
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->requery()V

    const/16 v3, 0x4b

    aput-boolean v4, v2, v3

    goto :goto_1
.end method

.method public setPrioritySubtotalTextView(Landroid/widget/TextView;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 1254
    iput-object p1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriTotalTextView:Landroid/widget/TextView;

    .line 1255
    const/16 v1, 0xf1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setThemedBackground(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 1052
    iput-object p1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mThemedBackground:Landroid/view/View;

    .line 1054
    const/16 v1, 0xad

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setTotalCheckedTextView(Landroid/widget/TextView;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 1258
    iput-object p1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTotalCheckedTextView:Landroid/widget/TextView;

    .line 1259
    const/16 v1, 0xf2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setTotalTextView(Landroid/widget/TextView;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v0

    .line 1250
    iput-object p1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTotalTextView:Landroid/widget/TextView;

    .line 1251
    const/16 v1, 0xf0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public toggleItemBought(I)V
    .locals 13

    .prologue
    const-wide/16 v8, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v4

    .line 1088
    iget-object v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gt v5, p1, :cond_0

    const/16 v5, 0xbc

    aput-boolean v11, v4, v5

    .line 1089
    const-string v5, "ShoppingListView"

    const-string v6, "toggle inexistent item. Probably clicked too quickly?"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/16 v5, 0xbd

    aput-boolean v11, v4, v5

    .line 1128
    .local v0, "newstatus":J
    .local v2, "oldstatus":J
    :goto_0
    return-void

    .line 1093
    .end local v0    # "newstatus":J
    .end local v2    # "oldstatus":J
    :cond_0
    iget-object v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1095
    iget-object v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    const/4 v6, 0x6

    const/16 v7, 0xbe

    aput-boolean v11, v4, v7

    .line 1096
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1099
    .restart local v2    # "oldstatus":J
    const-wide/16 v0, 0x1

    .line 1101
    .restart local v0    # "newstatus":J
    iget v5, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    if-ne v5, v11, :cond_2

    .line 1102
    cmp-long v5, v2, v8

    if-eqz v5, :cond_1

    const/16 v5, 0xbf

    aput-boolean v11, v4, v5

    .line 1116
    :goto_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/16 v6, 0xc3

    aput-boolean v11, v4, v6

    .line 1117
    const-string v6, "status"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v6, 0xc4

    aput-boolean v11, v4, v6

    .line 1120
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    const/4 v9, 0x0

    const/16 v10, 0xc5

    aput-boolean v11, v4, v10

    .line 1122
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xc6

    aput-boolean v11, v4, v9

    .line 1121
    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/16 v8, 0xc7

    aput-boolean v11, v4, v8

    .line 1120
    invoke-virtual {v6, v7, v5, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v5, 0xc8

    aput-boolean v11, v4, v5

    .line 1123
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->requery()V

    const/16 v5, 0xc9

    aput-boolean v11, v4, v5

    .line 1125
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    invoke-static {v5, v6}, Lorg/openintents/shopping/ui/PreferenceActivity;->prefsStatusAffectsSort(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0xca

    aput-boolean v11, v4, v5

    .line 1128
    :goto_2
    const/16 v5, 0xcd

    aput-boolean v11, v4, v5

    goto :goto_0

    .line 1103
    :cond_1
    const-wide/16 v0, 0x2

    const/16 v5, 0xc0

    aput-boolean v11, v4, v5

    goto :goto_1

    .line 1111
    :cond_2
    cmp-long v5, v2, v8

    if-eqz v5, :cond_3

    const/16 v5, 0xc1

    aput-boolean v11, v4, v5

    goto :goto_1

    .line 1112
    :cond_3
    const-wide/16 v0, 0x3

    const/16 v5, 0xc2

    aput-boolean v11, v4, v5

    goto :goto_1

    .line 1125
    :cond_4
    const/16 v5, 0xcb

    aput-boolean v11, v4, v5

    .line 1126
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->invalidate()V

    const/16 v5, 0xcc

    aput-boolean v11, v4, v5

    goto :goto_2
.end method

.method public toggleOnAllItems()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v12, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v6

    .line 1057
    const/16 v7, 0xae

    aput-boolean v12, v6, v7

    move v0, v1

    .local v0, "i":I
    .local v2, "newstatus":J
    .local v4, "oldstatus":J
    :goto_0
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge v0, v7, :cond_1

    const/16 v7, 0xaf

    aput-boolean v12, v6, v7

    .line 1058
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1060
    iget-object v7, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    const/4 v8, 0x6

    const/16 v9, 0xb0

    aput-boolean v12, v6, v9

    .line 1061
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1067
    const-wide/16 v2, 0x1

    .line 1068
    const-wide/16 v8, 0x1

    cmp-long v7, v4, v8

    if-eqz v7, :cond_0

    .end local v0    # "i":I
    const/16 v7, 0xb1

    aput-boolean v12, v6, v7

    .line 1057
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .restart local v0    # "i":I
    const/16 v7, 0xb9

    aput-boolean v12, v6, v7

    goto :goto_0

    .line 1069
    .end local v0    # "i":I
    :cond_0
    const-wide/16 v2, 0x2

    const/16 v7, 0xb2

    aput-boolean v12, v6, v7

    .line 1071
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const/16 v8, 0xb3

    aput-boolean v12, v6, v8

    .line 1072
    const-string v8, "status"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v8, 0xb4

    aput-boolean v12, v6, v8

    .line 1075
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    iget-object v10, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    const/16 v11, 0xb5

    aput-boolean v12, v6, v11

    .line 1077
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xb6

    aput-boolean v12, v6, v11

    .line 1076
    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/16 v10, 0xb7

    aput-boolean v12, v6, v10

    .line 1075
    invoke-virtual {v8, v9, v7, v13, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v7, 0xb8

    aput-boolean v12, v6, v7

    goto :goto_1

    .line 1082
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->requery()V

    const/16 v1, 0xba

    aput-boolean v12, v6, v1

    .line 1084
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->invalidate()V

    .line 1085
    const/16 v1, 0xbb

    aput-boolean v12, v6, v1

    return-void
.end method

.method public updateTotal()V
    .locals 27

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->$jacocoInit()[Z

    move-result-object v19

    .line 1276
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mNumChecked:J

    .line 1277
    const-wide/16 v20, 0x0

    .line 1278
    .local v20, "total":J
    const-wide/16 v22, 0x0

    .line 1279
    .local v22, "totalchecked":J
    const-wide/16 v16, 0x0

    .line 1280
    .local v16, "priority_total":J
    const/16 v2, 0xf4

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1281
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xf5

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    .line 1280
    invoke-static {v2}, Lorg/openintents/shopping/ui/PreferenceActivity;->getSubtotalByPriorityThreshold(Landroid/content/Context;)I

    move-result v15

    .line 1282
    .local v15, "priority_threshold":I
    const/16 v2, 0xf6

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1283
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/openintents/shopping/ui/PreferenceActivity;->prioritySubtotalIncludesChecked(Landroid/content/Context;)Z

    move-result v24

    const/16 v2, 0xf7

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1343
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/openintents/shopping/library/provider/ShoppingContract$Subtotals;->CONTENT_URI:Landroid/net/Uri;

    const/16 v4, 0xf8

    const/4 v5, 0x1

    aput-boolean v5, v19, v4

    .line 1344
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mListId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lorg/openintents/shopping/library/provider/ShoppingContract$Subtotals;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v25, 0xf9

    const/16 v26, 0x1

    aput-boolean v26, v19, v25

    .line 1343
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/16 v3, 0xfa

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    .line 1346
    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v3, 0xfb

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    .line 1347
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v3, 0xfc

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    .line 1348
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1349
    .local v10, "item_status":J
    const-wide/16 v4, 0x2

    cmp-long v3, v10, v4

    if-nez v3, :cond_0

    const/4 v8, 0x1

    const/16 v3, 0xfd

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    .line 1351
    .local v8, "isChecked":Z
    :goto_1
    const-wide/16 v4, 0x3

    cmp-long v3, v10, v4

    if-nez v3, :cond_1

    .line 1352
    const/16 v3, 0xff

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    goto :goto_0

    .line 1349
    .end local v8    # "isChecked":Z
    :cond_0
    const/4 v8, 0x0

    const/16 v3, 0xfe

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    goto :goto_1

    .line 1354
    .restart local v8    # "isChecked":Z
    :cond_1
    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1355
    .local v12, "price":J
    add-long v20, v20, v12

    .line 1357
    if-nez v8, :cond_2

    const/16 v3, 0x100

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    .line 1362
    :goto_2
    if-nez v15, :cond_3

    const/16 v3, 0x103

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    .line 1376
    :goto_3
    const/16 v3, 0x10e

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    goto :goto_0

    .line 1358
    :cond_2
    add-long v22, v22, v12

    const/16 v3, 0x101

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    .line 1359
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mNumChecked:J

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mNumChecked:J

    const/16 v3, 0x102

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    goto :goto_2

    .line 1362
    :cond_3
    if-eqz v24, :cond_4

    const/16 v3, 0x104

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    .line 1363
    :goto_4
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1364
    .local v14, "priority_str":Ljava/lang/String;
    if-nez v14, :cond_6

    const/16 v3, 0x107

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    goto :goto_3

    .line 1362
    .end local v14    # "priority_str":Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_5

    const/16 v3, 0x105

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    goto :goto_3

    :cond_5
    const/16 v3, 0x106

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    goto :goto_4

    .line 1365
    .restart local v14    # "priority_str":Ljava/lang/String;
    :cond_6
    const/4 v9, 0x0

    const/16 v3, 0x108

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v19, v3

    .line 1367
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1370
    .local v9, "priority":I
    const/16 v3, 0x109

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    .line 1371
    .end local v9    # "priority":I
    :goto_5
    if-nez v9, :cond_7

    const/16 v3, 0x10b

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    goto :goto_3

    .line 1368
    :catch_0
    move-exception v3

    const/16 v3, 0x10a

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    goto :goto_5

    .line 1371
    :cond_7
    if-le v9, v15, :cond_8

    const/16 v3, 0x10c

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    goto :goto_3

    .line 1372
    :cond_8
    add-long v16, v16, v12

    const/16 v3, 0x10d

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    goto :goto_3

    .line 1377
    .end local v8    # "isChecked":Z
    .end local v10    # "item_status":J
    .end local v12    # "price":J
    .end local v14    # "priority_str":Ljava/lang/String;
    :cond_9
    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    const/16 v3, 0x10f

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    .line 1378
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1384
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mActionBarListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$ActionBarListener;

    if-nez v2, :cond_a

    const/16 v2, 0x110

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1388
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTotalTextView:Landroid/widget/TextView;

    if-nez v2, :cond_b

    const/16 v2, 0x113

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1390
    :goto_7
    const/16 v2, 0x115

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1438
    :goto_8
    return-void

    .line 1384
    :cond_a
    const/16 v2, 0x111

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1385
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mActionBarListener:Lorg/openintents/shopping/ui/widget/ShoppingItemsView$ActionBarListener;

    invoke-interface {v2}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$ActionBarListener;->updateActionBar()V

    const/16 v2, 0x112

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    goto :goto_6

    .line 1388
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTotalCheckedTextView:Landroid/widget/TextView;

    if-nez v2, :cond_c

    const/16 v2, 0x114

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    goto :goto_7

    .line 1393
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriceVisibility:I

    if-eqz v2, :cond_d

    const/16 v2, 0x116

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1395
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTotalTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x117

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1396
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriTotalTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x118

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1397
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTotalCheckedTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1398
    const/16 v2, 0x119

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    goto :goto_8

    .line 1401
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTotalTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColorPrice:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11a

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1402
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriTotalTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColorPrice:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11b

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1403
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTotalCheckedTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColorPrice:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11c

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1404
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCountTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColorPrice:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1406
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-eqz v2, :cond_e

    const/16 v2, 0x11d

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1407
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriceFormatter:Ljava/text/NumberFormat;

    move-wide/from16 v0, v20

    long-to-double v4, v0

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11e

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0800d4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .local v18, "s":Ljava/lang/String;
    const/16 v2, 0x11f

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1409
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTotalTextView:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x120

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1410
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTotalTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1411
    const/16 v2, 0x121

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1415
    .end local v18    # "s":Ljava/lang/String;
    :goto_9
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-eqz v2, :cond_f

    .line 1416
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const/16 v3, 0x123

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    .line 1418
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriceFormatter:Ljava/text/NumberFormat;

    move-wide/from16 v0, v16

    long-to-double v4, v0

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x124

    const/4 v5, 0x1

    aput-boolean v5, v19, v4

    .line 1419
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v4

    aget v2, v2, v15

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "s":Ljava/lang/String;
    const/16 v2, 0x125

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1420
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriTotalTextView:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x126

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1421
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriTotalTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1422
    const/16 v2, 0x127

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1426
    .end local v18    # "s":Ljava/lang/String;
    :goto_a
    const-wide/16 v2, 0x0

    cmp-long v2, v22, v2

    if-eqz v2, :cond_10

    const/16 v2, 0x129

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1427
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriceFormatter:Ljava/text/NumberFormat;

    move-wide/from16 v0, v22

    long-to-double v4, v0

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12a

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0800d5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "s":Ljava/lang/String;
    const/16 v2, 0x12b

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1429
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTotalCheckedTextView:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x12c

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1430
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTotalCheckedTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x12d

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1431
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCountTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1432
    const/16 v2, 0x12e

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1437
    .end local v18    # "s":Ljava/lang/String;
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCountTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mNumChecked:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    const/16 v2, 0x131

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    goto/16 :goto_8

    .line 1412
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTotalTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x122

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    goto/16 :goto_9

    .line 1423
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriTotalTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x128

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    goto/16 :goto_a

    .line 1433
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTotalCheckedTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x12f

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    .line 1434
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCountTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x130

    const/4 v3, 0x1

    aput-boolean v3, v19, v2

    goto :goto_b

    .line 1416
    :array_0
    .array-data 4
        0x0
        0x7f0800c0
        0x7f0800c1
        0x7f0800c2
        0x7f0800c3
    .end array-data
.end method
