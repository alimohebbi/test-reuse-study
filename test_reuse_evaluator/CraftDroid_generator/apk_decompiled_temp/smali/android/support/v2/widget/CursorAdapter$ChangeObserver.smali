.class Landroid/support/v2/widget/CursorAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v2/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v2/widget/CursorAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v2/widget/CursorAdapter;)V
    .locals 1

    .prologue
    .line 457
    iput-object p1, p0, Landroid/support/v2/widget/CursorAdapter$ChangeObserver;->this$0:Landroid/support/v2/widget/CursorAdapter;

    .line 456
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 466
    iget-object v0, p0, Landroid/support/v2/widget/CursorAdapter$ChangeObserver;->this$0:Landroid/support/v2/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v2/widget/CursorAdapter;->onContentChanged()V

    .line 467
    return-void
.end method