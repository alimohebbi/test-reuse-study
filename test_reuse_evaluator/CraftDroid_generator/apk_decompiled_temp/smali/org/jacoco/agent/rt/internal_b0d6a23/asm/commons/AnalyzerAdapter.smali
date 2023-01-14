.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;
.source "AnalyzerAdapter.java"


# instance fields
.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;",
            ">;"
        }
    .end annotation
.end field

.field public locals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private maxLocals:I

.field private maxStack:I

.field private owner:Ljava/lang/String;

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

.field public uninitializedTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 5
    .param p1, "api"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "access"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "desc"    # Ljava/lang/String;
    .param p6, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 171
    invoke-direct {p0, p1, p6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;-><init>(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 172
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->owner:Ljava/lang/String;

    .line 173
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    .line 175
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->uninitializedTypes:Ljava/util/Map;

    .line 177
    and-int/lit8 v3, p3, 0x8

    if-nez v3, :cond_0

    .line 178
    const-string v3, "<init>"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    :goto_0
    invoke-static {p5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v2

    .line 185
    .local v2, "types":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 186
    aget-object v1, v2, v0

    .line 187
    .local v1, "type":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getSort()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 211
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    .end local v0    # "i":I
    .end local v1    # "type":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .end local v2    # "types":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    :cond_1
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    .restart local v0    # "i":I
    .restart local v1    # "type":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    .restart local v2    # "types":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    :pswitch_0
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 196
    :pswitch_1
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 199
    :pswitch_2
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 203
    :pswitch_3
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 207
    :pswitch_4
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 214
    .end local v1    # "type":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    :cond_2
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->maxLocals:I

    .line 215
    return-void

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 7
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 144
    const/high16 v1, 0x50000

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;

    if-eq v0, v1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 148
    :cond_0
    return-void
.end method

.method private doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .prologue
    const/4 v9, 0x0

    .line 335
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 338
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-nez v0, :cond_1

    .line 339
    iput-object v9, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    .line 366
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-direct {p0, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(Ljava/lang/String;)V

    .line 343
    const/16 v0, 0xb8

    if-eq p1, v0, :cond_6

    .line 344
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v7

    .line 345
    .local v7, "t":Ljava/lang/Object;
    const/16 v0, 0xb7

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_6

    .line 347
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    if-ne v7, v0, :cond_3

    .line 348
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->owner:Ljava/lang/String;

    .line 352
    :goto_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 353
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_2

    .line 354
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0, v6, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 350
    .end local v6    # "i":I
    :cond_3
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->uninitializedTypes:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .local v8, "u":Ljava/lang/Object;
    goto :goto_1

    .line 357
    .end local v8    # "u":Ljava/lang/Object;
    .restart local v6    # "i":I
    :cond_4
    const/4 v6, 0x0

    :goto_3
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 358
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_5

    .line 359
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0, v6, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 364
    .end local v6    # "i":I
    .end local v7    # "t":Ljava/lang/Object;
    :cond_6
    invoke-direct {p0, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    .line 365
    iput-object v9, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    goto :goto_0
.end method

.method private execute(IILjava/lang/String;)V
    .locals 10
    .param p1, "opcode"    # I
    .param p2, "iarg"    # I
    .param p3, "sarg"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 580
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-nez v4, :cond_0

    .line 581
    iput-object v9, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    .line 946
    :goto_0
    return-void

    .line 585
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 941
    :pswitch_0
    invoke-direct {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 942
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    .line 945
    :cond_1
    :goto_1
    :pswitch_1
    iput-object v9, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    goto :goto_0

    .line 598
    :pswitch_2
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->NULL:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 609
    :pswitch_3
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 613
    :pswitch_4
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 614
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 619
    :pswitch_5
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 623
    :pswitch_6
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 624
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 629
    :pswitch_7
    invoke-direct {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 633
    :pswitch_8
    invoke-direct {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 634
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 640
    :pswitch_9
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 641
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 645
    :pswitch_a
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 646
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 647
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 650
    :pswitch_b
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 651
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 655
    :pswitch_c
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 656
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 657
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 660
    :pswitch_d
    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 661
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 662
    .local v0, "t1":Ljava/lang/Object;
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 663
    check-cast v0, Ljava/lang/String;

    .end local v0    # "t1":Ljava/lang/Object;
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 665
    .restart local v0    # "t1":Ljava/lang/Object;
    :cond_2
    const-string v4, "java/lang/Object"

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 671
    .end local v0    # "t1":Ljava/lang/Object;
    :pswitch_e
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 672
    .restart local v0    # "t1":Ljava/lang/Object;
    invoke-direct {p0, p2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    .line 673
    if-lez p2, :cond_1

    .line 674
    add-int/lit8 v4, p2, -0x1

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 675
    .local v1, "t2":Ljava/lang/Object;
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v4, :cond_3

    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v4, :cond_1

    .line 676
    :cond_3
    add-int/lit8 v4, p2, -0x1

    sget-object v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 682
    .end local v0    # "t1":Ljava/lang/Object;
    .end local v1    # "t2":Ljava/lang/Object;
    :pswitch_f
    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 683
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 684
    .restart local v0    # "t1":Ljava/lang/Object;
    invoke-direct {p0, p2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    .line 685
    add-int/lit8 v4, p2, 0x1

    sget-object v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    .line 686
    if-lez p2, :cond_1

    .line 687
    add-int/lit8 v4, p2, -0x1

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 688
    .restart local v1    # "t2":Ljava/lang/Object;
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v4, :cond_4

    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v4, :cond_1

    .line 689
    :cond_4
    add-int/lit8 v4, p2, -0x1

    sget-object v5, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v4, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 699
    .end local v0    # "t1":Ljava/lang/Object;
    .end local v1    # "t2":Ljava/lang/Object;
    :pswitch_10
    invoke-direct {p0, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_1

    .line 703
    :pswitch_11
    invoke-direct {p0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_1

    .line 722
    :pswitch_12
    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_1

    .line 735
    :pswitch_13
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_1

    .line 738
    :pswitch_14
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 739
    .restart local v0    # "t1":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 740
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 743
    .end local v0    # "t1":Ljava/lang/Object;
    :pswitch_15
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 744
    .restart local v0    # "t1":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v1

    .line 745
    .restart local v1    # "t2":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 746
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 747
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 750
    .end local v0    # "t1":Ljava/lang/Object;
    .end local v1    # "t2":Ljava/lang/Object;
    :pswitch_16
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 751
    .restart local v0    # "t1":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v1

    .line 752
    .restart local v1    # "t2":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 753
    .local v2, "t3":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 754
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 755
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 756
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 759
    .end local v0    # "t1":Ljava/lang/Object;
    .end local v1    # "t2":Ljava/lang/Object;
    .end local v2    # "t3":Ljava/lang/Object;
    :pswitch_17
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 760
    .restart local v0    # "t1":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v1

    .line 761
    .restart local v1    # "t2":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 762
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 763
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 764
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 767
    .end local v0    # "t1":Ljava/lang/Object;
    .end local v1    # "t2":Ljava/lang/Object;
    :pswitch_18
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 768
    .restart local v0    # "t1":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v1

    .line 769
    .restart local v1    # "t2":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 770
    .restart local v2    # "t3":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 771
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 772
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 773
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 774
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 777
    .end local v0    # "t1":Ljava/lang/Object;
    .end local v1    # "t2":Ljava/lang/Object;
    .end local v2    # "t3":Ljava/lang/Object;
    :pswitch_19
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 778
    .restart local v0    # "t1":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v1

    .line 779
    .restart local v1    # "t2":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 780
    .restart local v2    # "t3":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v3

    .line 781
    .local v3, "t4":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 782
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 783
    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 784
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 785
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 786
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 789
    .end local v0    # "t1":Ljava/lang/Object;
    .end local v1    # "t2":Ljava/lang/Object;
    .end local v2    # "t3":Ljava/lang/Object;
    .end local v3    # "t4":Ljava/lang/Object;
    :pswitch_1a
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 790
    .restart local v0    # "t1":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v1

    .line 791
    .restart local v1    # "t2":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 792
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 809
    .end local v0    # "t1":Ljava/lang/Object;
    .end local v1    # "t2":Ljava/lang/Object;
    :pswitch_1b
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 810
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 820
    :pswitch_1c
    invoke-direct {p0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 821
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 822
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 831
    :pswitch_1d
    invoke-direct {p0, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 832
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 839
    :pswitch_1e
    invoke-direct {p0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 840
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 841
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 846
    :pswitch_1f
    invoke-direct {p0, v8}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 847
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 848
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 851
    :pswitch_20
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, p2, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 855
    :pswitch_21
    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 856
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 857
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 860
    :pswitch_22
    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 861
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 865
    :pswitch_23
    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 866
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 867
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 872
    :pswitch_24
    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 873
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 878
    :pswitch_25
    invoke-direct {p0, v7}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 879
    sget-object v4, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 883
    :pswitch_26
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "JSR/RET are not supported"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 885
    :pswitch_27
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 888
    :pswitch_28
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 891
    :pswitch_29
    invoke-direct {p0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 892
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 895
    :pswitch_2a
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(Ljava/lang/String;)V

    .line 896
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    goto/16 :goto_1

    .line 899
    :pswitch_2b
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 902
    :pswitch_2c
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    .line 903
    packed-switch p2, :pswitch_data_1

    .line 927
    const-string v4, "[J"

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 905
    :pswitch_2d
    const-string v4, "[Z"

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 908
    :pswitch_2e
    const-string v4, "[C"

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 911
    :pswitch_2f
    const-string v4, "[B"

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 914
    :pswitch_30
    const-string v4, "[S"

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 917
    :pswitch_31
    const-string v4, "[I"

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 920
    :pswitch_32
    const-string v4, "[F"

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 923
    :pswitch_33
    const-string v4, "[D"

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 932
    :pswitch_34
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    .line 933
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 936
    :pswitch_35
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    .line 937
    invoke-static {p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1b
        :pswitch_1f
        :pswitch_1b
        :pswitch_1f
        :pswitch_1b
        :pswitch_1f
        :pswitch_1b
        :pswitch_1c
        :pswitch_1b
        :pswitch_1c
        :pswitch_1b
        :pswitch_1c
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_1b
        :pswitch_1d
        :pswitch_c
        :pswitch_24
        :pswitch_21
        :pswitch_23
        :pswitch_1b
        :pswitch_a
        :pswitch_1d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_25
        :pswitch_1b
        :pswitch_1b
        :pswitch_25
        :pswitch_25
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_1
        :pswitch_26
        :pswitch_26
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_12
        :pswitch_1
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2b
        :pswitch_2c
        :pswitch_34
        :pswitch_24
        :pswitch_12
        :pswitch_35
        :pswitch_24
        :pswitch_12
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_12
    .end packed-switch

    .line 903
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2d
        :pswitch_2e
        :pswitch_32
        :pswitch_33
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method

.method private get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "local"    # I

    .prologue
    .line 494
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->maxLocals:I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->maxLocals:I

    .line 495
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    goto :goto_0
.end method

.method private pop()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private pop(I)V
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 556
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 557
    .local v2, "size":I
    sub-int v0, v2, p1

    .line 558
    .local v0, "end":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 559
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 558
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 561
    :cond_0
    return-void
.end method

.method private pop(Ljava/lang/String;)V
    .locals 5
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 564
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 565
    .local v0, "c":C
    const/16 v4, 0x28

    if-ne v0, v4, :cond_1

    .line 566
    const/4 v2, 0x0

    .line 567
    .local v2, "n":I
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    move-result-object v3

    .line 568
    .local v3, "types":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 569
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    :cond_0
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 577
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "types":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;
    :goto_1
    return-void

    .line 572
    :cond_1
    const/16 v4, 0x4a

    if-eq v0, v4, :cond_2

    const/16 v4, 0x44

    if-ne v0, v4, :cond_3

    .line 573
    :cond_2
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    goto :goto_1

    .line 575
    :cond_3
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(I)V

    goto :goto_1
.end method

.method private push(Ljava/lang/Object;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/Object;

    .prologue
    .line 507
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->maxStack:I

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->maxStack:I

    .line 509
    return-void
.end method

.method private pushDesc(Ljava/lang/String;)V
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 512
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 513
    .local v0, "index":I
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 543
    if-nez v0, :cond_2

    .line 544
    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 549
    :goto_0
    :sswitch_0
    return-void

    .line 521
    :sswitch_1
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 524
    :sswitch_2
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 527
    :sswitch_3
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 528
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 531
    :sswitch_4
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 532
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 535
    :sswitch_5
    if-nez v0, :cond_1

    .line 536
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 538
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 546
    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 513
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_1
        0x44 -> :sswitch_4
        0x46 -> :sswitch_2
        0x49 -> :sswitch_1
        0x4a -> :sswitch_3
        0x53 -> :sswitch_1
        0x56 -> :sswitch_0
        0x5a -> :sswitch_1
        0x5b -> :sswitch_5
    .end sparse-switch
.end method

.method private set(ILjava/lang/Object;)V
    .locals 2
    .param p1, "local"    # I
    .param p2, "type"    # Ljava/lang/Object;

    .prologue
    .line 499
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->maxLocals:I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->maxLocals:I

    .line 500
    :goto_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 501
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 504
    return-void
.end method

.method private static visitFrameTypes(I[Ljava/lang/Object;Ljava/util/List;)V
    .locals 3
    .param p0, "n"    # I
    .param p1, "types"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_2

    .line 244
    aget-object v1, p1, v0

    .line 245
    .local v1, "type":Ljava/lang/Object;
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v2, :cond_1

    .line 247
    :cond_0
    sget-object v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "type":Ljava/lang/Object;
    :cond_2
    return-void
.end method


# virtual methods
.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 309
    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .prologue
    .line 220
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ClassReader.accept() should be called with EXPAND_FRAMES flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 229
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 231
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    :goto_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-static {p2, p3, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->visitFrameTypes(I[Ljava/lang/Object;Ljava/util/List;)V

    .line 237
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-static {p4, p5, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->visitFrameTypes(I[Ljava/lang/Object;Ljava/util/List;)V

    .line 238
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->maxStack:I

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->maxStack:I

    .line 239
    return-void

    .line 233
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    goto :goto_0
.end method

.method public visitIincInsn(II)V
    .locals 2
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .prologue
    .line 446
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitIincInsn(II)V

    .line 449
    :cond_0
    const/16 v0, 0x84

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 450
    return-void
.end method

.method public visitInsn(I)V
    .locals 2
    .param p1, "opcode"    # I

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInsn(I)V

    .line 257
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 258
    const/16 v0, 0xac

    if-lt p1, v0, :cond_1

    const/16 v0, 0xb1

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_3

    .line 260
    :cond_2
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    .line 261
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    .line 263
    :cond_3
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitIntInsn(II)V

    .line 270
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 271
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;[Ljava/lang/Object;)V

    .line 374
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-nez v0, :cond_1

    .line 375
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    .line 381
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-direct {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pop(Ljava/lang/String;)V

    .line 379
    invoke-direct {p0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    .line 380
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    goto :goto_0
.end method

.method public visitJumpInsn(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 388
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 389
    const/16 v0, 0xa7

    if-ne p1, v0, :cond_1

    .line 390
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    .line 391
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    .line 393
    :cond_1
    return-void
.end method

.method public visitLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 2
    .param p1, "label"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    .line 397
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 400
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    if-nez v0, :cond_1

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    .line 403
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 3
    .param p1, "cst"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 408
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 411
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-nez v1, :cond_1

    .line 412
    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    .line 442
    .end local p1    # "cst":Ljava/lang/Object;
    :goto_0
    return-void

    .line 415
    .restart local p1    # "cst":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 416
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 441
    .end local p1    # "cst":Ljava/lang/Object;
    :goto_1
    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    goto :goto_0

    .line 417
    .restart local p1    # "cst":Ljava/lang/Object;
    :cond_2
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 418
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 419
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 420
    :cond_3
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 421
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 422
    :cond_4
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_5

    .line 423
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 424
    sget-object v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 425
    :cond_5
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 426
    const-string v1, "java/lang/String"

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 427
    :cond_6
    instance-of v1, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    if-eqz v1, :cond_a

    .line 428
    check-cast p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;

    .end local p1    # "cst":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Type;->getSort()I

    move-result v0

    .line 429
    .local v0, "sort":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    .line 430
    :cond_7
    const-string v1, "java/lang/Class"

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 431
    :cond_8
    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    .line 432
    const-string v1, "java/lang/invoke/MethodType"

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 434
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 436
    .end local v0    # "sort":I
    .restart local p1    # "cst":Ljava/lang/Object;
    :cond_a
    instance-of v1, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Handle;

    if-eqz v1, :cond_b

    .line 437
    const-string v1, "java/lang/invoke/MethodHandle"

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 439
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 3
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    const/4 v2, 0x0

    .line 466
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[I[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 469
    :cond_0
    const/16 v0, 0xab

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 470
    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    .line 471
    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    .line 472
    return-void
.end method

.method public visitMaxs(II)V
    .locals 3
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .prologue
    .line 484
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 485
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->maxStack:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->maxStack:I

    .line 486
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->maxLocals:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->maxLocals:I

    .line 487
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->maxStack:I

    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->maxLocals:I

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMaxs(II)V

    .line 489
    :cond_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    .line 316
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_1

    const/4 v5, 0x1

    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .prologue
    .line 326
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    .line 327
    invoke-super/range {p0 .. p5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 331
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-direct/range {p0 .. p5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .prologue
    .line 476
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 479
    :cond_0
    const/16 v0, 0xc5

    invoke-direct {p0, v0, p2, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 480
    return-void
.end method

.method public varargs visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V
    .locals 3
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    .param p4, "labels"    # [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    .prologue
    const/4 v2, 0x0

    .line 455
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 458
    :cond_0
    const/16 v0, 0xaa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 459
    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    .line 460
    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    .line 461
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 283
    const/16 v2, 0xbb

    if-ne p1, v2, :cond_1

    .line 284
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    if-nez v2, :cond_0

    .line 285
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;-><init>()V

    .line 286
    .local v1, "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    .line 287
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v2, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;)V

    .line 292
    .end local v1    # "l":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/Label;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 293
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->uninitializedTypes:Ljava/util/Map;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v2, :cond_2

    .line 297
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v2, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 299
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 300
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;->visitVarInsn(II)V

    .line 278
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 279
    return-void
.end method
