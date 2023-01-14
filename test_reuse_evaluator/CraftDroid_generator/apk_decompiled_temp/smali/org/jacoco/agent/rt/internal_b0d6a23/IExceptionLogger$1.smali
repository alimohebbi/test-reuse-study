.class Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger$1;
.super Ljava/lang/Object;
.source "IExceptionLogger.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logExeption(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    return-void
.end method
