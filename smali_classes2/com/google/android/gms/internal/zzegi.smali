.class public final Lcom/google/android/gms/internal/zzegi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Lcom/google/android/gms/internal/zzegu;",
        "Lcom/google/android/gms/internal/zzenn;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final zzndz:Lcom/google/android/gms/internal/zzegi;


# instance fields
.field private final zznea:Lcom/google/android/gms/internal/zzekw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzekw<",
            "Lcom/google/android/gms/internal/zzenn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzegi;

    new-instance v1, Lcom/google/android/gms/internal/zzekw;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzekw;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzegi;-><init>(Lcom/google/android/gms/internal/zzekw;)V

    sput-object v0, Lcom/google/android/gms/internal/zzegi;->zzndz:Lcom/google/android/gms/internal/zzegi;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzekw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzekw<",
            "Lcom/google/android/gms/internal/zzenn;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekw;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Lcom/google/android/gms/internal/zzekw<",
            "Lcom/google/android/gms/internal/zzenn;",
            ">;",
            "Lcom/google/android/gms/internal/zzenn;",
            ")",
            "Lcom/google/android/gms/internal/zzenn;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzenn;

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/zzenn;->zzl(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzekw;->zzcag()Lcom/google/android/gms/internal/zzedq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzedq;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzekw;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzemq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzemq;->zzcca()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzenn;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    invoke-direct {p0, v1, v2, p3}, Lcom/google/android/gms/internal/zzegi;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekw;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/zzenn;->zzan(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/zzemq;->zzcby()Lcom/google/android/gms/internal/zzemq;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Lcom/google/android/gms/internal/zzenn;->zzl(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p3

    :cond_3
    return-object p3
.end method

.method public static zzam(Ljava/util/Map;)Lcom/google/android/gms/internal/zzegi;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/internal/zzegi;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzekw;->zzcaf()Lcom/google/android/gms/internal/zzekw;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Lcom/google/android/gms/internal/zzekw;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzenq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzekw;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/zzegu;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/zzegu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/zzekw;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekw;)Lcom/google/android/gms/internal/zzekw;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/zzegi;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzegi;-><init>(Lcom/google/android/gms/internal/zzekw;)V

    return-object p0
.end method

.method public static zzan(Ljava/util/Map;)Lcom/google/android/gms/internal/zzegi;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzegu;",
            "Lcom/google/android/gms/internal/zzenn;",
            ">;)",
            "Lcom/google/android/gms/internal/zzegi;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzekw;->zzcaf()Lcom/google/android/gms/internal/zzekw;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Lcom/google/android/gms/internal/zzekw;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzenn;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzekw;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzekw;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekw;)Lcom/google/android/gms/internal/zzekw;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/zzegi;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzegi;-><init>(Lcom/google/android/gms/internal/zzekw;)V

    return-object p0
.end method

.method public static zzbxz()Lcom/google/android/gms/internal/zzegi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzegi;->zzndz:Lcom/google/android/gms/internal/zzegi;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegi;->zzcu(Z)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzegi;->zzcu(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzegi;->zzcu(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekw;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/android/gms/internal/zzegu;",
            "Lcom/google/android/gms/internal/zzenn;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekw;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzegi;->zzcu(Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CompoundWrite{"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzegi;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzegu;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzemq;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzegu;-><init>([Lcom/google/android/gms/internal/zzemq;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzegi;->zze(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzegi;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;)Lcom/google/android/gms/internal/zzegi;
    .locals 1

    iget-object p2, p2, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    new-instance v0, Lcom/google/android/gms/internal/zzegj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzegj;-><init>(Lcom/google/android/gms/internal/zzegi;Lcom/google/android/gms/internal/zzegu;)V

    invoke-virtual {p2, p0, v0}, Lcom/google/android/gms/internal/zzekw;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzegi;

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/zzegi;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekw;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1
.end method

.method public final zzbya()Lcom/google/android/gms/internal/zzenn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzenn;

    return-object v0
.end method

.method public final zzbyb()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzenm;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzenn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzenn;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzenm;

    new-instance v3, Lcom/google/android/gms/internal/zzenm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzenm;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/internal/zzenm;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekw;->zzcag()Lcom/google/android/gms/internal/zzedq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzedq;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/google/android/gms/internal/zzenm;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzemq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzenn;

    invoke-direct {v4, v2, v3}, Lcom/google/android/gms/internal/zzenm;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final zzbyc()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzemq;",
            "Lcom/google/android/gms/internal/zzegi;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekw;->zzcag()Lcom/google/android/gms/internal/zzedq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzedq;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzemq;

    new-instance v4, Lcom/google/android/gms/internal/zzegi;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzekw;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/zzegi;-><init>(Lcom/google/android/gms/internal/zzekw;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final zzcu(Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    new-instance v1, Lcom/google/android/gms/internal/zzegk;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/internal/zzegk;-><init>(Lcom/google/android/gms/internal/zzegi;Ljava/util/Map;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzekw;->zza(Lcom/google/android/gms/internal/zzekz;)V

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegi;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zzegi;->zzndz:Lcom/google/android/gms/internal/zzegi;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    invoke-static {}, Lcom/google/android/gms/internal/zzekw;->zzcaf()Lcom/google/android/gms/internal/zzekw;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzekw;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekw;)Lcom/google/android/gms/internal/zzekw;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzegi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzegi;-><init>(Lcom/google/android/gms/internal/zzekw;)V

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzegi;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzegi;

    new-instance v0, Lcom/google/android/gms/internal/zzekw;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzekw;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzegi;-><init>(Lcom/google/android/gms/internal/zzekw;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzekw;->zzaf(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzekw;->zzaj(Lcom/google/android/gms/internal/zzegu;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzenn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyt()Lcom/google/android/gms/internal/zzemq;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzemq;->zzcca()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbys()Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzenn;->zzan(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/zzenn;->zzl(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzegi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/zzekw;->zzb(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzekw;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzegi;-><init>(Lcom/google/android/gms/internal/zzekw;)V

    return-object p2

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzekw;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzekw;-><init>(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/zzekw;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekw;)Lcom/google/android/gms/internal/zzekw;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzegi;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzegi;-><init>(Lcom/google/android/gms/internal/zzekw;)V

    return-object p2
.end method

.method public final zze(Lcom/google/android/gms/internal/zzegu;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzegi;->zzf(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzekw;->zzaf(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzekw;->zzaj(Lcom/google/android/gms/internal/zzegu;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzenn;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzenn;->zzan(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegi;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzegi;->zzf(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/zzegi;

    new-instance v1, Lcom/google/android/gms/internal/zzekw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzekw;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/zzegi;-><init>(Lcom/google/android/gms/internal/zzekw;)V

    return-object p1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzegi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegi;->zznea:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzekw;->zzah(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzekw;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzegi;-><init>(Lcom/google/android/gms/internal/zzekw;)V

    return-object v0
.end method
