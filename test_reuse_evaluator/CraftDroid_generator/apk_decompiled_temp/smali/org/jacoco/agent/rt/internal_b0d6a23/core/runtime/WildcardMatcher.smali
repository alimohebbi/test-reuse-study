.class public Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;
.super Ljava/lang/Object;
.source "WildcardMatcher.java"


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v7, "\\:"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "parts":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 34
    .local v6, "regex":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 35
    .local v3, "next":Z
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 36
    .local v4, "part":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 37
    const/16 v7, 0x7c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    :cond_0
    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;->toRegex(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    const/4 v3, 0x1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v4    # "part":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    iput-object v7, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;->pattern:Ljava/util/regex/Pattern;

    .line 43
    return-void
.end method

.method private static toRegex(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "expression"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 47
    .local v4, "regex":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 48
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 56
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :sswitch_0
    const-string v5, ".?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 53
    :sswitch_1
    const-string v5, ".*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 60
    .end local v1    # "c":C
    :cond_0
    return-object v4

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x3f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/core/runtime/WildcardMatcher;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
