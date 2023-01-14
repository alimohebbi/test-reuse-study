.class public abstract Lorg/openintents/sensorsimulator/db/SensorSimulator;
.super Ljava/lang/Object;
.source "SensorSimulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/sensorsimulator/db/SensorSimulator$Settings;
    }
.end annotation


# static fields
.field public static final DEFAULT_SOCKET:Ljava/lang/String; = "8010"

.field public static final KEY_IPADDRESS:Ljava/lang/String; = "IP address"

.field public static final KEY_SOCKET:Ljava/lang/String; = "Socket"

.field public static final SENSORSIMULATOR_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SensorSimulator"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lorg/openintents/sensorsimulator/db/SensorSimulator;->SENSORSIMULATOR_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method
