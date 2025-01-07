.class final Lcom/google/android/gms/games/internal/api/zzbc;
.super Lcom/google/android/gms/games/internal/api/zzbh;


# instance fields
.field private synthetic zziah:Z

.field private synthetic zziar:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzaz;Lcom/google/android/gms/common/api/GoogleApiClient;IZ)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/games/internal/api/zzbc;->zziar:I

    iput-boolean p4, p0, Lcom/google/android/gms/games/internal/api/zzbc;->zziah:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/api/zzbh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget v0, p0, Lcom/google/android/gms/games/internal/api/zzbc;->zziar:I

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/api/zzbc;->zziah:Z

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zzn;IZZ)V

    return-void
.end method
