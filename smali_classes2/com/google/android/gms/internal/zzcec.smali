.class final Lcom/google/android/gms/internal/zzcec;
.super Ljava/lang/Object;


# direct methods
.method static zzed(I)Lcom/google/android/gms/internal/zzdoj;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzdoj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdoj;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/zzdoj;->zzlyn:Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/zzdoj;->zzjuj:Ljava/lang/Long;

    return-object v0
.end method
