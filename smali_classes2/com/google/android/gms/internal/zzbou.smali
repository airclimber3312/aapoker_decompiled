.class final Lcom/google/android/gms/internal/zzbou;
.super Lcom/google/android/gms/internal/zzboy;


# instance fields
.field private synthetic zzgvd:Lcom/google/android/gms/internal/zzbot;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbot;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbou;->zzgvd:Lcom/google/android/gms/internal/zzbot;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzboy;-><init>(Lcom/google/android/gms/internal/zzbot;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbnq;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbrk;

    new-instance v0, Lcom/google/android/gms/internal/zzbow;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbou;->zzgvd:Lcom/google/android/gms/internal/zzbot;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/zzbow;-><init>(Lcom/google/android/gms/internal/zzbot;Lcom/google/android/gms/common/api/internal/zzn;Lcom/google/android/gms/internal/zzbou;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzbrk;->zzb(Lcom/google/android/gms/internal/zzbrm;)V

    return-void
.end method
