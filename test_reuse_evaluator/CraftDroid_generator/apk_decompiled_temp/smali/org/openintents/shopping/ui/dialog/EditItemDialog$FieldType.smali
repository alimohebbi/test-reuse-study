.class public final enum Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;
.super Ljava/lang/Enum;
.source "EditItemDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/ui/dialog/EditItemDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FieldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum ITEMNAME:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

.field public static final enum PRICE:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

.field public static final enum PRIORITY:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

.field public static final enum QUANTITY:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

.field public static final enum TAGS:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

.field public static final enum UNITS:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x22cc68ecdf5c4202L    # 4.659520243853574E-141

    const-string v2, "org/openintents/shopping/ui/dialog/EditItemDialog$FieldType"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    new-instance v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    const-string v2, "ITEMNAME"

    invoke-direct {v1, v2, v6}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->ITEMNAME:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    new-instance v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    const-string v2, "QUANTITY"

    invoke-direct {v1, v2, v4}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->QUANTITY:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    new-instance v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    const-string v2, "PRICE"

    invoke-direct {v1, v2, v7}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->PRICE:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    new-instance v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    const-string v2, "PRIORITY"

    invoke-direct {v1, v2, v5}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->PRIORITY:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    new-instance v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    const-string v2, "UNITS"

    invoke-direct {v1, v2, v8}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->UNITS:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    new-instance v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    const-string v2, "TAGS"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->TAGS:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    .line 69
    const/4 v1, 0x6

    new-array v1, v1, [Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    sget-object v2, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->ITEMNAME:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    aput-object v2, v1, v6

    sget-object v2, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->QUANTITY:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    aput-object v2, v1, v4

    sget-object v2, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->PRICE:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    aput-object v2, v1, v7

    sget-object v2, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->PRIORITY:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    aput-object v2, v1, v5

    sget-object v2, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->UNITS:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->TAGS:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    aput-object v3, v1, v2

    sput-object v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->$VALUES:[Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    aput-boolean v4, v0, v5

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
    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->$jacocoInit()[Z

    move-result-object v1

    .line 69
    const-class v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->$jacocoInit()[Z

    move-result-object v1

    .line 69
    sget-object v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->$VALUES:[Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    invoke-virtual {v0}, [Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method
