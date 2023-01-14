.class public final Lorg/openintents/shopping/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final about_artists:I = 0x7f070007

.field public static final about_authors:I = 0x7f070008

.field public static final about_documenters:I = 0x7f070009

.field public static final about_translators:I = 0x7f07000a

.field public static final automation_actions:I = 0x7f070000

.field public static final preference_capitalization_entries:I = 0x7f070001

.field public static final preference_capitalization_entryvalues:I = 0x7f07000b

.field public static final preference_fontsize_entries:I = 0x7f070002

.field public static final preference_fontsize_entryvalues:I = 0x7f07000c

.field public static final preference_orientation_entries:I = 0x7f070003

.field public static final preference_orientation_entryvalues:I = 0x7f07000d

.field public static final preference_prioritytotal_entries:I = 0x7f070004

.field public static final preference_prioritytotal_entryvalues:I = 0x7f07000e

.field public static final preference_sortorder_entries:I = 0x7f070005

.field public static final preference_sortorder_entryvalues:I = 0x7f07000f

.field public static final preference_sortorder_slists:I = 0x7f070006

.field public static final preference_sortorder_slistsvalues:I = 0x7f070010


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/R$array;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x69ceb5fa67fda1aeL    # 4.7015275322541106E201

    const-string v2, "org/openintents/shopping/R$array"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/R$array;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/R$array;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
