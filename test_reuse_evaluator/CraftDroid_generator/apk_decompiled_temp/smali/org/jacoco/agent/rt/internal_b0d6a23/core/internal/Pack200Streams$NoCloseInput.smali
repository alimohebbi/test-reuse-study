.class Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/Pack200Streams$NoCloseInput;
.super Ljava/io/FilterInputStream;
.source "Pack200Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/agent/rt/internal_b0d6a23/core/internal/Pack200Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoCloseInput"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 67
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    return-void
.end method
