.class public final Lcom/google/android/gms/internal/zzdep;
.super Lcom/google/android/gms/internal/zzdcr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdcr;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzdbb;[Lcom/google/android/gms/internal/zzdjq;)Lcom/google/android/gms/internal/zzdjq;
    .locals 6
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

    instance-of v1, v0, Lcom/google/android/gms/internal/zzdkc;

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdke;->zzl(Lcom/google/android/gms/internal/zzdjq;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdke;->zzm(Lcom/google/android/gms/internal/zzdjq;)Z

    move-result v2

    xor-int/2addr v2, p1

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    invoke-static {p2}, Lcom/google/android/gms/internal/zzdke;->zzm(Lcom/google/android/gms/internal/zzdjq;)Z

    move-result v2

    xor-int/2addr p1, v2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    invoke-static {p2}, Lcom/google/android/gms/internal/zzdcq;->zzd(Lcom/google/android/gms/internal/zzdjq;)Ljava/lang/String;

    move-result-object p1

    instance-of v2, v0, Lcom/google/android/gms/internal/zzdjx;

    const-string v3, "length"

    if-eqz v2, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/zzdjx;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/zzdju;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdjq;->value()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzdju;-><init>(Ljava/lang/Double;)V

    return-object p1

    :cond_3
    invoke-static {p2}, Lcom/google/android/gms/internal/zzdcq;->zzb(Lcom/google/android/gms/internal/zzdjq;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double p2, v2, v4

    if-nez p2, :cond_7

    double-to-int p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzdjx;->zzfh(I)Lcom/google/android/gms/internal/zzdjq;

    move-result-object p2

    sget-object v1, Lcom/google/android/gms/internal/zzdjw;->zzlcz:Lcom/google/android/gms/internal/zzdjw;

    if-eq p2, v1, :cond_7

    return-object p2

    :cond_4
    if-eqz v1, :cond_7

    check-cast v0, Lcom/google/android/gms/internal/zzdkc;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p1, Lcom/google/android/gms/internal/zzdju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdjq;->value()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzdju;-><init>(Ljava/lang/Double;)V

    return-object p1

    :cond_5
    invoke-static {p2}, Lcom/google/android/gms/internal/zzdcq;->zzb(Lcom/google/android/gms/internal/zzdjq;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    cmpl-double p2, v1, v3

    if-nez p2, :cond_6

    double-to-int p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzdkc;->zzfj(I)Lcom/google/android/gms/internal/zzdjq;

    move-result-object p1

    return-object p1

    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/zzdjw;->zzlcz:Lcom/google/android/gms/internal/zzdjw;

    return-object p1

    :cond_7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdjq;->zznj(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdjq;

    move-result-object p1

    return-object p1
.end method
