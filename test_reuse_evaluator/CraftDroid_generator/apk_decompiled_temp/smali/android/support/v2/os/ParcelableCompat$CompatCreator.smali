.class Landroid/support/v2/os/ParcelableCompat$CompatCreator;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v2/os/ParcelableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompatCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final mCallbacks:Landroid/support/v2/os/ParcelableCompatCreatorCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v2/os/ParcelableCompatCreatorCallbacks",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v2/os/ParcelableCompatCreatorCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v2/os/ParcelableCompatCreatorCallbacks",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Landroid/support/v2/os/ParcelableCompat$CompatCreator;, "Landroid/support/v2/os/ParcelableCompat$CompatCreator<TT;>;"
    .local p1, "callbacks":Landroid/support/v2/os/ParcelableCompatCreatorCallbacks;, "Landroid/support/v2/os/ParcelableCompatCreatorCallbacks<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/support/v2/os/ParcelableCompat$CompatCreator;->mCallbacks:Landroid/support/v2/os/ParcelableCompatCreatorCallbacks;

    .line 37
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Landroid/support/v2/os/ParcelableCompat$CompatCreator;, "Landroid/support/v2/os/ParcelableCompat$CompatCreator<TT;>;"
    iget-object v0, p0, Landroid/support/v2/os/ParcelableCompat$CompatCreator;->mCallbacks:Landroid/support/v2/os/ParcelableCompatCreatorCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/support/v2/os/ParcelableCompatCreatorCallbacks;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Landroid/support/v2/os/ParcelableCompat$CompatCreator;, "Landroid/support/v2/os/ParcelableCompat$CompatCreator<TT;>;"
    iget-object v0, p0, Landroid/support/v2/os/ParcelableCompat$CompatCreator;->mCallbacks:Landroid/support/v2/os/ParcelableCompatCreatorCallbacks;

    invoke-interface {v0, p1}, Landroid/support/v2/os/ParcelableCompatCreatorCallbacks;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
