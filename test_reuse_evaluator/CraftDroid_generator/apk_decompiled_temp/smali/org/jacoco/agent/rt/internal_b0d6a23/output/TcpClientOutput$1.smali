.class Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput$1;
.super Ljava/lang/Object;
.source "TcpClientOutput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;->startup(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;->access$000(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;)Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpConnection;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;->access$100(Lorg/jacoco/agent/rt/internal_b0d6a23/output/TcpClientOutput;)Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;->logExeption(Ljava/lang/Exception;)V

    goto :goto_0
.end method
