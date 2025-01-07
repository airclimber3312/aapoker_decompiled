.class final Lcom/google/android/gms/internal/zzcat;
.super Lcom/google/android/gms/internal/zzbxm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbxm<",
        "Lcom/google/android/gms/fitness/result/DailyTotalResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzhmw:Lcom/google/android/gms/fitness/data/DataType;

.field private synthetic zzhmx:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcam;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;Z)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcat;->zzhmw:Lcom/google/android/gms/fitness/data/DataType;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzcat;->zzhmx:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbxm;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbxj;

    new-instance v0, Lcom/google/android/gms/internal/zzcau;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcau;-><init>(Lcom/google/android/gms/internal/zzcat;)V

    new-instance v1, Lcom/google/android/gms/fitness/request/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcat;->zzhmw:Lcom/google/android/gms/fitness/data/DataType;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzcat;->zzhmx:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/fitness/request/zzg;-><init>(Lcom/google/android/gms/internal/zzbyh;Lcom/google/android/gms/fitness/data/DataType;Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbzc;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzbzc;->zza(Lcom/google/android/gms/fitness/request/zzg;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcat;->zzhmw:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/result/DailyTotalResult;

    move-result-object p1

    return-object p1
.end method
