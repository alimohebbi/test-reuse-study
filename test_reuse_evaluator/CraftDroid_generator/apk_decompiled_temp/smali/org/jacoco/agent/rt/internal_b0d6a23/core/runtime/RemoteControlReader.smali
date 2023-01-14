.class public Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlReader;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;
.source "RemoteControlReader.java"


# instance fields
.field private remoteCommandVisitor:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRemoteCommandVisitor;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;-><init>(Ljava/io/InputStream;)V

    .line 36
    return-void
.end method

.method private readDumpCommand()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlReader;->remoteCommandVisitor:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRemoteCommandVisitor;

    if-nez v2, :cond_0

    .line 63
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No remote command visitor."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlReader;->in:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;

    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;->readBoolean()Z

    move-result v0

    .line 66
    .local v0, "dump":Z
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlReader;->in:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;

    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;->readBoolean()Z

    move-result v1

    .line 67
    .local v1, "reset":Z
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlReader;->remoteCommandVisitor:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRemoteCommandVisitor;

    invoke-interface {v2, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRemoteCommandVisitor;->visitDumpCommand(ZZ)V

    .line 68
    return-void
.end method


# virtual methods
.method protected readBlock(B)Z
    .locals 1
    .param p1, "blockid"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 47
    invoke-super {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->readBlock(B)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlReader;->readDumpCommand()V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 45
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public setRemoteCommandVisitor(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRemoteCommandVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRemoteCommandVisitor;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RemoteControlReader;->remoteCommandVisitor:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRemoteCommandVisitor;

    .line 59
    return-void
.end method
