.class public abstract Lorg/openintents/util/ShakeSensorListener;
.super Ljava/lang/Object;
.source "ShakeSensorListener.java"

# interfaces
.implements Landroid/hardware/SensorListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mTotalForcePrev:D


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/util/ShakeSensorListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3cfdc2d52560fc79L    # 6.608283886771712E-15

    const-string v2, "org/openintents/util/ShakeSensorListener"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/util/ShakeSensorListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/util/ShakeSensorListener;->$jacocoInit()[Z

    move-result-object v0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lorg/openintents/util/ShakeSensorListener;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onSensorChanged(I[F)V
    .locals 12

    .prologue
    invoke-static {}, Lorg/openintents/util/ShakeSensorListener;->$jacocoInit()[Z

    move-result-object v4

    .line 16
    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    const/4 v5, 0x2

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 35
    .local v0, "forceThreshHold":D
    .local v2, "totalForce":D
    :goto_0
    const/16 v5, 0xc

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    return-void

    .line 17
    .end local v0    # "forceThreshHold":D
    .end local v2    # "totalForce":D
    :cond_0
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 19
    .restart local v0    # "forceThreshHold":D
    const-wide/16 v6, 0x0

    const/4 v5, 0x3

    const/4 v8, 0x1

    aput-boolean v8, v4, v5

    .line 20
    const/4 v5, 0x0

    aget v5, p2, v5

    const v8, 0x411ce80a

    div-float/2addr v5, v8

    float-to-double v8, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double v2, v6, v8

    .restart local v2    # "totalForce":D
    const/4 v5, 0x4

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 22
    const/4 v5, 0x1

    aget v5, p2, v5

    const v6, 0x411ce80a

    div-float/2addr v5, v6

    float-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v2, v6

    const/4 v5, 0x5

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 24
    const/4 v5, 0x2

    aget v5, p2, v5

    const v6, 0x411ce80a

    div-float/2addr v5, v6

    float-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v2, v6

    const/4 v5, 0x6

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 28
    cmpg-double v5, v2, v0

    if-ltz v5, :cond_1

    const/4 v5, 0x7

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 33
    :goto_1
    iput-wide v2, p0, Lorg/openintents/util/ShakeSensorListener;->mTotalForcePrev:D

    const/16 v5, 0xb

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    goto :goto_0

    .line 28
    :cond_1
    iget-wide v6, p0, Lorg/openintents/util/ShakeSensorListener;->mTotalForcePrev:D

    cmpl-double v5, v6, v0

    if-gtz v5, :cond_2

    const/16 v5, 0x8

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    goto :goto_1

    :cond_2
    const/16 v5, 0x9

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 30
    invoke-virtual {p0}, Lorg/openintents/util/ShakeSensorListener;->onShake()V

    const/16 v5, 0xa

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    goto :goto_1
.end method

.method public abstract onShake()V
.end method
