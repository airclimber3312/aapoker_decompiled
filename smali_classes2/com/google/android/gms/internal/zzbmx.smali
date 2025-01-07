.class final Lcom/google/android/gms/internal/zzbmx;
.super Lcom/google/android/gms/internal/zzbnp;


# instance fields
.field private synthetic zzgtn:Lcom/google/android/gms/internal/zzbre;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmu;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbre;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmx;->zzgtn:Lcom/google/android/gms/internal/zzbre;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbnp;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    new-instance v0, Lcom/google/android/gms/internal/zzbtk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmx;->zzgtn:Lcom/google/android/gms/internal/zzbre;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbtk;-><init>(Lcom/google/android/gms/internal/zzbre;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbto;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbto;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbtk;Lcom/google/android/gms/internal/zzbrm;)V

    return-void
.end method
