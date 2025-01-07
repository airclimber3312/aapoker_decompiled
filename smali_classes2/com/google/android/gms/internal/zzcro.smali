.class final Lcom/google/android/gms/internal/zzcro;
.super Lcom/google/android/gms/internal/zzcru;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zzjyt:Ljava/lang/String;

.field private synthetic zzjze:Lcom/google/android/gms/common/api/internal/zzci;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcqw;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcro;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcro;->zzjyt:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcro;->zzjze:Lcom/google/android/gms/common/api/internal/zzci;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/zzcru;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcqx;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzcov;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcro;->val$name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcro;->zzjyt:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcro;->zzjze:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzcov;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;)V

    return-void
.end method
