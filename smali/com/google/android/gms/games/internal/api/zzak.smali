.class final Lcom/google/android/gms/games/internal/api/zzak;
.super Lcom/google/android/gms/games/internal/api/zzar;


# instance fields
.field private synthetic zzhsx:Ljava/lang/String;

.field private synthetic zziam:I

.field private synthetic zzian:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzah;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;II)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzak;->zzhsx:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/games/internal/api/zzak;->zziam:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/zzak;->zzian:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/games/internal/api/zzar;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzai;)V

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

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/zzak;->zzhsx:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/zzak;->zziam:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/zzak;->zzian:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
