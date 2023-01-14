.class public abstract Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
.super Ljava/lang/Object;
.source "AnnotationVisitor.java"


# instance fields
.field protected final api:I

.field protected av:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "api"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)V

    .line 63
    return-void
.end method

.method public constructor <init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "av"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 79
    :cond_0
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->api:I

    .line 80
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->av:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    .line 81
    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->av:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->av:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    :cond_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->av:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->av:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->av:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->av:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public visitEnd()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->av:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->av:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visitEnd()V

    .line 168
    :cond_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->av:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->av:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method
