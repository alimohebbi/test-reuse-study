.class public final Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
.source "LabelFlowAnalyzer.java"


# instance fields
.field first:Z

.field lineStart:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

.field successor:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;-><init>(I)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->lineStart:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 66
    return-void
.end method

.method public static markLabels(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;)V
    .locals 3
    .param p0, "method"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;

    .prologue
    .line 37
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;-><init>()V

    .line 38
    .local v1, "lfa":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 39
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;

    invoke-virtual {v2, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v2, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 42
    return-void
.end method

.method private markMethodInvocationLine()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->lineStart:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->lineStart:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelInfo;->setMethodInvocationLine(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 202
    :cond_0
    return-void
.end method

.method private static setTargetIfNotDone(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 1
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 130
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelInfo;->isDone(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelInfo;->setTarget(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 132
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelInfo;->setDone(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 134
    :cond_0
    return-void
.end method

.method private visitSwitchInsn(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 5
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p2, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelInfo;->resetDone(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 120
    invoke-static {p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelInfo;->resetDone([Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 121
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->setTargetIfNotDone(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 122
    move-object v0, p2

    .local v0, "arr$":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 123
    .local v2, "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    invoke-static {v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->setTargetIfNotDone(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v2    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :cond_0
    iput-boolean v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 126
    iput-boolean v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 127
    return-void
.end method


# virtual methods
.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 180
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 1
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .prologue
    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 214
    return-void
.end method

.method public visitInsn(I)V
    .locals 2
    .param p1, "opcode"    # I

    .prologue
    const/4 v1, 0x0

    .line 138
    sparse-switch p1, :sswitch_data_0

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 154
    :goto_0
    iput-boolean v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 155
    return-void

    .line 140
    :sswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Subroutines not supported."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 148
    :sswitch_1
    iput-boolean v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    goto :goto_0

    .line 138
    nop

    :sswitch_data_0
    .sparse-switch
        0xa9 -> :sswitch_0
        0xac -> :sswitch_1
        0xad -> :sswitch_1
        0xae -> :sswitch_1
        0xaf -> :sswitch_1
        0xb0 -> :sswitch_1
        0xb1 -> :sswitch_1
        0xbf -> :sswitch_1
    .end sparse-switch
.end method

.method public visitIntInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 161
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .prologue
    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 195
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->markMethodInvocationLine()V

    .line 196
    return-void
.end method

.method public visitJumpInsn(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-static {p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelInfo;->setTarget(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 84
    const/16 v0, 0xa8

    if-ne p1, v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Subroutines not supported."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 87
    :cond_0
    const/16 v0, 0xa7

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 88
    iput-boolean v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 89
    return-void

    :cond_1
    move v0, v1

    .line 87
    goto :goto_0
.end method

.method public visitLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 1
    .param p1, "label"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->first:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelInfo;->setTarget(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 96
    :cond_0
    iget-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    if-eqz v0, :cond_1

    .line 97
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelInfo;->setSuccessor(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 99
    :cond_1
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1
    .param p1, "cst"    # Ljava/lang/Object;

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 208
    return-void
.end method

.method public visitLineNumber(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 103
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->lineStart:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 104
    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 0
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 115
    invoke-direct {p0, p1, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->visitSwitchInsn(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 116
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 187
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->markMethodInvocationLine()V

    .line 188
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .prologue
    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 220
    return-void
.end method

.method public varargs visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p4, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 109
    invoke-direct {p0, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->visitSwitchInsn(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 110
    return-void
.end method

.method public visitTryCatchBlock(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p2, "end"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p3, "handler"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelInfo;->setTarget(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 78
    invoke-static {p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelInfo;->setTarget(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 79
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 173
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .prologue
    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 167
    return-void
.end method
