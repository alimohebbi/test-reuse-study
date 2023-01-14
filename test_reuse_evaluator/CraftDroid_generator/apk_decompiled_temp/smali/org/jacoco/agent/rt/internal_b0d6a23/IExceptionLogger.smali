.class public interface abstract Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;
.super Ljava/lang/Object;
.source "IExceptionLogger.java"


# static fields
.field public static final SYSTEM_ERR:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger$1;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger$1;-><init>()V

    sput-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;->SYSTEM_ERR:Lorg/jacoco/agent/rt/internal_b0d6a23/IExceptionLogger;

    return-void
.end method


# virtual methods
.method public abstract logExeption(Ljava/lang/Exception;)V
.end method
