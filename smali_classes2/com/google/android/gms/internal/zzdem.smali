.class public final Lcom/google/android/gms/internal/zzdem;
.super Lcom/google/android/gms/internal/zzdcr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdcr;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(Lcom/google/android/gms/internal/zzdbb;[Lcom/google/android/gms/internal/zzdjq;)Lcom/google/android/gms/internal/zzdjq;
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

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    aget-object v0, p2, v3

    instance-of v0, v0, Lcom/google/android/gms/internal/zzdkc;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    aget-object v0, p2, v3

    check-cast v0, Lcom/google/android/gms/internal/zzdkc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdjq;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzdbb;->has(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    aget-object v1, p2, v2

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    aget-object p2, p2, v2

    instance-of v2, p2, Lcom/google/android/gms/internal/zzdjx;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    check-cast p2, Lcom/google/android/gms/internal/zzdjx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzdjq;->value()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdjq;->zzbko()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzdjq;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzdbb;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdjq;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdke;->zza(Lcom/google/android/gms/internal/zzdbb;Ljava/util/List;)Lcom/google/android/gms/internal/zzdjw;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/zzdjw;->zzlcw:Lcom/google/android/gms/internal/zzdjw;

    if-ne v2, v3, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/zzdjw;->zzlcz:Lcom/google/android/gms/internal/zzdjw;

    return-object p1

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdjw;->zzbkq()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/zzdjw;->zzlcz:Lcom/google/android/gms/internal/zzdjw;

    return-object p1
.end method
