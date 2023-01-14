.class Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
.source "ProbeInserter.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeInserter;


# instance fields
.field private accessorStackSize:I

.field private final arrayStrategy:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;

.field private final variable:I


# direct methods
.method constructor <init>(ILjava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;)V
    .locals 6
    .param p1, "access"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .param p4, "arrayStrategy"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;

    .prologue
    .line 51
    const/high16 v5, 0x50000

    invoke-direct {p0, v5, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 52
    iput-object p4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->arrayStrategy:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;

    .line 53
    and-int/lit8 v5, p1, 0x8

    if-nez v5, :cond_0

    const/4 v3, 0x1

    .line 54
    .local v3, "pos":I
    :goto_0
    invoke-static {p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v0

    .local v0, "arr$":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 55
    .local v4, "t":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getSize()I

    move-result v5

    add-int/2addr v3, v5

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 53
    .end local v0    # "arr$":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pos":I
    .end local v4    # "t":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 57
    .restart local v0    # "arr$":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "pos":I
    :cond_1
    iput v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->variable:I

    .line 58
    return-void
.end method

.method private map(I)I
    .locals 1
    .param p1, "var"    # I

    .prologue
    .line 117
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->variable:I

    if-ge p1, v0, :cond_0

    .line 120
    .end local p1    # "var":I
    :goto_0
    return p1

    .restart local p1    # "var":I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public insertProbe(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    const/16 v1, 0x19

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->variable:I

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitVarInsn(II)V

    .line 69
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-static {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/InstrSupport;->push(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;I)V

    .line 74
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 80
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 81
    return-void
.end method

.method public visitCode()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->arrayStrategy:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->variable:I

    invoke-interface {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;->storeInstance(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;I)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->accessorStackSize:I

    .line 86
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitCode()V

    .line 87
    return-void
.end method

.method public final visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .prologue
    .line 128
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ClassReader.accept() should be called with EXPAND_FRAMES flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->variable:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    .line 134
    .local v3, "newLocal":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 135
    .local v6, "idx":I
    const/4 v2, 0x0

    .line 136
    .local v2, "newIdx":I
    const/4 v9, 0x0

    .local v9, "pos":I
    move v7, v6

    .line 137
    .end local v6    # "idx":I
    .local v7, "idx":I
    :goto_0
    if-lt v7, p2, :cond_1

    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->variable:I

    if-gt v9, v0, :cond_6

    .line 138
    :cond_1
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->variable:I

    if-ne v9, v0, :cond_2

    .line 139
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "newIdx":I
    .local v8, "newIdx":I
    const-string v0, "[Z"

    aput-object v0, v3, v2

    .line 140
    add-int/lit8 v9, v9, 0x1

    move v2, v8

    .end local v8    # "newIdx":I
    .restart local v2    # "newIdx":I
    goto :goto_0

    .line 142
    :cond_2
    if-ge v7, p2, :cond_5

    .line 143
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget-object v10, p3, v7

    .line 144
    .local v10, "t":Ljava/lang/Object;
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "newIdx":I
    .restart local v8    # "newIdx":I
    aput-object v10, v3, v2

    .line 145
    add-int/lit8 v9, v9, 0x1

    .line 146
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v10, v0, :cond_3

    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v10, v0, :cond_4

    .line 147
    :cond_3
    add-int/lit8 v9, v9, 0x1

    :cond_4
    move v2, v8

    .end local v8    # "newIdx":I
    .restart local v2    # "newIdx":I
    move v7, v6

    .line 149
    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    goto :goto_0

    .line 151
    .end local v10    # "t":Ljava/lang/Object;
    :cond_5
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "newIdx":I
    .restart local v8    # "newIdx":I
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object v0, v3, v2

    .line 152
    add-int/lit8 v9, v9, 0x1

    move v2, v8

    .end local v8    # "newIdx":I
    .restart local v2    # "newIdx":I
    goto :goto_0

    .line 156
    :cond_6
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    move v1, p1

    move v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public final visitIincInsn(II)V
    .locals 2
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->map(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitIincInsn(II)V

    .line 97
    return-void
.end method

.method public final visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p5, "end"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p6, "index"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-direct {p0, p6}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->map(I)I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;I)V

    .line 104
    return-void
.end method

.method public visitMaxs(II)V
    .locals 3
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .prologue
    .line 112
    add-int/lit8 v1, p1, 0x3

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->accessorStackSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 113
    .local v0, "increasedStack":I
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMaxs(II)V

    .line 114
    return-void
.end method

.method public final visitVarInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-direct {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeInserter;->map(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitVarInsn(II)V

    .line 92
    return-void
.end method
