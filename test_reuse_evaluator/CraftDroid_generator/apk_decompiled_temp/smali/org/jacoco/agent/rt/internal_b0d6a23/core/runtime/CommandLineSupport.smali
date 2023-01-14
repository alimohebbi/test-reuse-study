.class final Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/CommandLineSupport;
.super Ljava/lang/Object;
.source "CommandLineSupport.java"


# static fields
.field private static final BLANK:C = ' '

.field private static final M_ESCAPED:I = 0x2

.field private static final M_PARSEARGUMENT:I = 0x1

.field private static final M_STRIPWHITESPACE:I = 0x0

.field private static final QUOTE:C = '\"'

.field private static final SLASH:C = '\\'


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method private static addArgument(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "current"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 131
    :cond_0
    return-void
.end method

.method static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5c

    const/4 v7, -0x1

    const/16 v6, 0x22

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v2, "escaped":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-char v1, v0, v3

    .line 36
    .local v1, "c":C
    if-eq v1, v6, :cond_0

    if-ne v1, v5, :cond_1

    .line 37
    :cond_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41
    .end local v1    # "c":C
    :cond_2
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v7, :cond_3

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v7, :cond_4

    .line 42
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static quote(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 58
    .local v3, "seperate":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, "arg":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 60
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    :cond_0
    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/CommandLineSupport;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const/4 v3, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static split(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "commandline"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v10, 0x22

    const/16 v9, 0x5c

    .line 77
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 78
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    :goto_0
    return-object v0

    .line 80
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v3, "current":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 83
    .local v7, "mode":I
    const/16 v4, 0x20

    .line 84
    .local v4, "endChar":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .local v1, "arr$":[C
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_9

    aget-char v2, v1, v5

    .line 85
    .local v2, "c":C
    packed-switch v7, :pswitch_data_0

    .line 84
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 87
    :pswitch_0
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_2

    .line 88
    if-ne v2, v10, :cond_3

    .line 89
    const/16 v4, 0x22

    .line 94
    :goto_3
    const/4 v7, 0x1

    goto :goto_2

    .line 91
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    const/16 v4, 0x20

    goto :goto_3

    .line 98
    :pswitch_1
    if-ne v2, v4, :cond_4

    .line 99
    invoke-static {v0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/CommandLineSupport;->addArgument(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 100
    const/4 v7, 0x0

    goto :goto_2

    .line 101
    :cond_4
    if-ne v2, v9, :cond_5

    .line 102
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    const/4 v7, 0x2

    goto :goto_2

    .line 105
    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 109
    :pswitch_2
    if-eq v2, v10, :cond_6

    if-ne v2, v9, :cond_7

    .line 110
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 117
    :goto_4
    const/4 v7, 0x1

    goto :goto_2

    .line 111
    :cond_7
    if-ne v2, v4, :cond_8

    .line 112
    invoke-static {v0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/CommandLineSupport;->addArgument(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 113
    const/4 v7, 0x0

    goto :goto_4

    .line 115
    :cond_8
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 121
    .end local v2    # "c":C
    :cond_9
    invoke-static {v0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/CommandLineSupport;->addArgument(Ljava/util/List;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
