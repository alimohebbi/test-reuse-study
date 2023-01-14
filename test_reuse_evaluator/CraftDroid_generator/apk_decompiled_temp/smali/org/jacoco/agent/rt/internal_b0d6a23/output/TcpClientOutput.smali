.class public Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;
.super Ljava/lang/Object;
.source "TcpClientOutput.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_b0d6a23/output/IAgentOutput;


# instance fields
.field private connection:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

.field private final logger:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

.field private worker:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;)V
    .locals 0
    .param p1, "logger"    # Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;->logger:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;)Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;
    .locals 1
    .param p0, "x0"    # Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;->connection:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;)Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;
    .locals 1
    .param p0, "x0"    # Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;->logger:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    return-object v0
.end method


# virtual methods
.method protected createSocket(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;)Ljava/net/Socket;
    .locals 3
    .param p1, "options"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/net/Socket;

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;->connection:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->close()V

    .line 68
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 69
    return-void
.end method

.method public startup(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;)V
    .locals 3
    .param p1, "options"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;
    .param p2, "data"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;->createSocket(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;)Ljava/net/Socket;

    move-result-object v0

    .line 50
    .local v0, "socket":Ljava/net/Socket;
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

    invoke-direct {v1, v0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;-><init>(Ljava/net/Socket;Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;)V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;->connection:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

    .line 51
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;->connection:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->init()V

    .line 52
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput$1;

    invoke-direct {v2, p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput$1;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;->worker:Ljava/lang/Thread;

    .line 61
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;->worker:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;->worker:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 63
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;->worker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 64
    return-void
.end method

.method public writeExecutionData(Z)V
    .locals 1
    .param p1, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;->connection:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->writeExecutionData(Z)V

    .line 73
    return-void
.end method
