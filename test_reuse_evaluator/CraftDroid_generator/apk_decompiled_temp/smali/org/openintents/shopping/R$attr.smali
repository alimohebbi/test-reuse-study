.class public final Lorg/openintents/shopping/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final background:I = 0x7f010007

.field public static final backgroundPadding:I = 0x7f010008

.field public static final backgroundPaddingBottom:I = 0x7f01000c

.field public static final backgroundPaddingLeft:I = 0x7f010009

.field public static final backgroundPaddingRight:I = 0x7f01000b

.field public static final backgroundPaddingTop:I = 0x7f01000a

.field public static final divider:I = 0x7f01000d

.field public static final dropdownListPreferredItemHeight:I = 0x7f010000

.field public static final lineColor:I = 0x7f01001d

.field public static final lineMode:I = 0x7f01001c

.field public static final listPreferredItemHeightSmall:I = 0x7f010001

.field public static final listPreferredItemPaddingLeft:I = 0x7f010002

.field public static final listPreferredItemPaddingRight:I = 0x7f010003

.field public static final popupMenuStyle:I = 0x7f010004

.field public static final showCheckBox:I = 0x7f01001b

.field public static final textAppearanceListItemSmall:I = 0x7f010005

.field public static final textAppearanceSmall:I = 0x7f010006

.field public static final textColor:I = 0x7f010014

.field public static final textColorChecked:I = 0x7f010017

.field public static final textColorPrice:I = 0x7f010015

.field public static final textColorPriority:I = 0x7f010016

.field public static final textSizeLarge:I = 0x7f010013

.field public static final textSizeMedium:I = 0x7f010012

.field public static final textSizeSmall:I = 0x7f010011

.field public static final textSizeTiny:I = 0x7f010010

.field public static final textStrikethroughChecked:I = 0x7f010018

.field public static final textSuffixChecked:I = 0x7f01001a

.field public static final textSuffixUnchecked:I = 0x7f010019

.field public static final textTypeface:I = 0x7f01000e

.field public static final textUpperCaseFont:I = 0x7f01000f


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/R$attr;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x758a3b505d6b5440L    # 1.5754791345666486E258

    const-string v2, "org/openintents/shopping/R$attr"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/R$attr;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/R$attr;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
