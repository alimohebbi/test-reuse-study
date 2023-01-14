.class public final Lorg/openintents/distribution/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/distribution/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final background:I = 0x7f0c0000

.field public static final button1:I = 0x7f0c0015

.field public static final button2:I = 0x7f0c0048

.field public static final buttonbar:I = 0x7f0c004e

.field public static final container1:I = 0x7f0c004a

.field public static final container2:I = 0x7f0c0047

.field public static final imageview:I = 0x7f0c004b

.field public static final space:I = 0x7f0c0049

.field public static final text:I = 0x7f0c004d

.field public static final text1:I = 0x7f0c003f

.field public static final text2:I = 0x7f0c004c


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/distribution/R$id;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6aa91076a086a639L    # 6.286701079936987E205

    const-string v2, "org/openintents/distribution/R$id"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/distribution/R$id;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/distribution/R$id;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
