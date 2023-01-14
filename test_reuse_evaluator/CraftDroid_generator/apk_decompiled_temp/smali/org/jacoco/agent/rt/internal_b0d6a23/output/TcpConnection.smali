.class Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;
.super Ljava/lang/Object;
.source "TcpConnection.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRemoteCommandVisitor;


# instance fields
.field private final data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

.field private initialized:Z

.field private reader:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlReader;

.field private final socket:Ljava/net/Socket;

.field private writer:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlWriter;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "data"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->socket:Ljava/net/Socket;

    .line 40
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->initialized:Z

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 95
    :cond_0
    return-void
.end method

.method public init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlWriter;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->writer:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlWriter;

    .line 46
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlReader;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->reader:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlReader;

    .line 47
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->reader:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlReader;

    invoke-virtual {v0, p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlReader;->setRemoteCommandVisitor(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRemoteCommandVisitor;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->initialized:Z

    .line 49
    return-void
.end method

.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->reader:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlReader;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlReader;->read()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->close()V

    .line 70
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/net/SocketException;
    :try_start_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .end local v0    # "e":Ljava/net/SocketException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->close()V

    throw v1

    .restart local v0    # "e":Ljava/net/SocketException;
    :cond_1
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->close()V

    goto :goto_0
.end method

.method public visitDumpCommand(ZZ)V
    .locals 3
    .param p1, "dump"    # Z
    .param p2, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    if-eqz p1, :cond_1

    .line 102
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->writer:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlWriter;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->writer:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlWriter;

    invoke-virtual {v0, v1, v2, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->collect(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ISessionInfoVisitor;Z)V

    .line 108
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->writer:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlWriter;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlWriter;->sendCmdOk()V

    .line 109
    return-void

    .line 104
    :cond_1
    if-eqz p2, :cond_0

    .line 105
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->reset()V

    goto :goto_0
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
    .line 81
    iget-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->initialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->visitDumpCommand(ZZ)V

    .line 84
    :cond_0
    return-void
.end method
