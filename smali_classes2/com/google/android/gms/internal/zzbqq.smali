.class final Lcom/google/android/gms/internal/zzbqq;
.super Lcom/google/android/gms/internal/zzbnp;


# instance fields
.field private synthetic zzgwm:Lcom/google/android/gms/internal/zzbql;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbql;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqq;->zzgwm:Lcom/google/android/gms/internal/zzbql;

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

    new-instance v0, Lcom/google/android/gms/internal/zzbmq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqq;->zzgwm:Lcom/google/android/gms/internal/zzbql;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbql;->zzgpe:Lcom/google/android/gms/drive/DriveId;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbmq;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbto;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbto;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbmq;Lcom/google/android/gms/internal/zzbrm;)V

    return-void
.end method
