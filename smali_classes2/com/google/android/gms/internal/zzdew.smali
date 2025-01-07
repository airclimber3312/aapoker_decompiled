.class public final Lcom/google/android/gms/internal/zzdew;
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

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    array-length v1, p2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    aget-object v1, p2, v0

    instance-of v1, v1, Lcom/google/android/gms/internal/zzdjx;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    const/4 v1, 0x2

    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/google/android/gms/internal/zzdjx;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    aget-object v2, p2, v3

    aget-object v4, p2, v0

    check-cast v4, Lcom/google/android/gms/internal/zzdjx;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzdjq;->value()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    aget-object p2, p2, v1

    check-cast p2, Lcom/google/android/gms/internal/zzdjx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzdjq;->value()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v0

    if-gt v1, v5, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    if-nez v1, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzdjq;

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/zzdke;->zza(Lcom/google/android/gms/internal/zzdbb;Lcom/google/android/gms/internal/zzdjq;)Lcom/google/android/gms/internal/zzdjq;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/zzdcq;->zzd(Lcom/google/android/gms/internal/zzdjq;Lcom/google/android/gms/internal/zzdjq;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_2
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzdjq;

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/zzdke;->zza(Lcom/google/android/gms/internal/zzdbb;Lcom/google/android/gms/internal/zzdjq;)Lcom/google/android/gms/internal/zzdjq;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/zzdjw;

    if-eqz v6, :cond_5

    sget-object v6, Lcom/google/android/gms/internal/zzdjw;->zzlcx:Lcom/google/android/gms/internal/zzdjw;

    if-eq v5, v6, :cond_4

    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/zzdjw;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzdjw;->zzbkq()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    sget-object v6, Lcom/google/android/gms/internal/zzdjw;->zzlcw:Lcom/google/android/gms/internal/zzdjw;

    if-ne v5, v6, :cond_6

    sget-object p1, Lcom/google/android/gms/internal/zzdjw;->zzlcz:Lcom/google/android/gms/internal/zzdjw;

    return-object p1

    :cond_4
    :goto_3
    return-object v5

    :cond_5
    const/4 v1, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzdjq;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdke;->zza(Lcom/google/android/gms/internal/zzdbb;Lcom/google/android/gms/internal/zzdjq;)Lcom/google/android/gms/internal/zzdjq;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/zzdjw;

    if-eqz p2, :cond_9

    sget-object p2, Lcom/google/android/gms/internal/zzdjw;->zzlcx:Lcom/google/android/gms/internal/zzdjw;

    if-eq p1, p2, :cond_8

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/zzdjw;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzdjw;->zzbkq()Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_8
    return-object p1

    :cond_9
    sget-object p1, Lcom/google/android/gms/internal/zzdjw;->zzlcz:Lcom/google/android/gms/internal/zzdjw;

    return-object p1
.end method
