.class final Lcom/google/android/gms/internal/zzcye;
.super Lcom/google/android/gms/internal/zzcya;


# instance fields
.field private synthetic zzkli:Lcom/google/android/gms/internal/zzcyd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcyd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcye;->zzkli:Lcom/google/android/gms/internal/zzcyd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcya;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/search/GoogleNowAuthState;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcye;->zzkli:Lcom/google/android/gms/internal/zzcyd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcyd;->zza(Lcom/google/android/gms/internal/zzcyd;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SearchAuth"

    const-string v1, "GetGoogleNowAuthImpl success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcye;->zzkli:Lcom/google/android/gms/internal/zzcyd;

    new-instance v1, Lcom/google/android/gms/internal/zzcyf;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzcyf;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/search/GoogleNowAuthState;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
