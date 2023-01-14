.class public Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;
.super Ljava/lang/Object;
.source "TcpServerOutput.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_b0d6a23/output/IAgentOutput;


# instance fields
.field private connection:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

.field private final logger:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

.field private serverSocket:Ljava/net/ServerSocket;

.field private worker:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;)V
    .locals 0
    .param p1, "logger"    # Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->logger:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;)Ljava/net/ServerSocket;
    .locals 1
    .param p0, "x0"    # Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;)Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;
    .locals 1
    .param p0, "x0"    # Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->connection:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

    return-object v0
.end method

.method static synthetic access$102(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;)Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;
    .locals 0
    .param p0, "x0"    # Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;
    .param p1, "x1"    # Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

    .prologue
    .line 31
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->connection:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

    return-object p1
.end method

.method static synthetic access$200(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;)Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;
    .locals 1
    .param p0, "x0"    # Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->logger:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    return-object v0
.end method


# virtual methods
.method protected createServerSocket(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;)Ljava/net/ServerSocket;
    .locals 4
    .param p1, "options"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->getInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 106
    .local v0, "inetAddr":Ljava/net/InetAddress;
    new-instance v1, Ljava/net/ServerSocket;

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getPort()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    return-object v1
.end method

.method protected getInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 119
    const-string v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 81
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->serverSocket:Ljava/net/ServerSocket;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->connection:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->connection:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->close()V

    .line 85
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 87
    return-void

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startup(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;)V
    .locals 2
    .param p1, "options"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;
    .param p2, "data"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->createServerSocket(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->serverSocket:Ljava/net/ServerSocket;

    .line 54
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput$1;

    invoke-direct {v1, p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput$1;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->worker:Ljava/lang/Thread;

    .line 74
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->worker:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->worker:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 76
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
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
    .line 90
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->connection:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->connection:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->writeExecutionData(Z)V

    .line 93
    :cond_0
    return-void
.end method
