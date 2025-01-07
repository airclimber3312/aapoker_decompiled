.class final Lcom/google/android/gms/internal/zzcpt;
.super Lcom/google/android/gms/internal/zzcsr;


# instance fields
.field private final zzjyb:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/nearby/connection/PayloadCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/nearby/connection/PayloadCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcsr;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/zzci;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcpt;->zzjyb:Lcom/google/android/gms/common/api/internal/zzci;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzctp;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpt;->zzjyb:Lcom/google/android/gms/common/api/internal/zzci;

    new-instance v1, Lcom/google/android/gms/internal/zzcpu;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcpu;-><init>(Lcom/google/android/gms/internal/zzcpt;Lcom/google/android/gms/internal/zzctp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzctr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpt;->zzjyb:Lcom/google/android/gms/common/api/internal/zzci;

    new-instance v1, Lcom/google/android/gms/internal/zzcpv;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcpv;-><init>(Lcom/google/android/gms/internal/zzcpt;Lcom/google/android/gms/internal/zzctr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    return-void
.end method
