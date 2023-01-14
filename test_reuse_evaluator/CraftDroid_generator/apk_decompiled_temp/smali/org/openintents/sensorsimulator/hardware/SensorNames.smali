.class public Lorg/openintents/sensorsimulator/hardware/SensorNames;
.super Ljava/lang/Object;
.source "SensorNames.java"


# static fields
.field public static final SENSOR_ACCELEROMETER:Ljava/lang/String; = "accelerometer"

.field public static final SENSOR_LIGHT:Ljava/lang/String; = "light"

.field public static final SENSOR_MAGNETIC_FIELD:Ljava/lang/String; = "magnetic field"

.field public static final SENSOR_MAX_BIT:I = 0x80

.field public static final SENSOR_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final SENSOR_ORIENTATION_RAW:Ljava/lang/String; = "orientation raw"

.field public static final SENSOR_PROXIMITY:Ljava/lang/String; = "proximity"

.field public static final SENSOR_TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final SENSOR_TRICORDER:Ljava/lang/String; = "tricorder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNumSensorValues(I)I
    .locals 3
    .param p0, "sensor"    # I

    .prologue
    .line 117
    sparse-switch p0, :sswitch_data_0

    .line 129
    const-string v0, "Hardware"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumSensorValues: Unknown sensor type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 123
    :sswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 127
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getSensorCount(I)I
    .locals 3
    .param p0, "sensors"    # I

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "count":I
    const/4 v0, 0x1

    .local v0, "bit":I
    :goto_0
    const/16 v2, 0x80

    if-gt v0, v2, :cond_1

    .line 67
    and-int v2, p0, v0

    if-eqz v2, :cond_0

    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 66
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    return v1
.end method

.method public static getSensorName(I)Ljava/lang/String;
    .locals 3
    .param p0, "sensorbit"    # I

    .prologue
    .line 37
    sparse-switch p0, :sswitch_data_0

    .line 55
    const-string v0, "Hardware"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readSensor: Unknown sensor type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 39
    :sswitch_0
    const-string v0, "orientation"

    goto :goto_0

    .line 41
    :sswitch_1
    const-string v0, "accelerometer"

    goto :goto_0

    .line 43
    :sswitch_2
    const-string v0, "temperature"

    goto :goto_0

    .line 45
    :sswitch_3
    const-string v0, "magnetic field"

    goto :goto_0

    .line 47
    :sswitch_4
    const-string v0, "light"

    goto :goto_0

    .line 49
    :sswitch_5
    const-string v0, "proximity"

    goto :goto_0

    .line 51
    :sswitch_6
    const-string v0, "tricorder"

    goto :goto_0

    .line 53
    :sswitch_7
    const-string v0, "orientation raw"

    goto :goto_0

    .line 37
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method

.method public static getSensorNames(I)[Ljava/lang/String;
    .locals 5
    .param p0, "sensors"    # I

    .prologue
    .line 79
    invoke-static {p0}, Lorg/openintents/sensorsimulator/hardware/SensorNames;->getSensorCount(I)I

    move-result v1

    .line 80
    .local v1, "num":I
    new-array v3, v1, [Ljava/lang/String;

    .line 81
    .local v3, "s":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 82
    .local v2, "pos":I
    const/4 v0, 0x1

    .local v0, "bit":I
    :goto_0
    const/16 v4, 0x80

    if-gt v0, v4, :cond_1

    .line 83
    and-int v4, p0, v0

    if-eqz v4, :cond_0

    .line 84
    invoke-static {v0}, Lorg/openintents/sensorsimulator/hardware/SensorNames;->getSensorName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 82
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    return-object v3
.end method

.method public static getSensorsFromNames([Ljava/lang/String;)I
    .locals 5
    .param p0, "sensornames"    # [Ljava/lang/String;

    .prologue
    .line 98
    const/4 v2, 0x0

    .line 100
    .local v2, "sensors":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 101
    const/4 v0, 0x1

    .local v0, "bit":I
    :goto_1
    const/16 v3, 0x80

    if-gt v0, v3, :cond_1

    .line 102
    aget-object v3, p0, v1

    invoke-static {v0}, Lorg/openintents/sensorsimulator/hardware/SensorNames;->getSensorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    or-int/2addr v2, v0

    .line 101
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "bit":I
    :cond_2
    return v2
.end method
