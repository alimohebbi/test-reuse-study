.class final Lorg/jacoco/agent/rt/internal_b0d6a23/ConfigLoader;
.super Ljava/lang/Object;
.source "ConfigLoader.java"


# static fields
.field private static final SUBST_PATTERN:Ljava/util/regex/Pattern;

.field private static final SYS_PREFIX:Ljava/lang/String; = "jacoco-agent."


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "\\$\\{([^\\}]+)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/ConfigLoader;->SUBST_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method static load(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 1
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "system"    # Ljava/util/Properties;

    .prologue
    .line 35
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 36
    .local v0, "result":Ljava/util/Properties;
    invoke-static {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/ConfigLoader;->loadResource(Ljava/lang/String;Ljava/util/Properties;)V

    .line 37
    invoke-static {p1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/ConfigLoader;->loadSystemProperties(Ljava/util/Properties;Ljava/util/Properties;)V

    .line 38
    invoke-static {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/ConfigLoader;->substSystemProperties(Ljava/util/Properties;Ljava/util/Properties;)V

    .line 39
    return-object v0
.end method

.method private static loadResource(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 3
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/util/Properties;

    .prologue
    .line 44
    const-class v2, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 45
    .local v1, "file":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 47
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static loadSystemProperties(Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 5
    .param p0, "system"    # Ljava/util/Properties;
    .param p1, "result"    # Ljava/util/Properties;

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 57
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "keystr":Ljava/lang/String;
    const-string v3, "jacoco-agent."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    const-string v3, "jacoco-agent."

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2    # "keystr":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static substSystemProperties(Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 8
    .param p0, "result"    # Ljava/util/Properties;
    .param p1, "system"    # Ljava/util/Properties;

    .prologue
    .line 67
    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 68
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 69
    .local v4, "oldValue":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v3, "newValue":Ljava/lang/StringBuilder;
    sget-object v7, Lorg/jacoco/agent/rt/internal_b0d6a23/ConfigLoader;->SUBST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 71
    .local v2, "m":Ljava/util/regex/Matcher;
    const/4 v5, 0x0

    .line 72
    .local v5, "pos":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "sub":Ljava/lang/String;
    if-nez v6, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .end local v6    # "sub":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "newValue":Ljava/lang/StringBuilder;
    .end local v4    # "oldValue":Ljava/lang/String;
    .end local v5    # "pos":I
    :cond_2
    return-void
.end method
