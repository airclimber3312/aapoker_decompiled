.class final Lcom/google/android/gms/internal/zzcbc;
.super Lcom/google/android/gms/internal/zzbzl;


# instance fields
.field private final zzhmf:Lcom/google/android/gms/common/api/internal/zzn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzn<",
            "Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zzn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn<",
            "Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbzl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcbc;->zzhmf:Lcom/google/android/gms/common/api/internal/zzn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zzn;Lcom/google/android/gms/internal/zzcax;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcbc;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbc;->zzhmf:Lcom/google/android/gms/common/api/internal/zzn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zzn;->setResult(Ljava/lang/Object;)V

    return-void
.end method
