.class public Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;
.super Ljava/lang/Object;
.source "RuntimeData.java"


# instance fields
.field private sessionId:Ljava/lang/String;

.field private startTimeStamp:J

.field protected final store:Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->store:Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;

    .line 41
    const-string v0, "<none>"

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->sessionId:Ljava/lang/String;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->startTimeStamp:J

    .line 43
    return-void
.end method

.method public static generateAccessCall(JLjava/lang/String;ILorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 6
    .param p0, "classid"    # J
    .param p2, "classname"    # Ljava/lang/String;
    .param p3, "probecount"    # I
    .param p4, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 229
    invoke-static {p0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->generateArgumentArray(JLjava/lang/String;ILorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 234
    const/16 v0, 0x5a

    invoke-virtual {p4, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 240
    const/16 v1, 0xb6

    const-string v2, "java/lang/Object"

    const-string v3, "equals"

    const-string v4, "(Ljava/lang/Object;)Z"

    const/4 v5, 0x0

    move-object v0, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 242
    const/16 v0, 0x57

    invoke-virtual {p4, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 246
    const/4 v0, 0x3

    invoke-virtual {p4, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 247
    const/16 v0, 0x32

    invoke-virtual {p4, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 251
    const/16 v0, 0xc0

    const-string v1, "[Z"

    invoke-virtual {p4, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 252
    return-void
.end method

.method public static generateArgumentArray(JLjava/lang/String;ILorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 8
    .param p0, "classid"    # J
    .param p2, "classname"    # Ljava/lang/String;
    .param p3, "probecount"    # I
    .param p4, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    const/16 v1, 0xb8

    const/4 v5, 0x0

    const/16 v7, 0x59

    const/16 v6, 0x53

    .line 183
    const/4 v0, 0x6

    invoke-virtual {p4, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 184
    const/16 v0, 0xbd

    const-string v2, "java/lang/Object"

    invoke-virtual {p4, v0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 187
    invoke-virtual {p4, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 188
    const/4 v0, 0x3

    invoke-virtual {p4, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 189
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 190
    const-string v2, "java/lang/Long"

    const-string v3, "valueOf"

    const-string v4, "(J)Ljava/lang/Long;"

    move-object v0, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    invoke-virtual {p4, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 195
    invoke-virtual {p4, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 196
    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 197
    invoke-virtual {p4, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p4, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 201
    invoke-virtual {p4, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 202
    const/4 v0, 0x5

    invoke-virtual {p4, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 203
    invoke-static {p4, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/InstrSupport;->push(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;I)V

    .line 204
    const-string v2, "java/lang/Integer"

    const-string v3, "valueOf"

    const-string v4, "(I)Ljava/lang/Integer;"

    move-object v0, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 206
    invoke-virtual {p4, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 207
    return-void
.end method


# virtual methods
.method public final collect(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ISessionInfoVisitor;Z)V
    .locals 7
    .param p1, "executionDataVisitor"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;
    .param p2, "sessionInfoVisitor"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ISessionInfoVisitor;
    .param p3, "reset"    # Z

    .prologue
    .line 83
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->store:Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;

    monitor-enter v6

    .line 84
    :try_start_0
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->sessionId:Ljava/lang/String;

    iget-wide v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->startTimeStamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;-><init>(Ljava/lang/String;JJ)V

    .line 86
    .local v0, "info":Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;
    invoke-interface {p2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ISessionInfoVisitor;->visitSessionInfo(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;)V

    .line 87
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->store:Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;)V

    .line 88
    if-eqz p3, :cond_0

    .line 89
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->reset()V

    .line 91
    :cond_0
    monitor-exit v6

    .line 92
    return-void

    .line 91
    .end local v0    # "info":Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "args"    # Ljava/lang/Object;

    .prologue
    .line 161
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 162
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->getProbes([Ljava/lang/Object;)V

    .line 164
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getExecutionData(Ljava/lang/Long;Ljava/lang/String;I)Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;
    .locals 2
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "probecount"    # I

    .prologue
    .line 119
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->store:Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->store:Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->get(Ljava/lang/Long;Ljava/lang/String;I)Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProbes([Ljava/lang/Object;)V
    .locals 5
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 145
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Long;

    .line 146
    .local v0, "classid":Ljava/lang/Long;
    const/4 v3, 0x1

    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/String;

    .line 147
    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 148
    .local v2, "probecount":I
    invoke-virtual {p0, v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->getExecutionData(Ljava/lang/Long;Ljava/lang/String;I)Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->getProbes()[Z

    move-result-object v3

    aput-object v3, p1, v4

    .line 149
    return-void
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final reset()V
    .locals 4

    .prologue
    .line 98
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->store:Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->store:Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->reset()V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->startTimeStamp:J

    .line 101
    monitor-exit v1

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/RuntimeData;->sessionId:Ljava/lang/String;

    .line 57
    return-void
.end method
