.class public final enum Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;
.super Ljava/lang/Enum;
.source "AgentOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OutputMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

.field public static final enum file:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

.field public static final enum none:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

.field public static final enum tcpclient:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

.field public static final enum tcpserver:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    const-string v1, "file"

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->file:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    .line 125
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    const-string v1, "tcpserver"

    invoke-direct {v0, v1, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->tcpserver:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    .line 132
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    const-string v1, "tcpclient"

    invoke-direct {v0, v1, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->tcpclient:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    .line 138
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    const-string v1, "none"

    invoke-direct {v0, v1, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->none:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    .line 111
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->file:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->tcpserver:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->tcpclient:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->none:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->$VALUES:[Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    const-class v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    return-object v0
.end method

.method public static final values()[Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->$VALUES:[Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    invoke-virtual {v0}, [Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    return-object v0
.end method
