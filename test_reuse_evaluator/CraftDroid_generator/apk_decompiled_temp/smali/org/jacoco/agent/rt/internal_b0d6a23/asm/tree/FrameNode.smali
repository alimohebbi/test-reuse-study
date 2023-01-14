.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
.source "FrameNode.java"


# instance fields
.field public local:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 82
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .prologue
    .line 110
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 111
    iput p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->type:I

    .line 112
    packed-switch p1, :pswitch_data_0

    .line 130
    :goto_0
    :pswitch_0
    return-void

    .line 115
    :pswitch_1
    invoke-static {p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->asList(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->local:Ljava/util/List;

    .line 116
    invoke-static {p4, p5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->asList(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->stack:Ljava/util/List;

    goto :goto_0

    .line 119
    :pswitch_2
    invoke-static {p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->asList(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->local:Ljava/util/List;

    goto :goto_0

    .line 122
    :pswitch_3
    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->local:Ljava/util/List;

    goto :goto_0

    .line 127
    :pswitch_4
    const/4 v0, 0x1

    invoke-static {v0, p5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->asList(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->stack:Ljava/util/List;

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static asArray(Ljava/util/List;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/Object;

    .line 201
    .local v2, "objs":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 202
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 203
    .local v1, "o":Ljava/lang/Object;
    instance-of v3, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    if-eqz v3, :cond_0

    .line 204
    check-cast v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    move-result-object v1

    .line 206
    :cond_0
    aput-object v1, v2, v0

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    return-object v2
.end method

.method private static asList(I[Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p0, "n"    # I
    .param p1, "o"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 8
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 145
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->type:I

    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->type:I

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->asArray(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->stack:Ljava/util/List;

    .line 149
    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->asArray(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, p1

    .line 148
    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :pswitch_1
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->type:I

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->asArray(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    :pswitch_2
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->type:I

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move-object v0, p1

    move-object v3, v5

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 158
    :pswitch_3
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->type:I

    move-object v2, p1

    move v6, v4

    move-object v7, v5

    invoke-virtual/range {v2 .. v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :pswitch_4
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->type:I

    const/4 v6, 0x1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->asArray(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public clone(Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;",
            ">;)",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;>;"
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;-><init>()V

    .line 169
    .local v0, "clone":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;
    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->type:I

    iput v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->type:I

    .line 170
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->local:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 171
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->local:Ljava/util/List;

    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 173
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 174
    .local v2, "l":Ljava/lang/Object;
    instance-of v4, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    if-eqz v4, :cond_0

    .line 175
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 177
    :cond_0
    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "i":I
    .end local v2    # "l":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->stack:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 181
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->stack:Ljava/util/List;

    .line 182
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 183
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 184
    .local v3, "s":Ljava/lang/Object;
    instance-of v4, v3, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    if-eqz v4, :cond_2

    .line 185
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 187
    :cond_2
    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 190
    .end local v1    # "i":I
    .end local v3    # "s":Ljava/lang/Object;
    :cond_3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 134
    const/16 v0, 0xe

    return v0
.end method
