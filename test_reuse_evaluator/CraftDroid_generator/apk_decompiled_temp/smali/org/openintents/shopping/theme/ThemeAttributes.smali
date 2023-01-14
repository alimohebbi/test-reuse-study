.class public Lorg/openintents/shopping/theme/ThemeAttributes;
.super Ljava/lang/Object;
.source "ThemeAttributes.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field mContext:Landroid/content/Context;

.field mPackageName:Ljava/lang/String;

.field mThemeId:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/theme/ThemeAttributes;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2713167aa8aff19L

    const-string v2, "org/openintents/shopping/theme/ThemeAttributes"

    const/16 v3, 0x19

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/theme/ThemeAttributes;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/theme/ThemeAttributes;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mPackageName:Ljava/lang/String;

    .line 38
    iput p3, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mThemeId:I

    .line 39
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/theme/ThemeAttributes;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    iget-object v1, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v5

    iget-object v3, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/openintents/shopping/theme/ThemeUtils;->getAttributeIds(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    aput-boolean v4, v0, v4

    .line 44
    iget-object v2, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    iget v3, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mThemeId:I

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 45
    invoke-virtual {v1, v5, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v3, 0x3

    aput-boolean v4, v0, v3

    .line 46
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    return v2
.end method

.method public getColor(Ljava/lang/String;I)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/theme/ThemeAttributes;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iget-object v1, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v5

    iget-object v3, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/openintents/shopping/theme/ThemeUtils;->getAttributeIds(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    .line 53
    iget-object v2, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    iget v3, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mThemeId:I

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x6

    aput-boolean v4, v0, v2

    .line 54
    invoke-virtual {v1, v5, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 v3, 0x7

    aput-boolean v4, v0, v3

    .line 55
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    return v2
.end method

.method public getDimensionPixelOffset(Ljava/lang/String;I)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/theme/ThemeAttributes;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    iget-object v1, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v5

    iget-object v3, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/openintents/shopping/theme/ThemeUtils;->getAttributeIds(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    const/16 v2, 0x9

    aput-boolean v4, v0, v2

    .line 62
    iget-object v2, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    iget v3, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mThemeId:I

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0xa

    aput-boolean v4, v0, v2

    .line 63
    invoke-virtual {v1, v5, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/16 v3, 0xb

    aput-boolean v4, v0, v3

    .line 64
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    const/16 v1, 0xc

    aput-boolean v4, v0, v1

    return v2
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/theme/ThemeAttributes;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    iget-object v1, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v5

    iget-object v3, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/openintents/shopping/theme/ThemeUtils;->getAttributeIds(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    const/16 v2, 0xd

    aput-boolean v4, v0, v2

    .line 71
    iget-object v2, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    iget v3, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mThemeId:I

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0xe

    aput-boolean v4, v0, v2

    .line 72
    invoke-virtual {v1, v5, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    const/16 v3, 0xf

    aput-boolean v4, v0, v3

    .line 73
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    const/16 v1, 0x10

    aput-boolean v4, v0, v1

    return v2
.end method

.method public getResourceId(Ljava/lang/String;I)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/theme/ThemeAttributes;->$jacocoInit()[Z

    move-result-object v0

    .line 78
    iget-object v1, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v5

    iget-object v3, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/openintents/shopping/theme/ThemeUtils;->getAttributeIds(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    const/16 v2, 0x11

    aput-boolean v4, v0, v2

    .line 80
    iget-object v2, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    iget v3, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mThemeId:I

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x12

    aput-boolean v4, v0, v2

    .line 81
    invoke-virtual {v1, v5, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/16 v3, 0x13

    aput-boolean v4, v0, v3

    .line 82
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    const/16 v1, 0x14

    aput-boolean v4, v0, v1

    return v2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/theme/ThemeAttributes;->$jacocoInit()[Z

    move-result-object v0

    .line 87
    iget-object v1, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v5

    iget-object v3, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/openintents/shopping/theme/ThemeUtils;->getAttributeIds(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    const/16 v2, 0x15

    aput-boolean v4, v0, v2

    .line 89
    iget-object v2, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    iget v3, p0, Lorg/openintents/shopping/theme/ThemeAttributes;->mThemeId:I

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x16

    aput-boolean v4, v0, v2

    .line 90
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x17

    aput-boolean v4, v0, v3

    .line 91
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    const/16 v1, 0x18

    aput-boolean v4, v0, v1

    return-object v2
.end method
