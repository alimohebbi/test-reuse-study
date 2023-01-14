.class public Landroid/support/v2/os/Build$VERSION;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v2/os/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VERSION"
.end annotation


# static fields
.field public static SDK_INT:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 26
    sput v4, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    .line 32
    :try_start_0
    const-class v2, Landroid/os/Build$VERSION;

    const-string v3, "SDK_INT"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sput v2, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 33
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 37
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_1
    const-class v2, Landroid/os/Build$VERSION;

    const-string v3, "SDK"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 38
    :catch_1
    move-exception v1

    .line 40
    .local v1, "e2":Ljava/lang/Exception;
    sput v4, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
