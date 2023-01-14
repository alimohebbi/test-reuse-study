.class public final Landroid/support/v2/content/Loader$ForceLoadContentObserver;
.super Landroid/database/ContentObserver;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v2/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForceLoadContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v2/content/Loader;


# direct methods
.method public constructor <init>(Landroid/support/v2/content/Loader;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Landroid/support/v2/content/Loader$ForceLoadContentObserver;->this$0:Landroid/support/v2/content/Loader;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v2/content/Loader$ForceLoadContentObserver;->this$0:Landroid/support/v2/content/Loader;

    invoke-virtual {v0}, Landroid/support/v2/content/Loader;->onContentChanged()V

    .line 56
    return-void
.end method
