.class public final Lcom/google/android/gms/internal/zzent;
.super Ljava/lang/Object;


# direct methods
.method public static zzc(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzenn;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzenq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzenl;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzend;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzenn;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzend;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzenn;)V

    move-object p1, v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzent;->zzl(Lcom/google/android/gms/internal/zzenn;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Path \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "Node"

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " contains invalid priority: Must be a string, double, ServerValue, or null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object p1
.end method

.method public static zzl(Lcom/google/android/gms/internal/zzenn;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzenn;->zzcce()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/internal/zzend;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/internal/zzenv;

    if-nez v0, :cond_0

    instance-of p0, p0, Lcom/google/android/gms/internal/zzenc;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
