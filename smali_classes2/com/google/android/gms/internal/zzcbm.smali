.class final Lcom/google/android/gms/internal/zzcbm;
.super Lcom/google/android/gms/internal/zzbyg;


# instance fields
.field private synthetic zzhnf:Landroid/app/PendingIntent;

.field private synthetic zzhnl:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcbh;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;I)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcbm;->zzhnf:Landroid/app/PendingIntent;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/zzcbm;->zzhnl:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbyg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbyb;

    new-instance v0, Lcom/google/android/gms/internal/zzcbq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcbq;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbzi;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzax;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcbm;->zzhnf:Landroid/app/PendingIntent;

    iget v3, p0, Lcom/google/android/gms/internal/zzcbm;->zzhnl:I

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/fitness/request/zzax;-><init>(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzbzt;I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzbzi;->zza(Lcom/google/android/gms/fitness/request/zzax;)V

    return-void
.end method
