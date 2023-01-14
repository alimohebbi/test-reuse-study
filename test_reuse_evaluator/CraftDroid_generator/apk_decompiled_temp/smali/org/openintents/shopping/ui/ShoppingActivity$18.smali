.class Lorg/openintents/shopping/ui/ShoppingActivity$18;
.super Ljava/lang/Object;
.source "ShoppingActivity.java"

# interfaces
.implements Lorg/openintents/shopping/ui/widget/QuickSelectMenu$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/ShoppingActivity;->QuickEditFieldPopupMenu(Landroid/database/Cursor;ILorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

.field final synthetic val$field:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

.field final synthetic val$pos:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$18;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x359c918c1fb0e334L

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity$18"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$18;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/ShoppingActivity;ILorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$18;->$jacocoInit()[Z

    move-result-object v0

    .line 1537
    iput-object p1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$18;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    iput p2, p0, Lorg/openintents/shopping/ui/ShoppingActivity$18;->val$pos:I

    iput-object p3, p0, Lorg/openintents/shopping/ui/ShoppingActivity$18;->val$field:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemSelected(Ljava/lang/CharSequence;I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$18;->$jacocoInit()[Z

    move-result-object v0

    .line 1542
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v6, :cond_0

    aput-boolean v6, v0, v6

    .line 1544
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$18;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    iget v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity$18;->val$pos:I

    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity$18;->val$field:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    invoke-virtual {v1, v2, v3}, Lorg/openintents/shopping/ui/ShoppingActivity;->editItem(ILorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;)V

    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    .line 1566
    :goto_0
    const/16 v1, 0xf

    aput-boolean v6, v0, v1

    return-void

    .line 1546
    :cond_0
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    int-to-long v2, v1

    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    .line 1547
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x4

    aput-boolean v6, v0, v4

    .line 1548
    sget-object v4, Lorg/openintents/shopping/ui/ShoppingActivity$27;->$SwitchMap$org$openintents$shopping$ui$dialog$EditItemDialog$FieldType:[I

    iget-object v5, p0, Lorg/openintents/shopping/ui/ShoppingActivity$18;->val$field:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    invoke-virtual {v5}, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const/4 v2, 0x5

    aput-boolean v6, v0, v2

    .line 1556
    :goto_1
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity$18;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v2}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$300(Lorg/openintents/shopping/ui/ShoppingActivity;)Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-result-object v2

    iget-object v2, v2, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    iget v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity$18;->val$pos:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/16 v2, 0x8

    aput-boolean v6, v0, v2

    .line 1557
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity$18;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v2}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$300(Lorg/openintents/shopping/ui/ShoppingActivity;)Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-result-object v2

    iget-object v2, v2, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->mCursorItems:Landroid/database/Cursor;

    const/16 v3, 0x9

    aput-boolean v6, v0, v3

    .line 1558
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    aput-boolean v6, v0, v3

    .line 1559
    sget-object v3, Lorg/openintents/shopping/library/provider/ShoppingContract$Contains;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/16 v3, 0xb

    aput-boolean v6, v0, v3

    .line 1561
    iget-object v3, p0, Lorg/openintents/shopping/ui/ShoppingActivity$18;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-virtual {v3}, Lorg/openintents/shopping/ui/ShoppingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v1, 0xc

    aput-boolean v6, v0, v1

    .line 1563
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$18;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-virtual {v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->onItemChanged()V

    const/16 v1, 0xd

    aput-boolean v6, v0, v1

    .line 1564
    iget-object v1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$18;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$300(Lorg/openintents/shopping/ui/ShoppingActivity;)Lorg/openintents/shopping/ui/widget/ShoppingItemsView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openintents/shopping/ui/widget/ShoppingItemsView;->updateTotal()V

    const/16 v1, 0xe

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 1550
    :pswitch_0
    const-string v4, "priority"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1551
    const/4 v2, 0x6

    aput-boolean v6, v0, v2

    goto :goto_1

    .line 1553
    :pswitch_1
    const-string v4, "quantity"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x7

    aput-boolean v6, v0, v2

    goto :goto_1

    .line 1548
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
