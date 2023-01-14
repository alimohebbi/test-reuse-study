.class public final Lorg/jacoco/agent/rt/internal_b0d6a23/core/JaCoCo;
.super Ljava/lang/Object;
.source "JaCoCo.java"


# static fields
.field public static final ASM_API_VERSION:I = 0x50000

.field public static final HOMEURL:Ljava/lang/String;

.field public static final RUNTIMEPACKAGE:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string v1, "org.jacoco.agent.rt.internal_b0d6a23.core.jacoco"

    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 38
    .local v0, "bundle":Ljava/util/ResourceBundle;
    const-string v1, "VERSION"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/JaCoCo;->VERSION:Ljava/lang/String;

    .line 39
    const-string v1, "HOMEURL"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/JaCoCo;->HOMEURL:Ljava/lang/String;

    .line 40
    const-string v1, "RUNTIMEPACKAGE"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/core/JaCoCo;->RUNTIMEPACKAGE:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method
