.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;
.super Ljava/lang/Object;
.source "InsnList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;
    }
.end annotation


# instance fields
.field cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

.field private first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

.field private last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V
    .locals 1
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;

    .prologue
    .line 160
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 161
    .local v0, "insn":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    :goto_0
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/MethodVisitor;)V

    .line 163
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method public add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V
    .locals 1
    .param p1, "insn"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .prologue
    .line 247
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    .line 248
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 249
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 250
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 255
    :goto_0
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 257
    const/4 v0, 0x0

    iput v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->index:I

    .line 258
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 253
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    goto :goto_0
.end method

.method public add(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;)V
    .locals 3
    .param p1, "insns"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    .prologue
    .line 268
    iget v1, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    if-nez v1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 271
    :cond_0
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    iget v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    .line 272
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    if-nez v1, :cond_1

    .line 273
    iget-object v1, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 274
    iget-object v1, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 281
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 282
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->removeAll(Z)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 277
    .local v0, "elem":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 278
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 279
    iget-object v1, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->removeAll(Z)V

    .line 506
    return-void
.end method

.method public contains(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)Z
    .locals 2
    .param p1, "insn"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .prologue
    .line 125
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 126
    .local v0, "i":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 127
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 129
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public get(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 106
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    if-lt p1, v0, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 109
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_2

    .line 110
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->toArray()[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 112
    :cond_2
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getFirst()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public getLast()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public indexOf(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)I
    .locals 1
    .param p1, "insn"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .prologue
    .line 147
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->toArray()[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 150
    :cond_0
    iget v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->index:I

    return v0
.end method

.method public insert(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V
    .locals 1
    .param p1, "insn"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .prologue
    .line 293
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    .line 294
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 295
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 296
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 301
    :goto_0
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 303
    const/4 v0, 0x0

    iput v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->index:I

    .line 304
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 299
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    goto :goto_0
.end method

.method public insert(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V
    .locals 2
    .param p1, "location"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .param p2, "insn"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .prologue
    .line 343
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    .line 344
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 345
    .local v0, "next":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    if-nez v0, :cond_0

    .line 346
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 350
    :goto_0
    iput-object p2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 351
    iput-object v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 352
    iput-object p1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 353
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 354
    const/4 v1, 0x0

    iput v1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->index:I

    .line 355
    return-void

    .line 348
    :cond_0
    iput-object p2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    goto :goto_0
.end method

.method public insert(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;)V
    .locals 5
    .param p1, "location"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .param p2, "insns"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    .prologue
    .line 368
    iget v3, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    if-nez v3, :cond_0

    .line 385
    :goto_0
    return-void

    .line 371
    :cond_0
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    iget v4, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    .line 372
    iget-object v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 373
    .local v0, "ifirst":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    iget-object v1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 374
    .local v1, "ilast":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    iget-object v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 375
    .local v2, "next":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    if-nez v2, :cond_1

    .line 376
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 380
    :goto_1
    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 381
    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 382
    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 383
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 384
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->removeAll(Z)V

    goto :goto_0

    .line 378
    :cond_1
    iput-object v1, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    goto :goto_1
.end method

.method public insert(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;)V
    .locals 3
    .param p1, "insns"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    .prologue
    .line 314
    iget v1, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    if-nez v1, :cond_0

    .line 329
    :goto_0
    return-void

    .line 317
    :cond_0
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    iget v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    .line 318
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    if-nez v1, :cond_1

    .line 319
    iget-object v1, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 320
    iget-object v1, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 327
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 328
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->removeAll(Z)V

    goto :goto_0

    .line 322
    :cond_1
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 323
    .local v0, "elem":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 324
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 325
    iget-object v1, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    goto :goto_1
.end method

.method public insertBefore(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V
    .locals 2
    .param p1, "location"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .param p2, "insn"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .prologue
    .line 399
    iget v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    .line 400
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 401
    .local v0, "prev":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    if-nez v0, :cond_0

    .line 402
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 406
    :goto_0
    iput-object p2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 407
    iput-object p1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 408
    iput-object v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 409
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 410
    const/4 v1, 0x0

    iput v1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->index:I

    .line 411
    return-void

    .line 404
    :cond_0
    iput-object p2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    goto :goto_0
.end method

.method public insertBefore(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;)V
    .locals 5
    .param p1, "location"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .param p2, "insns"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    .prologue
    .line 425
    iget v3, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    if-nez v3, :cond_0

    .line 442
    :goto_0
    return-void

    .line 428
    :cond_0
    iget v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    iget v4, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    .line 429
    iget-object v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 430
    .local v0, "ifirst":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    iget-object v1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 431
    .local v1, "ilast":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    iget-object v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 432
    .local v2, "prev":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    if-nez v2, :cond_1

    .line 433
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 437
    :goto_1
    iput-object v1, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 438
    iput-object p1, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 439
    iput-object v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 440
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 441
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->removeAll(Z)V

    goto :goto_0

    .line 435
    :cond_1
    iput-object v0, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    goto :goto_1
.end method

.method public iterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->iterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;

    invoke-direct {v0, p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;-><init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;I)V

    return-object v0
.end method

.method public remove(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V
    .locals 4
    .param p1, "insn"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .prologue
    const/4 v3, 0x0

    .line 451
    iget v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    .line 452
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 453
    .local v0, "next":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    iget-object v1, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 454
    .local v1, "prev":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    if-nez v0, :cond_1

    .line 455
    if-nez v1, :cond_0

    .line 456
    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 457
    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 471
    :goto_0
    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 472
    const/4 v2, -0x1

    iput v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->index:I

    .line 473
    iput-object v3, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 474
    iput-object v3, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 475
    return-void

    .line 459
    :cond_0
    iput-object v3, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 460
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 463
    :cond_1
    if-nez v1, :cond_2

    .line 464
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 465
    iput-object v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 467
    :cond_2
    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 468
    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    goto :goto_0
.end method

.method removeAll(Z)V
    .locals 4
    .param p1, "mark"    # Z

    .prologue
    const/4 v3, 0x0

    .line 485
    if-eqz p1, :cond_0

    .line 486
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 487
    .local v0, "insn":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    :goto_0
    if-eqz v0, :cond_0

    .line 488
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 489
    .local v1, "next":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    const/4 v2, -0x1

    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->index:I

    .line 490
    iput-object v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 491
    iput-object v3, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 492
    move-object v0, v1

    .line 493
    goto :goto_0

    .line 495
    .end local v0    # "insn":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .end local v1    # "next":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    .line 496
    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 497
    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 498
    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 499
    return-void
.end method

.method public resetLabels()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 515
    .local v0, "insn":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    :goto_0
    if-eqz v0, :cond_1

    .line 516
    instance-of v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 517
    check-cast v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/LabelNode;->resetLabel()V

    .line 519
    :cond_0
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 521
    :cond_1
    return-void
.end method

.method public set(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V
    .locals 5
    .param p1, "location"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .param p2, "insn"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .prologue
    const/4 v4, 0x0

    .line 213
    iget-object v1, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 214
    .local v1, "next":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    iput-object v1, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 215
    if-eqz v1, :cond_0

    .line 216
    iput-object p2, v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 220
    :goto_0
    iget-object v2, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 221
    .local v2, "prev":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    iput-object v2, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 222
    if-eqz v2, :cond_1

    .line 223
    iput-object p2, v2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 227
    :goto_1
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    if-eqz v3, :cond_2

    .line 228
    iget v0, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->index:I

    .line 229
    .local v0, "index":I
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    aput-object p2, v3, v0

    .line 230
    iput v0, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->index:I

    .line 234
    .end local v0    # "index":I
    :goto_2
    const/4 v3, -0x1

    iput v3, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->index:I

    .line 235
    iput-object v4, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 236
    iput-object v4, p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 237
    return-void

    .line 218
    .end local v2    # "prev":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    :cond_0
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 225
    .restart local v2    # "prev":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    :cond_1
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    goto :goto_1

    .line 232
    :cond_2
    const/4 v3, 0x0

    iput v3, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->index:I

    goto :goto_2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    return v0
.end method

.method public toArray()[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    .locals 5

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "i":I
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 194
    .local v0, "elem":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    iget v4, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size:I

    new-array v3, v4, [Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .local v3, "insns":[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    move v2, v1

    .line 195
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-eqz v0, :cond_0

    .line 196
    aput-object v0, v3, v2

    .line 197
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    iput v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->index:I

    .line 198
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 200
    :cond_0
    return-object v3
.end method
