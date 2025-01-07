.class final Lcom/google/android/gms/games/internal/api/zzby;
.super Lcom/google/android/gms/games/internal/api/zzbz;


# instance fields
.field private synthetic zzial:I

.field private synthetic zziax:I

.field private synthetic zziay:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzbv;Lcom/google/android/gms/common/api/GoogleApiClient;III)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/games/internal/api/zzby;->zziax:I

    iput p4, p0, Lcom/google/android/gms/games/internal/api/zzby;->zziay:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/zzby;->zzial:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/games/internal/api/zzbz;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzbw;)V

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

    iget v0, p0, Lcom/google/android/gms/games/internal/api/zzby;->zziax:I

    iget v1, p0, Lcom/google/android/gms/games/internal/api/zzby;->zziay:I

    iget v2, p0, Lcom/google/android/gms/games/internal/api/zzby;->zzial:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zzn;III)V

    return-void
.end method
