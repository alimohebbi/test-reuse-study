.class public interface abstract Lorg/jacoco/agent/rt/internal_b0d6a23/output/IAgentOutput;
.super Ljava/lang/Object;
.source "IAgentOutput.java"


# virtual methods
.method public abstract shutdown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract startup(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract writeExecutionData(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
