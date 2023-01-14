.class Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime$1;
.super Ljava/lang/Object;
.source "ModifiedSystemClassRuntime.java"

# interfaces
.implements Ljava/lang/instrument/ClassFileTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime;->createFor(Ljava/lang/instrument/Instrumentation;Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessFieldName:Ljava/lang/String;

.field final synthetic val$className:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime$1;->val$className:Ljava/lang/String;

    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime$1;->val$accessFieldName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .param p5, "source"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/instrument/IllegalClassFormatException;
        }
    .end annotation

    .prologue
    .line 127
    .local p3, "classBeingRedefined":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime$1;->val$className:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime$1;->val$accessFieldName:Ljava/lang/String;

    invoke-static {p5, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/ModifiedSystemClassRuntime;->instrument([BLjava/lang/String;)[B

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
