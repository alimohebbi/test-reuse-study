.class public Lorg/openintents/shopping/theme/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_STYLE:Ljava/lang/String; = "style"

.field public static final ATTR_TITLE:Ljava/lang/String; = "title"

.field public static final ELEM_ATTRIBUTESET:Ljava/lang/String; = "attributeset"

.field public static final ELEM_THEME:Ljava/lang/String; = "theme"

.field public static final ELEM_THEMES:Ljava/lang/String; = "themes"

.field public static final METADATA_THEMES:Ljava/lang/String; = "org.openintents.themes"

.field public static SCHEMA:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ThemeUtils"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/theme/ThemeUtils;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x729b2921e530ab86L

    const-string v2, "org/openintents/shopping/theme/ThemeUtils"

    const/16 v3, 0x3e

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/theme/ThemeUtils;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/theme/ThemeUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    const-string v1, "http://schemas.openintents.org/android/themes"

    sput-object v1, Lorg/openintents/shopping/theme/ThemeUtils;->SCHEMA:Ljava/lang/String;

    const/16 v1, 0x3d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/theme/ThemeUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static addThemeInfos(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lorg/openintents/shopping/theme/ThemeUtils;->$jacocoInit()[Z

    move-result-object v8

    .line 88
    const-string v7, "org.openintents.themes"

    move-object/from16 v0, p2

    invoke-virtual {v0, p0, v7}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 90
    .local v6, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v7, 0x0

    const/16 v9, 0x12

    const/4 v10, 0x1

    :try_start_0
    aput-boolean v10, v8, v9

    .line 93
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/16 v9, 0x13

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 94
    :goto_0
    const/4 v9, 0x1

    if-eq v9, v3, :cond_6

    .line 96
    const/4 v9, 0x2

    if-ne v9, v3, :cond_4

    const/16 v9, 0x14

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 98
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    const/16 v10, 0x15

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 100
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "themes"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v9, 0x16

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 130
    :goto_1
    const/16 v9, 0x26

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 136
    :goto_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    .local v3, "tagType":I
    const/16 v9, 0x29

    const/4 v10, 0x1

    aput-boolean v10, v8, v9
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 139
    .end local v3    # "tagType":I
    :catch_0
    move-exception v2

    .line 140
    .local v2, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "ThemeUtils"

    const-string v9, "XML parse exception when parsing metadata for \'%s\': %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/16 v12, 0x2b

    const/4 v13, 0x1

    aput-boolean v13, v8, v12

    .line 142
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x2c

    const/4 v12, 0x1

    aput-boolean v12, v8, v11

    .line 140
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/16 v7, 0x2d

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    .line 149
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 150
    const/16 v7, 0x31

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    return-void

    .line 104
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "attributeset"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v7, 0x17

    const/4 v10, 0x1

    aput-boolean v10, v8, v7

    .line 105
    sget-object v7, Lorg/openintents/shopping/theme/ThemeUtils;->SCHEMA:Ljava/lang/String;

    const-string v10, "name"

    invoke-interface {v9, v7, v10}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x18

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 106
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 107
    .local v5, "useThisAttributeSet":Z
    const/16 v7, 0x19

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    move v7, v5

    goto :goto_1

    .line 109
    .end local v5    # "useThisAttributeSet":Z
    :cond_1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "theme"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const/16 v9, 0x1a

    const/4 v10, 0x1

    aput-boolean v10, v8, v9
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 143
    :catch_1
    move-exception v2

    .line 144
    .local v2, "ex":Ljava/io/IOException;
    const-string v7, "ThemeUtils"

    const-string v9, "I/O exception when parsing metadata for \'%s\': %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/16 v12, 0x2e

    const/4 v13, 0x1

    aput-boolean v13, v8, v12

    .line 146
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x2f

    const/4 v12, 0x1

    aput-boolean v12, v8, v11

    .line 144
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x30

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    goto :goto_3

    .line 110
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_2
    if-nez v7, :cond_3

    const/16 v9, 0x1b

    const/4 v10, 0x1

    :try_start_2
    aput-boolean v10, v8, v9

    goto/16 :goto_1

    :cond_3
    const/16 v10, 0x1c

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 111
    new-instance v4, Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;

    invoke-direct {v4}, Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;-><init>()V

    .line 113
    .local v4, "ti":Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;
    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v10, v4, Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;->packageName:Ljava/lang/String;

    const/16 v10, 0x1d

    const/4 v11, 0x1

    aput-boolean v11, v8, v10

    .line 114
    sget-object v10, Lorg/openintents/shopping/theme/ThemeUtils;->SCHEMA:Ljava/lang/String;

    const-string v11, "title"

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    const/16 v11, 0x1e

    const/4 v12, 0x1

    aput-boolean v12, v8, v11

    .line 116
    sget-object v11, Lorg/openintents/shopping/theme/ThemeUtils;->SCHEMA:Ljava/lang/String;

    const-string v12, "style"

    const/4 v13, 0x0

    invoke-interface {v9, v11, v12, v13}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v9

    const/16 v11, 0x1f

    const/4 v12, 0x1

    :try_start_3
    aput-boolean v12, v8, v11

    .line 120
    const/16 v11, 0x20

    const/4 v12, 0x1

    aput-boolean v12, v8, v11

    .line 121
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v11

    const/16 v12, 0x21

    const/4 v13, 0x1

    aput-boolean v13, v8, v12

    .line 122
    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;->title:Ljava/lang/String;

    const/16 v10, 0x22

    const/4 v12, 0x1

    aput-boolean v12, v8, v10

    .line 123
    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;->styleName:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 126
    const/16 v9, 0x23

    const/4 v10, 0x1

    :try_start_4
    aput-boolean v10, v8, v9

    .line 127
    :goto_4
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v9, 0x25

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    goto/16 :goto_1

    .line 124
    :catch_2
    move-exception v1

    .line 125
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, ""

    iput-object v9, v4, Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;->title:Ljava/lang/String;

    const/16 v9, 0x24

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    goto :goto_4

    .line 132
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "ti":Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;
    :cond_4
    const/4 v9, 0x3

    if-eq v9, v3, :cond_5

    const/16 v9, 0x27

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    goto/16 :goto_2

    :cond_5
    const/16 v9, 0x28

    const/4 v10, 0x1

    aput-boolean v10, v8, v9
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 147
    :cond_6
    const/16 v7, 0x2a

    const/4 v9, 0x1

    aput-boolean v9, v8, v7

    goto/16 :goto_3
.end method

.method public static getAttributeIds(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)[I
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/openintents/shopping/theme/ThemeUtils;->$jacocoInit()[Z

    move-result-object v3

    .line 46
    array-length v4, p1

    aput-boolean v7, v3, v7

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 49
    .local v2, "res":Landroid/content/res/Resources;
    new-array v0, v4, [I

    .line 50
    .local v0, "attrIds":[I
    const/4 v1, 0x0

    const/4 v5, 0x2

    aput-boolean v7, v3, v5

    :goto_0
    if-ge v1, v4, :cond_0

    const/4 v5, 0x3

    aput-boolean v7, v3, v5

    .line 51
    aget-object v5, p1, v1

    const-string v6, "attr"

    invoke-virtual {v2, v5, v6, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v1

    .line 50
    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    const/4 v5, 0x4

    aput-boolean v7, v3, v5

    goto :goto_0

    .line 53
    .end local v1    # "i":I
    :cond_0
    const/4 v4, 0x5

    aput-boolean v7, v3, v4

    return-object v0
.end method

.method public static getPackageNameFromStyle(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v1, 0x3a

    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/theme/ThemeUtils;->$jacocoInit()[Z

    move-result-object v2

    .line 183
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 184
    .local v0, "pos":I
    if-ltz v0, :cond_0

    aput-boolean v4, v2, v1

    .line 185
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3b

    aput-boolean v4, v2, v3

    .line 187
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    const/16 v3, 0x3c

    aput-boolean v4, v2, v3

    goto :goto_0
.end method

.method public static getThemeInfos(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/openintents/shopping/theme/ThemeUtils$ThemeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/theme/ThemeUtils;->$jacocoInit()[Z

    move-result-object v1

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v0, 0x32

    aput-boolean v6, v1, v0

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x33

    aput-boolean v6, v1, v3

    .line 165
    invoke-static {v2, v0}, Lorg/openintents/shopping/theme/ThemeUtils;->getThemePackages(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/16 v3, 0x34

    aput-boolean v6, v1, v3

    .line 167
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/16 v4, 0x35

    aput-boolean v6, v1, v4

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v0, 0x36

    aput-boolean v6, v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    const/16 v5, 0x37

    aput-boolean v6, v1, v5

    .line 170
    invoke-static {v2, p1, v0, v3}, Lorg/openintents/shopping/theme/ThemeUtils;->addThemeInfos(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 171
    const/16 v0, 0x38

    aput-boolean v6, v1, v0

    goto :goto_0

    .line 173
    :cond_0
    const/16 v0, 0x39

    aput-boolean v6, v1, v0

    return-object v3
.end method

.method private static getThemePackages(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/theme/ThemeUtils;->$jacocoInit()[Z

    move-result-object v2

    .line 66
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 68
    .local v1, "appinfolist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/16 v3, 0x80

    const/4 v4, 0x6

    aput-boolean v6, v2, v4

    .line 69
    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x7

    aput-boolean v6, v2, v4

    .line 70
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v4, 0x8

    aput-boolean v6, v2, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 71
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_0

    const/16 v4, 0x9

    aput-boolean v6, v2, v4

    .line 81
    :goto_1
    const/16 v4, 0x10

    aput-boolean v6, v2, v4

    goto :goto_0

    .line 71
    :cond_0
    const/16 v4, 0xa

    aput-boolean v6, v2, v4

    .line 72
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "org.openintents.themes"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0xb

    aput-boolean v6, v2, v4

    goto :goto_1

    :cond_1
    const/16 v4, 0xc

    aput-boolean v6, v2, v4

    .line 73
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xd

    aput-boolean v6, v2, v4

    .line 75
    const/4 v4, 0x0

    invoke-interface {v1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/16 v4, 0xe

    aput-boolean v6, v2, v4

    goto :goto_1

    .line 77
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xf

    aput-boolean v6, v2, v4

    goto :goto_1

    .line 83
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_3
    const/16 v3, 0x11

    aput-boolean v6, v2, v3

    return-object v1
.end method
