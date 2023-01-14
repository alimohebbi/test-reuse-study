.class public final Lorg/openintents/shopping/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final activity_add_location_alert:I = 0x7f030000

.field public static final activity_edit_automation:I = 0x7f030001

.field public static final activity_itemstores:I = 0x7f030002

.field public static final activity_list_share_settings:I = 0x7f030003

.field public static final activity_pick_items:I = 0x7f030004

.field public static final activity_shopping:I = 0x7f030005

.field public static final dialog_edit_item:I = 0x7f030006

.field public static final dialog_rename_list:I = 0x7f030007

.field public static final dialog_theme_settings:I = 0x7f030008

.field public static final fragment_shopping_list_filter:I = 0x7f030009

.field public static final list_item_shopping_item:I = 0x7f03000a

.field public static final list_item_shopping_item_small:I = 0x7f03000b

.field public static final list_item_shopping_list:I = 0x7f03000c

.field public static final list_item_store:I = 0x7f03000d

.field public static final list_menu_item_checkbox:I = 0x7f03000e

.field public static final list_menu_item_icon:I = 0x7f03000f

.field public static final list_menu_item_layout:I = 0x7f030010

.field public static final list_menu_item_radio:I = 0x7f030011

.field public static final menu_item:I = 0x7f030012

.field public static final oi_distribution_buttonbar:I = 0x7f030013

.field public static final oi_distribution_eula:I = 0x7f030014

.field public static final oi_distribution_infoactivity:I = 0x7f030015

.field public static final popup_menu_item_layout:I = 0x7f030016

.field public static final widget_check_items:I = 0x7f030017


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/R$layout;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4f746c9e15908fd0L    # -7.620752127743215E-75

    const-string v2, "org/openintents/shopping/R$layout"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/R$layout;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/R$layout;->$jacocoInit()[Z

    move-result-object v0

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
