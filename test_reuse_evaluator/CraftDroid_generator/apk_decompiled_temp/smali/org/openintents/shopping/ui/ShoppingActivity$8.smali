.class Lorg/openintents/shopping/ui/ShoppingActivity$8;
.super Ljava/lang/Object;
.source "ShoppingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/ShoppingActivity;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/openintents/shopping/ui/ShoppingActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$8;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x43077b4d8dfdf548L

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity$8"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$8;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$8;->$jacocoInit()[Z

    move-result-object v0

    .line 1181
    iput-object p1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$8;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$8;->$jacocoInit()[Z

    move-result-object v1

    .line 1184
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    aput-boolean v4, v1, v4

    .line 1185
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity$8;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    sget-object v3, Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;->ITEMNAME:Lorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;

    invoke-virtual {v2, v0, p3, v3, p2}, Lorg/openintents/shopping/ui/ShoppingActivity;->onCustomClick(Landroid/database/Cursor;ILorg/openintents/shopping/ui/dialog/EditItemDialog$FieldType;Landroid/view/View;)V

    .line 1188
    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    return-void
.end method
