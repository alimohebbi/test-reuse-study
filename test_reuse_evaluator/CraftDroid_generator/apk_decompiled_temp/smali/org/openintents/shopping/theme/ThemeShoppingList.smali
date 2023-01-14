.class public Lorg/openintents/shopping/theme/ThemeShoppingList;
.super Ljava/lang/Object;
.source "ThemeShoppingList.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final SHOPPING_LIST_THEME:Ljava/lang/String; = "org.openintents.shoppinglist"

.field public static final background:Ljava/lang/String; = "background"

.field public static final backgroundPadding:Ljava/lang/String; = "backgroundPadding"

.field public static final backgroundPaddingBottom:Ljava/lang/String; = "backgroundPaddingBottom"

.field public static final backgroundPaddingLeft:Ljava/lang/String; = "backgroundPaddingLeft"

.field public static final backgroundPaddingRight:Ljava/lang/String; = "backgroundPaddingRight"

.field public static final backgroundPaddingTop:Ljava/lang/String; = "backgroundPaddingTop"

.field public static final divider:Ljava/lang/String; = "divider"

.field public static final lineColor:Ljava/lang/String; = "lineColor"

.field public static final lineMode:Ljava/lang/String; = "lineMode"

.field public static final showCheckBox:Ljava/lang/String; = "showCheckBox"

.field public static final textColor:Ljava/lang/String; = "textColor"

.field public static final textColorChecked:Ljava/lang/String; = "textColorChecked"

.field public static final textColorPrice:Ljava/lang/String; = "textColorPrice"

.field public static final textColorPriority:Ljava/lang/String; = "textColorPriority"

.field public static final textSizeLarge:Ljava/lang/String; = "textSizeLarge"

.field public static final textSizeMedium:Ljava/lang/String; = "textSizeMedium"

.field public static final textSizeSmall:Ljava/lang/String; = "textSizeSmall"

.field public static final textSizeTiny:Ljava/lang/String; = "textSizeTiny"

.field public static final textStrikethroughChecked:Ljava/lang/String; = "textStrikethroughChecked"

.field public static final textSuffixChecked:Ljava/lang/String; = "textSuffixChecked"

.field public static final textSuffixUnchecked:Ljava/lang/String; = "textSuffixUnchecked"

.field public static final textTypeface:Ljava/lang/String; = "textTypeface"

.field public static final textUpperCaseFont:Ljava/lang/String; = "textUpperCaseFont"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/theme/ThemeShoppingList;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x73161472447af958L    # 2.4121980091139572E246

    const-string v2, "org/openintents/shopping/theme/ThemeShoppingList"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/theme/ThemeShoppingList;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/theme/ThemeShoppingList;->$jacocoInit()[Z

    move-result-object v0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
