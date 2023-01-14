.class Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/MethodSanitizer;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;
.source "MethodSanitizer.java"


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "exceptions"    # [Ljava/lang/String;

    .prologue
    .line 36
    const/high16 v1, 0x50000

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public visitLineNumber(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 57
    iget-object v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->info:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 58
    invoke-super {p0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->visitLineNumber(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 60
    :cond_0
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p5, "end"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p6, "index"    # I

    .prologue
    .line 47
    iget-object v0, p4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->info:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;->info:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 48
    invoke-super/range {p0 .. p6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/JSRInlinerAdapter;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;I)V

    .line 50
    :cond_0
    return-void
.end method
