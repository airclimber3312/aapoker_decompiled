.class public final Lcom/google/android/gms/internal/zzdhy;
.super Lcom/google/android/gms/internal/zzdcr;


# instance fields
.field private final zzlan:Lcom/google/android/gms/internal/zzczy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzczy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdcr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdhy;->zzlan:Lcom/google/android/gms/internal/zzczy;

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

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    array-length v1, p2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    aget-object v1, p2, v2

    instance-of v3, v1, Lcom/google/android/gms/internal/zzdjw;

    xor-int/2addr v3, v0

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    array-length v3, p2

    if-le v3, v0, :cond_1

    aget-object v3, p2, v0

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/zzdjw;->zzlcz:Lcom/google/android/gms/internal/zzdjw;

    :goto_1
    sget-object v4, Lcom/google/android/gms/internal/zzdjw;->zzlcz:Lcom/google/android/gms/internal/zzdjw;

    if-eq v3, v4, :cond_3

    instance-of v4, v3, Lcom/google/android/gms/internal/zzdjx;

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    :goto_3
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    array-length v4, p2

    const/4 v5, 0x2

    if-le v4, v5, :cond_4

    aget-object p2, p2, v5

    goto :goto_4

    :cond_4
    sget-object p2, Lcom/google/android/gms/internal/zzdjw;->zzlcz:Lcom/google/android/gms/internal/zzdjw;

    :goto_4
    sget-object v4, Lcom/google/android/gms/internal/zzdjw;->zzlcz:Lcom/google/android/gms/internal/zzdjw;

    if-eq p2, v4, :cond_6

    instance-of v4, p2, Lcom/google/android/gms/internal/zzdjw;

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdcq;->zzd(Lcom/google/android/gms/internal/zzdjq;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzdjw;->zzlcz:Lcom/google/android/gms/internal/zzdjw;

    if-eq v3, v1, :cond_8

    check-cast v3, Lcom/google/android/gms/internal/zzdjx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdjq;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzdjq;

    instance-of v3, v2, Lcom/google/android/gms/internal/zzdka;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    check-cast v2, Lcom/google/android/gms/internal/zzdka;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdjq;->value()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzdjq;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzdke;->zza(Lcom/google/android/gms/internal/zzdbb;Lcom/google/android/gms/internal/zzdjq;)Lcom/google/android/gms/internal/zzdjq;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzdcq;->zzd(Lcom/google/android/gms/internal/zzdjq;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/zzdjw;->zzlcz:Lcom/google/android/gms/internal/zzdjw;

    const-string v1, "SendPixel: url = "

    if-ne p2, v0, :cond_a

    iget-object p2, p0, Lcom/google/android/gms/internal/zzdhy;->zzlan:Lcom/google/android/gms/internal/zzczy;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzczy;->zzlr(Ljava/lang/String;)Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_9
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    invoke-static {p2}, Lcom/google/android/gms/internal/zzdcq;->zzd(Lcom/google/android/gms/internal/zzdjq;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdhy;->zzlan:Lcom/google/android/gms/internal/zzczy;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzczy;->zzax(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uniqueId = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_7
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzdjw;->zzlcz:Lcom/google/android/gms/internal/zzdjw;

    return-object p1
.end method
