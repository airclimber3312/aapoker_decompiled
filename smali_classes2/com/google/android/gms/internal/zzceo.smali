.class final Lcom/google/android/gms/internal/zzceo;
.super Lcom/google/android/gms/internal/zzceq;


# instance fields
.field private synthetic zzipn:Lcom/google/android/gms/internal/zzcem;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcem;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzceo;->zzipn:Lcom/google/android/gms/internal/zzcem;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzceq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzceo;->zzipn:Lcom/google/android/gms/internal/zzcem;

    new-instance v1, Lcom/google/android/gms/internal/zzcep;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/zzcep;-><init>(Lcom/google/android/gms/internal/zzceo;Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
