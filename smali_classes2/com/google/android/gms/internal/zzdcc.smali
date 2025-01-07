.class final Lcom/google/android/gms/internal/zzdcc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzkzc:Ljava/lang/String;

.field private synthetic zzkzd:Ljava/lang/String;

.field private synthetic zzkze:Ljava/lang/String;

.field private synthetic zzkzm:Lcom/google/android/gms/internal/zzdae;

.field private synthetic zzkzn:Lcom/google/android/gms/internal/zzdcb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdcb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzdae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdcc;->zzkzn:Lcom/google/android/gms/internal/zzdcb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdcc;->zzkzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdcc;->zzkzd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdcc;->zzkze:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzdcc;->zzkzm:Lcom/google/android/gms/internal/zzdae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdcc;->zzkzn:Lcom/google/android/gms/internal/zzdcb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdcb;->zza(Lcom/google/android/gms/internal/zzdcb;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdcc;->zzkzc:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdcc;->zzkzn:Lcom/google/android/gms/internal/zzdcb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdcb;->zzb(Lcom/google/android/gms/internal/zzdcb;)Lcom/google/android/gms/internal/zzczo;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdcc;->zzkzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdcc;->zzkzd:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzdcc;->zzkze:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/zzczo;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzczg;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdcc;->zzkzn:Lcom/google/android/gms/internal/zzdcb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdcb;->zza(Lcom/google/android/gms/internal/zzdcb;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdcc;->zzkzc:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdcc;->zzkzn:Lcom/google/android/gms/internal/zzdcb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdcb;->zzc(Lcom/google/android/gms/internal/zzdcb;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Fail to load container: "

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/zzczq;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdcc;->zzkzm:Lcom/google/android/gms/internal/zzdae;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdcc;->zzkzc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzdae;->zza(ZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdcc;->zzkzn:Lcom/google/android/gms/internal/zzdcb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdcb;->zzc(Lcom/google/android/gms/internal/zzdcb;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Error relaying callback: "

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/zzczq;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    return-void
.end method
