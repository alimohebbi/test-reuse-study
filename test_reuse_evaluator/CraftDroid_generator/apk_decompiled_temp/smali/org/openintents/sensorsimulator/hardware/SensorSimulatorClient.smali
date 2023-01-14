.class final Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;
.super Ljava/lang/Object;
.source "SensorSimulatorClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    }
.end annotation


# static fields
.field private static final LOG_PROTOCOL:Z = false

.field private static MAX_SENSOR:I = 0x0

.field private static final MSG_UPDATE_SENSORS:I = 0x1

.field static final TAG:Ljava/lang/String; = "Hardware"

.field private static final TAG2:Ljava/lang/String; = "Hardware2"


# instance fields
.field private DELAY_MS_FASTEST:I

.field private DELAY_MS_GAME:I

.field private DELAY_MS_NORMAL:I

.field private DELAY_MS_UI:I

.field protected connected:Z

.field private mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field mIn:Ljava/io/BufferedReader;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;",
            ">;"
        }
    .end annotation
.end field

.field mOut:Ljava/io/PrintWriter;

.field private mSensorSimulatorConvenience:Lorg/openintents/sensorsimulator/db/SensorSimulatorConvenience;

.field mSocket:Ljava/net/Socket;

.field private mValues:[[F

.field private mValuesCached:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x5

    sput v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->MAX_SENSOR:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mListeners:Ljava/util/ArrayList;

    .line 174
    iput v1, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->DELAY_MS_FASTEST:I

    .line 175
    const/16 v0, 0x14

    iput v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->DELAY_MS_GAME:I

    .line 176
    const/16 v0, 0x3c

    iput v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->DELAY_MS_UI:I

    .line 177
    const/16 v0, 0xc8

    iput v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->DELAY_MS_NORMAL:I

    .line 346
    sget v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->MAX_SENSOR:I

    new-array v0, v0, [[F

    iput-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mValues:[[F

    .line 347
    sget v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->MAX_SENSOR:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mValuesCached:[Z

    .line 350
    new-instance v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$1;

    invoke-direct {v0, p0}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$1;-><init>(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;)V

    iput-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mHandler:Landroid/os/Handler;

    .line 67
    iput-boolean v1, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    .line 68
    iput-object p1, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Lorg/openintents/sensorsimulator/db/SensorSimulatorConvenience;

    iget-object v1, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/openintents/sensorsimulator/db/SensorSimulatorConvenience;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mSensorSimulatorConvenience:Lorg/openintents/sensorsimulator/db/SensorSimulatorConvenience;

    .line 70
    return-void
.end method

.method static synthetic access$100(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;)I
    .locals 1
    .param p0, "x0"    # Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    .prologue
    .line 40
    iget v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->DELAY_MS_NORMAL:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->MAX_SENSOR:I

    return v0
.end method

.method static synthetic access$300(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;)[Z
    .locals 1
    .param p0, "x0"    # Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mValuesCached:[Z

    return-object v0
.end method

.method static synthetic access$400(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;)[[F
    .locals 1
    .param p0, "x0"    # Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mValues:[[F

    return-object v0
.end method

.method static synthetic access$500(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;I[F)V
    .locals 0
    .param p0, "x0"    # Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # [F

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->readSensor(I[F)V

    return-void
.end method

.method private enableSensor(II)Z
    .locals 12
    .param p1, "sensors"    # I
    .param p2, "delay"    # I

    .prologue
    const/4 v11, 0x1

    .line 316
    invoke-static {p1}, Lorg/openintents/sensorsimulator/hardware/SensorNames;->getSensorNames(I)[Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, "sensornames":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 318
    .local v4, "result":Z
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 320
    .local v5, "sensor":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_0

    .line 321
    :try_start_0
    invoke-virtual {p0, v5}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->disableSensor(Ljava/lang/String;)V

    .line 330
    :goto_1
    const/4 v4, 0x1

    .line 318
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {p0, v5}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->enableSensor(Ljava/lang/String;)V

    .line 324
    const/high16 v7, 0x447a0000    # 1000.0f

    .line 325
    .local v7, "updatesPerSecond":F
    if-lez p2, :cond_1

    .line 326
    const/16 v8, 0x3e8

    div-int/2addr v8, p2

    int-to-float v7, v8

    .line 328
    :cond_1
    invoke-virtual {p0, v5, v7}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->setSensorUpdateRate(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 331
    .end local v7    # "updatesPerSecond":F
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "Hardware"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sensor "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not supported"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 336
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "sensor":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 337
    iget-object v8, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 339
    :cond_3
    return v4
.end method

.method static hasSensor(II)Z
    .locals 1
    .param p0, "sensors"    # I
    .param p1, "sensor"    # I

    .prologue
    .line 425
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readSensor(I[F)V
    .locals 5
    .param p1, "sensorbit"    # I
    .param p2, "sensorValues"    # [F

    .prologue
    .line 429
    invoke-static {p1}, Lorg/openintents/sensorsimulator/hardware/SensorNames;->getSensorName(I)Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "sensorname":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v2, p2}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->readSensor(Ljava/lang/String;[F)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "Hardware"

    const-string v4, "Sensor not enabled -> enable it now"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :try_start_1
    invoke-virtual {p0, v2}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->enableSensor(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 439
    :catch_1
    move-exception v1

    .line 443
    .local v1, "e2":Ljava/lang/IllegalArgumentException;
    const-string v3, "Hardware"

    const-string v4, "Sensor not supported."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected connect()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 76
    iput-object v4, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mSocket:Ljava/net/Socket;

    .line 77
    iput-object v4, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    .line 78
    iput-object v4, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mIn:Ljava/io/BufferedReader;

    .line 80
    const-string v4, "Hardware"

    const-string v5, "Starting connection..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v4, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mSensorSimulatorConvenience:Lorg/openintents/sensorsimulator/db/SensorSimulatorConvenience;

    const-string v5, "IP address"

    invoke-virtual {v4, v5}, Lorg/openintents/sensorsimulator/db/SensorSimulatorConvenience;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "ipaddress":Ljava/lang/String;
    iget-object v4, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mSensorSimulatorConvenience:Lorg/openintents/sensorsimulator/db/SensorSimulatorConvenience;

    const-string v5, "Socket"

    invoke-virtual {v4, v5}, Lorg/openintents/sensorsimulator/db/SensorSimulatorConvenience;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "socket":Ljava/lang/String;
    const-string v4, "Hardware"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connecting to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :try_start_0
    new-instance v4, Ljava/net/Socket;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v2, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mSocket:Ljava/net/Socket;

    .line 103
    new-instance v4, Ljava/io/PrintWriter;

    iget-object v5, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v4, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    .line 104
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v4, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mIn:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 122
    :goto_0
    const-string v4, "Hardware"

    const-string v5, "Read line..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v1, ""

    .line 126
    .local v1, "fromServer":Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mIn:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    .line 131
    :goto_1
    const-string v4, "Hardware"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v4, "SensorSimulator"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    iput-boolean v7, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    .line 136
    const-string v4, "Hardware"

    const-string v5, "Connected"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v1    # "fromServer":Ljava/lang/String;
    :goto_2
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v4, "Hardware"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Don\'t know about host: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 110
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/net/SocketTimeoutException;
    const-string v4, "Hardware"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection time out: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 113
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Hardware"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t get I/O for the connection to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v4, "Hardware"

    const-string v5, "---------------------------------------------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v4, "Hardware"

    const-string v5, "Do you have the following permission in your manifest?"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v4, "Hardware"

    const-string v5, "<uses-permission android:name=\"android.permission.INTERNET\"/>"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v4, "Hardware"

    const-string v5, "---------------------------------------------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fromServer":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 128
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Couldn\'t get I/O for the connection to: x.x.x.x."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const-string v4, "Hardware"

    const-string v5, "Problem connecting: Wrong string sent."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->disconnect()V

    goto/16 :goto_2
.end method

.method protected disableSensor(Ljava/lang/String;)V
    .locals 5
    .param p1, "sensor"    # Ljava/lang/String;

    .prologue
    .line 458
    const-string v2, "Hardware2"

    const-string v3, "disableSensor()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v2, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    const-string v3, "disableSensor()"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    const-string v2, "Hardware2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v2, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    :try_start_0
    iget-object v2, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mIn:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "answer":Ljava/lang/String;
    const-string v2, "throw IllegalArgumentException"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 466
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sensor \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v0    # "answer":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 473
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Couldn\'t get I/O for the connection to: x.x.x.x."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 474
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 476
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 470
    .restart local v0    # "answer":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v2, "Hardware2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected disconnect()V
    .locals 3

    .prologue
    .line 146
    iget-boolean v1, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    if-eqz v1, :cond_0

    .line 147
    const-string v1, "Hardware"

    const-string v2, "Disconnect()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :try_start_0
    iget-object v1, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 151
    iget-object v1, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mIn:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 152
    iget-object v1, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->connected:Z

    .line 162
    :cond_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Couldn\'t get I/O for the connection to: x.x.x.x."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method protected enableSensor(Ljava/lang/String;)V
    .locals 5
    .param p1, "sensor"    # Ljava/lang/String;

    .prologue
    .line 479
    const-string v2, "Hardware2"

    const-string v3, "enableSensor()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v2, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    const-string v3, "enableSensor()"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    const-string v2, "Hardware2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v2, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    :try_start_0
    iget-object v2, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mIn:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "answer":Ljava/lang/String;
    const-string v2, "throw IllegalArgumentException"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 487
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sensor \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .end local v0    # "answer":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 494
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Couldn\'t get I/O for the connection to: x.x.x.x."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 495
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 497
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 491
    .restart local v0    # "answer":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v2, "Hardware2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected getNumSensorValues(I)I
    .locals 2
    .param p1, "sensorbit"    # I

    .prologue
    .line 449
    invoke-static {p1}, Lorg/openintents/sensorsimulator/hardware/SensorNames;->getSensorName(I)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "sensorname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->getNumSensorValues(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method protected getNumSensorValues(Ljava/lang/String;)I
    .locals 6
    .param p1, "sensor"    # Ljava/lang/String;

    .prologue
    .line 529
    iget-object v3, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    const-string v4, "getNumSensorValues()"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    iget-object v3, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    const/4 v1, 0x0

    .line 537
    .local v1, "num":I
    :try_start_0
    iget-object v3, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mIn:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, "numstr":Ljava/lang/String;
    const-string v3, "throw IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 539
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sensor \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is not supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .end local v2    # "numstr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Couldn\'t get I/O for the connection to: x.x.x.x."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 548
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 551
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return v1

    .line 545
    .restart local v2    # "numstr":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0
.end method

.method protected getSensorUpdateRate(Ljava/lang/String;)F
    .locals 6
    .param p1, "sensor"    # Ljava/lang/String;

    .prologue
    .line 642
    const-string v3, "Hardware"

    const-string v4, "getSensorUpdateRate()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v3, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    const-string v4, "getSensorUpdateRate()"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    const/4 v2, 0x0

    .line 646
    .local v2, "rate":F
    const-string v3, "Hardware"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v3, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    :try_start_0
    iget-object v3, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mIn:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, "numstr":Ljava/lang/String;
    const-string v3, "throw IllegalArgumentException"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 652
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sensor \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is not supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v1    # "numstr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Couldn\'t get I/O for the connection to: x.x.x.x."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 668
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 671
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return v2

    .line 655
    .restart local v1    # "numstr":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v3, "throw IllegalStateException"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 656
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sensor \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is currently not enabled."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 661
    :cond_1
    const-string v3, "Hardware"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 664
    const-string v3, "Hardware"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected getSensorUpdateRates(Ljava/lang/String;)[F
    .locals 8
    .param p1, "sensor"    # Ljava/lang/String;

    .prologue
    .line 606
    iget-object v5, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    const-string v6, "getSensorUpdateRates()"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    const/4 v4, 0x0

    .line 609
    .local v4, "rates":[F
    iget-object v5, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    const/4 v2, 0x0

    .line 613
    .local v2, "num":I
    :try_start_0
    iget-object v5, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mIn:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, "numstr":Ljava/lang/String;
    const-string v5, "throw IllegalArgumentException"

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 615
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sensor \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is not supported."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    .end local v3    # "numstr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Couldn\'t get I/O for the connection to: x.x.x.x."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 634
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 637
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v4

    .line 621
    .restart local v3    # "numstr":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 623
    if-lez v2, :cond_2

    .line 624
    new-array v4, v2, [F

    .line 625
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 626
    iget-object v5, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mIn:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v4, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 630
    .end local v1    # "i":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected getSensors()I
    .locals 5

    .prologue
    .line 165
    const-string v2, "Hardware"

    const-string v3, "getSensors"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->getSupportedSensors()[Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "sensornames":[Ljava/lang/String;
    const-string v2, "Hardware"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sensornames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {v0}, Lorg/openintents/sensorsimulator/hardware/SensorNames;->getSensorsFromNames([Ljava/lang/String;)I

    move-result v1

    .line 169
    .local v1, "sensors":I
    const-string v2, "Hardware"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sensors: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v1
.end method

.method protected getSupportedSensors()[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 500
    const-string v5, "Hardware"

    const-string v6, "getSupportedSensors()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v5, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    const-string v6, "getSupportedSensors()"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    .line 504
    .local v4, "sensors":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 507
    .local v2, "num":I
    :try_start_0
    iget-object v5, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mIn:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, "numstr":Ljava/lang/String;
    const-string v5, "Hardware"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 512
    new-array v4, v2, [Ljava/lang/String;

    .line 513
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 514
    iget-object v5, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mIn:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 515
    const-string v5, "Hardware"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v1    # "i":I
    .end local v3    # "numstr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Couldn\'t get I/O for the connection to: x.x.x.x."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 521
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    .line 524
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-object v4
.end method

.method protected readSensor(Ljava/lang/String;[F)V
    .locals 8
    .param p1, "sensor"    # Ljava/lang/String;
    .param p2, "sensorValues"    # [F

    .prologue
    .line 555
    if-nez p2, :cond_0

    .line 556
    new-instance v5, Ljava/lang/NullPointerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readSensor for \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' called with sensorValues == null."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 565
    :cond_0
    iget-object v5, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readSensor()\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    const/4 v2, 0x0

    .line 569
    .local v2, "num":I
    :try_start_0
    iget-object v5, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mIn:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 570
    .local v3, "numstr":Ljava/lang/String;
    const-string v5, "throw IllegalArgumentException"

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 571
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sensor \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is not supported."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .end local v3    # "numstr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Couldn\'t get I/O for the connection to: x.x.x.x."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 599
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 601
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    return-void

    .line 574
    .restart local v3    # "numstr":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v5, "throw IllegalStateException"

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 575
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sensor \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is currently not enabled."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 580
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 582
    array-length v5, p2

    if-ge v5, v2, :cond_4

    .line 583
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readSensor for \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' called with sensorValues having too few elements ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") to hold the sensor values ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 591
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 592
    iget-object v5, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mIn:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, "val":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, p2, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected registerListener(Landroid/hardware/SensorListener;I)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I

    .prologue
    .line 238
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method protected registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 8
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .param p3, "rate"    # I

    .prologue
    .line 181
    const/4 v0, -0x1

    .line 182
    .local v0, "delay":I
    packed-switch p3, :pswitch_data_0

    .line 201
    const/4 v5, 0x0

    .line 234
    :goto_0
    return v5

    .line 185
    :pswitch_0
    iget v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->DELAY_MS_FASTEST:I

    .line 204
    :goto_1
    iget-object v7, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 206
    const/4 v3, 0x0

    .line 207
    .local v3, "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    :try_start_0
    iget-object v6, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 208
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 210
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;

    .line 211
    .local v1, "i":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    invoke-static {v1}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->access$000(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;)Landroid/hardware/SensorListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-ne v6, p1, :cond_0

    .line 212
    move-object v3, v1

    move-object v4, v3

    .line 216
    .end local v1    # "i":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    .end local v3    # "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    .local v4, "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    :goto_2
    if-nez v4, :cond_2

    .line 218
    :try_start_1
    new-instance v3, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;

    invoke-direct {v3, p0, p1, p2, v0}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;-><init>(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;Landroid/hardware/SensorListener;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 219
    .end local v4    # "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    .restart local v3    # "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    :try_start_2
    invoke-direct {p0, p2, v0}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->enableSensor(II)Z

    move-result v5

    .line 220
    .local v5, "result":Z
    if-eqz v5, :cond_1

    .line 222
    iget-object v6, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v6, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 232
    :cond_1
    :goto_3
    monitor-exit v7

    goto :goto_0

    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;>;"
    .end local v5    # "result":Z
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 189
    .end local v3    # "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    :pswitch_1
    iget v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->DELAY_MS_GAME:I

    .line 190
    goto :goto_1

    .line 193
    :pswitch_2
    iget v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->DELAY_MS_UI:I

    .line 194
    goto :goto_1

    .line 197
    :pswitch_3
    iget v0, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->DELAY_MS_NORMAL:I

    .line 198
    goto :goto_1

    .line 227
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;>;"
    .restart local v4    # "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    :cond_2
    :try_start_3
    invoke-direct {p0, p2, v0}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->enableSensor(II)Z

    move-result v5

    .line 228
    .restart local v5    # "result":Z
    if-eqz v5, :cond_3

    .line 229
    invoke-virtual {v4, p2, v0}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->addSensors(II)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    move-object v3, v4

    .end local v4    # "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    .restart local v3    # "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    goto :goto_3

    .line 232
    .end local v3    # "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    .end local v5    # "result":Z
    .restart local v4    # "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    .restart local v3    # "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    goto :goto_4

    :cond_4
    move-object v4, v3

    .end local v3    # "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    .restart local v4    # "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    goto :goto_2

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected setSensorUpdateRate(Ljava/lang/String;F)V
    .locals 5
    .param p1, "sensor"    # Ljava/lang/String;
    .param p2, "updatesPerSecond"    # F

    .prologue
    .line 675
    const-string v2, "Hardware"

    const-string v3, "setSensorUpdateRate()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v2, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    const-string v3, "setSensorUpdateRate()"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 679
    const-string v2, "Hardware"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v2, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    :try_start_0
    iget-object v2, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mIn:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "numstr":Ljava/lang/String;
    const-string v2, "throw IllegalArgumentException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 685
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sensor \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    .end local v1    # "numstr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Couldn\'t get I/O for the connection to: x.x.x.x."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 695
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 697
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 689
    .restart local v1    # "numstr":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v2, "Hardware"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-string v2, "Hardware"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v2, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected unregisterListener(Landroid/hardware/SensorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;

    .prologue
    .line 264
    const/16 v0, 0x7f

    invoke-virtual {p0, p1, v0}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 265
    return-void
.end method

.method protected unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I

    .prologue
    .line 242
    iget-object v4, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 244
    :try_start_0
    iget-object v3, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 245
    .local v2, "size":I
    const/4 v0, 0x0

    .line 248
    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 260
    :cond_0
    :goto_1
    monitor-exit v4

    .line 261
    return-void

    .line 250
    :cond_1
    iget-object v3, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;

    .line 251
    .local v1, "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    invoke-static {v1}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->access$000(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;)Landroid/hardware/SensorListener;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 253
    const/4 v3, -0x1

    invoke-direct {p0, p2, v3}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->enableSensor(II)Z

    .line 254
    invoke-virtual {v1, p2}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->removeSensors(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 255
    iget-object v3, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 260
    .end local v0    # "i":I
    .end local v1    # "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 258
    .restart local v0    # "i":I
    .restart local v1    # "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    .restart local v2    # "size":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 259
    goto :goto_0
.end method

.method protected unsetSensorUpdateRate(Ljava/lang/String;)V
    .locals 5
    .param p1, "sensor"    # Ljava/lang/String;

    .prologue
    .line 700
    const-string v2, "Hardware"

    const-string v3, "unsetSensorUpdateRate()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v2, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    const-string v3, "unsetSensorUpdateRate()"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    const-string v2, "Hardware"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v2, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    :try_start_0
    iget-object v2, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->mIn:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, "numstr":Ljava/lang/String;
    const-string v2, "throw IllegalArgumentException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 710
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sensor \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    .end local v1    # "numstr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Couldn\'t get I/O for the connection to: x.x.x.x."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 717
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 719
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 714
    .restart local v1    # "numstr":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v2, "Hardware"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
