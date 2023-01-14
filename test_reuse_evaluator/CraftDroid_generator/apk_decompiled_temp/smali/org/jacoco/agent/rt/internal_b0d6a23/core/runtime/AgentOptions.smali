.class public final Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;
.super Ljava/lang/Object;
.source "AgentOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final APPEND:Ljava/lang/String; = "append"

.field public static final CLASSDUMPDIR:Ljava/lang/String; = "classdumpdir"

.field public static final DEFAULT_ADDRESS:Ljava/lang/String;

.field public static final DEFAULT_DESTFILE:Ljava/lang/String; = "jacoco.exec"

.field public static final DEFAULT_PORT:I = 0x189c

.field public static final DESTFILE:Ljava/lang/String; = "destfile"

.field public static final DUMPONEXIT:Ljava/lang/String; = "dumponexit"

.field public static final EXCLCLASSLOADER:Ljava/lang/String; = "exclclassloader"

.field public static final EXCLUDES:Ljava/lang/String; = "excludes"

.field public static final INCLBOOTSTRAPCLASSES:Ljava/lang/String; = "inclbootstrapclasses"

.field public static final INCLUDES:Ljava/lang/String; = "includes"

.field public static final JMX:Ljava/lang/String; = "jmx"

.field public static final OUTPUT:Ljava/lang/String; = "output"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final SESSIONID:Ljava/lang/String; = "sessionid"

.field private static final VALID_OPTIONS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 151
    const/4 v0, 0x0

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->DEFAULT_ADDRESS:Ljava/lang/String;

    .line 179
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "destfile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "append"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "includes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "excludes"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "exclclassloader"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "inclbootstrapclasses"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sessionid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dumponexit"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "output"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "address"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "port"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "classdumpdir"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "jmx"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->VALID_OPTIONS:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->options:Ljava/util/Map;

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "optionstr"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 200
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;-><init>()V

    .line 201
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 202
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v0, v2

    .line 203
    .local v1, "entry":Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 204
    .local v5, "pos":I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    .line 205
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid agent option syntax \"%s\"."

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 208
    :cond_0
    invoke-virtual {v1, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "key":Ljava/lang/String;
    sget-object v7, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->VALID_OPTIONS:Ljava/util/Collection;

    invoke-interface {v7, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 210
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unknown agent option \"%s\"."

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 214
    :cond_1
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, "value":Ljava/lang/String;
    invoke-direct {p0, v3, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "entry":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "pos":I
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->validateAll()V

    .line 220
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 4
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    .line 229
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;-><init>()V

    .line 230
    sget-object v3, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->VALID_OPTIONS:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 233
    invoke-direct {p0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private getOption(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 552
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->options:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 553
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .restart local p2    # "defaultValue":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method private getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 542
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->options:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 543
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method private getOption(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 547
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->options:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 548
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method private setOption(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 526
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method private setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 534
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid character in option argument \"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->options:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    return-void
.end method

.method private setOption(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 530
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method private validateAll()V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getPort()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->validatePort(I)V

    .line 240
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getOutput()Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    .line 241
    return-void
.end method

.method private validatePort(I)V
    .locals 2
    .param p1, "port"    # I

    .prologue
    .line 244
    if-gez p1, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "port must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 441
    const-string v0, "address"

    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->DEFAULT_ADDRESS:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppend()Z
    .locals 2

    .prologue
    .line 274
    const-string v0, "append"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getClassDumpDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 493
    const-string v0, "classdumpdir"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestfile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    const-string v0, "destfile"

    const-string v1, "jacoco.exec"

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDumpOnExit()Z
    .locals 2

    .prologue
    .line 396
    const-string v0, "dumponexit"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getExclClassloader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    const-string v0, "exclclassloader"

    const-string v1, "sun.reflect.DelegatingClassLoader"

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExcludes()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    const-string v0, "excludes"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInclBootstrapClasses()Z
    .locals 2

    .prologue
    .line 357
    const-string v0, "inclbootstrapclasses"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIncludes()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    const-string v0, "includes"

    const-string v1, "*"

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJmx()Z
    .locals 2

    .prologue
    .line 512
    const-string v0, "jmx"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getOutput()Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;
    .locals 3

    .prologue
    .line 462
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->options:Ljava/util/Map;

    const-string v2, "output"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 463
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->file:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->valueOf(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    move-result-object v1

    goto :goto_0
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 418
    const-string v0, "port"

    const/16 v1, 0x189c

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getOption(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getQuotedVMArgument(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p1, "agentJarFile"    # Ljava/io/File;

    .prologue
    .line 577
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getVMArgument(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/CommandLineSupport;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 377
    const-string v0, "sessionid"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVMArgument(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p1, "agentJarFile"    # Ljava/io/File;

    .prologue
    .line 565
    const-string v0, "-javaagent:%s=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prependVMArguments(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p1, "arguments"    # Ljava/lang/String;
    .param p2, "agentJarFile"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 594
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/CommandLineSupport;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 595
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "-javaagent:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, "plainAgent":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 597
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 598
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 601
    :cond_1
    invoke-virtual {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->getVMArgument(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 602
    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/CommandLineSupport;->quote(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 453
    const-string v0, "address"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public setAppend(Z)V
    .locals 1
    .param p1, "append"    # Z

    .prologue
    .line 284
    const-string v0, "append"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Z)V

    .line 285
    return-void
.end method

.method public setClassDumpDir(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 503
    const-string v0, "classdumpdir"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method public setDestfile(Ljava/lang/String;)V
    .locals 1
    .param p1, "destfile"    # Ljava/lang/String;

    .prologue
    .line 265
    const-string v0, "destfile"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public setDumpOnExit(Z)V
    .locals 1
    .param p1, "dumpOnExit"    # Z

    .prologue
    .line 407
    const-string v0, "dumponexit"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Z)V

    .line 408
    return-void
.end method

.method public setExclClassloader(Ljava/lang/String;)V
    .locals 1
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 347
    const-string v0, "exclclassloader"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public setExcludes(Ljava/lang/String;)V
    .locals 1
    .param p1, "excludes"    # Ljava/lang/String;

    .prologue
    .line 326
    const-string v0, "excludes"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public setInclBootstrapClasses(Z)V
    .locals 1
    .param p1, "include"    # Z

    .prologue
    .line 368
    const-string v0, "inclbootstrapclasses"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Z)V

    .line 369
    return-void
.end method

.method public setIncludes(Ljava/lang/String;)V
    .locals 1
    .param p1, "includes"    # Ljava/lang/String;

    .prologue
    .line 305
    const-string v0, "includes"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public setJmx(Z)V
    .locals 1
    .param p1, "jmx"    # Z

    .prologue
    .line 522
    const-string v0, "jmx"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Z)V

    .line 523
    return-void
.end method

.method public setOutput(Ljava/lang/String;)V
    .locals 1
    .param p1, "output"    # Ljava/lang/String;

    .prologue
    .line 473
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->valueOf(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->setOutput(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;)V

    .line 474
    return-void
.end method

.method public setOutput(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;)V
    .locals 2
    .param p1, "output"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;

    .prologue
    .line 483
    const-string v0, "output"

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions$OutputMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public setPort(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->validatePort(I)V

    .line 430
    const-string v0, "port"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->setOption(Ljava/lang/String;I)V

    .line 431
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 387
    const-string v0, "sessionid"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    .local v2, "sb":Ljava/lang/StringBuilder;
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->VALID_OPTIONS:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 613
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/AgentOptions;->options:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 614
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 615
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 616
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 618
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 621
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
