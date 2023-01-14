.class public Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;
.super Ljava/lang/Object;
.source "ExecutionDataReader.java"


# instance fields
.field private executionDataVisitor:Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;

.field private firstBlock:Z

.field protected final in:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;

.field private sessionInfoVisitor:Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ISessionInfoVisitor;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->sessionInfoVisitor:Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ISessionInfoVisitor;

    .line 32
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->executionDataVisitor:Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->firstBlock:Z

    .line 45
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;

    invoke-direct {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;

    .line 46
    return-void
.end method

.method private readExecutionData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->executionDataVisitor:Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;

    if-nez v4, :cond_0

    .line 144
    new-instance v4, Ljava/io/IOException;

    const-string v5, "No execution data visitor."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 146
    :cond_0
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;

    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;->readLong()J

    move-result-wide v0

    .line 147
    .local v0, "id":J
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;

    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;

    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;->readBooleanArray()[Z

    move-result-object v3

    .line 149
    .local v3, "probes":[Z
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->executionDataVisitor:Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;

    new-instance v5, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;-><init>(JLjava/lang/String;[Z)V

    invoke-interface {v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;->visitClassExecution(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;)V

    .line 151
    return-void
.end method

.method private readHeader()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;->readChar()C

    move-result v1

    const v2, 0xc0c0

    if-eq v1, v2, :cond_0

    .line 123
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid execution data file."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;->readChar()C

    move-result v0

    .line 126
    .local v0, "version":C
    const/16 v1, 0x1007

    if-eq v0, v1, :cond_1

    .line 127
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Incompatible version %x."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_1
    return-void
.end method

.method private readSessionInfo()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->sessionInfoVisitor:Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ISessionInfoVisitor;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/io/IOException;

    const-string v6, "No session info visitor."

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "id":Ljava/lang/String;
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;->readLong()J

    move-result-wide v2

    .line 138
    .local v2, "start":J
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;->readLong()J

    move-result-wide v4

    .line 139
    .local v4, "dump":J
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->sessionInfoVisitor:Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ISessionInfoVisitor;

    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v6, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ISessionInfoVisitor;->visitSessionInfo(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;)V

    .line 140
    return-void
.end method


# virtual methods
.method public read()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 82
    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;

    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CompactDataInput;->readByte()B

    move-result v1

    .line 83
    .local v1, "type":B
    iget-boolean v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->firstBlock:Z

    if-eqz v4, :cond_1

    if-eq v1, v2, :cond_1

    .line 84
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Invalid execution data file."

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    .end local v1    # "type":B
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/EOFException;
    move v2, v3

    .line 90
    .end local v0    # "e":Ljava/io/EOFException;
    :goto_0
    return v2

    .line 86
    .restart local v1    # "type":B
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->firstBlock:Z

    .line 87
    invoke-virtual {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->readBlock(B)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0
.end method

.method protected readBlock(B)Z
    .locals 5
    .param p1, "blocktype"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 105
    sparse-switch p1, :sswitch_data_0

    .line 116
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown block type %x."

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :sswitch_0
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->readHeader()V

    .line 114
    :goto_0
    return v2

    .line 110
    :sswitch_1
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->readSessionInfo()V

    goto :goto_0

    .line 113
    :sswitch_2
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->readExecutionData()V

    goto :goto_0

    .line 105
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method public setExecutionDataVisitor(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->executionDataVisitor:Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;

    .line 66
    return-void
.end method

.method public setSessionInfoVisitor(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ISessionInfoVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ISessionInfoVisitor;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataReader;->sessionInfoVisitor:Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ISessionInfoVisitor;

    .line 56
    return-void
.end method
