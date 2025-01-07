.class final Lcom/google/android/gms/internal/zzcal;
.super Lcom/google/android/gms/internal/zzbyu;


# instance fields
.field private synthetic zzhmo:Lcom/google/android/gms/internal/zzcak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcal;->zzhmo:Lcom/google/android/gms/internal/zzcak;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbyu;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/fitness/result/GoalsResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcal;->zzhmo:Lcom/google/android/gms/internal/zzcak;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
