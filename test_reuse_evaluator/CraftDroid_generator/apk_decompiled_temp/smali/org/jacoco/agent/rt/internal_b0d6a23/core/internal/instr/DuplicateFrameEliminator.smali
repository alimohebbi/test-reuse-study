.class Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
.source "DuplicateFrameEliminator.java"


# instance fields
.field private instruction:Z


# direct methods
.method public constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 1
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 30
    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 32
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
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 71
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .prologue
    .line 37
    iget-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 39
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 41
    :cond_0
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 1
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 103
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitIincInsn(II)V

    .line 104
    return-void
.end method

.method public visitInsn(I)V
    .locals 1
    .param p1, "opcode"    # I

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 46
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 47
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 52
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitIntInsn(II)V

    .line 53
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 85
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;[Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public visitJumpInsn(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 91
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 92
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1
    .param p1, "cst"    # Ljava/lang/Object;

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 97
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 1
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 117
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 118
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 78
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 123
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 124
    return-void
.end method

.method public varargs visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p4, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 110
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 111
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 64
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 65
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 58
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitVarInsn(II)V

    .line 59
    return-void
.end method
