.class public final Lorg/openintents/shopping/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final READ_PERMISSION:Ljava/lang/String; = "org.openintents.shopping.READ_PERMISSION"

.field public static final WRITE_PERMISSION:Ljava/lang/String; = "org.openintents.shopping.WRITE_PERMISSION"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/Manifest$permission;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2fd0863fa60407f4L    # 2.229805918718909E-78

    const-string v2, "org/openintents/shopping/Manifest$permission"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/Manifest$permission;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/Manifest$permission;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
