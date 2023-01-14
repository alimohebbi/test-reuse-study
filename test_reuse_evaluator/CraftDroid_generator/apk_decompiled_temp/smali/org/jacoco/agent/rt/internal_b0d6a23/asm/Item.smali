.class final Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;
.super Ljava/lang/Object;
.source "Item.java"


# instance fields
.field hashCode:I

.field index:I

.field intVal:I

.field longVal:J

.field next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

.field strVal1:Ljava/lang/String;

.field strVal2:Ljava/lang/String;

.field strVal3:Ljava/lang/String;

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    .line 123
    return-void
.end method

.method constructor <init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "i"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->index:I

    .line 135
    iget v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    .line 136
    iget v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    .line 137
    iget-wide v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->longVal:J

    iput-wide v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->longVal:J

    .line 138
    iget-object v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    .line 139
    iget-object v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal2:Ljava/lang/String;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal2:Ljava/lang/String;

    .line 140
    iget-object v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal3:Ljava/lang/String;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal3:Ljava/lang/String;

    .line 141
    iget v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    .line 142
    return-void
.end method


# virtual methods
.method isEqualTo(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;)Z
    .locals 6
    .param p1, "i"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 279
    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    sparse-switch v2, :sswitch_data_0

    .line 306
    iget-object v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal3:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal3:Ljava/lang/String;

    .line 307
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_0
    return v0

    .line 285
    :sswitch_0
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 289
    :sswitch_1
    iget-wide v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->longVal:J

    iget-wide v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->longVal:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 292
    :sswitch_2
    iget v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 294
    :sswitch_3
    iget v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    if-ne v2, v3, :cond_1

    iget-object v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 296
    :sswitch_4
    iget-object v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 298
    :sswitch_5
    iget-wide v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->longVal:J

    iget-wide v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->longVal:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal2:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal2:Ljava/lang/String;

    .line 299
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 307
    goto :goto_0

    .line 279
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0xc -> :sswitch_4
        0x10 -> :sswitch_0
        0x12 -> :sswitch_5
        0x1e -> :sswitch_0
        0x1f -> :sswitch_3
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method set(D)V
    .locals 3
    .param p1, "doubleVal"    # D

    .prologue
    .line 187
    const/4 v0, 0x6

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    .line 188
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->longVal:J

    .line 189
    const v0, 0x7fffffff

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    double-to-int v2, p1

    add-int/2addr v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    .line 190
    return-void
.end method

.method set(F)V
    .locals 3
    .param p1, "floatVal"    # F

    .prologue
    .line 175
    const/4 v0, 0x4

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    .line 176
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    .line 177
    const v0, 0x7fffffff

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    float-to-int v2, p1

    add-int/2addr v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    .line 178
    return-void
.end method

.method set(I)V
    .locals 2
    .param p1, "intVal"    # I

    .prologue
    .line 151
    const/4 v0, 0x3

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    .line 152
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    .line 153
    const v0, 0x7fffffff

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    add-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    .line 154
    return-void
.end method

.method set(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "hashCode"    # I

    .prologue
    .line 263
    const/16 v0, 0x21

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    .line 264
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->intVal:I

    .line 265
    iput p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    .line 266
    return-void
.end method

.method set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "strVal1"    # Ljava/lang/String;
    .param p3, "strVal2"    # Ljava/lang/String;
    .param p4, "strVal3"    # Ljava/lang/String;

    .prologue
    const v2, 0x7fffffff

    .line 206
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    .line 207
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    .line 208
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal2:Ljava/lang/String;

    .line 209
    iput-object p4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal3:Ljava/lang/String;

    .line 210
    sparse-switch p1, :sswitch_data_0

    .line 228
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 229
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    and-int/2addr v0, v2

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    .line 231
    :goto_0
    return-void

    .line 216
    :sswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    and-int/2addr v0, v2

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    goto :goto_0

    .line 219
    :sswitch_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 220
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    and-int/2addr v0, v2

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    goto :goto_0

    .line 210
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method set(J)V
    .locals 3
    .param p1, "longVal"    # J

    .prologue
    .line 163
    const/4 v0, 0x5

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    .line 164
    iput-wide p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->longVal:J

    .line 165
    const v0, 0x7fffffff

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    long-to-int v2, p1

    add-int/2addr v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    .line 166
    return-void
.end method

.method set(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsmIndex"    # I

    .prologue
    .line 244
    const/16 v0, 0x12

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->type:I

    .line 245
    int-to-long v0, p3

    iput-wide v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->longVal:J

    .line 246
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    .line 247
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal2:Ljava/lang/String;

    .line 248
    const v0, 0x7fffffff

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal1:Ljava/lang/String;

    .line 249
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v1, p3

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->strVal2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x12

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Item;->hashCode:I

    .line 250
    return-void
.end method
