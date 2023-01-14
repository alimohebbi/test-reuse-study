.class Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;
.super Ljava/lang/Object;
.source "FieldProbeArrayStrategy.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;


# static fields
.field private static final FRAME_LOCALS_EMPTY:[Ljava/lang/Object;

.field private static final FRAME_STACK_ARRZ:[Ljava/lang/Object;


# instance fields
.field private final accessorGenerator:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;

.field private final classId:J

.field private final className:Ljava/lang/String;

.field private final fieldAccess:I

.field private final withFrames:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[Z"

    aput-object v1, v0, v2

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->FRAME_STACK_ARRZ:[Ljava/lang/Object;

    .line 35
    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->FRAME_LOCALS_EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JZILorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classId"    # J
    .param p4, "withFrames"    # Z
    .param p5, "fieldAccess"    # I
    .param p6, "accessorGenerator"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->className:Ljava/lang/String;

    .line 47
    iput-wide p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->classId:J

    .line 48
    iput-boolean p4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->withFrames:Z

    .line 49
    iput p5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->fieldAccess:I

    .line 50
    iput-object p6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->accessorGenerator:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;

    .line 51
    return-void
.end method

.method private createDataField(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;)V
    .locals 6
    .param p1, "cv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;

    .prologue
    const/4 v4, 0x0

    .line 67
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->fieldAccess:I

    const-string v2, "$jacocoData"

    const-string v3, "[Z"

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;

    .line 69
    return-void
.end method

.method private createInitMethod(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;I)V
    .locals 9
    .param p1, "cv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;
    .param p2, "probeCount"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 72
    const/16 v1, 0x100a

    const-string v2, "$jacocoInit"

    const-string v3, "()[Z"

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    move-result-object v0

    .line 75
    .local v0, "mv":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitCode()V

    .line 78
    const/16 v1, 0xb2

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->className:Ljava/lang/String;

    const-string v3, "$jacocoData"

    const-string v4, "[Z"

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 86
    new-instance v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    invoke-direct {v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;-><init>()V

    .line 87
    .local v6, "alreadyInitialized":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    const/16 v1, 0xc7

    invoke-virtual {v0, v1, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 91
    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 92
    invoke-direct {p0, v0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->genInitializeDataField(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;I)I

    move-result v7

    .line 97
    .local v7, "size":I
    iget-boolean v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->withFrames:Z

    if-eqz v1, :cond_0

    .line 98
    const/4 v1, -0x1

    sget-object v3, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->FRAME_LOCALS_EMPTY:[Ljava/lang/Object;

    const/4 v4, 0x1

    sget-object v5, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->FRAME_STACK_ARRZ:[Ljava/lang/Object;

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 101
    :cond_0
    invoke-virtual {v0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 102
    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 104
    const/4 v1, 0x2

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMaxs(II)V

    .line 105
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitEnd()V

    .line 106
    return-void
.end method

.method private genInitializeDataField(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;I)I
    .locals 7
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .param p2, "probeCount"    # I

    .prologue
    .line 119
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->accessorGenerator:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;

    iget-wide v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->classId:J

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->className:Ljava/lang/String;

    move v5, p2

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;->generateDataAccessor(JLjava/lang/String;ILorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)I

    move-result v0

    .line 124
    .local v0, "size":I
    const/16 v1, 0x59

    invoke-virtual {p1, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 129
    const/16 v1, 0xb3

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->className:Ljava/lang/String;

    const-string v3, "$jacocoData"

    const-string v4, "[Z"

    invoke-virtual {p1, v1, v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method


# virtual methods
.method public addMembers(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;I)V
    .locals 0
    .param p1, "cv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;
    .param p2, "probeCount"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->createDataField(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;)V

    .line 63
    invoke-direct {p0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->createInitMethod(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;I)V

    .line 64
    return-void
.end method

.method public storeInstance(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;I)I
    .locals 6
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .param p2, "variable"    # I

    .prologue
    .line 54
    const/16 v1, 0xb8

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;->className:Ljava/lang/String;

    const-string v3, "$jacocoInit"

    const-string v4, "()[Z"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    const/16 v0, 0x3a

    invoke-virtual {p1, v0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitVarInsn(II)V

    .line 58
    const/4 v0, 0x1

    return v0
.end method
