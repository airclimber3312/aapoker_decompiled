.class final Lcom/google/android/gms/internal/zzbit;
.super Lcom/google/android/gms/internal/zzbiw;


# instance fields
.field private synthetic zzgmd:Lcom/google/android/gms/internal/zzbim;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbis;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbim;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbit;->zzgmd:Lcom/google/android/gms/internal/zzbim;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbiw;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzbjl;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Lcom/google/android/gms/common/data/zzd;->zzalh()Lcom/google/android/gms/common/data/DataHolder$zza;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzbit;->zzgmd:Lcom/google/android/gms/internal/zzbim;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbim;->zzaog()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Lcom/google/android/gms/internal/zzbjd;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/google/android/gms/internal/zzbjd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/android/gms/common/data/zzd;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;Lcom/google/android/gms/internal/zzbgp;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/data/DataHolder$zza;->zzca(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/api/internal/zzbz;->zzcl(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/common/api/Status;->zzftq:Lcom/google/android/gms/common/api/Status;

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/api/internal/zzbz;->zzakq()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object v8, v4

    :goto_1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getId()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v0

    move-object v9, v3

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v4

    :goto_2
    const/4 v5, 0x3

    const-string v6, "ConfigApiImpl"

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Cannot retrieve instanceId or instanceIdToken."

    invoke-static {v6, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move-object v9, v3

    move-object v10, v4

    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbir;->zzdf(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    new-instance v0, Lcom/google/android/gms/internal/zzbjf;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v1, Lcom/google/android/gms/internal/zzbit;->zzgmd:Lcom/google/android/gms/internal/zzbim;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbim;->zzaof()J

    move-result-wide v5

    const/4 v11, 0x0

    iget-object v3, v1, Lcom/google/android/gms/internal/zzbit;->zzgmd:Lcom/google/android/gms/internal/zzbim;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbim;->zzaoh()I

    move-result v12

    iget-object v3, v1, Lcom/google/android/gms/internal/zzbit;->zzgmd:Lcom/google/android/gms/internal/zzbim;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbim;->zzaoi()I

    move-result v14

    iget-object v3, v1, Lcom/google/android/gms/internal/zzbit;->zzgmd:Lcom/google/android/gms/internal/zzbim;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbim;->zzaoj()I

    move-result v15

    move-object v3, v0

    move-object v7, v2

    invoke-direct/range {v3 .. v15}, Lcom/google/android/gms/internal/zzbjf;-><init>(Ljava/lang/String;JLcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;II)V

    :try_start_2
    iget-object v3, v1, Lcom/google/android/gms/internal/zzbit;->zzgme:Lcom/google/android/gms/internal/zzbjj;

    move-object/from16 v4, p2

    invoke-interface {v4, v3, v0}, Lcom/google/android/gms/internal/zzbjl;->zza(Lcom/google/android/gms/internal/zzbjj;Lcom/google/android/gms/internal/zzbjf;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v0
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbiy;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzbiy;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;)V

    return-object v0
.end method
