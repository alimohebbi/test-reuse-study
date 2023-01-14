.class public final Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;
.super Ljava/lang/Object;
.source "ExecutionData.java"


# instance fields
.field private final id:J

.field private final name:Ljava/lang/String;

.field private final probes:[Z


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "probeCount"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->id:J

    .line 61
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->name:Ljava/lang/String;

    .line 62
    new-array v0, p4, [Z

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->probes:[Z

    .line 63
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;[Z)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "probes"    # [Z

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->id:J

    .line 44
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->name:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->probes:[Z

    .line 46
    return-void
.end method


# virtual methods
.method public assertCompatibility(JLjava/lang/String;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "probecount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 170
    iget-wide v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->id:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Different ids (%016x and %016x)."

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->name:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Different class names %s and %s for id %016x."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->name:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object p3, v2, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->probes:[Z

    array-length v0, v0

    if-eq v0, p4, :cond_2

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Incompatible execution data for class %s with id %016x."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_2
    return-void
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProbes()[Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->probes:[Z

    return-object v0
.end method

.method public merge(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;)V
    .locals 1
    .param p1, "other"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->merge(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;Z)V

    .line 118
    return-void
.end method

.method public merge(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;Z)V
    .locals 6
    .param p1, "other"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;
    .param p2, "flag"    # Z

    .prologue
    .line 144
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->getProbes()[Z

    move-result-object v5

    array-length v5, v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->assertCompatibility(JLjava/lang/String;I)V

    .line 146
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->getProbes()[Z

    move-result-object v1

    .line 147
    .local v1, "otherData":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->probes:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 148
    aget-boolean v2, v1, v0

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->probes:[Z

    aput-boolean p2, v2, v0

    .line 147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->probes:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 189
    const-string v0, "ExecutionData[name=%s, id=%016x]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
