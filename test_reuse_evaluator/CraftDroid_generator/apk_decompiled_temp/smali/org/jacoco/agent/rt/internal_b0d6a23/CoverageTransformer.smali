.class public Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;
.super Ljava/lang/Object;
.source "CoverageTransformer.java"

# interfaces
.implements Ljava/lang/instrument/ClassFileTransformer;


# static fields
.field private static final AGENT_PREFIX:Ljava/lang/String;


# instance fields
.field private final classFileDumper:Lorg/jacoco/agent/rt/internal_b0d6a23/ClassFileDumper;

.field private final exclClassloader:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;

.field private final excludes:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;

.field private final includeBootstrapClasses:Z

.field private final includes:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;

.field private final instrumenter:Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;

.field private final logger:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const-class v1, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->toVMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->AGENT_PREFIX:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRuntime;Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;)V
    .locals 2
    .param p1, "runtime"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IRuntime;
    .param p2, "options"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;
    .param p3, "logger"    # Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;

    invoke-direct {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->instrumenter:Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;

    .line 63
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->logger:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    .line 65
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;

    invoke-virtual {p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getIncludes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->toVMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->includes:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;

    .line 66
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;

    invoke-virtual {p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getExcludes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->toVMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->excludes:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;

    .line 67
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;

    invoke-virtual {p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getExclClassloader()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->exclClassloader:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;

    .line 68
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/ClassFileDumper;

    invoke-virtual {p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getClassDumpDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/ClassFileDumper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->classFileDumper:Lorg/jacoco/agent/rt/internal_b0d6a23/ClassFileDumper;

    .line 69
    invoke-virtual {p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getInclBootstrapClasses()Z

    move-result v0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->includeBootstrapClasses:Z

    .line 70
    return-void
.end method

.method private static toVMName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "srcName"    # Ljava/lang/String;

    .prologue
    .line 151
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method filter(Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "classname"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 133
    if-nez p1, :cond_1

    .line 134
    iget-boolean v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->includeBootstrapClasses:Z

    if-nez v1, :cond_2

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->exclClassloader:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    :cond_2
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->AGENT_PREFIX:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->includes:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;

    invoke-virtual {v1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->excludes:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;

    invoke-virtual {v1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method hasSourceLocation(Ljava/security/ProtectionDomain;)Z
    .locals 3
    .param p1, "protectionDomain"    # Ljava/security/ProtectionDomain;

    .prologue
    const/4 v1, 0x0

    .line 113
    if-nez p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v1

    .line 116
    :cond_1
    invoke-virtual {p1}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v0

    .line 117
    .local v0, "codeSource":Ljava/security/CodeSource;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "classname"    # Ljava/lang/String;
    .param p4, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .param p5, "classfileBuffer"    # [B
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
    .local p3, "classBeingRedefined":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 78
    if-eqz p3, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-object v2

    .line 83
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->hasSourceLocation(Ljava/security/ProtectionDomain;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->filter(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    :try_start_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->classFileDumper:Lorg/jacoco/agent/rt/internal_b0d6a23/ClassFileDumper;

    invoke-virtual {v2, p2, p5}, Lorg/jacoco/agent/rt/internal_b0d6a23/ClassFileDumper;->dump(Ljava/lang/String;[B)V

    .line 93
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->instrumenter:Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;

    invoke-virtual {v2, p5, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->instrument([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/instrument/IllegalClassFormatException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/instrument/IllegalClassFormatException;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "wrapper":Ljava/lang/instrument/IllegalClassFormatException;
    invoke-virtual {v1, v0}, Ljava/lang/instrument/IllegalClassFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 99
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/CoverageTransformer;->logger:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    invoke-interface {v2, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;->logExeption(Ljava/lang/Exception;)V

    .line 100
    throw v1
.end method
