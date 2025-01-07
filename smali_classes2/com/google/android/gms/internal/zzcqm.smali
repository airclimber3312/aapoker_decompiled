.class final Lcom/google/android/gms/internal/zzcqm;
.super Lcom/google/android/gms/common/api/internal/zzcq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzcq<",
        "Lcom/google/android/gms/internal/zzcov;",
        "Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzhsp:Lcom/google/android/gms/common/api/internal/zzci;

.field private synthetic zzjym:Ljava/lang/String;

.field private synthetic zzjyo:Lcom/google/android/gms/internal/zzcpz;

.field private synthetic zzjyp:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcpz;Lcom/google/android/gms/common/api/internal/zzci;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcqm;->zzjyo:Lcom/google/android/gms/internal/zzcpz;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcqm;->zzjym:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcqm;->zzhsp:Lcom/google/android/gms/common/api/internal/zzci;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcqm;->zzjyp:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zzcq;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcov;

    new-instance v0, Lcom/google/android/gms/internal/zzcqu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcqm;->zzjyo:Lcom/google/android/gms/internal/zzcpz;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/zzcqu;-><init>(Lcom/google/android/gms/internal/zzcpz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcqm;->zzjym:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcqm;->zzhsp:Lcom/google/android/gms/common/api/internal/zzci;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcqm;->zzjyp:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/google/android/gms/internal/zzcov;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)V

    return-void
.end method
