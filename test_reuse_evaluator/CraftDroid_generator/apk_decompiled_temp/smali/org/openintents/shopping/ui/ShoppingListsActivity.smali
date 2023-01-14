.class public Lorg/openintents/shopping/ui/ShoppingListsActivity;
.super Landroid/app/ListActivity;
.source "ShoppingListsActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingListsActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x39d4f699bbd25e0fL    # -1.0710346926849117E30

    const-string v2, "org/openintents/shopping/ui/ShoppingListsActivity"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingListsActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingListsActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onStop()V
    .locals 10

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v9, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingListsActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 27
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 29
    const-string v1, "jacoco"

    aput-boolean v9, v2, v9

    .line 32
    const-string v3, "StorageSt"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput-boolean v9, v2, v5

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "coverage.exec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-boolean v9, v2, v6

    .line 34
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v2, v3

    .line 36
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    const/4 v3, 0x5

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    .line 37
    const-string v3, "com.vladium.emma.rt.RT"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 38
    .local v0, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "dumpCoverageData"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    .line 39
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 38
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 41
    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x9

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 42
    const-string v3, "generateCoverageReport: ok"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    const/16 v1, 0xc

    aput-boolean v9, v2, v1

    return-void

    .line 43
    :catch_0
    move-exception v1

    const/16 v3, 0xa

    aput-boolean v9, v2, v3

    .line 44
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Is emma jar on classpath?"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0xb

    aput-boolean v9, v2, v1

    throw v3
.end method
