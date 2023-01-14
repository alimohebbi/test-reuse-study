.class public final Lorg/openintents/shopping/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/shopping/R$styleable;,
        Lorg/openintents/shopping/R$xml;,
        Lorg/openintents/shopping/R$style;,
        Lorg/openintents/shopping/R$string;,
        Lorg/openintents/shopping/R$raw;,
        Lorg/openintents/shopping/R$layout;,
        Lorg/openintents/shopping/R$id;,
        Lorg/openintents/shopping/R$drawable;,
        Lorg/openintents/shopping/R$dimen;,
        Lorg/openintents/shopping/R$color;,
        Lorg/openintents/shopping/R$attr;,
        Lorg/openintents/shopping/R$array;,
        Lorg/openintents/shopping/R$anim;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x316226fbeb695044L    # 8.219061785041715E-71

    const-string v2, "org/openintents/shopping/R"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/R;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
