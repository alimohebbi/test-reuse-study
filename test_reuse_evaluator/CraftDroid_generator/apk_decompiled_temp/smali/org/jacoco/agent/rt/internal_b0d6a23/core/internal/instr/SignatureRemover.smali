.class public Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;
.super Ljava/lang/Object;
.source "SignatureRemover.java"


# static fields
.field private static final DIGEST_SUFFIX:Ljava/lang/String; = "-Digest"

.field private static final MANIFEST_MF:Ljava/lang/String; = "META-INF/MANIFEST.MF"

.field private static final SIGNATURE_FILES:Ljava/util/regex/Pattern;


# instance fields
.field private active:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "META-INF/[^/]*\\.SF|META-INF/[^/]*\\.DSA|META-INF/[^/]*\\.RSA|META-INF/SIG-[^/]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;->SIGNATURE_FILES:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;->active:Z

    .line 45
    return-void
.end method

.method private filterManifestEntry(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/jar/Attributes;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "entry":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/jar/Attributes;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/jar/Attributes;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    .line 97
    .local v0, "attributes":Ljava/util/jar/Attributes;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;->filterManifestEntryAttributes(Ljava/util/jar/Attributes;)V

    .line 98
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 102
    .end local v0    # "attributes":Ljava/util/jar/Attributes;
    :cond_1
    return-void
.end method

.method private filterManifestEntryAttributes(Ljava/util/jar/Attributes;)V
    .locals 3
    .param p1, "attrs"    # Ljava/util/jar/Attributes;

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-Digest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 110
    :cond_1
    return-void
.end method


# virtual methods
.method public filterEntry(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-boolean v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;->active:Z

    if-eqz v1, :cond_0

    const-string v1, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    :cond_0
    const/4 v1, 0x0

    .line 91
    :goto_0
    return v1

    .line 88
    :cond_1
    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0, p2}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .line 89
    .local v0, "mf":Ljava/util/jar/Manifest;
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;->filterManifestEntry(Ljava/util/Collection;)V

    .line 90
    invoke-virtual {v0, p3}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    .line 91
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;->active:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;->SIGNATURE_FILES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;->active:Z

    .line 57
    return-void
.end method
