.class public abstract Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;
.super Ljava/lang/Object;
.source "FieldVisitor.java"


# instance fields
.field protected final api:I

.field protected fv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "api"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;)V

    .line 62
    return-void
.end method

.method public constructor <init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "fv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 78
    :cond_0
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->api:I

    .line 79
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->fv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;

    .line 80
    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->fv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->fv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public visitAttribute(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->fv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->fv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->visitAttribute(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Attribute;)V

    .line 138
    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->fv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->fv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->visitEnd()V

    .line 149
    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .prologue
    .line 119
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->fv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->fv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/FieldVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
