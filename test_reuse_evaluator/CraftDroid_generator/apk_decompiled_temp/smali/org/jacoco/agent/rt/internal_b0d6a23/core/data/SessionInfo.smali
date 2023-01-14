.class public Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;
.super Ljava/lang/Object;
.source "SessionInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final dump:J

.field private final id:Ljava/lang/String;

.field private final start:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "dump"    # J

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;->id:Ljava/lang/String;

    .line 43
    iput-wide p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;->start:J

    .line 44
    iput-wide p4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;->dump:J

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;->compareTo(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;)I
    .locals 4
    .param p1, "other"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;->dump:J

    iget-wide v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;->dump:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 71
    const/4 v0, -0x1

    .line 76
    :goto_0
    return v0

    .line 73
    :cond_0
    iget-wide v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;->dump:J

    iget-wide v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;->dump:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDumpTimeStamp()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;->dump:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimeStamp()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;->start:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/SessionInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
