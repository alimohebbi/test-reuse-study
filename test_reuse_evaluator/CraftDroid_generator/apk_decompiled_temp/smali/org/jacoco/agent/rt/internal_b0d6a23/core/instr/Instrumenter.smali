.class public Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;
.super Ljava/lang/Object;
.source "Instrumenter.java"


# instance fields
.field private final accessorGenerator:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;

.field private final signatureRemover:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;


# direct methods
.method public constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;)V
    .locals 1
    .param p1, "runtime"    # Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->accessorGenerator:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;

    .line 53
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->signatureRemover:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;

    .line 54
    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 236
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 237
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 239
    :cond_0
    return-void
.end method

.method private instrumentError(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/io/IOException;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/RuntimeException;

    .prologue
    .line 152
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error while instrumenting class %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0, p2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 155
    return-object v0
.end method

.method private instrumentGzip(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 218
    .local v1, "gzout":Ljava/util/zip/GZIPOutputStream;
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v2, v1, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->instrumentAll(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, "count":I
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 220
    return v0
.end method

.method private instrumentPack200(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 226
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/Pack200Streams;->unpack(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->instrumentAll(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result v1

    .line 228
    .local v1, "count":I
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/Pack200Streams;->pack([BLjava/io/OutputStream;)V

    .line 229
    return v1
.end method

.method private instrumentZip(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I
    .locals 7
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 196
    .local v3, "zipin":Ljava/util/zip/ZipInputStream;
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v4, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 198
    .local v4, "zipout":Ljava/util/zip/ZipOutputStream;
    const/4 v0, 0x0

    .line 199
    .local v0, "count":I
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_2

    .line 200
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "entryName":Ljava/lang/String;
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->signatureRemover:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;

    invoke-virtual {v5, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;->removeEntry(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 205
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 206
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->signatureRemover:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;

    invoke-virtual {v5, v2, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;->filterEntry(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->instrumentAll(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    .line 209
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_0

    .line 211
    .end local v2    # "entryName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 212
    return v0
.end method


# virtual methods
.method public instrument(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;

    invoke-direct {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->instrument(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, p3, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->instrumentError(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public instrument(Ljava/io/InputStream;Ljava/lang/String;)[B
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;

    invoke-direct {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->instrument(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;)[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, p2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->instrumentError(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public instrument(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;)[B
    .locals 5
    .param p1, "reader"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;

    .prologue
    .line 78
    new-instance v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;I)V

    .line 79
    .local v2, "writer":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->accessorGenerator:Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;

    invoke-static {p1, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ProbeArrayStrategyFactory;->createFor(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/IExecutionDataAccessorGenerator;)Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;

    move-result-object v0

    .line 81
    .local v0, "strategy":Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;

    new-instance v3, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ClassInstrumenter;

    invoke-direct {v3, v0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/ClassInstrumenter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/IProbeArrayStrategy;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;)V

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesAdapter;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/flow/ClassProbesVisitor;Z)V

    .line 83
    .local v1, "visitor":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;
    const/16 v3, 0x8

    invoke-virtual {p1, v1, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassVisitor;I)V

    .line 84
    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassWriter;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public instrument([BLjava/lang/String;)[B
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    :try_start_0
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;

    invoke-direct {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;-><init>([B)V

    invoke-virtual {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->instrument(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/ClassReader;)[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, p2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->instrumentError(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public instrumentAll(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;

    invoke-direct {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;-><init>(Ljava/io/InputStream;)V

    .line 177
    .local v0, "detector":Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 188
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 189
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 179
    :sswitch_0
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->instrument(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 180
    const/4 v1, 0x1

    goto :goto_0

    .line 182
    :sswitch_1
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->instrumentZip(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 184
    :sswitch_2
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->instrumentGzip(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 186
    :sswitch_3
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->instrumentPack200(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        -0x35014542 -> :sswitch_0
        -0x35012ff3 -> :sswitch_3
        0x1f8b0000 -> :sswitch_2
        0x504b0304 -> :sswitch_1
    .end sparse-switch
.end method

.method public setRemoveSignatures(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/instr/Instrumenter;->signatureRemover:Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/instr/SignatureRemover;->setActive(Z)V

    .line 67
    return-void
.end method
