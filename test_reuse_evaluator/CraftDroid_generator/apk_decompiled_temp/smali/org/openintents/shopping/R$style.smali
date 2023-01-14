.class public final Lorg/openintents/shopping/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final Theme:I = 0x7f0b0000

.field public static final Theme_Notepad_Android:I = 0x7f0b0001

.field public static final Theme_Notepad_Classic:I = 0x7f0b0002

.field public static final Theme_ShoppingList:I = 0x7f0b0003

.field public static final Theme_ShoppingList_Android:I = 0x7f0b0004

.field public static final Theme_ShoppingList_Classic:I = 0x7f0b0005


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/R$style;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2e25d1a745fc7314L    # 2.193639573005335E-86

    const-string v2, "org/openintents/shopping/R$style"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/R$style;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/R$style;->$jacocoInit()[Z

    move-result-object v0

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
