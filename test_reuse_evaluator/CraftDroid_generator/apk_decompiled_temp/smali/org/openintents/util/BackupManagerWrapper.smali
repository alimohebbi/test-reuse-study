.class public Lorg/openintents/util/BackupManagerWrapper;
.super Ljava/lang/Object;
.source "BackupManagerWrapper.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mInstance:Landroid/app/backup/BackupManager;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/util/BackupManagerWrapper;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x480d92c04ac7a4e6L    # 1.25790679572555E39

    const-string v2, "org/openintents/util/BackupManagerWrapper"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/util/BackupManagerWrapper;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/util/BackupManagerWrapper;->$jacocoInit()[Z

    move-result-object v1

    .line 12
    :try_start_0
    const-string v0, "android.app.backup.BackupManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    return-void

    .line 13
    :catch_0
    move-exception v0

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 14
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    throw v2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/util/BackupManagerWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    aput-boolean v2, v0, v2

    .line 23
    new-instance v1, Landroid/app/backup/BackupManager;

    invoke-direct {v1, p1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/openintents/util/BackupManagerWrapper;->mInstance:Landroid/app/backup/BackupManager;

    .line 25
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static checkAvailable()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/util/BackupManagerWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public dataChanged()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/util/BackupManagerWrapper;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-object v1, p0, Lorg/openintents/util/BackupManagerWrapper;->mInstance:Landroid/app/backup/BackupManager;

    invoke-virtual {v1}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 29
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
