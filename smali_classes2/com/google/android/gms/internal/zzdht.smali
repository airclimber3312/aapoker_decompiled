.class public abstract Lcom/google/android/gms/internal/zzdht;
.super Lcom/google/android/gms/internal/zzdcr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdcr;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzdbb;[Lcom/google/android/gms/internal/zzdjq;)Lcom/google/android/gms/internal/zzdjq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzdbb;",
            "[",
            "Lcom/google/android/gms/internal/zzdjq<",
            "*>;)",
            "Lcom/google/android/gms/internal/zzdjq<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    array-length v0, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    :try_start_0
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdcq;->zzb(Lcom/google/android/gms/internal/zzdjq;)D

    move-result-wide v0

    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdcq;->zzb(Lcom/google/android/gms/internal/zzdjq;)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/zzdjt;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzdht;->zze(DD)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/zzdjt;-><init>(Ljava/lang/Boolean;)V

    return-object v2

    :cond_2
    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/zzdjt;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/zzdjt;-><init>(Ljava/lang/Boolean;)V

    return-object p1

    :catch_0
    new-instance p1, Lcom/google/android/gms/internal/zzdjt;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/zzdjt;-><init>(Ljava/lang/Boolean;)V

    return-object p1
.end method

.method protected abstract zze(DD)Z
.end method
