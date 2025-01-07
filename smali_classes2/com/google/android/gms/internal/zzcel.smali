.class final Lcom/google/android/gms/internal/zzcel;
.super Lcom/google/android/gms/internal/zzceq;


# instance fields
.field private synthetic zzipm:Lcom/google/android/gms/internal/zzcek;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcek;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcel;->zzipm:Lcom/google/android/gms/internal/zzcek;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzceq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/instantapps/LaunchData;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcel;->zzipm:Lcom/google/android/gms/internal/zzcek;

    new-instance v1, Lcom/google/android/gms/internal/zzces;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzces;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/instantapps/LaunchData;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
