.class public final Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeArrayStrategyFactory;
.super Ljava/lang/Object;
.source "ProbeArrayStrategyFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static createFor(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;
    .locals 14
    .param p0, "reader"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;
    .param p1, "accessorGenerator"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "className":Ljava/lang/String;
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeArrayStrategyFactory;->getVersion(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;)I

    move-result v13

    .line 44
    .local v13, "version":I
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->b:[B

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CRC64;->checksum([B)J

    move-result-wide v2

    .line 45
    .local v2, "classId":J
    const/16 v0, 0x32

    if-lt v13, v0, :cond_0

    const/4 v4, 0x1

    .line 47
    .local v4, "withFrames":Z
    :goto_0
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeArrayStrategyFactory;->isInterface(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeArrayStrategyFactory;->getProbeCounter(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;

    move-result-object v12

    .line 49
    .local v12, "counter":Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;
    invoke-virtual {v12}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/NoneProbeArrayStrategy;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/NoneProbeArrayStrategy;-><init>()V

    .line 61
    .end local v12    # "counter":Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;
    :goto_1
    return-object v0

    .line 45
    .end local v4    # "withFrames":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 52
    .restart local v4    # "withFrames":Z
    .restart local v12    # "counter":Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;
    :cond_1
    const/16 v0, 0x34

    if-lt v13, v0, :cond_2

    invoke-virtual {v12}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;->hasMethods()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;

    const/16 v5, 0x1019

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;-><init>(Ljava/lang/String;JZILorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;)V

    goto :goto_1

    .line 57
    :cond_2
    new-instance v6, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/LocalProbeArrayStrategy;

    invoke-virtual {v12}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;->getCount()I

    move-result v10

    move-object v7, v1

    move-wide v8, v2

    move-object v11, p1

    invoke-direct/range {v6 .. v11}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/LocalProbeArrayStrategy;-><init>(Ljava/lang/String;JILorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;)V

    move-object v0, v6

    goto :goto_1

    .line 61
    .end local v12    # "counter":Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;
    :cond_3
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;

    const/16 v5, 0x109a

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/FieldProbeArrayStrategy;-><init>(Ljava/lang/String;JZILorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;)V

    goto :goto_1
.end method

.method private static getProbeCounter(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;
    .locals 3
    .param p0, "reader"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;

    .prologue
    const/4 v2, 0x0

    .line 75
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;-><init>()V

    .line 76
    .local v0, "counter":Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeCounter;
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;

    invoke-direct {v1, v0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;Z)V

    invoke-virtual {p0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;I)V

    .line 77
    return-object v0
.end method

.method private static getVersion(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;)I
    .locals 1
    .param p0, "reader"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;

    .prologue
    .line 71
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->readShort(I)S

    move-result v0

    return v0
.end method

.method private static isInterface(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;)Z
    .locals 1
    .param p0, "reader"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->getAccess()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
