.class public final Lorg/openintents/shopping/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "xml"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final about:I = 0x7f050000

.field public static final preferences:I = 0x7f050001

.field public static final themes:I = 0x7f050002

.field public static final widget_check_items:I = 0x7f050003


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/R$xml;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5ac8e7c312759ee2L

    const-string v2, "org/openintents/shopping/R$xml"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/R$xml;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/R$xml;->$jacocoInit()[Z

    move-result-object v0

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
