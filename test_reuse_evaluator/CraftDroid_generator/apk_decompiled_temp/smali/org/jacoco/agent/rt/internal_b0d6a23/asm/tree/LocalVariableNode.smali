.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;
.super Ljava/lang/Object;
.source "LocalVariableNode.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

.field public index:I

.field public name:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .param p5, "end"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
    .param p6, "index"    # I

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->name:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->desc:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->signature:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .line 98
    iput-object p5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .line 99
    iput p6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->index:I

    .line 100
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 7
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 109
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->desc:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->signature:Ljava/lang/String;

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v4

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->end:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .line 110
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v5

    iget v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LocalVariableNode;->index:I

    move-object v0, p1

    .line 109
    invoke-virtual/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;I)V

    .line 111
    return-void
.end method
