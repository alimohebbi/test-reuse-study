.class public Lorg/jacoco/agent/rt/internal_b0d6a23/output/FileOutput;
.super Ljava/lang/Object;
.source "FileOutput.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_b0d6a23/output/IAgentOutput;


# instance fields
.field private append:Z

.field private data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

.field private destFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private openFile()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/FileOutput;->destFile:Ljava/io/File;

    iget-boolean v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/FileOutput;->append:Z

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 69
    .local v0, "file":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    .line 70
    return-object v0
.end method


# virtual methods
.method public shutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    return-void
.end method

.method public final startup(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;)V
    .locals 3
    .param p1, "options"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;
    .param p2, "data"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/FileOutput;->data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    .line 42
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getDestfile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/FileOutput;->destFile:Ljava/io/File;

    .line 43
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getAppend()Z

    move-result v1

    iput-boolean v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/FileOutput;->append:Z

    .line 44
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/FileOutput;->destFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 45
    .local v0, "folder":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 49
    :cond_0
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/FileOutput;->openFile()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 50
    return-void
.end method

.method public writeExecutionData(Z)V
    .locals 3
    .param p1, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/output/FileOutput;->openFile()Ljava/io/OutputStream;

    move-result-object v0

    .line 55
    .local v0, "output":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;

    invoke-direct {v1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;-><init>(Ljava/io/OutputStream;)V

    .line 56
    .local v1, "writer":Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/output/FileOutput;->data:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;

    invoke-virtual {v2, v1, v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->collect(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ISessionInfoVisitor;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 60
    return-void

    .line 58
    .end local v1    # "writer":Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v2
.end method
