.class public final Lcom/google/android/gms/internal/zzdcm;
.super Ljava/lang/Object;


# static fields
.field private static final zzkzu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdcn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/zzbh;->zzkf:Lcom/google/android/gms/internal/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbh;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzdcn;

    const-string v3, "contains"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzdcn;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzbh;->zzke:Lcom/google/android/gms/internal/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbh;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzdcn;

    const-string v3, "endsWith"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzdcn;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzbh;->zzkg:Lcom/google/android/gms/internal/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbh;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzdcn;

    const-string v3, "equals"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzdcn;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzbh;->zzkk:Lcom/google/android/gms/internal/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbh;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzdcn;

    const-string v3, "greaterEquals"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzdcn;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzbh;->zzkj:Lcom/google/android/gms/internal/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbh;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzdcn;

    const-string v3, "greaterThan"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzdcn;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzbh;->zzki:Lcom/google/android/gms/internal/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbh;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzdcn;

    const-string v3, "lessEquals"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzdcn;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzbh;->zzkh:Lcom/google/android/gms/internal/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbh;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzdcn;

    const-string v3, "lessThan"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzdcn;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzbh;->zzkc:Lcom/google/android/gms/internal/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbh;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzdcn;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/zzbi;->zzmy:Lcom/google/android/gms/internal/zzbi;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbi;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/google/android/gms/internal/zzbi;->zzmz:Lcom/google/android/gms/internal/zzbi;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbi;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lcom/google/android/gms/internal/zzbi;->zzqw:Lcom/google/android/gms/internal/zzbi;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbi;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "regex"

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/zzdcn;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzbh;->zzkd:Lcom/google/android/gms/internal/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbh;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzdcn;

    const-string v3, "startsWith"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzdcn;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/google/android/gms/internal/zzdcm;->zzkzu:Ljava/util/Map;

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzdbb;)Lcom/google/android/gms/internal/zzdkb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdjq<",
            "*>;>;",
            "Lcom/google/android/gms/internal/zzdbb;",
            ")",
            "Lcom/google/android/gms/internal/zzdkb;"
        }
    .end annotation

    sget-object p2, Lcom/google/android/gms/internal/zzdcm;->zzkzu:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzdcn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdcn;->zzbjl()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzdcm;->zza([Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzdkc;

    const-string v1, "gtmUtils"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdkc;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/zzdkb;

    const-string v1, "15"

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/zzdkb;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/zzdkc;

    const-string v1, "mobile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdkc;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/zzdkb;

    const-string v1, "17"

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/zzdkb;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/zzdkc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdcn;->zzbjk()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdkc;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/google/android/gms/internal/zzdjx;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdjx;-><init>(Ljava/util/List;)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/google/android/gms/internal/zzdkb;

    const-string p1, "2"

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzdkb;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Fail to convert "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to the internal representation"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbh;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbh;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzdcm;->zzmw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zza([Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdjq<",
            "*>;>;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzdjq<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/zzdjw;->zzlcz:Lcom/google/android/gms/internal/zzdjw;

    goto :goto_1

    :cond_0
    aget-object v2, p0, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzdjq;

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static zzmw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzdcm;->zzkzu:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzdcn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdcn;->zzbjk()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
