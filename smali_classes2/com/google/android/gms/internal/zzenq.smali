.class public final Lcom/google/android/gms/internal/zzenq;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    const-string v0, ".value"

    const-string v1, ".priority"

    :try_start_0
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_1

    move-object v2, p0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzent;->zzc(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    if-nez p0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzenv;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzenv;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzenn;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzenl;

    check-cast p0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzenl;-><init>(Ljava/lang/Long;Lcom/google/android/gms/internal/zzenn;)V

    return-object v0

    :cond_4
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzenl;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzenl;-><init>(Ljava/lang/Long;Lcom/google/android/gms/internal/zzenn;)V

    return-object v0

    :cond_5
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zzend;

    check-cast p0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzend;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzenn;)V

    return-object v0

    :cond_6
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/zzemp;

    check-cast p0, Ljava/lang/Boolean;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzemp;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/internal/zzenn;)V

    return-object v0

    :cond_7
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_a

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    const-string v0, "Failed to parse node with class "

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_d

    check-cast p0, Ljava/util/Map;

    const-string v0, ".sv"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/zzenc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzenc;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzenn;)V

    return-object v0

    :cond_b
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzenq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v2}, Lcom/google/android/gms/internal/zzemq;->zzqf(Ljava/lang/String;)Lcom/google/android/gms/internal/zzemq;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_d
    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzenq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {v2}, Lcom/google/android/gms/internal/zzemq;->zzqf(Ljava/lang/String;)Lcom/google/android/gms/internal/zzemq;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object p0

    return-object p0

    :cond_10
    sget-object p0, Lcom/google/android/gms/internal/zzems;->zznoa:Ljava/util/Comparator;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzedr;->zza(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzedq;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/zzems;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzems;-><init>(Lcom/google/android/gms/internal/zzedq;Lcom/google/android/gms/internal/zzenn;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    const-string v0, "Failed to parse node"

    invoke-direct {p1, v0, p0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
