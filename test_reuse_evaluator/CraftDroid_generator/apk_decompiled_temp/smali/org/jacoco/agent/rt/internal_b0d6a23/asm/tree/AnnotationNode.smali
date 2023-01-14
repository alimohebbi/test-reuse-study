.class public Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;
.super Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
.source "AnnotationNode.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;-><init>(I)V

    .line 91
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 74
    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;-><init>(ILjava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;

    if-eq v0, v1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 78
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;-><init>(I)V

    .line 102
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    .line 103
    return-void
.end method

.method static accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p0, "av"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 212
    if-eqz p0, :cond_0

    .line 213
    instance-of v5, p2, [Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 214
    check-cast p2, [Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    move-object v3, p2

    check-cast v3, [Ljava/lang/String;

    .line 215
    .local v3, "typeconst":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {p0, p1, v5, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local v3    # "typeconst":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 216
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v5, p2, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;

    if-eqz v5, :cond_2

    move-object v0, p2

    .line 217
    check-cast v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;

    .line 218
    .local v0, "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;
    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)V

    goto :goto_0

    .line 219
    .end local v0    # "an":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;
    :cond_2
    instance-of v5, p2, Ljava/util/List;

    if-eqz v5, :cond_4

    .line 220
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    move-result-object v4

    .local v4, "v":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    move-object v1, p2

    .line 221
    check-cast v1, Ljava/util/List;

    .line 222
    .local v1, "array":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 223
    const/4 v5, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 225
    :cond_3
    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visitEnd()V

    goto :goto_0

    .line 227
    .end local v1    # "array":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "j":I
    .end local v4    # "v":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;)V
    .locals 5
    .param p1, "av"    # Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;

    .prologue
    .line 188
    if-eqz p1, :cond_1

    .line 189
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 191
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 192
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 193
    .local v2, "value":Ljava/lang/Object;
    invoke-static {p1, v1, v2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 196
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;->visitEnd()V

    .line 198
    :cond_1
    return-void
.end method

.method public check(I)V
    .locals 0
    .param p1, "api"    # I

    .prologue
    .line 179
    return-void
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_0

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_0
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void

    .line 112
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v1, :cond_0

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    :goto_0
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    .line 138
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1
    new-instance v0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;

    invoke-direct {v0, p2}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "annotation":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return-object v0

    .line 136
    .end local v0    # "annotation":Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_b0d6a23/asm/AnnotationVisitor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v1, :cond_0

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    :goto_0
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    .line 151
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;

    invoke-direct {v1, v0}, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;-><init>(Ljava/util/List;)V

    return-object v1

    .line 149
    .end local v0    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public visitEnd()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 123
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_0

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/asm/tree/AnnotationNode;->values:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    aput-object p3, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-void

    :cond_2
    move v0, v2

    .line 124
    goto :goto_0
.end method
