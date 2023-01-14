.class public final Lorg/jacoco/agent/rt/RT;
.super Ljava/lang/Object;
.source "RT.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getAgent()Lorg/jacoco/agent/rt/IAgent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;->getInstance()Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;

    move-result-object v0

    return-object v0
.end method
