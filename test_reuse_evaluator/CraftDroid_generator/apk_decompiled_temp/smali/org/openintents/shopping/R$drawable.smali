.class public final Lorg/openintents/shopping/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final gold:I = 0x7f020008

.field public static final ic_launcher_notepad_small:I = 0x7f020000

.field public static final ic_launcher_shoppinglist:I = 0x7f020001

.field public static final ic_menu_add:I = 0x7f020002

.field public static final ic_menu_add_list:I = 0x7f020003

.field public static final ic_menu_cleanup:I = 0x7f020004

.field public static final shoppinglist01d:I = 0x7f020005

.field public static final theme_android:I = 0x7f020006

.field public static final widget_check_items:I = 0x7f020007

.field public static final yellow_green:I = 0x7f020009


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/R$drawable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x45d0611d00a65970L    # 2.0276651689035514E28

    const-string v2, "org/openintents/shopping/R$drawable"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/R$drawable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/R$drawable;->$jacocoInit()[Z

    move-result-object v0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
