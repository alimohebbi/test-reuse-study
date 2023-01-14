.class Lorg/jacoco/agent/rt/internal_b0d6a23/ClassFileDumper;
.super Ljava/lang/Object;
.source "ClassFileDumper.java"


# instance fields
.field private final location:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/ClassFileDumper;->location:Ljava/io/File;

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/ClassFileDumper;->location:Ljava/io/File;

    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/lang/String;[B)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contents"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 55
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/ClassFileDumper;->location:Ljava/io/File;

    if-eqz v6, :cond_0

    .line 58
    const/16 v6, 0x2f

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 59
    .local v5, "pkgpos":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 60
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/ClassFileDumper;->location:Ljava/io/File;

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .local v4, "outputdir":Ljava/io/File;
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "localname":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 67
    invoke-static {p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/data/CRC64;->checksum([B)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 68
    .local v1, "id":Ljava/lang/Long;
    new-instance v0, Ljava/io/File;

    const-string v6, "%s.%016x.class"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v0, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 71
    .local v3, "out":Ljava/io/OutputStream;
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 72
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 74
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "id":Ljava/lang/Long;
    .end local v2    # "localname":Ljava/lang/String;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "outputdir":Ljava/io/File;
    .end local v5    # "pkgpos":I
    :cond_0
    return-void

    .line 63
    .restart local v5    # "pkgpos":I
    :cond_1
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/ClassFileDumper;->location:Ljava/io/File;

    .line 64
    .restart local v4    # "outputdir":Ljava/io/File;
    move-object v2, p1

    .restart local v2    # "localname":Ljava/lang/String;
    goto :goto_0
.end method
