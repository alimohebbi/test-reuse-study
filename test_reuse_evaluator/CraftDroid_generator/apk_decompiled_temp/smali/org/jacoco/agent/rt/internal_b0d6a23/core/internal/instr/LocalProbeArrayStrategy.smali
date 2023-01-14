.class Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/LocalProbeArrayStrategy;
.super Ljava/lang/Object;
.source "LocalProbeArrayStrategy.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;


# instance fields
.field private final accessorGenerator:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;

.field private final classId:J

.field private final className:Ljava/lang/String;

.field private final probeCount:I


# direct methods
.method constructor <init>(Ljava/lang/String;JILorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classId"    # J
    .param p4, "probeCount"    # I
    .param p5, "accessorGenerator"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/LocalProbeArrayStrategy;->className:Ljava/lang/String;

    .line 36
    iput-wide p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/LocalProbeArrayStrategy;->classId:J

    .line 37
    iput p4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/LocalProbeArrayStrategy;->probeCount:I

    .line 38
    iput-object p5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/LocalProbeArrayStrategy;->accessorGenerator:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;

    .line 39
    return-void
.end method


# virtual methods
.method public addMembers(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;I)V
    .locals 0
    .param p1, "delegate"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;
    .param p2, "probeCount"    # I

    .prologue
    .line 50
    return-void
.end method

.method public storeInstance(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;I)I
    .locals 7
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .param p2, "variable"    # I

    .prologue
    .line 42
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/LocalProbeArrayStrategy;->accessorGenerator:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;

    iget-wide v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/LocalProbeArrayStrategy;->classId:J

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/LocalProbeArrayStrategy;->className:Ljava/lang/String;

    iget v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/LocalProbeArrayStrategy;->probeCount:I

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;->generateDataAccessor(JLjava/lang/String;ILorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)I

    move-result v0

    .line 44
    .local v0, "maxStack":I
    const/16 v1, 0x3a

    invoke-virtual {p1, v1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitVarInsn(II)V

    .line 45
    return v0
.end method
