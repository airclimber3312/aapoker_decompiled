.class final Lcom/google/android/gms/cast/zzt;
.super Lcom/google/android/gms/cast/CastRemoteDisplayClient$zza;


# instance fields
.field private synthetic zzeuo:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private synthetic zzeur:Lcom/google/android/gms/cast/zzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/zzs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/zzt;->zzeur:Lcom/google/android/gms/cast/zzs;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzt;->zzeuo:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient$zza;-><init>(Lcom/google/android/gms/cast/zzp;)V

    return-void
.end method


# virtual methods
.method public final onDisconnected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/zzt;->zzeur:Lcom/google/android/gms/cast/zzs;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzs;->zzeun:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/zzbei;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onDisconnected"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/zzt;->zzeur:Lcom/google/android/gms/cast/zzs;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzs;->zzeun:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzftq:Lcom/google/android/gms/common/api/Status;

    iget-object v1, p0, Lcom/google/android/gms/cast/zzt;->zzeuo:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/api/internal/zzdf;->zza(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public final onError(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/zzt;->zzeur:Lcom/google/android/gms/cast/zzs;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzs;->zzeun:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/zzbei;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "onError: %d"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/cast/zzt;->zzeur:Lcom/google/android/gms/cast/zzs;

    iget-object p1, p1, Lcom/google/android/gms/cast/zzs;->zzeun:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)V

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzfts:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/cast/zzt;->zzeuo:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/api/internal/zzdf;->zza(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
