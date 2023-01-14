.class public Lorg/openintents/shopping/ShoppingBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "ShoppingBackupAgent.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field static final DB_BACKUP_KEY:Ljava/lang/String; = "db"

.field static final PREFS:Ljava/lang/String; = "org.openintents.shopping_preferences"

.field static final PREFS_BACKUP_KEY:Ljava/lang/String; = "prefs"

.field private static final TAG:Ljava/lang/String; = "ShoppingBackupAgent"

.field private static final debug:Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ShoppingBackupAgent;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7f85f149de939831L    # 1.9260713705763264E306

    const-string v2, "org/openintents/shopping/ShoppingBackupAgent"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ShoppingBackupAgent;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ShoppingBackupAgent;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ShoppingBackupAgent;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 54
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ShoppingBackupAgent;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    new-instance v1, Landroid/app/backup/SharedPreferencesBackupHelper;

    aput-boolean v5, v0, v5

    .line 32
    invoke-virtual {p0}, Lorg/openintents/shopping/ShoppingBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "org.openintents.shopping_preferences"

    aput-object v4, v3, v6

    invoke-direct {v1, v2, v3}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-boolean v5, v0, v2

    .line 33
    const-string v2, "prefs"

    invoke-virtual {p0, v2, v1}, Lorg/openintents/shopping/ShoppingBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const/4 v1, 0x3

    aput-boolean v5, v0, v1

    .line 35
    new-instance v1, Landroid/app/backup/FileBackupHelper;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "../databases/shopping.db"

    aput-object v3, v2, v6

    invoke-direct {v1, p0, v2}, Landroid/app/backup/FileBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-boolean v5, v0, v2

    .line 37
    const-string v2, "db"

    invoke-virtual {p0, v2, v1}, Lorg/openintents/shopping/ShoppingBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 38
    const/4 v1, 0x5

    aput-boolean v5, v0, v1

    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ShoppingBackupAgent;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 46
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
