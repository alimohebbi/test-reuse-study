.class Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;
.super Ljava/lang/Object;
.source "EditItemDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    sget-object v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x495add7cd942e8d6L    # 2.3964546966244103E45

    const-string v2, "org/openintents/shopping/ui/dialog/EditItemDialog$4"

    const/16 v3, 0x16

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/dialog/EditItemDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;->$jacocoInit()[Z

    move-result-object v0

    .line 141
    iput-object p1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;->$jacocoInit()[Z

    move-result-object v8

    .line 145
    sget-object v0, Lorg/openintents/shopping/library/provider/ShoppingContract$Notes;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    iget-wide v4, v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mItemId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 148
    .local v7, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    iget-object v0, v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mNoteText:Ljava/lang/String;

    if-eqz v0, :cond_0

    aput-boolean v9, v8, v9

    .line 162
    :goto_0
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    iget-object v0, v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mNoteText:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/16 v0, 0x9

    aput-boolean v9, v8, v0

    .line 171
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xf

    aput-boolean v9, v8, v1

    .line 172
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v1, 0x10

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v8, v1

    .line 174
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    iget-object v1, v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const/16 v0, 0x11

    aput-boolean v9, v8, v0

    .line 181
    :goto_2
    const/16 v0, 0x15

    aput-boolean v9, v8, v0

    return-void

    .line 148
    :cond_0
    const/4 v0, 0x2

    aput-boolean v9, v8, v0

    .line 151
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    iget-object v0, v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    iget-object v1, v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mItemUri:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "note"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 154
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    const/4 v0, 0x3

    aput-boolean v9, v8, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    aput-boolean v9, v8, v0

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    aput-boolean v9, v8, v0

    .line 158
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/16 v0, 0x8

    aput-boolean v9, v8, v0

    goto :goto_0

    .line 155
    :cond_2
    const/4 v0, 0x6

    aput-boolean v9, v8, v0

    .line 156
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mNoteText:Ljava/lang/String;

    const/4 v0, 0x7

    aput-boolean v9, v8, v0

    goto :goto_3

    .line 162
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_3
    const/16 v0, 0xa

    aput-boolean v9, v8, v0

    .line 164
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0xb

    aput-boolean v9, v8, v1

    .line 165
    const-string v1, "note"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    aput-boolean v9, v8, v1

    .line 166
    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    iget-object v1, v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    iget-object v2, v2, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v0, 0xd

    aput-boolean v9, v8, v0

    .line 168
    iget-object v0, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    iget-object v0, v0, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    iget-object v1, v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/16 v0, 0xe

    aput-boolean v9, v8, v0

    goto/16 :goto_1

    .line 175
    :catch_0
    move-exception v0

    const/16 v0, 0x12

    aput-boolean v9, v8, v0

    .line 176
    new-instance v0, Lorg/openintents/distribution/DownloadAppDialog;

    iget-object v1, p0, Lorg/openintents/shopping/ui/dialog/EditItemDialog$4;->this$0:Lorg/openintents/shopping/ui/dialog/EditItemDialog;

    iget-object v1, v1, Lorg/openintents/shopping/ui/dialog/EditItemDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f080032

    const v3, 0x7f080031

    const v4, 0x7f0800e7

    const v5, 0x7f0800e8

    invoke-direct/range {v0 .. v5}, Lorg/openintents/distribution/DownloadAppDialog;-><init>(Landroid/content/Context;IIII)V

    const/16 v1, 0x13

    aput-boolean v9, v8, v1

    .line 179
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/16 v0, 0x14

    aput-boolean v9, v8, v0

    goto/16 :goto_2
.end method
