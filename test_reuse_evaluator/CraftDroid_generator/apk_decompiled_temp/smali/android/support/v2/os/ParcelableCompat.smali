.class public Landroid/support/v2/os/ParcelableCompat;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v2/os/ParcelableCompat$CompatCreator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newCreator(Landroid/support/v2/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v2/os/ParcelableCompatCreatorCallbacks",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "callbacks":Landroid/support/v2/os/ParcelableCompatCreatorCallbacks;, "Landroid/support/v2/os/ParcelableCompatCreatorCallbacks<TT;>;"
    sget v0, Landroid/support/v2/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 27
    invoke-static {p0}, Landroid/support/v2/os/ParcelableCompatCreatorHoneycombMR2Stub;->instantiate(Landroid/support/v2/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    .line 29
    :cond_0
    new-instance v0, Landroid/support/v2/os/ParcelableCompat$CompatCreator;

    invoke-direct {v0, p0}, Landroid/support/v2/os/ParcelableCompat$CompatCreator;-><init>(Landroid/support/v2/os/ParcelableCompatCreatorCallbacks;)V

    return-object v0
.end method
