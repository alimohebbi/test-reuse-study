.class public final Lorg/jacoco/agent/rt/internal_b0d6a23/PreMain;
.super Ljava/lang/Object;
.source "PreMain.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private static createRuntime(Ljava/lang/instrument/Instrumentation;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRuntime;
    .locals 1
    .param p0, "inst"    # Ljava/lang/instrument/Instrumentation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    const-string v0, "java/util/UUID"

    invoke-static {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime;->createFor(Ljava/lang/instrument/Instrumentation;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRuntime;

    move-result-object v0

    return-object v0
.end method

.method public static premain(Ljava/lang/String;Ljava/lang/instrument/Instrumentation;)V
    .locals 5
    .param p0, "options"    # Ljava/lang/String;
    .param p1, "inst"    # Ljava/lang/instrument/Instrumentation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;

    invoke-direct {v1, p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "agentOptions":Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;
    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->getInstance(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;)Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;

    move-result-object v0

    .line 47
    .local v0, "agent":Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/PreMain;->createRuntime(Ljava/lang/instrument/Instrumentation;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRuntime;

    move-result-object v2

    .line 48
    .local v2, "runtime":Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRuntime;
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->getData()Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRuntime;->startup(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;)V

    .line 49
    new-instance v3, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;

    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;->SYSTEM_ERR:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    invoke-direct {v3, v2, v1, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRuntime;Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;)V

    invoke-interface {p1, v3}, Ljava/lang/instrument/Instrumentation;->addTransformer(Ljava/lang/instrument/ClassFileTransformer;)V

    .line 51
    return-void
.end method
