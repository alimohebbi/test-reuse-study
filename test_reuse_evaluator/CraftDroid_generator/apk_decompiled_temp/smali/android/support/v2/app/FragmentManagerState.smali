.class final Landroid/support/v2/app/FragmentManagerState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v2/app/FragmentManagerState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mActive:[Landroid/support/v2/app/FragmentState;

.field mAdded:[I

.field mBackStack:[Landroid/support/v2/app/BackStackState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 356
    new-instance v0, Landroid/support/v2/app/FragmentManagerState$1;

    invoke-direct {v0}, Landroid/support/v2/app/FragmentManagerState$1;-><init>()V

    .line 355
    sput-object v0, Landroid/support/v2/app/FragmentManagerState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 331
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    sget-object v0, Landroid/support/v2/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v2/app/FragmentState;

    iput-object v0, p0, Landroid/support/v2/app/FragmentManagerState;->mActive:[Landroid/support/v2/app/FragmentState;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v2/app/FragmentManagerState;->mAdded:[I

    .line 342
    sget-object v0, Landroid/support/v2/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v2/app/BackStackState;

    iput-object v0, p0, Landroid/support/v2/app/FragmentManagerState;->mBackStack:[Landroid/support/v2/app/BackStackState;

    .line 343
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 350
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerState;->mActive:[Landroid/support/v2/app/FragmentState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 351
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerState;->mAdded:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 352
    iget-object v0, p0, Landroid/support/v2/app/FragmentManagerState;->mBackStack:[Landroid/support/v2/app/BackStackState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 353
    return-void
.end method
