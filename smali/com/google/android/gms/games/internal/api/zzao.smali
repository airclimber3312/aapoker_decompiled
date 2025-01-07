.class final Lcom/google/android/gms/games/internal/api/zzao;
.super Lcom/google/android/gms/games/internal/api/zzav;


# instance fields
.field private synthetic zzhsx:Ljava/lang/String;

.field private synthetic zzhta:J

.field private synthetic zzhtb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzah;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzao;->zzhsx:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/games/internal/api/zzao;->zzhta:J

    iput-object p6, p0, Lcom/google/android/gms/games/internal/api/zzao;->zzhtb:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/api/zzav;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/zzao;->zzhsx:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/games/internal/api/zzao;->zzhta:J

    iget-object v5, p0, Lcom/google/android/gms/games/internal/api/zzao;->zzhtb:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
