.class public final Lcom/google/android/gms/internal/zzddv;
.super Lcom/google/android/gms/internal/zzdcr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdcr;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzdbb;[Lcom/google/android/gms/internal/zzdjq;)Lcom/google/android/gms/internal/zzdjq;
    .locals 5
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

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    aget-object v0, p2, v2

    aget-object p2, p2, p1

    instance-of v1, v0, Lcom/google/android/gms/internal/zzdka;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/zzdjx;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/zzdjv;

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzdkc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdcq;->zzd(Lcom/google/android/gms/internal/zzdjq;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzdkc;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    instance-of v1, p2, Lcom/google/android/gms/internal/zzdka;

    if-nez v1, :cond_3

    instance-of v1, p2, Lcom/google/android/gms/internal/zzdjx;

    if-nez v1, :cond_3

    instance-of v1, p2, Lcom/google/android/gms/internal/zzdjv;

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/zzdkc;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzdcq;->zzd(Lcom/google/android/gms/internal/zzdjq;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/zzdkc;-><init>(Ljava/lang/String;)V

    move-object p2, v1

    :cond_4
    instance-of v1, v0, Lcom/google/android/gms/internal/zzdkc;

    if-eqz v1, :cond_5

    instance-of v1, p2, Lcom/google/android/gms/internal/zzdkc;

    if-nez v1, :cond_6

    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/internal/zzdcq;->zzb(Lcom/google/android/gms/internal/zzdjq;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p2}, Lcom/google/android/gms/internal/zzdcq;->zzb(Lcom/google/android/gms/internal/zzdjq;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzdcq;->zzb(Lcom/google/android/gms/internal/zzdjq;Lcom/google/android/gms/internal/zzdjq;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    const/4 p1, 0x0

    :goto_2
    new-instance p2, Lcom/google/android/gms/internal/zzdjt;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzdjt;-><init>(Ljava/lang/Boolean;)V

    return-object p2
.end method
