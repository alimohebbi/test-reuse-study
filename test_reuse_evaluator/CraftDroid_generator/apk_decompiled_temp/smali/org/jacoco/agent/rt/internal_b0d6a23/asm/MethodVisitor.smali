.class public abstract Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
.super Ljava/lang/Object;
.source "MethodVisitor.java"


# instance fields
.field protected final api:I

.field protected mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "api"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 78
    return-void
.end method

.method public constructor <init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 94
    :cond_0
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->api:I

    .line 95
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .line 96
    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public visitAnnotationDefault()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitAnnotationDefault()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public visitAttribute(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .prologue
    .line 218
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitAttribute(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;)V

    .line 221
    :cond_0
    return-void
.end method

.method public visitCode()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitCode()V

    .line 230
    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitEnd()V

    .line 879
    :cond_0
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .prologue
    .line 421
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_0
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
    .line 309
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 312
    :cond_0
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 1
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .prologue
    .line 607
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitIincInsn(II)V

    .line 610
    :cond_0
    return-void
.end method

.method public visitInsn(I)V
    .locals 1
    .param p1, "opcode"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 342
    :cond_0
    return-void
.end method

.method public visitInsnAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .prologue
    .line 696
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    .line 697
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 699
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsnAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v0

    .line 702
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public visitIntInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitIntInsn(II)V

    .line 366
    :cond_0
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .prologue
    .line 506
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;[Ljava/lang/Object;)V

    .line 509
    :cond_0
    return-void
.end method

.method public visitJumpInsn(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 526
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 529
    :cond_0
    return-void
.end method

.method public visitLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 1
    .param p1, "label"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 539
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 542
    :cond_0
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1
    .param p1, "cst"    # Ljava/lang/Object;

    .prologue
    .line 593
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 596
    :cond_0
    return-void
.end method

.method public visitLineNumber(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 850
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLineNumber(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 853
    :cond_0
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p5, "end"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p6, "index"    # I

    .prologue
    .line 790
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;I)V

    .line 793
    :cond_0
    return-void
.end method

.method public visitLocalVariableAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 8
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .param p3, "start"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p4, "end"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p5, "index"    # [I
    .param p6, "desc"    # Ljava/lang/String;
    .param p7, "visible"    # Z

    .prologue
    .line 827
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    .line 828
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 830
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v0

    .line 834
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 1
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 644
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 647
    :cond_0
    return-void
.end method

.method public visitMaxs(II)V
    .locals 1
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .prologue
    .line 865
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMaxs(II)V

    .line 868
    :cond_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 445
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_2

    .line 446
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_1

    const/4 v5, 0x1

    .local v5, "itf":Z
    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 447
    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 453
    .end local v5    # "itf":Z
    :cond_0
    :goto_1
    return-void

    .line 446
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 450
    :cond_2
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .prologue
    .line 475
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_3

    .line 476
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eq p5, v0, :cond_1

    .line 477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "INVOKESPECIAL/STATIC on interfaces require ASM 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 480
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_2
    :goto_1
    return-void

    .line 483
    :cond_3
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .prologue
    .line 658
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 661
    :cond_0
    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "access"    # I

    .prologue
    .line 113
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    .line 119
    :cond_1
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 1
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .prologue
    .line 205
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p4, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 627
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 630
    :cond_0
    return-void
.end method

.method public visitTryCatchAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .prologue
    .line 756
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    .line 757
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 759
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTryCatchAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v0

    .line 762
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public visitTryCatchBlock(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Ljava/lang/String;)V
    .locals 1
    .param p1, "start"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p2, "end"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p3, "handler"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 728
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTryCatchBlock(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Ljava/lang/String;)V

    .line 731
    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .prologue
    .line 182
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 402
    :cond_0
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitVarInsn(II)V

    .line 384
    :cond_0
    return-void
.end method
