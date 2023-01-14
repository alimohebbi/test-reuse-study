.class Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
.super Ljava/lang/Object;
.source "SensorSimulatorClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field private mDelay:I

.field private mNextUpdateTime:J

.field private mSensorListener:Landroid/hardware/SensorListener;

.field private mSensors:I

.field final synthetic this$0:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;


# direct methods
.method constructor <init>(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;Landroid/hardware/SensorListener;II)V
    .locals 2
    .param p2, "listener"    # Landroid/hardware/SensorListener;
    .param p3, "sensors"    # I
    .param p4, "delay"    # I

    .prologue
    .line 300
    iput-object p1, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->this$0:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p2, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mSensorListener:Landroid/hardware/SensorListener;

    .line 302
    iput p3, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mSensors:I

    .line 303
    iput p4, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mDelay:I

    .line 304
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mNextUpdateTime:J

    .line 305
    return-void
.end method

.method static synthetic access$000(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;)Landroid/hardware/SensorListener;
    .locals 1
    .param p0, "x0"    # Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;

    .prologue
    .line 271
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mSensorListener:Landroid/hardware/SensorListener;

    return-object v0
.end method

.method static synthetic access$600(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;)J
    .locals 2
    .param p0, "x0"    # Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;

    .prologue
    .line 271
    iget-wide v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mNextUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;J)J
    .locals 1
    .param p0, "x0"    # Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    .param p1, "x1"    # J

    .prologue
    .line 271
    iput-wide p1, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mNextUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$614(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;J)J
    .locals 3
    .param p0, "x0"    # Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    .param p1, "x1"    # J

    .prologue
    .line 271
    iget-wide v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mNextUpdateTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mNextUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;)I
    .locals 1
    .param p0, "x0"    # Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;

    .prologue
    .line 271
    iget v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mSensors:I

    return v0
.end method

.method static synthetic access$900(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;)I
    .locals 1
    .param p0, "x0"    # Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;

    .prologue
    .line 271
    iget v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mDelay:I

    return v0
.end method


# virtual methods
.method addSensors(II)I
    .locals 2
    .param p1, "sensors"    # I
    .param p2, "delay"    # I

    .prologue
    .line 280
    iget v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mSensors:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mSensors:I

    .line 281
    iget v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mDelay:I

    if-ge p2, v0, :cond_0

    .line 282
    iput p2, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mDelay:I

    .line 283
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mNextUpdateTime:J

    .line 285
    :cond_0
    iget v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mSensors:I

    return v0
.end method

.method hasSensor(I)Z
    .locals 1
    .param p1, "sensor"    # I

    .prologue
    .line 296
    iget v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mSensors:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeSensors(I)I
    .locals 2
    .param p1, "sensors"    # I

    .prologue
    .line 290
    iget v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mSensors:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mSensors:I

    .line 291
    iget v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->mSensors:I

    return v0
.end method
