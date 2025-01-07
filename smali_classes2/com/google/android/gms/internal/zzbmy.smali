.class final Lcom/google/android/gms/internal/zzbmy;
.super Lcom/google/android/gms/internal/zzbnd;


# instance fields
.field private synthetic zzgto:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmu;Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 0

    const/high16 p1, 0x20000000

    iput p1, p0, Lcom/google/android/gms/internal/zzbmy;->zzgto:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbnd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbnq;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbrk;

    new-instance v0, Lcom/google/android/gms/internal/zzbmg;

    iget v1, p0, Lcom/google/android/gms/internal/zzbmy;->zzgto:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbmg;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/internal/zzbnb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbnb;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbmg;Lcom/google/android/gms/internal/zzbrm;)V

    return-void
.end method
