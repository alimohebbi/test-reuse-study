.class public Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "ShoppingItemsView.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/ui/widget/ShoppingItemsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "mSimpleCursorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableItemSpan;,
        Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableNoteSpan;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x47fcff62415d65b9L    # -6.9803818974549E-39

    const-string v2, "org/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter"

    const/16 v3, 0x9a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->$jacocoInit()[Z

    move-result-object v6

    .line 172
    iput-object p1, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    const/4 v0, 0x0

    aput-boolean v7, v6, v0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 173
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    aput-boolean v7, v6, v7

    .line 174
    invoke-super {p0, p0}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    aput-boolean v7, v6, v8

    .line 176
    iget-object v0, p1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriceFormatter:Ljava/text/NumberFormat;

    invoke-virtual {v0, v8}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 v0, 0x3

    aput-boolean v7, v6, v0

    .line 177
    iget-object v0, p1, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriceFormatter:Ljava/text/NumberFormat;

    invoke-virtual {v0, v8}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 178
    const/4 v0, 0x4

    aput-boolean v7, v6, v0

    return-void
.end method

.method private hideTextView(Landroid/widget/TextView;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 441
    sget v1, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const/16 v1, 0x51

    aput-boolean v3, v0, v1

    .line 444
    :goto_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    const/16 v1, 0x54

    aput-boolean v3, v0, v1

    return-void

    .line 441
    :cond_0
    const/16 v1, 0x52

    aput-boolean v3, v0, v1

    .line 442
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x53

    aput-boolean v3, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 17

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->$jacocoInit()[Z

    move-result-object v8

    .line 208
    invoke-super/range {p0 .. p3}, Landroid/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    const/16 v5, 0x11

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    .line 210
    const/4 v5, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/16 v5, 0x12

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    .line 211
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    const/16 v5, 0x13

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    .line 212
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    const/16 v5, 0x14

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    .line 214
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 216
    const/4 v5, 0x3

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 219
    .local v3, "styled_as_name":[I
    const/4 v2, 0x0

    const/16 v5, 0x15

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_a

    .line 220
    aget v12, v3, v2

    const/16 v5, 0x16

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    .line 221
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x17

    const/4 v13, 0x1

    aput-boolean v13, v8, v6

    .line 225
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v6, v6, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCurrentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v6, 0x18

    const/4 v13, 0x1

    aput-boolean v13, v8, v6

    .line 226
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v6, 0x19

    const/4 v13, 0x1

    aput-boolean v13, v8, v6

    .line 229
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v13, v13, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextSize:F

    invoke-virtual {v5, v6, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 232
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-boolean v6, v6, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextUpperCaseFont:Z

    if-nez v6, :cond_0

    const/16 v6, 0x1a

    const/4 v13, 0x1

    aput-boolean v13, v8, v6

    .line 238
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v6, v6, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    const v6, 0x7f0c003c

    if-eq v12, v6, :cond_1

    const/16 v6, 0x1e

    const/4 v13, 0x1

    aput-boolean v13, v8, v6

    .line 263
    :goto_2
    const-wide/16 v14, 0x2

    cmp-long v6, v10, v14

    if-nez v6, :cond_7

    const/16 v6, 0x24

    const/4 v13, 0x1

    aput-boolean v13, v8, v6

    .line 264
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v6, v6, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColorChecked:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-boolean v6, v6, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mShowStrikethrough:Z

    if-nez v6, :cond_4

    const/16 v6, 0x25

    const/4 v13, 0x1

    aput-boolean v13, v8, v6

    .line 289
    :goto_3
    const v6, 0x7f0c003e

    if-eq v12, v6, :cond_5

    const/16 v5, 0x2a

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    .line 219
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    const/16 v5, 0x32

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    goto/16 :goto_0

    .line 232
    .end local v2    # "i":I
    :cond_0
    const/16 v6, 0x1b

    const/4 v13, 0x1

    aput-boolean v13, v8, v6

    .line 234
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    const/16 v13, 0x1c

    const/4 v14, 0x1

    aput-boolean v14, v8, v13

    .line 235
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x1d

    const/4 v13, 0x1

    aput-boolean v13, v8, v6

    goto :goto_1

    .line 240
    :cond_1
    const/16 v6, 0x1f

    const/4 v13, 0x1

    aput-boolean v13, v8, v6

    .line 242
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const/16 v6, 0x20

    const/4 v13, 0x1

    aput-boolean v13, v8, v6

    .line 248
    :goto_5
    new-instance v6, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1, v9}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$1;-><init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;Landroid/database/Cursor;I)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v6, 0x23

    const/4 v13, 0x1

    aput-boolean v13, v8, v6

    goto :goto_2

    .line 242
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v6, v6, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mQuantityVisibility:I

    if-eqz v6, :cond_3

    const/16 v6, 0x21

    const/4 v13, 0x1

    aput-boolean v13, v8, v6

    goto :goto_5

    :cond_3
    const/16 v6, 0x22

    const/4 v13, 0x1

    aput-boolean v13, v8, v6

    goto :goto_5

    .line 266
    :cond_4
    const/16 v6, 0x26

    const/4 v13, 0x1

    aput-boolean v13, v8, v6

    .line 271
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/16 v6, 0x27

    const/4 v13, 0x1

    aput-boolean v13, v8, v6

    .line 272
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    const/16 v13, 0x28

    const/4 v14, 0x1

    aput-boolean v14, v8, v13

    .line 275
    new-instance v13, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v13}, Landroid/text/style/StrikethroughSpan;-><init>()V

    const/4 v14, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v15

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-interface {v6, v13, v14, v15, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/16 v6, 0x29

    const/4 v13, 0x1

    aput-boolean v13, v8, v6

    goto/16 :goto_3

    .line 289
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v6, v6, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextSuffixChecked:Ljava/lang/String;

    if-nez v6, :cond_6

    const/16 v5, 0x2b

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    goto/16 :goto_4

    :cond_6
    const/16 v6, 0x2c

    const/4 v12, 0x1

    aput-boolean v12, v8, v6

    .line 291
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v6, v6, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextSuffixChecked:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    const/16 v5, 0x2d

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    goto/16 :goto_4

    .line 296
    :cond_7
    const v6, 0x7f0c003e

    if-eq v12, v6, :cond_8

    const/16 v5, 0x2e

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v6, v6, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextSuffixUnchecked:Ljava/lang/String;

    if-nez v6, :cond_9

    const/16 v5, 0x2f

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    goto/16 :goto_4

    :cond_9
    const/16 v6, 0x30

    const/4 v12, 0x1

    aput-boolean v12, v8, v6

    .line 297
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-object v6, v6, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextSuffixUnchecked:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    const/16 v5, 0x31

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    goto/16 :goto_4

    .line 303
    :cond_a
    const v5, 0x7f0c0037

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const/16 v6, 0x33

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    .line 304
    const v6, 0x7f0c0038

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const/16 v7, 0x34

    const/4 v12, 0x1

    aput-boolean v12, v8, v7

    .line 309
    new-instance v7, Ljava/lang/Integer;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    invoke-direct {v7, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    const/16 v7, 0x35

    const/4 v12, 0x1

    aput-boolean v12, v8, v7

    .line 310
    new-instance v7, Ljava/lang/Integer;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    invoke-direct {v7, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-boolean v7, v7, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mShowCheckBox:Z

    if-eqz v7, :cond_c

    const/16 v7, 0x36

    const/4 v12, 0x1

    aput-boolean v12, v8, v7

    .line 313
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/16 v7, 0x37

    const/4 v12, 0x1

    aput-boolean v12, v8, v7

    .line 314
    const-wide/16 v12, 0x2

    cmp-long v7, v10, v12

    if-nez v7, :cond_b

    const/4 v7, 0x1

    const/16 v12, 0x38

    const/4 v13, 0x1

    aput-boolean v13, v8, v12

    :goto_6
    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v7, 0x3a

    const/4 v12, 0x1

    aput-boolean v12, v8, v7

    .line 319
    :goto_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v7, v7, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mMode:I

    const/4 v12, 0x1

    if-ne v7, v12, :cond_d

    const/16 v7, 0x3c

    const/4 v10, 0x1

    aput-boolean v10, v8, v7

    .line 320
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v6, 0x3d

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    .line 337
    :goto_8
    new-instance v6, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v9}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$2;-><init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;I)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    const v5, 0x7f0c0036

    const/16 v6, 0x43

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    .line 347
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const/16 v6, 0x44

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    .line 349
    new-instance v6, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v9}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$3;-><init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;I)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v5, 0x45

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    .line 361
    const v5, 0x7f0c003a

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x46

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    .line 362
    new-instance v6, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1, v9}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$4;-><init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;Landroid/database/Cursor;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v5, 0x47

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    .line 375
    const v5, 0x7f0c003d

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .local v4, "v":Landroid/view/View;
    const/16 v5, 0x48

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    .line 376
    new-instance v5, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v5, v0, v1, v9}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$5;-><init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;Landroid/database/Cursor;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v5, 0x49

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    .line 389
    const v5, 0x7f0c003b

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x4a

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    .line 390
    new-instance v5, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v5, v0, v1, v9}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$6;-><init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;Landroid/database/Cursor;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v5, 0x4b

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    .line 403
    const v5, 0x7f0c0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x4c

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    .line 404
    new-instance v5, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v5, v0, v1, v9}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$7;-><init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;Landroid/database/Cursor;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    const v5, 0x7f0c0039

    const/16 v6, 0x4d

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    .line 419
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const/16 v6, 0x4e

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    .line 421
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/16 v6, 0x4f

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    .line 422
    new-instance v6, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1, v9}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$8;-><init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;Landroid/database/Cursor;I)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    const/16 v5, 0x50

    const/4 v6, 0x1

    aput-boolean v6, v8, v5

    return-void

    .line 314
    .end local v4    # "v":Landroid/view/View;
    :cond_b
    const/4 v7, 0x0

    const/16 v12, 0x39

    const/4 v13, 0x1

    aput-boolean v13, v8, v12

    goto/16 :goto_6

    .line 316
    :cond_c
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/16 v7, 0x3b

    const/4 v12, 0x1

    aput-boolean v12, v8, v7

    goto/16 :goto_7

    .line 322
    :cond_d
    const-wide/16 v12, 0x3

    cmp-long v7, v10, v12

    if-nez v7, :cond_f

    const/16 v7, 0x3e

    const/4 v10, 0x1

    aput-boolean v10, v8, v7

    .line 323
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget-boolean v6, v6, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mShowCheckBox:Z

    if-nez v6, :cond_e

    const/16 v6, 0x3f

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    goto/16 :goto_8

    :cond_e
    const/16 v6, 0x40

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    .line 326
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/16 v6, 0x41

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    goto/16 :goto_8

    .line 329
    :cond_f
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v6, 0x42

    const/4 v7, 0x1

    aput-boolean v7, v8, v6

    goto/16 :goto_8

    .line 216
    :array_0
    .array-data 4
        0x7f0c003e
        0x7f0c003d
        0x7f0c003c
    .end array-data
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f0c003b

    const v7, 0x7f0c003a

    const v6, 0x7f0c0004

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 182
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, "view":Landroid/view/View;
    sget v2, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    .line 184
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v3, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriceVisibility:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    .line 185
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v3, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTagsVisibility:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x7

    aput-boolean v4, v1, v2

    .line 186
    const v2, 0x7f0c003c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v3, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mQuantityVisibility:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    .line 187
    const v2, 0x7f0c003d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v3, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mUnitsVisibility:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0x9

    aput-boolean v4, v1, v2

    .line 188
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    iget v3, v3, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriorityVisibility:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0xa

    aput-boolean v4, v1, v2

    .line 198
    :goto_0
    const/16 v2, 0x10

    aput-boolean v4, v1, v2

    return-object v0

    .line 192
    :cond_0
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0xb

    aput-boolean v4, v1, v2

    .line 193
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0xc

    aput-boolean v4, v1, v2

    .line 194
    const v2, 0x7f0c003c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0xd

    aput-boolean v4, v1, v2

    .line 195
    const v2, 0x7f0c003d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0xe

    aput-boolean v4, v1, v2

    .line 196
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0xf

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method public setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 588
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "this adapter implements setViewValue"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x99

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    throw v1
.end method

