.class Lorg/openintents/shopping/ui/ShoppingActivity$9;
.super Ljava/lang/Object;
.source "ShoppingActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$9;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x54ad1bd61e1e2485L    # -5.39811916048664E-100

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity$9"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$9;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/ShoppingActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$9;->$jacocoInit()[Z

    move-result-object v0

    .line 1193
    iput-object p1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$9;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$9;->$jacocoInit()[Z

    move-result-object v0

    .line 1197
    const v1, 0x7f08001f

    invoke-interface {p1, v6, v8, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x31

    const/16 v3, 0x65

    aput-boolean v5, v0, v5

    .line 1198
    invoke-interface {v1, v2, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    .line 1199
    const v1, 0x7f080021

    invoke-interface {p1, v6, v7, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x32

    const/16 v3, 0x6d

    const/4 v4, 0x3

    aput-boolean v5, v0, v4

    .line 1200
    invoke-interface {v1, v2, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    const/4 v1, 0x4

    aput-boolean v5, v0, v1

    .line 1201
    const/16 v1, 0x17

    const v2, 0x7f080020

    invoke-interface {p1, v6, v1, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x33

    const/16 v3, 0x73

    const/4 v4, 0x5

    aput-boolean v5, v0, v4

    .line 1203
    invoke-interface {v1, v2, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    const/4 v1, 0x6

    aput-boolean v5, v0, v1

    .line 1204
    const/16 v1, 0x14

    const v2, 0x7f080024

    invoke-interface {p1, v6, v1, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x34

    const/16 v3, 0x72

    const/4 v4, 0x7

    aput-boolean v5, v0, v4

    .line 1206
    invoke-interface {v1, v2, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    aput-boolean v5, v0, v7

    .line 1207
    const/16 v1, 0xc

    const v2, 0x7f08001c

    invoke-interface {p1, v6, v1, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x35

    const/16 v3, 0x63

    aput-boolean v5, v0, v8

    .line 1208
    invoke-interface {v1, v2, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    aput-boolean v5, v0, v9

    .line 1209
    const v1, 0x7f08001d

    invoke-interface {p1, v6, v9, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x36

    const/16 v3, 0x64

    const/16 v4, 0xb

    aput-boolean v5, v0, v4

    .line 1211
    invoke-interface {v1, v2, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    const/16 v1, 0xc

    aput-boolean v5, v0, v1

    .line 1212
    const/16 v1, 0x15

    const v2, 0x7f080022

    invoke-interface {p1, v6, v1, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x37

    const/16 v3, 0x6c

    const/16 v4, 0xd

    aput-boolean v5, v0, v4

    .line 1213
    invoke-interface {v1, v2, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 1214
    const/16 v1, 0xe

    aput-boolean v5, v0, v1

    return-void
.end method
