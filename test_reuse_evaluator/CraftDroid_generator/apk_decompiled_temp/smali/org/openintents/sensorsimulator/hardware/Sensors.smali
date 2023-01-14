.class final Lorg/openintents/sensorsimulator/hardware/Sensors;
.super Ljava/lang/Object;
.source "Sensors.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Hardware"


# instance fields
.field private mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

.field private mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    iget-object v1, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    .line 46
    return-void
.end method


# virtual methods
.method protected connectSimulator()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-virtual {v0}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connect()V

    .line 204
    return-void
.end method

.method protected disableSensor(Ljava/lang/String;)V
    .locals 1
    .param p1, "sensor"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    iget-boolean v0, v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-virtual {v0, p1}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->disableSensor(Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method protected disconnectSimulator()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-virtual {v0}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->disconnect()V

    .line 211
    return-void
.end method

.method protected enableSensor(Ljava/lang/String;)V
    .locals 1
    .param p1, "sensor"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    iget-boolean v0, v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-virtual {v0, p1}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->enableSensor(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method protected getNumSensorValues(Ljava/lang/String;)I
    .locals 1
    .param p1, "sensor"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    iget-boolean v0, v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-virtual {v0, p1}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->getNumSensorValues(Ljava/lang/String;)I

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSensorUpdateRate(Ljava/lang/String;)F
    .locals 1
    .param p1, "sensor"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    iget-boolean v0, v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-virtual {v0, p1}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->getSensorUpdateRate(Ljava/lang/String;)F

    move-result v0

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSensorUpdateRates(Ljava/lang/String;)[F
    .locals 1
    .param p1, "sensor"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    iget-boolean v0, v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-virtual {v0, p1}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->getSensorUpdateRates(Ljava/lang/String;)[F

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSupportedSensors()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    iget-boolean v0, v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-virtual {v0}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->getSupportedSensors()[Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method protected readSensor(Ljava/lang/String;[F)V
    .locals 1
    .param p1, "sensor"    # Ljava/lang/String;
    .param p2, "sensorValues"    # [F

    .prologue
    .line 156
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    iget-boolean v0, v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-virtual {v0, p1, p2}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->readSensor(Ljava/lang/String;[F)V

    .line 161
    :cond_0
    return-void
.end method

.method protected setSensorUpdateRate(Ljava/lang/String;F)V
    .locals 1
    .param p1, "sensor"    # Ljava/lang/String;
    .param p2, "updatesPerSecond"    # F

    .prologue
    .line 174
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    iget-boolean v0, v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-virtual {v0, p1, p2}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->setSensorUpdateRate(Ljava/lang/String;F)V

    .line 179
    :cond_0
    return-void
.end method

.method protected unsetSensorUpdateRate(Ljava/lang/String;)V
    .locals 1
    .param p1, "sensor"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    iget-boolean v0, v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/Sensors;->mClient:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-virtual {v0, p1}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->unsetSensorUpdateRate(Ljava/lang/String;)V

    .line 195
    :cond_0
    return-void
.end method
