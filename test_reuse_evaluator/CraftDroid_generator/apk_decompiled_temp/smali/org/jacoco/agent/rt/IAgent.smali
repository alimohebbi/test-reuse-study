.class public interface abstract Lorg/jacoco/agent/rt/IAgent;
.super Ljava/lang/Object;
.source "IAgent.java"


# virtual methods
.method public abstract dump(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getExecutionData(Z)[B
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract reset()V
.end method

.method public abstract setSessionId(Ljava/lang/String;)V
.end method