.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 24

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->$jacocoInit()[Z

    move-result-object v18

    .line 489
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 490
    .local v7, "id":I
    const v17, 0x7f0c003e

    move/from16 v0, v17

    if-ne v7, v0, :cond_1

    .line 491
    const/16 v17, 0xb

    const/16 v19, 0x55

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 492
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 493
    .local v6, "has_note":I
    const/16 v17, 0x1

    const/16 v19, 0x56

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 494
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "name":Ljava/lang/String;
    move-object/from16 v16, p1

    .line 495
    check-cast v16, Landroid/widget/TextView;

    .line 496
    .local v16, "tv":Landroid/widget/TextView;
    const/4 v9, 0x0

    .line 497
    .local v9, "name_etc":Landroid/text/SpannableString;
    if-nez v6, :cond_0

    const/16 v17, 0x57

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 499
    new-instance v9, Landroid/text/SpannableString;

    .end local v9    # "name_etc":Landroid/text/SpannableString;
    invoke-direct {v9, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v9    # "name_etc":Landroid/text/SpannableString;
    const/16 v17, 0x58

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 500
    new-instance v17, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableItemSpan;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableItemSpan;-><init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;)V

    const/16 v19, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/16 v17, 0x59

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 515
    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, 0x63

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 516
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 517
    const/16 v17, 0x1

    const/16 v19, 0x64

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 582
    .end local v6    # "has_note":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "name_etc":Landroid/text/SpannableString;
    .end local v16    # "tv":Landroid/widget/TextView;
    :goto_1
    return v17

    .line 504
    .restart local v6    # "has_note":I
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "name_etc":Landroid/text/SpannableString;
    .restart local v16    # "tv":Landroid/widget/TextView;
    :cond_0
    new-instance v9, Landroid/text/SpannableString;

    .end local v9    # "name_etc":Landroid/text/SpannableString;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "   "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v9    # "name_etc":Landroid/text/SpannableString;
    const/16 v17, 0x5a

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 505
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v10, v17, 0x1

    .line 506
    .local v10, "note_start":I
    add-int/lit8 v17, v10, 0x2

    const/16 v19, 0x5b

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/high16 v20, 0x7f020000

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    const/16 v20, 0x5c

    const/16 v21, 0x1

    aput-boolean v21, v18, v20

    .line 508
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    div-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x5d

    const/16 v22, 0x1

    aput-boolean v22, v18, v21

    .line 509
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextSize:F

    move/from16 v23, v0

    mul-float v20, v20, v23

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextSize:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v20, 0x5e

    const/16 v21, 0x1

    aput-boolean v21, v18, v20

    .line 510
    new-instance v20, Landroid/text/style/ImageSpan;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v19, 0x5f

    const/16 v21, 0x1

    aput-boolean v21, v18, v19

    .line 511
    const/16 v19, 0x11

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v9, v0, v10, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/16 v19, 0x60

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 512
    new-instance v19, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableNoteSpan;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableNoteSpan;-><init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;)V

    const/16 v20, 0x11

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v9, v0, v10, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/16 v17, 0x61

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 513
    new-instance v17, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableItemSpan;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter$ClickableItemSpan;-><init>(Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;Lorg/openintents/shopping/ui/widget/ShoppingItemsView$1;)V

    const/16 v19, 0x0

    const/16 v20, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v9, v0, v1, v10, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/16 v17, 0x62

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    goto/16 :goto_0

    .line 518
    .end local v6    # "has_note":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "name_etc":Landroid/text/SpannableString;
    .end local v10    # "note_start":I
    .end local v16    # "tv":Landroid/widget/TextView;
    :cond_1
    const v17, 0x7f0c003a

    move/from16 v0, v17

    if-ne v7, v0, :cond_4

    const/16 v17, 0x65

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->access$200(Lorg/openintents/shopping/ui/widget/ShoppingItemsView;Landroid/database/Cursor;)J

    move-result-wide v12

    .local v12, "price":J
    move-object/from16 v16, p1

    .line 520
    check-cast v16, Landroid/widget/TextView;

    .line 521
    .restart local v16    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriceVisibility:I

    move/from16 v17, v0

    if-eqz v17, :cond_2

    const/16 v17, 0x66

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 527
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->hideTextView(Landroid/widget/TextView;)V

    const/16 v17, 0x6d

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 529
    :goto_3
    const/16 v17, 0x1

    const/16 v19, 0x6e

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    goto/16 :goto_1

    .line 521
    :cond_2
    const-wide/16 v20, 0x0

    cmp-long v17, v12, v20

    if-nez v17, :cond_3

    const/16 v17, 0x67

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    goto :goto_2

    :cond_3
    const/16 v17, 0x68

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 522
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v17, 0x69

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriceFormatter:Ljava/text/NumberFormat;

    move-object/from16 v17, v0

    long-to-double v0, v12

    move-wide/from16 v20, v0

    const-wide v22, 0x3f847ae147ae147bL    # 0.01

    mul-double v20, v20, v22

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x6a

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColorPrice:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v19, 0x6b

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 525
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    const/16 v17, 0x6c

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    goto :goto_3

    .line 530
    .end local v12    # "price":J
    .end local v16    # "tv":Landroid/widget/TextView;
    :cond_4
    const v17, 0x7f0c0004

    move/from16 v0, v17

    if-ne v7, v0, :cond_7

    .line 531
    const/16 v17, 0x3

    const/16 v19, 0x6f

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 532
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 533
    .local v15, "tags":Ljava/lang/String;
    check-cast p1, Landroid/widget/TextView;

    const/16 v17, 0x70

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTagsVisibility:I

    move/from16 v17, v0

    if-eqz v17, :cond_5

    const/16 v17, 0x71

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 539
    :goto_4
    invoke-direct/range {p0 .. p1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->hideTextView(Landroid/widget/TextView;)V

    const/16 v17, 0x77

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 541
    :goto_5
    const/16 v17, 0x1

    const/16 v19, 0x78

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    goto/16 :goto_1

    .line 534
    :cond_5
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v17, 0x72

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    goto :goto_4

    :cond_6
    const/16 v17, 0x73

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 535
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v17, 0x74

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColorPrice:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v17, 0x75

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 537
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, 0x76

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    goto :goto_5

    .line 542
    .end local v15    # "tags":Ljava/lang/String;
    :cond_7
    const v17, 0x7f0c003c

    move/from16 v0, v17

    if-ne v7, v0, :cond_a

    const/16 v17, 0x79

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 543
    const/16 v17, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .local v14, "quantity":Ljava/lang/String;
    move-object/from16 v16, p1

    .line 544
    check-cast v16, Landroid/widget/TextView;

    .line 545
    .restart local v16    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mQuantityVisibility:I

    move/from16 v17, v0

    if-eqz v17, :cond_8

    const/16 v17, 0x7a

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 551
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->hideTextView(Landroid/widget/TextView;)V

    const/16 v17, 0x80

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 553
    :goto_7
    const/16 v17, 0x1

    const/16 v19, 0x81

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    goto/16 :goto_1

    .line 545
    :cond_8
    const/16 v17, 0x7b

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 546
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v17, 0x7c

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    goto :goto_6

    :cond_9
    const/16 v17, 0x7d

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 547
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v17, 0x7e

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 549
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, 0x7f

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    goto :goto_7

    .line 554
    .end local v14    # "quantity":Ljava/lang/String;
    .end local v16    # "tv":Landroid/widget/TextView;
    :cond_a
    const v17, 0x7f0c003d

    move/from16 v0, v17

    if-ne v7, v0, :cond_f

    const/16 v17, 0x82

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 555
    const/16 v17, 0xc

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x83

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 556
    const/16 v19, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "quantity":Ljava/lang/String;
    move-object/from16 v16, p1

    .line 557
    check-cast v16, Landroid/widget/TextView;

    .line 559
    .restart local v16    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mUnitsVisibility:I

    move/from16 v19, v0

    if-eqz v19, :cond_b

    const/16 v17, 0x84

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 566
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->hideTextView(Landroid/widget/TextView;)V

    const/16 v17, 0x8c

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 568
    :goto_9
    const/16 v17, 0x1

    const/16 v19, 0x8d

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    goto/16 :goto_1

    .line 559
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mQuantityVisibility:I

    move/from16 v19, v0

    if-eqz v19, :cond_c

    const/16 v17, 0x85

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    goto :goto_8

    :cond_c
    const/16 v19, 0x86

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 561
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v17, 0x87

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    goto :goto_8

    :cond_d
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_e

    const/16 v17, 0x88

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    goto :goto_8

    :cond_e
    const/16 v19, 0x89

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 562
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v19, 0x8a

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 564
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, 0x8b

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    goto :goto_9

    .line 569
    .end local v14    # "quantity":Ljava/lang/String;
    .end local v16    # "tv":Landroid/widget/TextView;
    :cond_f
    const v17, 0x7f0c003b

    move/from16 v0, v17

    if-ne v7, v0, :cond_12

    const/16 v17, 0x8e

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 570
    const/16 v17, 0xa

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .local v11, "priority":Ljava/lang/String;
    move-object/from16 v16, p1

    .line 571
    check-cast v16, Landroid/widget/TextView;

    .line 572
    .restart local v16    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mPriorityVisibility:I

    move/from16 v17, v0

    if-eqz v17, :cond_10

    const/16 v17, 0x8f

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 578
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->hideTextView(Landroid/widget/TextView;)V

    const/16 v17, 0x96

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 580
    :goto_b
    const/16 v17, 0x1

    const/16 v19, 0x97

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    goto/16 :goto_1

    .line 572
    :cond_10
    const/16 v17, 0x90

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 573
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_11

    const/16 v17, 0x91

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    goto :goto_a

    :cond_11
    const/16 v17, 0x92

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 574
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v17, 0x93

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView$mSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mTextColorPriority:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v17, 0x94

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    .line 576
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "-"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "- "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, 0x95

    const/16 v19, 0x1

    aput-boolean v19, v18, v17

    goto :goto_b

    .line 582
    .end local v11    # "priority":Ljava/lang/String;
    .end local v16    # "tv":Landroid/widget/TextView;
    :cond_12
    const/16 v17, 0x0

    const/16 v19, 0x98

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    goto/16 :goto_1
.end method
