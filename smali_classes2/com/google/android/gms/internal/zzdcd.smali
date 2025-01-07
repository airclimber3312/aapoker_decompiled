.class final Lcom/google/android/gms/internal/zzdcd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzkzn:Lcom/google/android/gms/internal/zzdcb;

.field private synthetic zzkzo:Lcom/google/android/gms/internal/zzczu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdcb;Lcom/google/android/gms/internal/zzczu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdcd;->zzkzn:Lcom/google/android/gms/internal/zzdcb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdcd;->zzkzo:Lcom/google/android/gms/internal/zzczu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdcd;->zzkzn:Lcom/google/android/gms/internal/zzdcb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdcb;->zza(Lcom/google/android/gms/internal/zzdcb;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TagManagerBackend emit called without loaded container."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdcd;->zzkzn:Lcom/google/android/gms/internal/zzdcb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdcb;->zza(Lcom/google/android/gms/internal/zzdcb;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzczg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdcd;->zzkzo:Lcom/google/android/gms/internal/zzczu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzczg;->zza(Lcom/google/android/gms/internal/zzczu;)V

    goto :goto_0

    :cond_1
    return-void
.end method
