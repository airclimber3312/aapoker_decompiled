.class final Lcom/google/android/gms/internal/zzcri;
.super Lcom/google/android/gms/internal/zzcru;


# instance fields
.field private synthetic zzjyt:Ljava/lang/String;

.field private synthetic zzjzd:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcqw;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcri;->zzjyt:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcri;->zzjzd:[B

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/zzcru;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcqx;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcov;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcri;->zzjyt:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcri;->zzjzd:[B

    invoke-static {v2}, Lcom/google/android/gms/nearby/connection/Payload;->fromBytes([B)Lcom/google/android/gms/nearby/connection/Payload;

    move-result-object v2

    invoke-virtual {p1, p0, v1, v2, v0}, Lcom/google/android/gms/internal/zzcov;->zza(Lcom/google/android/gms/common/api/internal/zzn;[Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;Z)V

    return-void
.end method
