.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/ParameterNode;
.super Ljava/lang/Object;
.source "ParameterNode.java"


# instance fields
.field public access:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "access"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/ParameterNode;->name:Ljava/lang/String;

    .line 64
    iput p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/ParameterNode;->access:I

    .line 65
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 2
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/ParameterNode;->name:Ljava/lang/String;

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/ParameterNode;->access:I

    invoke-virtual {p1, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    .line 75
    return-void
.end method
