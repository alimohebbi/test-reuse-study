.class public final Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/Pack200Streams;
.super Ljava/lang/Object;
.source "Pack200Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/Pack200Streams$NoCloseInput;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static pack([BLjava/io/OutputStream;)V
    .locals 2
    .param p0, "source"    # [B
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ljava/util/jar/JarInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    .local v0, "jar":Ljava/util/jar/JarInputStream;
    invoke-static {}, Ljava/util/jar/Pack200;->newPacker()Ljava/util/jar/Pack200$Packer;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/jar/Pack200$Packer;->pack(Ljava/util/jar/JarInputStream;Ljava/io/OutputStream;)V

    .line 62
    return-void
.end method

.method public static unpack(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 41
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/jar/JarOutputStream;

    invoke-direct {v1, v0}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 42
    .local v1, "jar":Ljava/util/jar/JarOutputStream;
    invoke-static {}, Ljava/util/jar/Pack200;->newUnpacker()Ljava/util/jar/Pack200$Unpacker;

    move-result-object v2

    new-instance v3, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/Pack200Streams$NoCloseInput;

    invoke-direct {v3, p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/Pack200Streams$NoCloseInput;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v3, v1}, Ljava/util/jar/Pack200$Unpacker;->unpack(Ljava/io/InputStream;Ljava/util/jar/JarOutputStream;)V

    .line 43
    invoke-virtual {v1}, Ljava/util/jar/JarOutputStream;->finish()V

    .line 44
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v2
.end method
