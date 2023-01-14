.class final Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;
.super Ljava/lang/Object;
.source "InsnList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InsnListIterator"
.end annotation


# instance fields
.field next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

.field prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

.field remove:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

.field final synthetic this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;I)V
    .locals 1
    .param p2, "index"    # I

    .prologue
    .line 532
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 535
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->getLast()Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 540
    :goto_0
    return-void

    .line 537
    :cond_0
    invoke-virtual {p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->get(I)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 538
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 604
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-object v0, p1

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    invoke-virtual {v1, v2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->insertBefore(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 605
    check-cast p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .end local p1    # "o":Ljava/lang/Object;
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 606
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->remove:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 607
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 547
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    if-nez v1, :cond_0

    .line 548
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 550
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 551
    .local v0, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 552
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 553
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->remove:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 554
    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->size()I

    move-result v0

    .line 590
    :goto_0
    return v0

    .line 587
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    .line 588
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->toArray()[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v1

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 590
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->index:I

    goto :goto_0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 577
    .local v0, "result":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 578
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 579
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->remove:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 580
    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 595
    const/4 v0, -0x1

    .line 600
    :goto_0
    return v0

    .line 597
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    .line 598
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->toArray()[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-result-object v1

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 600
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->index:I

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->remove:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->remove:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    if-ne v0, v1, :cond_0

    .line 560
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 564
    :goto_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->remove:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->remove(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->remove:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 569
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 567
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 610
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    move-object v0, p1

    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    invoke-virtual {v1, v2, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList;->set(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;)V

    .line 611
    check-cast p1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .end local p1    # "o":Ljava/lang/Object;
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AbstractInsnNode;

    .line 612
    return-void
.end method
