.class final Lcom/google/android/gms/internal/zzcrf;
.super Lcom/google/android/gms/internal/zzcru;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zzjyt:Ljava/lang/String;

.field private synthetic zzjza:[B

.field private synthetic zzjzb:Lcom/google/android/gms/common/api/internal/zzci;

.field private synthetic zzjzc:Lcom/google/android/gms/common/api/internal/zzci;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcqw;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcrf;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcrf;->zzjyt:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcrf;->zzjza:[B

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcrf;->zzjzb:Lcom/google/android/gms/common/api/internal/zzci;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzcrf;->zzjzc:Lcom/google/android/gms/common/api/internal/zzci;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/zzcru;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcqx;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcov;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcrf;->val$name:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcrf;->zzjyt:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcrf;->zzjza:[B

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcrf;->zzjzb:Lcom/google/android/gms/common/api/internal/zzci;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcrf;->zzjzc:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcso;

    new-instance v8, Lcom/google/android/gms/internal/zzcug;

    new-instance v2, Lcom/google/android/gms/internal/zzcpw;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzcpw;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzcpp;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/zzcpp;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    new-instance v1, Lcom/google/android/gms/internal/zzcpg;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzcpg;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v9, 0x0

    move-object v0, v8

    move-object v1, v2

    move-object v2, v3

    move-object v3, v7

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcug;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/IBinder;)V

    invoke-interface {p1, v8}, Lcom/google/android/gms/internal/zzcso;->zza(Lcom/google/android/gms/internal/zzcug;)V

    return-void
.end method
