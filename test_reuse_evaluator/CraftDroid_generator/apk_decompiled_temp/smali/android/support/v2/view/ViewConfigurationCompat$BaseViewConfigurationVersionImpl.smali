.class Landroid/support/v2/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"

# interfaces
.implements Landroid/support/v2/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v2/view/ViewConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewConfigurationVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    return v0
.end method
