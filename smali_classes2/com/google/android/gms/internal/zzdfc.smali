.class public final Lcom/google/android/gms/internal/zzdfc;
.super Lcom/google/android/gms/internal/zzdcr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdcr;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzdbb;[Lcom/google/android/gms/internal/zzdjq;)Lcom/google/android/gms/internal/zzdjq;
    .locals 7
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

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdcq;->zzb(Lcom/google/android/gms/internal/zzdjq;)D

    move-result-wide v0

    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdcq;->zzb(Lcom/google/android/gms/internal/zzdjq;)D

    move-result-wide p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    if-nez v2, :cond_6

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_5

    const-wide/16 v5, 0x0

    cmpl-double v2, p1, v5

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/zzdju;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzdju;-><init>(Ljava/lang/Double;)V

    return-object p1

    :cond_3
    cmpl-double v3, v0, v5

    if-nez v3, :cond_4

    if-eqz v2, :cond_4

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance p1, Lcom/google/android/gms/internal/zzdju;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzdju;-><init>(Ljava/lang/Double;)V

    return-object p1

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/zzdju;

    rem-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/zzdju;-><init>(Ljava/lang/Double;)V

    return-object v2

    :cond_5
    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/zzdju;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzdju;-><init>(Ljava/lang/Double;)V

    return-object p1

    :cond_6
    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/zzdju;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzdju;-><init>(Ljava/lang/Double;)V

    return-object p1
.end method
