.class Lorg/openintents/shopping/ui/dialog/EditItemDialog$2;
.super Ljava/lang/Object;
.source "EditItemDialog.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/dialog/EditItemDialog;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x41e18db2010d7c8cL    # 2.3559905364214535E9

    const-string v2, "org/openintents/shopping/ui/dialog/EditItemDialog$2"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/dialog/EditItemDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$2;->$jacocoInit()[Z

    move-result-object v0

    .line 100
    iput-object p1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$2;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v2, 0x2

    const/4 v9, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$2;->$jacocoInit()[Z

    move-result-object v7

    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, "query":Ljava/lang/String;
    const/4 v4, 0x0

    .line 107
    .local v4, "args":[Ljava/lang/String;
    if-nez p1, :cond_0

    aput-boolean v9, v7, v9

    .line 118
    :goto_0
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$2;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    iget-object v0, v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/openintents/shopping/library/provider/ShoppingContract$Units;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v2, v5

    const-string v5, "name"

    aput-object v5, v2, v9

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 123
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x5

    aput-boolean v9, v7, v0

    return-object v6

    .line 107
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    aput-boolean v9, v7, v2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "units.name like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aput-boolean v9, v7, v1

    .line 115
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x4

    aput-boolean v9, v7, v0

    goto :goto_0
.end method
