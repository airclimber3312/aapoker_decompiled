.class final Lcom/google/android/gms/games/internal/api/zzcg;
.super Lcom/google/android/gms/games/internal/api/zzcj;


# instance fields
.field private synthetic zzhvi:Lcom/google/android/gms/games/snapshot/Snapshot;

.field private synthetic zzibc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzcd;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzcg;->zzhvi:Lcom/google/android/gms/games/snapshot/Snapshot;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/zzcg;->zzibc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/games/internal/api/zzcj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzce;)V

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

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/zzcg;->zzhvi:Lcom/google/android/gms/games/snapshot/Snapshot;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/zzcg;->zzibc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zzn;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V

    return-void
.end method
