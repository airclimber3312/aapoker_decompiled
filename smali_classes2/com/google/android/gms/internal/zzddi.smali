.class public final Lcom/google/android/gms/internal/zzddi;
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

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    array-length v0, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    aget-object v0, p2, v2

    instance-of v0, v0, Lcom/google/android/gms/internal/zzdjx;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    aget-object v0, p2, v2

    check-cast v0, Lcom/google/android/gms/internal/zzdjx;

    array-length v4, p2

    if-ne v4, v1, :cond_2

    aget-object v1, p2, v3

    instance-of v1, v1, Lcom/google/android/gms/internal/zzdjv;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    aget-object v1, p2, v3

    check-cast v1, Lcom/google/android/gms/internal/zzdjv;

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/zzdjv;

    new-instance v3, Lcom/google/android/gms/internal/zzddl;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzddl;-><init>(Lcom/google/android/gms/internal/zzddj;)V

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/zzdjv;-><init>(Lcom/google/android/gms/internal/zzdcp;)V

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdjq;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/internal/zzddk;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/android/gms/internal/zzddk;-><init>(Lcom/google/android/gms/internal/zzddi;Lcom/google/android/gms/internal/zzdjv;Lcom/google/android/gms/internal/zzdbb;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    aget-object p1, p2, v2

    return-object p1
.end method
