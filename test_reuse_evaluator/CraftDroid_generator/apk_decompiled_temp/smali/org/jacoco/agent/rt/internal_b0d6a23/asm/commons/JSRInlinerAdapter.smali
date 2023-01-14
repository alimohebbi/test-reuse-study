.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;
.source "JSRInlinerAdapter.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;
    }
.end annotation


# static fields
.field private static final LOGGING:Z


# instance fields
.field final dualCitizens:Ljava/util/BitSet;

.field private final mainSubroutine:Ljava/util/BitSet;

.field private final subroutineHeads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "api"    # I
    .param p2, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .param p3, "access"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "desc"    # Ljava/lang/String;
    .param p6, "signature"    # Ljava/lang/String;
    .param p7, "exceptions"    # [Ljava/lang/String;

    .prologue
    .line 149
    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->mainSubroutine:Ljava/util/BitSet;

    .line 85
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->dualCitizens:Ljava/util/BitSet;

    .line 150
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .line 151
    return-void
.end method

.method public constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "exceptions"    # [Ljava/lang/String;

    .prologue
    .line 116
    const/high16 v1, 0x50000

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;

    if-eq v0, v1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 120
    :cond_0
    return-void
.end method

.method private emitCode()V
    .locals 8

    .prologue
    .line 379
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 382
    .local v2, "worklist":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;>;"
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->mainSubroutine:Ljava/util/BitSet;

    invoke-direct {v0, p0, v6, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/BitSet;)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-direct {v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;-><init>()V

    .line 387
    .local v3, "newInstructions":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v4, "newTryCatchBlocks":Ljava/util/List;, "Ljava/util/List<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v5, "newLocalVariables":Ljava/util/List;, "Ljava/util/List<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;>;"
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;

    .local v1, "inst":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;
    move-object v0, p0

    .line 391
    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->emitSubroutine(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/List;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 394
    .end local v1    # "inst":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;
    :cond_0
    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    .line 395
    iput-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->tryCatchBlocks:Ljava/util/List;

    .line 396
    iput-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->localVariables:Ljava/util/List;

    .line 397
    return-void
.end method

.method private emitSubroutine(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/List;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;Ljava/util/List;Ljava/util/List;)V
    .locals 29
    .param p1, "instant"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;
    .param p3, "newInstructions"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;",
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;",
            ">;",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;",
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p2, "worklist":Ljava/util/List;, "Ljava/util/List<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;>;"
    .local p4, "newTryCatchBlocks":Ljava/util/List;, "Ljava/util/List<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;>;"
    .local p5, "newLocalVariables":Ljava/util/List;, "Ljava/util/List<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;>;"
    const/4 v12, 0x0

    .line 429
    .local v12, "duplbl":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    const/4 v14, 0x0

    .local v14, "i":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size()I

    move-result v11

    .local v11, "c":I
    :goto_0
    if-ge v14, v11, :cond_7

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v4, v14}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->get(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v16

    .line 431
    .local v16, "insn":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;->findOwner(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;

    move-result-object v22

    .line 434
    .local v22, "owner":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;
    invoke-virtual/range {v16 .. v16}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    move-object/from16 v15, v16

    .line 439
    check-cast v15, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .line 440
    .local v15, "ilbl":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v24

    .line 445
    .local v24, "remap":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    move-object/from16 v0, v24

    if-eq v0, v12, :cond_0

    .line 446
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 447
    move-object/from16 v12, v24

    .line 429
    .end local v15    # "ilbl":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .end local v16    # "insn":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .end local v24    # "remap":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 457
    .restart local v16    # "insn":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    :cond_1
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 465
    invoke-virtual/range {v16 .. v16}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v4

    const/16 v5, 0xa9

    if-ne v4, v5, :cond_5

    .line 474
    const/16 v25, 0x0

    .line 475
    .local v25, "retlabel":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    move-object/from16 v23, p1

    .local v23, "p":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;
    :goto_2
    if-eqz v23, :cond_3

    .line 476
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    invoke-virtual {v4, v14}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 477
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-object/from16 v25, v0

    .line 475
    :cond_2
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;

    move-object/from16 v23, v0

    goto :goto_2

    .line 480
    :cond_3
    if-nez v25, :cond_4

    .line 484
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instruction #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is a RET not owned by any subroutine"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 487
    :cond_4
    new-instance v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;

    const/16 v5, 0xa7

    move-object/from16 v0, v25

    invoke-direct {v4, v5, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    goto :goto_1

    .line 488
    .end local v23    # "p":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;
    .end local v25    # "retlabel":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v4

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_6

    .line 489
    check-cast v16, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;

    .end local v16    # "insn":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;->label:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-object/from16 v19, v0

    .line 490
    .local v19, "lbl":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/BitSet;

    .line 491
    .local v27, "sub":Ljava/util/BitSet;
    new-instance v21, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/BitSet;)V

    .line 492
    .local v21, "newinst":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;->gotoLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v26

    .line 503
    .local v26, "startlbl":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    new-instance v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnNode;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnNode;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 504
    new-instance v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;

    const/16 v5, 0xa7

    move-object/from16 v0, v26

    invoke-direct {v4, v5, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 505
    move-object/from16 v0, v21

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 509
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 511
    .end local v19    # "lbl":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .end local v21    # "newinst":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;
    .end local v26    # "startlbl":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .end local v27    # "sub":Ljava/util/BitSet;
    .restart local v16    # "insn":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    :cond_6
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->clone(Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    goto/16 :goto_1

    .line 516
    .end local v16    # "insn":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .end local v22    # "owner":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 517
    .local v18, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;>;"
    :cond_8
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 518
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;

    .line 526
    .local v28, "trycatch":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v8

    .line 527
    .local v8, "start":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v9

    .line 530
    .local v9, "end":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    if-eq v8, v9, :cond_8

    .line 537
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->handler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;->gotoLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v13

    .line 545
    .local v13, "handler":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    if-nez v13, :cond_a

    .line 546
    :cond_9
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Internal error!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 549
    :cond_a
    new-instance v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    invoke-direct {v4, v8, v9, v13, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 553
    .end local v8    # "start":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .end local v9    # "end":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .end local v13    # "handler":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .end local v28    # "trycatch":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->localVariables:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 554
    .local v17, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;>;"
    :cond_c
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 555
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;

    .line 559
    .local v20, "lvnode":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;
    move-object/from16 v0, v20

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v8

    .line 560
    .restart local v8    # "start":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    move-object/from16 v0, v20

    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v9

    .line 561
    .restart local v9    # "end":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    if-eq v8, v9, :cond_c

    .line 567
    new-instance v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;

    move-object/from16 v0, v20

    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v6, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->desc:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v7, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->signature:Ljava/lang/String;

    move-object/from16 v0, v20

    iget v10, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->index:I

    invoke-direct/range {v4 .. v10}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;I)V

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 570
    .end local v8    # "start":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .end local v9    # "end":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .end local v20    # "lvnode":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;
    :cond_d
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 573
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method private markSubroutineWalk(Ljava/util/BitSet;ILjava/util/BitSet;)V
    .locals 9
    .param p1, "sub"    # Ljava/util/BitSet;
    .param p2, "index"    # I
    .param p3, "anyvisited"    # Ljava/util/BitSet;

    .prologue
    .line 237
    invoke-direct {p0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    .line 240
    const/4 v3, 0x1

    .line 241
    .local v3, "loop":Z
    :cond_0
    if-eqz v3, :cond_2

    .line 242
    const/4 v3, 0x0

    .line 243
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 244
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 245
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;

    .line 253
    .local v6, "trycatch":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    iget-object v8, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->handler:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)I

    move-result v1

    .line 254
    .local v1, "handlerindex":I
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 258
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    iget-object v8, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)I

    move-result v5

    .line 259
    .local v5, "startindex":I
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    iget-object v8, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;->end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)I

    move-result v0

    .line 260
    .local v0, "endindex":I
    invoke-virtual {p1, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    .line 261
    .local v4, "nextbit":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    if-ge v4, v0, :cond_1

    .line 267
    invoke-direct {p0, p1, v1, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    .line 268
    const/4 v3, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "endindex":I
    .end local v1    # "handlerindex":I
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;>;"
    .end local v4    # "nextbit":I
    .end local v5    # "startindex":I
    .end local v6    # "trycatch":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TryCatchBlockNode;
    :cond_2
    return-void
.end method

.method private markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V
    .locals 9
    .param p1, "sub"    # Ljava/util/BitSet;
    .param p2, "index"    # I
    .param p3, "anyvisited"    # Ljava/util/BitSet;

    .prologue
    .line 290
    :cond_0
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v7, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->get(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v5

    .line 293
    .local v5, "node":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 369
    :goto_0
    :pswitch_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    .line 299
    invoke-virtual {p3, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 300
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->dualCitizens:Ljava/util/BitSet;

    invoke-virtual {v7, p2}, Ljava/util/BitSet;->set(I)V

    .line 305
    :cond_2
    invoke-virtual {p3, p2}, Ljava/util/BitSet;->set(I)V

    .line 307
    invoke-virtual {v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->getType()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_3

    .line 308
    invoke-virtual {v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v7

    const/16 v8, 0xa8

    if-eq v7, v8, :cond_3

    move-object v2, v5

    .line 311
    check-cast v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;

    .line 312
    .local v2, "jnode":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    iget-object v8, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;->label:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)I

    move-result v0

    .line 313
    .local v0, "destidx":I
    invoke-direct {p0, p1, v0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    .line 315
    .end local v0    # "destidx":I
    .end local v2    # "jnode":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;
    :cond_3
    invoke-virtual {v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->getType()I

    move-result v7

    const/16 v8, 0xb

    if-ne v7, v8, :cond_4

    move-object v6, v5

    .line 316
    check-cast v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;

    .line 317
    .local v6, "tsnode":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    iget-object v8, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->dflt:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)I

    move-result v0

    .line 318
    .restart local v0    # "destidx":I
    invoke-direct {p0, p1, v0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    .line 319
    iget-object v7, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 320
    iget-object v7, v6, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .line 321
    .local v3, "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v7, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)I

    move-result v0

    .line 322
    invoke-direct {p0, p1, v0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    .line 319
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 325
    .end local v0    # "destidx":I
    .end local v1    # "i":I
    .end local v3    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .end local v6    # "tsnode":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TableSwitchInsnNode;
    :cond_4
    invoke-virtual {v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->getType()I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_5

    move-object v4, v5

    .line 326
    check-cast v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;

    .line 327
    .local v4, "lsnode":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    iget-object v8, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->dflt:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)I

    move-result v0

    .line 328
    .restart local v0    # "destidx":I
    invoke-direct {p0, p1, v0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    .line 329
    iget-object v7, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_5

    .line 330
    iget-object v7, v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .line 331
    .restart local v3    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v7, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)I

    move-result v0

    .line 332
    invoke-direct {p0, p1, v0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    .line 329
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 338
    .end local v0    # "destidx":I
    .end local v1    # "i":I
    .end local v3    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .end local v4    # "lsnode":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LookupSwitchInsnNode;
    :cond_5
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v7, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->get(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 359
    :pswitch_1
    add-int/lit8 p2, p2, 0x1

    .line 368
    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size()I

    move-result v7

    if-lt p2, v7, :cond_0

    goto/16 :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0xa7
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private markSubroutines()V
    .locals 8

    .prologue
    .line 196
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 200
    .local v0, "anyvisited":Ljava/util/BitSet;
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->mainSubroutine:Ljava/util/BitSet;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->markSubroutineWalk(Ljava/util/BitSet;ILjava/util/BitSet;)V

    .line 204
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    .line 205
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Ljava/util/BitSet;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 206
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 207
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Ljava/util/BitSet;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .line 208
    .local v4, "lab":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    .line 209
    .local v5, "sub":Ljava/util/BitSet;
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v6, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)I

    move-result v2

    .line 210
    .local v2, "index":I
    invoke-direct {p0, v5, v2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->markSubroutineWalk(Ljava/util/BitSet;ILjava/util/BitSet;)V

    goto :goto_0

    .line 212
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Ljava/util/BitSet;>;"
    .end local v2    # "index":I
    .end local v4    # "lab":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .end local v5    # "sub":Ljava/util/BitSet;
    :cond_0
    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->markSubroutines()V

    .line 182
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->emitCode()V

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 189
    :cond_1
    return-void
.end method

.method public visitJumpInsn(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "lbl"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 160
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->getLast()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v1

    check-cast v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;

    iget-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/JumpInsnNode;->label:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .line 161
    .local v0, "ln":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    const/16 v1, 0xa8

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_0
    return-void
.end method
