.class public final Lcom/google/android/gms/wallet/fragment/zzf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgm;->zzd(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const v6, 0xffff

    and-int/2addr v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    const/4 v7, 0x5

    if-eq v6, v7, :cond_0

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/zzbgm;->zzb(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/zzbgm;->zzg(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v5, v4}, Lcom/google/android/gms/internal/zzbgm;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    goto :goto_0

    :cond_2
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/zzbgm;->zzg(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    :cond_3
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/zzbgm;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :cond_4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgm;->zzaf(Landroid/os/Parcel;I)V

    new-instance p1, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    invoke-direct {p1, v1, v3, v4, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;-><init>(IILcom/google/android/gms/wallet/fragment/WalletFragmentStyle;I)V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    return-object p1
.end method
