.class public final Lcom/vladium/emma/rt/RT;
.super Ljava/lang/Object;
.source "RT.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static declared-synchronized dumpCoverageData(Ljava/io/File;Z)V
    .locals 2
    .param p0, "outFile"    # Ljava/io/File;
    .param p1, "stopDataCollection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const-class v0, Lcom/vladium/emma/rt/RT;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/vladium/emma/rt/RT;->dumpCoverageData(Ljava/io/File;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit v0

    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static dumpCoverageData(Ljava/io/File;ZZ)V
    .locals 3
    .param p0, "outFile"    # Ljava/io/File;
    .param p1, "merge"    # Z
    .param p2, "stopDataCollection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 52
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {}, Lorg/jacoco/agent/rt/RT;->getAgent()Lorg/jacoco/agent/rt/IAgent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/jacoco/agent/rt/IAgent;->getExecutionData(Z)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 56
    return-void

    .line 54
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
.end method
