.class final Lcom/google/android/gms/internal/zzeiu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "+",
        "Lcom/google/android/gms/internal/zzell;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zznie:Lcom/google/android/gms/internal/zzeir;

.field private synthetic zznih:Lcom/google/android/gms/internal/zzegr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzegr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeiu;->zznie:Lcom/google/android/gms/internal/zzeir;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeiu;->zznih:Lcom/google/android/gms/internal/zzegr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeiu;->zznih:Lcom/google/android/gms/internal/zzegr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegr;->zzbxy()Lcom/google/android/gms/internal/zzelu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeiu;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeir;->zzd(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzekw;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v1

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzekw;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzeiq;

    if-eqz v7, :cond_3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/zzeiq;->zzr(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v3

    :goto_1
    if-nez v5, :cond_2

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzeiq;->zzbzc()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v5, 0x1

    :cond_3
    :goto_3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, ""

    invoke-static {v7}, Lcom/google/android/gms/internal/zzemq;->zzqf(Ljava/lang/String;)Lcom/google/android/gms/internal/zzemq;

    move-result-object v7

    goto :goto_4

    :cond_4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v7

    :goto_4
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/zzekw;->zze(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzekw;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzegu;->zzbyr()Lcom/google/android/gms/internal/zzegu;

    move-result-object v6

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeiu;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeir;->zzd(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzekw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzekw;->zzaj(Lcom/google/android/gms/internal/zzegu;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzeiq;

    if-nez v2, :cond_6

    new-instance v2, Lcom/google/android/gms/internal/zzeiq;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzeiu;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzeki;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/zzeiq;-><init>(Lcom/google/android/gms/internal/zzeki;)V

    iget-object v6, p0, Lcom/google/android/gms/internal/zzeiu;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzeir;->zzd(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzekw;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Lcom/google/android/gms/internal/zzekw;->zzb(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzekw;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzekw;)Lcom/google/android/gms/internal/zzekw;

    goto :goto_7

    :cond_6
    if-nez v5, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeiq;->zzbzc()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v5, 0x1

    :goto_6
    if-eqz v3, :cond_9

    goto :goto_7

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzeiq;->zzr(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v3

    :goto_7
    iget-object v6, p0, Lcom/google/android/gms/internal/zzeiu;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzeki;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/zzeki;->zzg(Lcom/google/android/gms/internal/zzelu;)V

    if-eqz v3, :cond_a

    new-instance v6, Lcom/google/android/gms/internal/zzelh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelu;->zzcba()Lcom/google/android/gms/internal/zzenf;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/zzeng;->zza(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenf;)Lcom/google/android/gms/internal/zzeng;

    move-result-object v3

    invoke-direct {v6, v3, v8, v4}, Lcom/google/android/gms/internal/zzelh;-><init>(Lcom/google/android/gms/internal/zzeng;ZZ)V

    goto/16 :goto_a

    :cond_a
    iget-object v3, p0, Lcom/google/android/gms/internal/zzeiu;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzeki;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/zzeki;->zzf(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzelh;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzelh;->zzcai()Z

    move-result v3

    if-eqz v3, :cond_b

    goto/16 :goto_a

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v3

    iget-object v7, p0, Lcom/google/android/gms/internal/zzeiu;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzeir;->zzd(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzekw;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/zzekw;->zzah(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzekw;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzekw;->zzcag()Lcom/google/android/gms/internal/zzedq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzedq;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzeiq;

    if-eqz v9, :cond_c

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/zzeiq;->zzr(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzemq;

    invoke-interface {v3, v8, v9}, Lcom/google/android/gms/internal/zzenn;->zze(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v3

    goto :goto_8

    :cond_d
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzelh;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzenn;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzenm;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v8

    invoke-interface {v3, v8}, Lcom/google/android/gms/internal/zzenn;->zzk(Lcom/google/android/gms/internal/zzemq;)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzenm;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v7

    invoke-interface {v3, v8, v7}, Lcom/google/android/gms/internal/zzenn;->zze(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v3

    goto :goto_9

    :cond_f
    new-instance v6, Lcom/google/android/gms/internal/zzelh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelu;->zzcba()Lcom/google/android/gms/internal/zzenf;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/zzeng;->zza(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenf;)Lcom/google/android/gms/internal/zzeng;

    move-result-object v3

    invoke-direct {v6, v3, v4, v4}, Lcom/google/android/gms/internal/zzelh;-><init>(Lcom/google/android/gms/internal/zzeng;ZZ)V

    :goto_a
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzeiq;->zzc(Lcom/google/android/gms/internal/zzelu;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelu;->zzcbe()Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/google/android/gms/internal/zzeiu;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzeir;->zzf(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzejk;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/gms/internal/zzeiu;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzeir;->zze(Lcom/google/android/gms/internal/zzeir;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzeiu;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzeir;->zzg(Lcom/google/android/gms/internal/zzeir;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v4, p0, Lcom/google/android/gms/internal/zzeiu;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzeir;->zzc(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzejq;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/zzejq;->zzt(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzejt;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzeiu;->zznih:Lcom/google/android/gms/internal/zzegr;

    invoke-virtual {v2, v4, v1, v6}, Lcom/google/android/gms/internal/zzeiq;->zza(Lcom/google/android/gms/internal/zzegr;Lcom/google/android/gms/internal/zzejt;Lcom/google/android/gms/internal/zzelh;)Ljava/util/List;

    move-result-object v1

    if-nez v3, :cond_11

    if-nez v5, :cond_11

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzeiq;->zzb(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzelv;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeiu;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzelv;)V

    :cond_11
    return-object v1
.end method
