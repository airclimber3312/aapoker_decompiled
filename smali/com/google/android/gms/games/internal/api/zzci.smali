.class final Lcom/google/android/gms/games/internal/api/zzci;
.super Lcom/google/android/gms/games/internal/api/zzcp;


# instance fields
.field private synthetic zzibc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

.field private synthetic zzibe:Ljava/lang/String;

.field private synthetic zzibf:Ljava/lang/String;

.field private synthetic zzibg:Lcom/google/android/gms/games/snapshot/SnapshotContents;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzcd;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzci;->zzibe:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/zzci;->zzibf:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/internal/api/zzci;->zzibc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iput-object p6, p0, Lcom/google/android/gms/games/internal/api/zzci;->zzibg:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/games/internal/api/zzcp;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzce;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/zzci;->zzibe:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/zzci;->zzibf:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/games/internal/api/zzci;->zzibc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iget-object v5, p0, Lcom/google/android/gms/games/internal/api/zzci;->zzibg:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V

    return-void
.end method
