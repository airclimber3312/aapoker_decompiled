.class public final Lcom/google/android/gms/fitness/request/zza;
.super Lcom/google/android/gms/fitness/request/zzaf;


# instance fields
.field private final zzhnp:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/fitness/request/BleScanCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/fitness/request/BleScanCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/fitness/request/zzaf;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/zzci;

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zza;->zzhnp:Lcom/google/android/gms/common/api/internal/zzci;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/fitness/request/zzb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/zza;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    return-void
.end method


# virtual methods
.method public final onDeviceFound(Lcom/google/android/gms/fitness/data/BleDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zza;->zzhnp:Lcom/google/android/gms/common/api/internal/zzci;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/fitness/request/zzb;-><init>(Lcom/google/android/gms/fitness/request/zza;Lcom/google/android/gms/fitness/data/BleDevice;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    return-void
.end method

.method public final onScanStopped()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zza;->zzhnp:Lcom/google/android/gms/common/api/internal/zzci;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/fitness/request/zzc;-><init>(Lcom/google/android/gms/fitness/request/zza;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    return-void
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zza;->zzhnp:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzci;->clear()V

    return-void
.end method
