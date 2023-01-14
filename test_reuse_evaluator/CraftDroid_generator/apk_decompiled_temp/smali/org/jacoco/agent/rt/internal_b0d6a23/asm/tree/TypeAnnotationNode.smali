.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;
.source "TypeAnnotationNode.java"


# instance fields
.field public typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

.field public typeRef:I


# direct methods
.method public constructor <init>(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "typeRef"    # I
    .param p3, "typePath"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .param p4, "desc"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;-><init>(ILjava/lang/String;)V

    .line 97
    iput p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typeRef:I

    .line 98
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;->typePath:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;

    .line 99
    return-void
.end method

.method public constructor <init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;)V
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    .line 73
    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;-><init>(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/TypeAnnotationNode;

    if-eq v0, v1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 77
    :cond_0
    return-void
.end method
