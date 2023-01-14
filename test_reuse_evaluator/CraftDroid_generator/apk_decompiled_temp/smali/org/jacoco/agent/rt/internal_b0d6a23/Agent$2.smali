.class Lorg/jacoco/agent/rt/internal_b0d6a23/Agent$2;
.super Ljava/lang/Object;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/agent/rt/internal_b0d6a23/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jacoco$core$runtime$AgentOptions$OutputMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 155
    invoke-static {}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->values()[Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent$2;->$SwitchMap$org$jacoco$core$runtime$AgentOptions$OutputMode:[I

    :try_start_0
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent$2;->$SwitchMap$org$jacoco$core$runtime$AgentOptions$OutputMode:[I

    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->file:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent$2;->$SwitchMap$org$jacoco$core$runtime$AgentOptions$OutputMode:[I

    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->tcpserver:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent$2;->$SwitchMap$org$jacoco$core$runtime$AgentOptions$OutputMode:[I

    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->tcpclient:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/Agent$2;->$SwitchMap$org$jacoco$core$runtime$AgentOptions$OutputMode:[I

    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->none:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
