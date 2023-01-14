.class public Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;
.source "ClassProbesAdapter.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/IProbeIdGenerator;


# static fields
.field private static final EMPTY_METHOD_PROBES_VISITOR:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;


# instance fields
.field private counter:I

.field private final cv:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;

.field private name:Ljava/lang/String;

.field private final trackFrames:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter$1;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter$1;-><init>()V

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;->EMPTY_METHOD_PROBES_VISITOR:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;

    return-void
.end method

.method public constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;Z)V
    .locals 1
    .param p1, "cv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;
    .param p2, "trackFrames"    # Z

    .prologue
    .line 47
    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;->counter:I

    .line 48
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;->cv:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;

    .line 49
    iput-boolean p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;->trackFrames:Z

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;

    .prologue
    .line 23
    iget-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;->trackFrames:Z

    return v0
.end method

.method static synthetic access$100(Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public nextId()I
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;->counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;->counter:I

    return v0
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .prologue
    .line 56
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;->name:Ljava/lang/String;

    .line 57
    invoke-super/range {p0 .. p6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public visitEnd()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;->cv:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;->counter:I

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;->visitTotalProbeCount(I)V

    .line 98
    invoke-super {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visitEnd()V

    .line 99
    return-void
.end method

.method public final visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .locals 10
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;->cv:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;

    move-result-object v9

    .line 66
    .local v9, "mv":Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;
    if-nez v9, :cond_0

    .line 69
    sget-object v8, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;->EMPTY_METHOD_PROBES_VISITOR:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;

    .line 73
    .local v8, "methodProbes":Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;
    :goto_0
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter$2;

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter$2;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;)V

    return-object v0

    .line 71
    .end local v8    # "methodProbes":Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;
    :cond_0
    move-object v8, v9

    .restart local v8    # "methodProbes":Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodProbesVisitor;
    goto :goto_0
.end method
