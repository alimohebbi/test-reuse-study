.class public Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;
.super Ljava/lang/Object;
.source "Instruction.java"


# instance fields
.field private branches:I

.field private coveredBranches:I

.field private final line:I

.field private predecessor:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;->line:I

    .line 36
    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;->branches:I

    .line 37
    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;->coveredBranches:I

    .line 38
    return-void
.end method


# virtual methods
.method public addBranch()V
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;->branches:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;->branches:I

    .line 45
    return-void
.end method

.method public getBranches()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;->branches:I

    return v0
.end method

.method public getCoveredBranches()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;->coveredBranches:I

    return v0
.end method

.method public getLine()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;->line:I

    return v0
.end method

.method public setCovered()V
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .line 67
    .local v0, "i":Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;
    :goto_0
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;->coveredBranches:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;->coveredBranches:I

    if-nez v1, :cond_0

    .line 68
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;->predecessor:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public setPredecessor(Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;)V
    .locals 0
    .param p1, "predecessor"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;->predecessor:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;

    .line 57
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/Instruction;->addBranch()V

    .line 58
    return-void
.end method
