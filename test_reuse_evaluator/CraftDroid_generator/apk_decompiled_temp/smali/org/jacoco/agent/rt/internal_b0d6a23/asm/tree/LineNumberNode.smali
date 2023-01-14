.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LineNumberNode;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
.source "LineNumberNode.java"


# instance fields
.field public line:I

.field public start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;


# direct methods
.method public constructor <init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .prologue
    .line 65
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 66
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LineNumberNode;->line:I

    .line 67
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LineNumberNode;->start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .line 68
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 2
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 77
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LineNumberNode;->line:I

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LineNumberNode;->start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLineNumber(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 78
    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;",
            ">;)",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;>;"
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LineNumberNode;

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LineNumberNode;->line:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LineNumberNode;->start:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-static {v2, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LineNumberNode;->clone(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LineNumberNode;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;)V

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0xf

    return v0
.end method
