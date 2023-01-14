.class Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode$1;
.super Ljava/util/ArrayList;
.source "MethodNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->visitAnnotationDefault()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;
    .param p2, "x0"    # I

    .prologue
    .line 326
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode$1;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 329
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode$1;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;

    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/MethodNode;->annotationDefault:Ljava/lang/Object;

    .line 330
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
