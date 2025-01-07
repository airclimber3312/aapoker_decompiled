.class final Lcom/google/android/gms/internal/zzbqo;
.super Lcom/google/android/gms/internal/zzbnp;


# instance fields
.field private synthetic zzgvt:Ljava/util/List;

.field private synthetic zzgwm:Lcom/google/android/gms/internal/zzbql;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbql;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqo;->zzgwm:Lcom/google/android/gms/internal/zzbql;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbqo;->zzgvt:Ljava/util/List;

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

    new-instance v0, Lcom/google/android/gms/internal/zzbtm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqo;->zzgwm:Lcom/google/android/gms/internal/zzbql;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbql;->zzgpe:Lcom/google/android/gms/drive/DriveId;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqo;->zzgvt:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbtm;-><init>(Lcom/google/android/gms/drive/DriveId;Ljava/util/List;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbto;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbto;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbrk;->zza(Lcom/google/android/gms/internal/zzbtm;Lcom/google/android/gms/internal/zzbrm;)V

    return-void
.end method
