.class final Lcom/google/android/gms/internal/zzcyc;
.super Lcom/google/android/gms/internal/zzcya;


# instance fields
.field private synthetic zzklg:Lcom/google/android/gms/internal/zzcyb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcyb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcyc;->zzklg:Lcom/google/android/gms/internal/zzcyb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcya;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzar(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyc;->zzklg:Lcom/google/android/gms/internal/zzcyb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcyb;->zza(Lcom/google/android/gms/internal/zzcyb;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SearchAuth"

    const-string v1, "ClearTokenImpl success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyc;->zzklg:Lcom/google/android/gms/internal/zzcyb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
