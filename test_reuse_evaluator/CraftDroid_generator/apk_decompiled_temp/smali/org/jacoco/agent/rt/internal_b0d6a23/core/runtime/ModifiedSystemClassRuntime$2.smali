.class Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime$2;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;
.source "ModifiedSystemClassRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime;->instrument([BLjava/lang/String;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessFieldName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;

    .prologue
    .line 162
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime$2;->val$accessFieldName:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;)V

    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime$2;->cv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime$2;->val$accessFieldName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime;->access$000(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;Ljava/lang/String;)V

    .line 164
    invoke-super {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;->visitEnd()V

    .line 165
    return-void
.end method
