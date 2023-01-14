.class Lorg/openintents/shopping/ui/ShoppingActivity$25;
.super Landroid/os/AsyncTask;
.source "ShoppingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/ShoppingActivity;->fillAutoCompleteTextViewAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openintents/shopping/ui/ShoppingActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$25;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x10eececa4fdbf02L

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity$25"

    const/16 v3, 0x13

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$25;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$25;->$jacocoInit()[Z

    move-result-object v0

    .line 2923
    iput-object p1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$25;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private fillAutoCompleteAdapter()Landroid/widget/ArrayAdapter;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$25;->$jacocoInit()[Z

    move-result-object v8

    .line 2942
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x6

    aput-boolean v10, v8, v0

    .line 2943
    iget-object v0, p0, Lorg/openintents/shopping/ui/ShoppingActivity$25;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-virtual {v0}, Lorg/openintents/shopping/ui/ShoppingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Items;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v11

    const-string v5, "name asc"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2945
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    const/4 v0, 0x7

    aput-boolean v10, v8, v0

    .line 2958
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$25;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    const v2, 0x109000a

    invoke-direct {v0, v1, v2, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/16 v1, 0x10

    aput-boolean v10, v8, v1

    return-object v0

    .line 2946
    :cond_0
    const-string v0, ""

    const/16 v1, 0x8

    aput-boolean v10, v8, v1

    .line 2947
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    aput-boolean v10, v8, v1

    .line 2948
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v1, 0xa

    aput-boolean v10, v8, v1

    .line 2951
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xb

    aput-boolean v10, v8, v1

    move-object v7, v0

    .line 2955
    :goto_2
    const/16 v0, 0xe

    aput-boolean v10, v8, v0

    move-object v0, v7

    goto :goto_1

    .line 2951
    :cond_1
    const/16 v0, 0xc

    aput-boolean v10, v8, v0

    .line 2952
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2953
    .local v7, "lastitem":Ljava/lang/String;
    const/16 v0, 0xd

    aput-boolean v10, v8, v0

    goto :goto_2

    .line 2956
    .end local v7    # "lastitem":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/16 v0, 0xf

    aput-boolean v10, v8, v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/widget/ArrayAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$25;->$jacocoInit()[Z

    move-result-object v0

    .line 2929
    invoke-direct {p0}, Lorg/openintents/shopping/ui/ShoppingActivity$25;->fillAutoCompleteAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$25;->$jacocoInit()[Z

    move-result-object v0

    .line 2923
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/openintents/shopping/ui/ShoppingActivity$25;->doInBackground([Ljava/lang/Integer;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method protected onPostExecute(Landroid/widget/ArrayAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$25;->$jacocoInit()[Z

    move-result-object v0

    .line 2934
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$25;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$100(Lorg/openintents/shopping/ui/ShoppingActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 2938
    :goto_0
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return-void

    .line 2934
    :cond_0
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 2936
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$25;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$100(Lorg/openintents/shopping/ui/ShoppingActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$25;->$jacocoInit()[Z

    move-result-object v0

    .line 2923
    check-cast p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, p1}, Lorg/openintents/shopping/ui/ShoppingActivity$25;->onPostExecute(Landroid/widget/ArrayAdapter;)V

    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
