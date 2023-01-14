.class public Lorg/openintents/shopping/ui/dialog/EditItemDialog;
.super Landroid/app/AlertDialog;
.source "EditItemDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/shopping/ui/dialog/EditItemDialog$OnItemChangedListener;,
        Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field mContext:Landroid/content/Context;

.field mEditText:Landroid/widget/EditText;

.field mItemId:J

.field mItemUri:Landroid/net/Uri;

.field mListItemUri:Landroid/net/Uri;

.field mNote:Landroid/widget/ImageButton;

.field mNoteText:Ljava/lang/String;

.field mOnItemChangedListener:Lorg/openintents/shopping/ui/dialog/EditItemDialog$OnItemChangedListener;

.field mPrice:Landroid/widget/EditText;

.field mPriceLabel:Landroid/widget/TextView;

.field mPriceStore:Landroid/widget/Button;

.field mPriority:Landroid/widget/EditText;

.field private final mProjection:[Ljava/lang/String;

.field mQuantity:Landroid/widget/EditText;

.field private final mRelationProjection:[Ljava/lang/String;

.field private mRelationUri:Landroid/net/Uri;

.field mTagList:[Ljava/lang/String;

.field mTags:Landroid/widget/MultiAutoCompleteTextView;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field mUnits:Landroid/widget/AutoCompleteTextView;

.field mUnitsAdapter:Landroid/widget/SimpleCursorAdapter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x32c8d21ee2b2141aL    # 4.713748676916202E-64

    const-string v2, "org/openintents/shopping/ui/dialog/EditItemDialog"

    const/16 v3, 0x8e

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 10

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->$jacocoInit()[Z

    move-result-object v6

    .line 75
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mItemId:J

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mNoteText:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 257
    new-instance v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$6;

    invoke-direct {v0, p0}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$6;-><init>(Lorg/openintents/shopping/ui/dialog/EditItemDialog;)V

    iput-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 296
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tags"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "price"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "note"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "units"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mProjection:[Ljava/lang/String;

    .line 300
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "quantity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "priority"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mRelationProjection:[Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v6, v1

    .line 79
    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const/4 v0, 0x3

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 80
    invoke-virtual {p0, v7}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->setView(Landroid/view/View;)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 82
    const v0, 0x7f0c0024

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x5

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 83
    const v0, 0x7f0c002e

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mTags:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v0, 0x6

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 84
    const v0, 0x7f0c002b

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPrice:Landroid/widget/EditText;

    const/4 v0, 0x7

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 85
    const v0, 0x7f0c0027

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mQuantity:Landroid/widget/EditText;

    const/16 v0, 0x8

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 86
    const v0, 0x7f0c0031

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPriority:Landroid/widget/EditText;

    const/16 v0, 0x9

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 87
    const v0, 0x7f0c0029

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mUnits:Landroid/widget/AutoCompleteTextView;

    const/16 v0, 0xa

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 89
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    const v2, 0x109000a

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "name"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v8, 0x0

    const v9, 0x1020014

    aput v9, v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mUnitsAdapter:Landroid/widget/SimpleCursorAdapter;

    const/16 v0, 0xb

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 95
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mUnitsAdapter:Landroid/widget/SimpleCursorAdapter;

    new-instance v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$1;

    invoke-direct {v1, p0}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$1;-><init>(Lorg/openintents/shopping/ui/dialog/EditItemDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setCursorToStringConverter(Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;)V

    const/16 v0, 0xc

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 100
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mUnitsAdapter:Landroid/widget/SimpleCursorAdapter;

    new-instance v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$2;

    invoke-direct {v1, p0}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$2;-><init>(Lorg/openintents/shopping/ui/dialog/EditItemDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    const/16 v0, 0xd

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 126
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mUnits:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mUnitsAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0xe

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 127
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mUnits:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    const/16 v0, 0xf

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 129
    const v0, 0x7f0c002c

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPriceStore:Landroid/widget/Button;

    const/16 v0, 0x10

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 131
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPriceStore:Landroid/widget/Button;

    new-instance v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$3;

    invoke-direct {v1, p0}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$3;-><init>(Lorg/openintents/shopping/ui/dialog/EditItemDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x11

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 140
    const v0, 0x7f0c0033

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mNote:Landroid/widget/ImageButton;

    const/16 v0, 0x12

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 141
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mNote:Landroid/widget/ImageButton;

    new-instance v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;

    invoke-direct {v1, p0}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;-><init>(Lorg/openintents/shopping/ui/dialog/EditItemDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x13

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 185
    const v0, 0x7f0c002a

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPriceLabel:Landroid/widget/TextView;

    .line 187
    const/16 v0, 0x14

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 188
    invoke-static {p1}, Lorg/openintents/shopping/ui/PreferenceActivity;->getCapitalizationKeyListenerFromPrefs(Landroid/content/Context;)Landroid/text/method/KeyListener;

    move-result-object v0

    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-boolean v2, v6, v1

    .line 189
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    const/16 v1, 0x16

    const/4 v2, 0x1

    aput-boolean v2, v6, v1

    .line 190
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mTags:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    const/16 v0, 0x17

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 192
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mTags:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setImeOptions(I)V

    const/16 v0, 0x18

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 193
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mTags:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v1, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

    invoke-direct {v1}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    const/16 v0, 0x19

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 194
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mTags:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setThreshold(I)V

    const/16 v0, 0x1a

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 195
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mTags:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$5;

    invoke-direct {v1, p0}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$5;-><init>(Lorg/openintents/shopping/ui/dialog/EditItemDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x1b

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 204
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->setTitle(I)V

    const/16 v0, 0x1c

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 206
    invoke-virtual {p0, p2, p4}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->setItemUri(Landroid/net/Uri;Landroid/net/Uri;)V

    const/16 v0, 0x1d

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 207
    invoke-virtual {p0, p3}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->setRelationUri(Landroid/net/Uri;)V

    const/16 v0, 0x1e

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 209
    const v0, 0x7f08005f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/16 v0, 0x1f

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 210
    const v0, 0x7f080008

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/16 v0, 0x20

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 226
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mQuantity:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v0, 0x21

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 227
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPrice:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 228
    const/16 v0, 0x22

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    return-void
.end method

.method static synthetic access$000(Lorg/openintents/shopping/ui/dialog/EditItemDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    invoke-direct {p0}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->toggleTaglistPopup()V

    const/16 v1, 0x8d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private focus_field(Landroid/widget/EditText;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 409
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    const/16 v3, 0x7c

    aput-boolean v4, v1, v3

    .line 410
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/16 v2, 0x7d

    aput-boolean v4, v1, v2

    .line 411
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x7e

    aput-boolean v4, v1, v2

    .line 413
    :goto_0
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x81

    aput-boolean v4, v1, v2

    .line 416
    :goto_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v5}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 417
    const/16 v0, 0x84

    aput-boolean v4, v1, v0

    return-void

    .line 411
    :cond_0
    const/16 v2, 0x7f

    aput-boolean v4, v1, v2

    .line 412
    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    const/16 v2, 0x80

    aput-boolean v4, v1, v2

    goto :goto_0

    .line 413
    :cond_1
    const/16 v2, 0x82

    aput-boolean v4, v1, v2

    .line 415
    invoke-virtual {v0, p1, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const/16 v2, 0x83

    aput-boolean v4, v1, v2

    goto :goto_1
.end method

.method private toggleTaglistPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 250
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mTags:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x29

    aput-boolean v2, v0, v1

    .line 251
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mTags:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->dismissDropDown()V

    const/16 v1, 0x2a

    aput-boolean v2, v0, v1

    .line 255
    :goto_0
    const/16 v1, 0x2c

    aput-boolean v2, v0, v1

    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mTags:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->showDropDown()V

    const/16 v1, 0x2b

    aput-boolean v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method editItem()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->$jacocoInit()[Z

    move-result-object v2

    .line 365
    iget-object v3, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5c

    aput-boolean v11, v2, v4

    .line 366
    iget-object v4, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mTags:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5d

    aput-boolean v11, v2, v5

    .line 367
    iget-object v5, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPrice:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5e

    aput-boolean v11, v2, v6

    .line 368
    iget-object v6, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mQuantity:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x5f

    aput-boolean v11, v2, v7

    .line 369
    iget-object v7, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPriority:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x60

    aput-boolean v11, v2, v8

    .line 370
    iget-object v8, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mUnits:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x61

    aput-boolean v11, v2, v9

    .line 372
    invoke-static {v5}, Lorg/openintents/shopping/library/util/PriceConverter;->getCentPriceFromString(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    const/16 v10, 0x62

    aput-boolean v11, v2, v10

    .line 374
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .local v1, "text":Ljava/lang/String;
    const/16 v3, 0x63

    aput-boolean v11, v2, v3

    .line 377
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .local v0, "tags":Ljava/lang/String;
    const/16 v3, 0x64

    aput-boolean v11, v2, v3

    .line 378
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x65

    aput-boolean v11, v2, v3

    .line 381
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x68

    aput-boolean v11, v2, v3

    .line 383
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/16 v4, 0x69

    aput-boolean v11, v2, v4

    .line 384
    const-string v4, "name"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x6a

    aput-boolean v11, v2, v4

    .line 385
    const-string v4, "tags"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    if-nez v5, :cond_1

    const/16 v4, 0x6b

    aput-boolean v11, v2, v4

    .line 389
    :goto_1
    if-nez v8, :cond_2

    const/16 v4, 0x6e

    aput-boolean v11, v2, v4

    .line 393
    :goto_2
    iget-object v4, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v4, 0x72

    aput-boolean v11, v2, v4

    .line 394
    iget-object v4, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/16 v4, 0x73

    aput-boolean v11, v2, v4

    .line 396
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    const/16 v4, 0x74

    aput-boolean v11, v2, v4

    .line 397
    const-string v4, "quantity"

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x75

    aput-boolean v11, v2, v4

    .line 398
    const-string v4, "priority"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x76

    aput-boolean v11, v2, v4

    .line 400
    iget-object v4, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mRelationUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v3, 0x77

    aput-boolean v11, v2, v3

    .line 401
    iget-object v3, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mRelationUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 403
    iget-object v3, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mOnItemChangedListener:Lorg/openintents/shopping/ui/dialog/EditItemDialog$OnItemChangedListener;

    if-nez v3, :cond_3

    const/16 v3, 0x78

    aput-boolean v11, v2, v3

    .line 406
    :goto_3
    const/16 v3, 0x7b

    aput-boolean v11, v2, v3

    return-void

    .line 378
    :cond_0
    const/16 v3, 0x66

    aput-boolean v11, v2, v3

    .line 379
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x67

    aput-boolean v11, v2, v3

    goto/16 :goto_0

    .line 386
    :cond_1
    const/16 v4, 0x6c

    aput-boolean v11, v2, v4

    .line 387
    const-string v4, "price"

    invoke-virtual {v3, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0x6d

    aput-boolean v11, v2, v4

    goto/16 :goto_1

    .line 389
    :cond_2
    const/16 v4, 0x6f

    aput-boolean v11, v2, v4

    .line 390
    iget-object v4, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    invoke-static {v4, v8}, Lorg/openintents/shopping/library/util/ShoppingUtils;->getUnits(Landroid/content/Context;Ljava/lang/String;)J

    const/16 v4, 0x70

    aput-boolean v11, v2, v4

    .line 391
    const-string v4, "units"

    invoke-virtual {v3, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x71

    aput-boolean v11, v2, v4

    goto/16 :goto_2

    .line 403
    :cond_3
    const/16 v3, 0x79

    aput-boolean v11, v2, v3

    .line 404
    iget-object v3, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mOnItemChangedListener:Lorg/openintents/shopping/ui/dialog/EditItemDialog$OnItemChangedListener;

    invoke-interface {v3}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$OnItemChangedListener;->onItemChanged()V

    const/16 v3, 0x7a

    aput-boolean v11, v2, v3

    goto :goto_3
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 358
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const/16 v1, 0x58

    aput-boolean v2, v0, v1

    .line 362
    :goto_0
    const/16 v1, 0x5b

    aput-boolean v2, v0, v1

    return-void

    .line 358
    :cond_0
    const/16 v1, 0x59

    aput-boolean v2, v0, v1

    .line 359
    invoke-virtual {p0}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->editItem()V

    const/16 v1, 0x5a

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public setFocusField(Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 421
    sget-object v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$7;->$SwitchMap$org$openintents$shopping$ui$dialog$EditItemDialog$FieldType:[I

    invoke-virtual {p1}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x85

    aput-boolean v3, v0, v1

    .line 443
    :goto_0
    const/16 v1, 0x8c

    aput-boolean v3, v0, v1

    return-void

    .line 424
    :pswitch_0
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mQuantity:Landroid/widget/EditText;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->focus_field(Landroid/widget/EditText;Ljava/lang/Boolean;)V

    .line 425
    const/16 v1, 0x86

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 427
    :pswitch_1
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPriority:Landroid/widget/EditText;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->focus_field(Landroid/widget/EditText;Ljava/lang/Boolean;)V

    .line 428
    const/16 v1, 0x87

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 430
    :pswitch_2
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPrice:Landroid/widget/EditText;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->focus_field(Landroid/widget/EditText;Ljava/lang/Boolean;)V

    .line 431
    const/16 v1, 0x88

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 433
    :pswitch_3
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mUnits:Landroid/widget/AutoCompleteTextView;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->focus_field(Landroid/widget/EditText;Ljava/lang/Boolean;)V

    .line 434
    const/16 v1, 0x89

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 436
    :pswitch_4
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mTags:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->focus_field(Landroid/widget/EditText;Ljava/lang/Boolean;)V

    .line 437
    const/16 v1, 0x8a

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 439
    :pswitch_5
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mEditText:Landroid/widget/EditText;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->focus_field(Landroid/widget/EditText;Ljava/lang/Boolean;)V

    const/16 v1, 0x8b

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setItemUri(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->$jacocoInit()[Z

    move-result-object v8

    .line 307
    iput-object p1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mItemUri:Landroid/net/Uri;

    .line 308
    iput-object p2, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mListItemUri:Landroid/net/Uri;

    const/16 v0, 0x37

    aput-boolean v9, v8, v0

    .line 310
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mItemUri:Landroid/net/Uri;

    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x38

    aput-boolean v9, v8, v1

    .line 312
    if-nez v0, :cond_0

    const/16 v1, 0x39

    aput-boolean v9, v8, v1

    .line 341
    .local v6, "trackPerStorePrices":Z
    .local v7, "units":Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 342
    const/16 v0, 0x4d

    aput-boolean v9, v8, v0

    return-void

    .line 312
    .end local v6    # "trackPerStorePrices":Z
    .end local v7    # "units":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x3a

    aput-boolean v9, v8, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x3b

    aput-boolean v9, v8, v1

    .line 313
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    aput-boolean v9, v8, v2

    .line 314
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3d

    aput-boolean v9, v8, v3

    .line 315
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/16 v3, 0x3e

    aput-boolean v9, v8, v3

    .line 316
    invoke-static {v4, v5}, Lorg/openintents/shopping/library/util/PriceConverter;->getStringFromCentPrice(J)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3f

    aput-boolean v9, v8, v4

    .line 317
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mNoteText:Ljava/lang/String;

    const/16 v4, 0x40

    aput-boolean v9, v8, v4

    .line 318
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mItemId:J

    const/16 v4, 0x41

    aput-boolean v9, v8, v4

    .line 319
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v4, 0x42

    aput-boolean v9, v8, v4

    .line 321
    iget-object v4, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x43

    aput-boolean v9, v8, v1

    .line 322
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mTags:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x44

    aput-boolean v9, v8, v1

    .line 323
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPrice:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 325
    if-eqz v7, :cond_2

    const/16 v1, 0x45

    aput-boolean v9, v8, v1

    .line 328
    .restart local v7    # "units":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mUnits:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v7}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    const/16 v2, 0x47

    aput-boolean v9, v8, v2

    .line 331
    invoke-static {v1}, Lorg/openintents/shopping/ui/PreferenceActivity;->getUsingPerStorePricesFromPrefs(Landroid/content/Context;)Z

    move-result v6

    .line 333
    .restart local v6    # "trackPerStorePrices":Z
    if-nez v6, :cond_3

    const/16 v1, 0x48

    aput-boolean v9, v8, v1

    .line 334
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPrice:Landroid/widget/EditText;

    invoke-virtual {v1, v10}, Landroid/widget/EditText;->setVisibility(I)V

    const/16 v1, 0x49

    aput-boolean v9, v8, v1

    .line 335
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPriceStore:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v1, 0x4a

    aput-boolean v9, v8, v1

    goto/16 :goto_0

    .line 326
    .end local v6    # "trackPerStorePrices":Z
    .end local v7    # "units":Ljava/lang/String;
    :cond_2
    const-string v7, ""

    .restart local v7    # "units":Ljava/lang/String;
    const/16 v1, 0x46

    aput-boolean v9, v8, v1

    goto :goto_1

    .line 337
    .restart local v6    # "trackPerStorePrices":Z
    :cond_3
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPrice:Landroid/widget/EditText;

    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setVisibility(I)V

    const/16 v1, 0x4b

    aput-boolean v9, v8, v1

    .line 338
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPriceStore:Landroid/widget/Button;

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v1, 0x4c

    aput-boolean v9, v8, v1

    goto/16 :goto_0
.end method

.method public setOnItemChangedListener(Lorg/openintents/shopping/ui/dialog/EditItemDialog$OnItemChangedListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 246
    iput-object p1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mOnItemChangedListener:Lorg/openintents/shopping/ui/dialog/EditItemDialog$OnItemChangedListener;

    .line 247
    const/16 v1, 0x28

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setRelationUri(Landroid/net/Uri;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->$jacocoInit()[Z

    move-result-object v6

    .line 345
    iput-object p1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mRelationUri:Landroid/net/Uri;

    const/16 v0, 0x4e

    aput-boolean v7, v6, v0

    .line 346
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mRelationUri:Landroid/net/Uri;

    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mRelationProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x4f

    aput-boolean v7, v6, v1

    .line 348
    if-nez v0, :cond_0

    const/16 v1, 0x50

    aput-boolean v7, v6, v1

    .line 354
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 355
    const/16 v0, 0x57

    aput-boolean v7, v6, v0

    return-void

    .line 348
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x51

    aput-boolean v7, v6, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x52

    aput-boolean v7, v6, v1

    .line 349
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x53

    aput-boolean v7, v6, v2

    .line 350
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mQuantity:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x54

    aput-boolean v7, v6, v1

    .line 351
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x55

    aput-boolean v7, v6, v2

    .line 352
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPriority:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x56

    aput-boolean v7, v6, v1

    goto :goto_0
.end method

.method public setTagList([Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 231
    iput-object p1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mTagList:[Ljava/lang/String;

    .line 233
    if-nez p1, :cond_0

    const/16 v1, 0x23

    aput-boolean v5, v0, v1

    .line 238
    :goto_0
    const/16 v1, 0x27

    aput-boolean v5, v0, v1

    return-void

    .line 233
    :cond_0
    const/16 v1, 0x24

    aput-boolean v5, v0, v1

    .line 234
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    const v3, 0x109000a

    iget-object v4, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mTagList:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/16 v2, 0x25

    aput-boolean v5, v0, v2

    .line 236
    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mTags:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v1, 0x26

    aput-boolean v5, v0, v1

    goto :goto_0
.end method

.method updateQuantityPrice()V
    .locals 14

    .prologue
    const v13, 0x7f0800be

    const/4 v12, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->$jacocoInit()[Z

    move-result-object v4

    .line 278
    :try_start_0
    iget-object v5, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPrice:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const/16 v5, 0x2d

    const/4 v8, 0x1

    aput-boolean v8, v4, v5

    .line 279
    iget-object v5, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mQuantity:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x2e

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 280
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const/16 v8, 0x2f

    const/4 v9, 0x1

    aput-boolean v9, v4, v8

    .line 281
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 282
    .local v2, "quantity":D
    mul-double v0, v2, v6

    .local v0, "price":D
    const/16 v5, 0x30

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 283
    sget-object v5, Lorg/openintents/shopping/library/util/PriceConverter;->mPriceFormatter:Ljava/text/NumberFormat;

    invoke-virtual {v5, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x31

    const/4 v7, 0x1

    aput-boolean v7, v4, v6

    .line 284
    iget-object v6, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPriceLabel:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    const v9, 0x7f0800be

    const/16 v10, 0x32

    const/4 v11, 0x1

    aput-boolean v11, v4, v10

    .line 285
    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    const/16 v5, 0x33

    aput-boolean v12, v4, v5

    .line 294
    :goto_0
    return-void

    .line 290
    .end local v0    # "price":D
    .end local v2    # "quantity":D
    :cond_0
    const/16 v5, 0x34

    aput-boolean v12, v4, v5

    .line 293
    .restart local v0    # "price":D
    .restart local v2    # "quantity":D
    :goto_1
    iget-object v5, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mPriceLabel:Landroid/widget/TextView;

    iget-object v6, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    const/16 v5, 0x36

    aput-boolean v12, v4, v5

    goto :goto_0

    .line 288
    :catch_0
    move-exception v5

    const/16 v5, 0x35

    aput-boolean v12, v4, v5

    goto :goto_1
.end method
