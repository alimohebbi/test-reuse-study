.class public Landroid/support/v2/view/MenuCompat;
.super Ljava/lang/Object;
.source "MenuCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v2/view/MenuCompat$BaseMenuVersionImpl;,
        Landroid/support/v2/view/MenuCompat$HoneycombMenuVersionImpl;,
        Landroid/support/v2/view/MenuCompat$MenuVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v2/view/MenuCompat$MenuVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    sget v0, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 60
    new-instance v0, Landroid/support/v2/view/MenuCompat$HoneycombMenuVersionImpl;

    invoke-direct {v0}, Landroid/support/v2/view/MenuCompat$HoneycombMenuVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v2/view/MenuCompat;->IMPL:Landroid/support/v2/view/MenuCompat$MenuVersionImpl;

    .line 24
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Landroid/support/v2/view/MenuCompat$BaseMenuVersionImpl;

    invoke-direct {v0}, Landroid/support/v2/view/MenuCompat$BaseMenuVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v2/view/MenuCompat;->IMPL:Landroid/support/v2/view/MenuCompat$MenuVersionImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)Z
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "actionEnum"    # I

    .prologue
    .line 74
    sget-object v0, Landroid/support/v2/view/MenuCompat;->IMPL:Landroid/support/v2/view/MenuCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v2/view/MenuCompat$MenuVersionImpl;->setShowAsAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method
