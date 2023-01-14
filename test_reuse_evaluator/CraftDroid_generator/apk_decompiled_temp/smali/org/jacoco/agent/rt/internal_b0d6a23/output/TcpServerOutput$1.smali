.class Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput$1;
.super Ljava/lang/Object;
.source "TcpServerOutput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->startup(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;

.field final synthetic val$data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;

    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput$1;->val$data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 56
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->access$000(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    :try_start_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->access$000(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;)Ljava/net/ServerSocket;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :try_start_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;

    new-instance v3, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;

    invoke-static {v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->access$000(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;)Ljava/net/ServerSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v4

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput$1;->val$data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    invoke-direct {v3, v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;-><init>(Ljava/net/Socket;Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;)V

    invoke-static {v1, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->access$102(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;)Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

    .line 61
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :try_start_2
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->access$100(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;)Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->init()V

    .line 63
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->access$100(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;)Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->run()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->access$000(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;->access$200(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpServerOutput;)Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;->logExeption(Ljava/lang/Exception;)V

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 72
    :cond_1
    return-void
.end method
