.class final Lcom/google/android/gms/internal/zzbqm;
.super Lcom/google/android/gms/internal/zzbqw;


# instance fields
.field private synthetic zzgwl:Z

.field private synthetic zzgwm:Lcom/google/android/gms/internal/zzbql;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbql;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqm;->zzgwm:Lcom/google/android/gms/internal/zzbql;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzbqm;->zzgwl:Z

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbqw;-><init>(Lcom/google/android/gms/internal/zzbql;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbqm;)V

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

    new-instance v0, Lcom/google/android/gms/internal/zzbrg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqm;->zzgwm:Lcom/google/android/gms/internal/zzbql;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbql;->zzgpe:Lcom/google/android/gms/drive/DriveId;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbqm;->zzgwl:Z

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrg;-><init>(Lcom/google/android/gms/drive/DriveId;Z)V

    new-instance v1, Lcom/google/android/gms/internal/zzbqu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbqu;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbrg;Lcom/google/android/gms/internal/zzbrm;)V

    return-void
.end method
