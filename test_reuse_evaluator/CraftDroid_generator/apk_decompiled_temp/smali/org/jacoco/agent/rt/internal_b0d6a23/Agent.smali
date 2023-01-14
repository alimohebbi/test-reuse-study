.class public Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;
.super Ljava/lang/Object;
.source "Agent.java"

# interfaces
.implements Lorg/jacoco/agent/rt/IAgent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jacoco/agent/rt/internal_b0d6a23/Agent$2;
    }
.end annotation


# static fields
.field private static singleton:Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;


# instance fields
.field private final data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

.field private jmxRegistration:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

.field private final options:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;

.field private output:Lorg/jacoco/agent/rt/internal_b0d6a23/output/IAgentOutput;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;)V
    .locals 1
    .param p1, "options"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;
    .param p2, "logger"    # Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->options:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;

    .line 97
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->logger:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    .line 98
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    .line 99
    return-void
.end method

.method private createSessionId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 178
    .local v1, "host":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AbstractRuntime;->createRandomId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 173
    .end local v1    # "host":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "unknownhost"

    .restart local v1    # "host":Ljava/lang/String;
    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 71
    const-class v1, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->singleton:Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "JaCoCo agent not started."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 74
    :cond_0
    :try_start_1
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->singleton:Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;)Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;
    .locals 4
    .param p0, "options"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;

    .prologue
    .line 48
    const-class v2, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->singleton:Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;

    if-nez v1, :cond_0

    .line 49
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;

    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;->SYSTEM_ERR:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    invoke-direct {v0, p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;)V

    .line 50
    .local v0, "agent":Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->startup()V

    .line 51
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v3, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent$1;

    invoke-direct {v3, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent$1;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;)V

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 57
    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->singleton:Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;

    .line 59
    .end local v0    # "agent":Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;
    :cond_0
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->singleton:Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method createAgentOutput()Lorg/jacoco/agent/rt/internal_b0d6a23/output/IAgentOutput;
    .locals 3

    .prologue
    .line 154
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->options:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getOutput()Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    move-result-object v0

    .line 155
    .local v0, "controllerType":Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent$2;->$SwitchMap$org$jacoco$core$runtime$AgentOptions$OutputMode:[I

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 165
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 157
    :pswitch_0
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/output/FileOutput;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/FileOutput;-><init>()V

    .line 163
    :goto_0
    return-object v1

    .line 159
    :pswitch_1
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->logger:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    invoke-direct {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;)V

    goto :goto_0

    .line 161
    :pswitch_2
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->logger:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    invoke-direct {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;)V

    goto :goto_0

    .line 163
    :pswitch_3
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/output/NoneOutput;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/NoneOutput;-><init>()V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dump(Z)V
    .locals 1
    .param p1, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->output:Lorg/jacoco/agent/rt/internal_b0d6a23/output/IAgentOutput;

    invoke-interface {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/IAgentOutput;->writeExecutionData(Z)V

    .line 213
    return-void
.end method

.method public getData()Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    return-object v0
.end method

.method public getExecutionData(Z)[B
    .locals 4
    .param p1, "reset"    # Z

    .prologue
    .line 200
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 202
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;

    invoke-direct {v2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;-><init>(Ljava/io/OutputStream;)V

    .line 203
    .local v2, "writer":Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    invoke-virtual {v3, v2, v2, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->collect(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ISessionInfoVisitor;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 204
    .end local v2    # "writer":Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/JaCoCo;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->reset()V

    .line 197
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->setSessionId(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->options:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getDumpOnExit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->output:Lorg/jacoco/agent/rt/internal_b0d6a23/output/IAgentOutput;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/IAgentOutput;->writeExecutionData(Z)V

    .line 139
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->output:Lorg/jacoco/agent/rt/internal_b0d6a23/output/IAgentOutput;

    invoke-interface {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/IAgentOutput;->shutdown()V

    .line 140
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->jmxRegistration:Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->jmxRegistration:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->logger:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    invoke-interface {v1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;->logExeption(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public startup()V
    .locals 5

    .prologue
    .line 116
    :try_start_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->options:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;

    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "sessionId":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 118
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->createSessionId()Ljava/lang/String;

    move-result-object v1

    .line 120
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    invoke-virtual {v2, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->setSessionId(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->createAgentOutput()Lorg/jacoco/agent/rt/internal_b0d6a23/output/IAgentOutput;

    move-result-object v2

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->output:Lorg/jacoco/agent/rt/internal_b0d6a23/output/IAgentOutput;

    .line 122
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->output:Lorg/jacoco/agent/rt/internal_b0d6a23/output/IAgentOutput;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->options:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    invoke-interface {v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/IAgentOutput;->startup(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;)V

    .line 123
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->options:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;

    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getJmx()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    new-instance v2, Lorg/jacoco/agent/rt/internal_b0d6a23/JmxRegistration;

    invoke-direct {v2, p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/JmxRegistration;-><init>(Lorg/jacoco/agent/rt/IAgent;)V

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->jmxRegistration:Ljava/util/concurrent/Callable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1    # "sessionId":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->logger:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    invoke-interface {v2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;->logExeption(Ljava/lang/Exception;)V

    goto :goto_0
.end method
