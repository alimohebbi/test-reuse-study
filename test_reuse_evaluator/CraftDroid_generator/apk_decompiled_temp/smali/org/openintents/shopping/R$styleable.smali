.class public final Lorg/openintents/shopping/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ShoppingList:[I

.field public static final ShoppingList_background:I = 0x0

.field public static final ShoppingList_backgroundPadding:I = 0x1

.field public static final ShoppingList_backgroundPaddingBottom:I = 0x5

.field public static final ShoppingList_backgroundPaddingLeft:I = 0x2

.field public static final ShoppingList_backgroundPaddingRight:I = 0x4

.field public static final ShoppingList_backgroundPaddingTop:I = 0x3

.field public static final ShoppingList_divider:I = 0x6

.field public static final ShoppingList_lineColor:I = 0x16

.field public static final ShoppingList_lineMode:I = 0x15

.field public static final ShoppingList_showCheckBox:I = 0x14

.field public static final ShoppingList_textColor:I = 0xd

.field public static final ShoppingList_textColorChecked:I = 0x10

.field public static final ShoppingList_textColorPrice:I = 0xe

.field public static final ShoppingList_textColorPriority:I = 0xf

.field public static final ShoppingList_textSizeLarge:I = 0xc

.field public static final ShoppingList_textSizeMedium:I = 0xb

.field public static final ShoppingList_textSizeSmall:I = 0xa

.field public static final ShoppingList_textSizeTiny:I = 0x9

.field public static final ShoppingList_textStrikethroughChecked:I = 0x11

.field public static final ShoppingList_textSuffixChecked:I = 0x13

.field public static final ShoppingList_textSuffixUnchecked:I = 0x12

.field public static final ShoppingList_textTypeface:I = 0x7

.field public static final ShoppingList_textUpperCaseFont:I = 0x8


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/R$styleable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7954a7817f423f16L    # 2.8604010730296163E276

    const-string v2, "org/openintents/shopping/R$styleable"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/R$styleable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 845
    const/16 v1, 0x17

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/openintents/shopping/R$styleable;->ShoppingList:[I

    aput-boolean v2, v0, v2

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
        0x7f010015
        0x7f010016
        0x7f010017
        0x7f010018
        0x7f010019
        0x7f01001a
        0x7f01001b
        0x7f01001c
        0x7f01001d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
