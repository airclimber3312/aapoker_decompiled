.class final Lcom/google/android/gms/internal/zzcau;
.super Lcom/google/android/gms/internal/zzbyi;


# instance fields
.field private synthetic zzhmy:Lcom/google/android/gms/internal/zzcat;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcat;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcau;->zzhmy:Lcom/google/android/gms/internal/zzcat;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbyi;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/fitness/result/DailyTotalResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcau;->zzhmy:Lcom/google/android/gms/internal/zzcat;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
