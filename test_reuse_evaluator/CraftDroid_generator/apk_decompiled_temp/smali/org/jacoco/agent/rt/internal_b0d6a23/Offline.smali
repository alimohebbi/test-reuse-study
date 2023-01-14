.class public final Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;
.super Ljava/lang/Object;
.source "Offline.java"


# static fields
.field private static final CONFIG_RESOURCE:Ljava/lang/String; = "/jacoco-agent.properties"

.field private static final DATA:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const-string v1, "/jacoco-agent.properties"

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/ConfigLoader;->load(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0

    .line 31
    .local v0, "config":Ljava/util/Properties;
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;

    invoke-direct {v1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;-><init>(Ljava/util/Properties;)V

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->getInstance(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;)Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->getData()Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    move-result-object v1

    sput-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->DATA:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static getProbes(JLjava/lang/String;I)[Z
    .locals 2
    .param p0, "classid"    # J
    .param p2, "classname"    # Ljava/lang/String;
    .param p3, "probecount"    # I

    .prologue
    .line 51
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->DATA:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->getExecutionData(Ljava/lang/Long;Ljava/lang/String;I)Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->getProbes()[Z

    move-result-object v0

    return-object v0
.end method
