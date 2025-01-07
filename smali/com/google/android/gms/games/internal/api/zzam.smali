.class final Lcom/google/android/gms/games/internal/api/zzam;
.super Lcom/google/android/gms/games/internal/api/zzat;


# instance fields
.field private synthetic zzhsx:Ljava/lang/String;

.field private synthetic zziah:Z

.field private synthetic zziam:I

.field private synthetic zzian:I

.field private synthetic zziao:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzah;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzam;->zzhsx:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/games/internal/api/zzam;->zziam:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/zzam;->zzian:I

    iput p6, p0, Lcom/google/android/gms/games/internal/api/zzam;->zziao:I

    iput-boolean p7, p0, Lcom/google/android/gms/games/internal/api/zzam;->zziah:Z

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/games/internal/api/zzat;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzai;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/zzam;->zzhsx:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/games/internal/api/zzam;->zziam:I

    iget v4, p0, Lcom/google/android/gms/games/internal/api/zzam;->zzian:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/zzam;->zziao:I

    iget-boolean v6, p0, Lcom/google/android/gms/games/internal/api/zzam;->zziah:Z

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;IIIZ)V

    return-void
.end method
