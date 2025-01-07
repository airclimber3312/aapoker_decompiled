.class final Lcom/google/android/gms/internal/zzboe;
.super Lcom/google/android/gms/internal/zzbnp;


# instance fields
.field private synthetic zzguo:Lcom/google/android/gms/internal/zzboa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzboa;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzboe;->zzguo:Lcom/google/android/gms/internal/zzboa;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbnp;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    new-instance v0, Lcom/google/android/gms/internal/zzbmd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboe;->zzguo:Lcom/google/android/gms/internal/zzboa;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzboa;->zza(Lcom/google/android/gms/internal/zzboa;)Lcom/google/android/gms/drive/zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/drive/zzc;->getRequestId()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbmd;-><init>(IZ)V

    new-instance v1, Lcom/google/android/gms/internal/zzbto;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbto;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbmd;Lcom/google/android/gms/internal/zzbrm;)V

    return-void
.end method
