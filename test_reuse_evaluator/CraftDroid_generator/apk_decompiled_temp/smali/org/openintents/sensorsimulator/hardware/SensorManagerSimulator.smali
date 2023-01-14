.class public Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;
.super Ljava/lang/Object;
.source "SensorManagerSimulator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SensorManagerSimulator"


# instance fields
.field private mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

.field private mContext:Landroid/content/Context;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mSensorManager:Landroid/hardware/SensorManager;

    .line 42
    iput-object p1, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mSensorManager:Landroid/hardware/SensorManager;

    .line 44
    new-instance v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    iget-object v1, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    .line 45
    return-void
.end method


# virtual methods
.method public connectSimulator()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-virtual {v0}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connect()V

    .line 139
    return-void
.end method

.method public disconnectSimulator()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-virtual {v0}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->disconnect()V

    .line 146
    return-void
.end method

.method public getSensors()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    iget-boolean v0, v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-virtual {v0}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->getSensors()I

    move-result v0

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0}, Landroid/hardware/SensorManager;->getSensors()I

    move-result v0

    goto :goto_0
.end method

.method public isConnectedSimulator()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    iget-boolean v0, v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;I)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    iget-boolean v0, v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-virtual {v0, p1, p2}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->registerListener(Landroid/hardware/SensorListener;I)Z

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;I)Z

    move-result v0

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .param p3, "rate"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    iget-boolean v0, v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    goto :goto_0
.end method

.method public setDefaultSensorManager(Landroid/hardware/SensorManager;)V
    .locals 0
    .param p1, "sensormanager"    # Landroid/hardware/SensorManager;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mSensorManager:Landroid/hardware/SensorManager;

    .line 57
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;

    .prologue
    .line 124
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    iget-boolean v0, v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-virtual {v0, p1}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->unregisterListener(Landroid/hardware/SensorListener;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;)V

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    iget-boolean v0, v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-virtual {v0, p1, p2}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorManagerSimulator;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    goto :goto_0
.end method
