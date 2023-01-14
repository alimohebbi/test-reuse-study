.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
.source "LabelNode.java"


# instance fields
.field private label:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 1
    .param p1, "label"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 49
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 50
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->label:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 51
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 1
    .param p1, "cv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 68
    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .locals 1
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
    .line 72
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public getLabel()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->label:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->label:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->label:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x8

    return v0
.end method

.method public resetLabel()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->label:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .line 77
    return-void
.end method
