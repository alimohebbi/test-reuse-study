.class public Landroid/support/v2/database/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "originalValues"    # [Ljava/lang/String;
    .param p1, "newValues"    # [Ljava/lang/String;

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 49
    .end local p0    # "originalValues":[Ljava/lang/String;
    :goto_0
    return-object p0

    .line 37
    .restart local p0    # "originalValues":[Ljava/lang/String;
    :cond_0
    if-nez p0, :cond_1

    move-object p0, p1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    array-length v2, p0

    .line 41
    .local v2, "oLen":I
    array-length v1, p1

    .line 42
    .local v1, "nLen":I
    add-int v4, v2, v1

    new-array v3, v4, [Ljava/lang/String;

    .line 43
    .local v3, "values":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_2

    .line 46
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v1, :cond_3

    move-object p0, v3

    .line 49
    goto :goto_0

    .line 44
    :cond_2
    aget-object v4, p0, v0

    aput-object v4, v3, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    :cond_3
    add-int v4, v2, v0

    aget-object v5, p1, v0

    aput-object v5, v3, v4

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    .end local p0    # "a":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 66
    .restart local p0    # "a":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, p1

    .line 67
    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 70
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ") AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
