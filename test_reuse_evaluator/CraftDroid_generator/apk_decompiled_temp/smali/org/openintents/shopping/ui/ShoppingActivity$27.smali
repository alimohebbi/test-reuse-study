.class synthetic Lorg/openintents/shopping/ui/ShoppingActivity$27;
.super Ljava/lang/Object;
.source "ShoppingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/ui/ShoppingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$openintents$shopping$ui$dialog$EditItemDialog$FieldType:[I

.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$27;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5ad6246a85c30e5eL    # 3.8370716660073633E129

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity$27"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$27;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$27;->$jacocoInit()[Z

    move-result-object v0

    .line 1548
    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->values()[Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lorg/openintents/shopping/ui/ShoppingActivity$27;->$SwitchMap$org$openintents$shopping$ui$dialog$EditItemDialog$FieldType:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v0, v1

    sget-object v1, Lorg/openintents/shopping/ui/ShoppingActivity$27;->$SwitchMap$org$openintents$shopping$ui$dialog$EditItemDialog$FieldType:[I

    sget-object v2, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->PRIORITY:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    invoke-virtual {v2}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    aput-boolean v4, v0, v4

    :goto_0
    :try_start_1
    sget-object v1, Lorg/openintents/shopping/ui/ShoppingActivity$27;->$SwitchMap$org$openintents$shopping$ui$dialog$EditItemDialog$FieldType:[I

    sget-object v2, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->QUANTITY:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    invoke-virtual {v2}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    :goto_1
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    return-void

    :catch_0
    move-exception v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    :try_start_2
    aput-boolean v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    goto :goto_1
.end method
