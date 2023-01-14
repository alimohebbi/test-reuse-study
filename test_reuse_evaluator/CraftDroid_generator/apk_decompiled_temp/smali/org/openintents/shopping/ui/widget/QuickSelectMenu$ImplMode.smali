.class final enum Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;
.super Ljava/lang/Enum;
.source "QuickSelectMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/ui/widget/QuickSelectMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ImplMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum BACKPORT:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

.field public static final enum NONE:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

.field public static final enum PLATFORM:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1816e9271f720eefL    # 1.2554000773501621E-192

    const-string v2, "org/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    new-instance v1, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    const-string v2, "PLATFORM"

    invoke-direct {v1, v2, v4}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->PLATFORM:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    new-instance v1, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    const-string v2, "BACKPORT"

    invoke-direct {v1, v2, v3}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->BACKPORT:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    new-instance v1, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    const-string v2, "NONE"

    invoke-direct {v1, v2, v5}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->NONE:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    .line 24
    new-array v1, v6, [Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    sget-object v2, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->PLATFORM:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    aput-object v2, v1, v4

    sget-object v2, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->BACKPORT:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    aput-object v2, v1, v3

    sget-object v2, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->NONE:Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    aput-object v2, v1, v5

    sput-object v1, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->$VALUES:[Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    aput-boolean v3, v0, v6

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->$jacocoInit()[Z

    move-result-object v1

    .line 24
    const-class v0, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->$jacocoInit()[Z

    move-result-object v1

    .line 24
    sget-object v0, Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->$VALUES:[Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    invoke-virtual {v0}, [Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openintents/shopping/ui/widget/QuickSelectMenu$ImplMode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method
