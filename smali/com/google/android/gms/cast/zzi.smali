.class final Lcom/google/android/gms/cast/zzi;
.super Lcom/google/android/gms/cast/Cast$zza;


# instance fields
.field private synthetic val$sessionId:Ljava/lang/String;

.field private synthetic zzetg:Ljava/lang/String;

.field private synthetic zzeti:Lcom/google/android/gms/cast/zzab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$zza;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzab;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/cast/zzi;->zzetg:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/cast/zzi;->val$sessionId:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/cast/zzi;->zzeti:Lcom/google/android/gms/cast/zzab;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/Cast$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbdp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$zza;->zza(Lcom/google/android/gms/internal/zzbdp;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbdp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/zzi;->zzetg:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/cast/zzi;->val$sessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/cast/zzi;->zzeti:Lcom/google/android/gms/cast/zzab;

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/google/android/gms/internal/zzbdp;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzab;Lcom/google/android/gms/common/api/internal/zzn;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 p1, 0x7d1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdf;->zzbj(I)V

    return-void
.end method
