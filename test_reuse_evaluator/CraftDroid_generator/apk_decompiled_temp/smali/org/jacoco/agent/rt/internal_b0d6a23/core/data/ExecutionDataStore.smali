.class public final Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;
.super Ljava/lang/Object;
.source "ExecutionDataStore.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;


# instance fields
.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;",
            ">;"
        }
    .end annotation
.end field

.field private final names:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->entries:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->names:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;)V
    .locals 3
    .param p1, "visitor"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;

    .prologue
    .line 167
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->entries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;

    .line 168
    .local v0, "data":Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;
    invoke-interface {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/IExecutionDataVisitor;->visitClassExecution(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;)V

    goto :goto_0

    .line 170
    .end local v0    # "data":Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->names:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(J)Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 100
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->entries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;

    return-object v0
.end method

.method public get(Ljava/lang/Long;Ljava/lang/String;I)Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;
    .locals 4
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "probecount"    # I

    .prologue
    .line 130
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->entries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;

    .line 131
    .local v0, "entry":Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;
    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;

    .end local v0    # "entry":Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;-><init>(JLjava/lang/String;I)V

    .line 133
    .restart local v0    # "entry":Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->entries:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->names:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    :goto_0
    return-object v0

    .line 136
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->assertCompatibility(JLjava/lang/String;I)V

    goto :goto_0
.end method

.method public getContents()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public put(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;)V
    .locals 4
    .param p1, "data"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 48
    .local v1, "id":Ljava/lang/Long;
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->entries:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;

    .line 49
    .local v0, "entry":Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;
    if-nez v0, :cond_0

    .line 50
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->entries:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->names:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->merge(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 146
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->entries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;

    .line 147
    .local v0, "executionData":Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->reset()V

    goto :goto_0

    .line 149
    .end local v0    # "executionData":Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;
    :cond_0
    return-void
.end method

.method public subtract(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;)V
    .locals 4
    .param p1, "data"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 72
    .local v1, "id":Ljava/lang/Long;
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->entries:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;

    .line 73
    .local v0, "entry":Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;
    if-eqz v0, :cond_0

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;->merge(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;Z)V

    .line 76
    :cond_0
    return-void
.end method

.method public subtract(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;)V
    .locals 3
    .param p1, "store"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;

    .prologue
    .line 86
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->getContents()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;

    .line 87
    .local v0, "data":Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;
    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->subtract(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;)V

    goto :goto_0

    .line 89
    .end local v0    # "data":Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;
    :cond_0
    return-void
.end method

.method public visitClassExecution(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;)V
    .locals 0
    .param p1, "data"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionDataStore;->put(Lorg/jacoco/agent/rt/internal_b0d6a23/core/data/ExecutionData;)V

    .line 176
    return-void
.end method
