.class Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;
.super Ljava/lang/Object;
.source "Handler.java"


# instance fields
.field desc:Ljava/lang/String;

.field end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

.field handler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

.field next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

.field start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static remove(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;
    .locals 6
    .param p0, "h"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;
    .param p1, "start"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p2, "end"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 84
    if-nez p0, :cond_1

    .line 85
    const/4 p0, 0x0

    .line 119
    .end local p0    # "h":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;
    :cond_0
    :goto_0
    return-object p0

    .line 87
    .restart local p0    # "h":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;
    :cond_1
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    invoke-static {v5, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->remove(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    move-result-object v5

    iput-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    .line 89
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v3, v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    .line 90
    .local v3, "hstart":I
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iget v2, v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    .line 91
    .local v2, "hend":I
    iget v4, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    .line 92
    .local v4, "s":I
    if-nez p2, :cond_2

    const v0, 0x7fffffff

    .line 94
    .local v0, "e":I
    :goto_1
    if-ge v4, v2, :cond_0

    if-le v0, v3, :cond_0

    .line 95
    if-gt v4, v3, :cond_4

    .line 96
    if-lt v0, v2, :cond_3

    .line 98
    iget-object p0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    goto :goto_0

    .line 92
    .end local v0    # "e":I
    :cond_2
    iget v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->position:I

    goto :goto_1

    .line 101
    .restart local v0    # "e":I
    :cond_3
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    goto :goto_0

    .line 103
    :cond_4
    if-lt v0, v2, :cond_5

    .line 105
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    goto :goto_0

    .line 108
    :cond_5
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;-><init>()V

    .line 109
    .local v1, "g":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;
    iput-object p2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 110
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iput-object v5, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 111
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->handler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    iput-object v5, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->handler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 112
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->desc:Ljava/lang/String;

    iput-object v5, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->desc:Ljava/lang/String;

    .line 113
    iget v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->type:I

    iput v5, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->type:I

    .line 114
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    iput-object v5, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    .line 115
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 116
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handler;

    goto :goto_0
.end method
