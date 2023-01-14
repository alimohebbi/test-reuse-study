.class public Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;
.super Ljava/lang/Object;
.source "ExecutionDataWriter.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ISessionInfoVisitor;
.implements Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;


# static fields
.field public static final BLOCK_EXECUTIONDATA:B = 0x11t

.field public static final BLOCK_HEADER:B = 0x1t

.field public static final BLOCK_SESSIONINFO:B = 0x10t

.field public static final FORMAT_VERSION:C = '\u1007'

.field public static final MAGIC_NUMBER:C = '\uc0c0'


# instance fields
.field protected final out:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;

    invoke-direct {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;

    .line 56
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;->writeHeader()V

    .line 57
    return-void
.end method

.method public static final getFileHeader()[B
    .locals 3

    .prologue
    .line 111
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;

    invoke-direct {v2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 114
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private writeHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;->writeByte(I)V

    .line 67
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;

    const v1, 0xc0c0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;->writeChar(I)V

    .line 68
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;

    const/16 v1, 0x1007

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;->writeChar(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;->flush()V

    .line 79
    return-void
.end method

.method public visitClassExecution(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;)V
    .locals 4
    .param p1, "data"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;->writeByte(I)V

    .line 95
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;->writeLong(J)V

    .line 96
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;->writeUTF(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->getProbes()[Z

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;->writeBooleanArray([Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public visitSessionInfo(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;)V
    .locals 4
    .param p1, "info"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;->writeByte(I)V

    .line 84
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;->writeUTF(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;->getStartTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;->writeLong(J)V

    .line 86
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;->getDumpTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataOutput;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
