.class public final Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/InstrSupport;
.super Ljava/lang/Object;
.source "InstrSupport.java"


# static fields
.field public static final DATAFIELD_ACC:I = 0x109a

.field public static final DATAFIELD_DESC:Ljava/lang/String; = "[Z"

.field public static final DATAFIELD_INTF_ACC:I = 0x1019

.field public static final DATAFIELD_NAME:Ljava/lang/String; = "$jacocoData"

.field public static final INITMETHOD_ACC:I = 0x100a

.field public static final INITMETHOD_DESC:Ljava/lang/String; = "()[Z"

.field public static final INITMETHOD_NAME:Ljava/lang/String; = "$jacocoInit"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static assertNotInstrumented(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "member"    # Ljava/lang/String;
    .param p1, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 88
    const-string v0, "$jacocoData"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "$jacocoInit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class %s is already instrumented."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    return-void
.end method

.method public static push(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;I)V
    .locals 1
    .param p0, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
    .param p1, "value"    # I

    .prologue
    .line 105
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 106
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    const/16 v0, -0x80

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_1

    .line 108
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_0

    .line 109
    :cond_1
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_2

    .line 110
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_0

    .line 112
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_0
.end method
