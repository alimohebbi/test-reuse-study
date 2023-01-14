.class Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$1;
.super Landroid/os/Handler;
.source "SensorSimulatorClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;


# direct methods
.method constructor <init>(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$1;->this$0:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    .line 353
    iget v8, p1, Landroid/os/Message;->what:I

    if-ne v8, v11, :cond_8

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 360
    .local v0, "current":J
    iget-object v8, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$1;->this$0:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-static {v8}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->access$100(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;)I

    move-result v8

    int-to-long v8, v8

    add-long v6, v0, v8

    .line 363
    .local v6, "nextTime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->access$200()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 364
    iget-object v8, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$1;->this$0:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-static {v8}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->access$300(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;)[Z

    move-result-object v8

    const/4 v9, 0x0

    aput-boolean v9, v8, v2

    .line 365
    iget-object v8, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$1;->this$0:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-static {v8}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->access$400(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;)[[F

    move-result-object v8

    aget-object v8, v8, v2

    if-nez v8, :cond_0

    .line 366
    const-string v8, "Hardware"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Create cache for sensor "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v8, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$1;->this$0:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-static {v8}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->access$400(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;)[[F

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [F

    aput-object v9, v8, v2

    .line 363
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    :cond_1
    iget-object v8, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$1;->this$0:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-static {v8}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->access$500(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;

    .line 372
    .local v4, "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    invoke-static {v4}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->access$600(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;)J

    move-result-wide v8

    cmp-long v8, v0, v8

    if-ltz v8, :cond_6

    .line 376
    const/4 v5, 0x1

    .line 377
    .local v5, "sensorbit":I
    const/4 v2, 0x0

    :goto_2
    invoke-static {}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->access$200()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 378
    invoke-static {v4}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->access$700(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;)I

    move-result v8

    invoke-static {v8, v5}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->hasSensor(II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 380
    iget-object v8, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$1;->this$0:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-static {v8}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->access$300(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;)[Z

    move-result-object v8

    aget-boolean v8, v8, v2

    if-nez v8, :cond_3

    .line 381
    iget-object v8, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$1;->this$0:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    iget-object v9, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$1;->this$0:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-static {v9}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->access$400(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;)[[F

    move-result-object v9

    aget-object v9, v9, v2

    invoke-static {v8, v5, v9}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->access$800(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;I[F)V

    .line 382
    iget-object v8, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$1;->this$0:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-static {v8}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->access$300(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;)[Z

    move-result-object v8

    aput-boolean v11, v8, v2

    .line 385
    :cond_3
    invoke-static {v4}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->access$000(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;)Landroid/hardware/SensorListener;

    move-result-object v8

    iget-object v9, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$1;->this$0:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-static {v9}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->access$400(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;)[[F

    move-result-object v9

    aget-object v9, v9, v2

    invoke-interface {v8, v5, v9}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 389
    :cond_4
    shl-int/lit8 v5, v5, 0x1

    .line 377
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 393
    :cond_5
    invoke-static {v4}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->access$900(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v4, v8, v9}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->access$614(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;J)J

    .line 399
    invoke-static {v4}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->access$600(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;)J

    move-result-wide v8

    cmp-long v8, v8, v0

    if-gez v8, :cond_6

    .line 400
    invoke-static {v4, v0, v1}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->access$602(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;J)J

    .line 403
    .end local v5    # "sensorbit":I
    :cond_6
    invoke-static {v4}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->access$600(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;)J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-gez v8, :cond_2

    .line 404
    invoke-static {v4}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;->access$600(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;)J

    move-result-wide v6

    goto :goto_1

    .line 411
    .end local v4    # "l":Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$Listener;
    :cond_7
    iget-object v8, p0, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$1;->this$0:Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;

    invoke-static {v8}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;->access$500(Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 413
    invoke-virtual {p0, v11}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {p0, v8, v6, v7}, Lorg/openintents/sensorsimulator/hardware/SensorSimulatorClient$1;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 417
    .end local v0    # "current":J
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "nextTime":J
    :cond_8
    return-void
.end method
