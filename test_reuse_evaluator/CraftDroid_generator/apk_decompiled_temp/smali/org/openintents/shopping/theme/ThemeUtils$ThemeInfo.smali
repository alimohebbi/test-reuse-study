.class public Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/theme/ThemeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeInfo"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field public packageName:Ljava/lang/String;

.field public styleName:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x340bb9e5889bf706L    # -7.953810293009038E57

    const-string v2, "org/openintents/shopping/theme/ThemeUtils$ThemeInfo"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;->$jacocoInit()[Z

    move-result-object v0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
