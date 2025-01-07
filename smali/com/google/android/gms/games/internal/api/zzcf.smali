.class final Lcom/google/android/gms/games/internal/api/zzcf;
.super Lcom/google/android/gms/games/internal/api/zzcp;


# instance fields
.field private synthetic zziaz:Ljava/lang/String;

.field private synthetic zziba:Z

.field private synthetic zzibb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzcd;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZI)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzcf;->zziaz:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/games/internal/api/zzcf;->zziba:Z

    iput p5, p0, Lcom/google/android/gms/games/internal/api/zzcf;->zzibb:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/games/internal/api/zzcp;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzce;)V

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

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/zzcf;->zziaz:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/api/zzcf;->zziba:Z

    iget v2, p0, Lcom/google/android/gms/games/internal/api/zzcf;->zzibb:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;ZI)V

    return-void
.end method
