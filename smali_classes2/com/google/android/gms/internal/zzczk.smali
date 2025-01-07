.class final Lcom/google/android/gms/internal/zzczk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdif;
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzkvy:Lcom/google/android/gms/internal/zzczg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzczg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczk;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzczg;Lcom/google/android/gms/internal/zzczh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzczk;-><init>(Lcom/google/android/gms/internal/zzczg;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczk;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zza(Lcom/google/android/gms/internal/zzczg;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbq;->checkState(Z)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczk;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzczg;->zza(Lcom/google/android/gms/internal/zzczg;Z)Z

    invoke-static {}, Lcom/google/android/gms/internal/zzdat;->zzbja()Lcom/google/android/gms/internal/zzdat;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzczk;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzczg;->zzd(Lcom/google/android/gms/internal/zzczg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdat;->zzmq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzczk;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zzg(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/internal/zzczp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzczp;->zzbin()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzczg;->zza(Lcom/google/android/gms/internal/zzczg;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczk;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zzl(Lcom/google/android/gms/internal/zzczg;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzczk;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zzh(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/internal/zzdie;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczk;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zzd(Lcom/google/android/gms/internal/zzczg;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczk;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zze(Lcom/google/android/gms/internal/zzczg;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczk;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zzf(Lcom/google/android/gms/internal/zzczg;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczk;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zzg(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/internal/zzczp;

    move-result-object v11

    move-object v10, p0

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/internal/zzdie;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/zzdif;Lcom/google/android/gms/internal/zzczp;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzdin;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdin;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzftq:Lcom/google/android/gms/common/api/Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczk;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zzc(Lcom/google/android/gms/internal/zzczg;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzczn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzczk;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/zzczn;-><init>(Lcom/google/android/gms/internal/zzczg;Lcom/google/android/gms/internal/zzdin;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzczk;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzczg;->zzc(Lcom/google/android/gms/internal/zzczg;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzczj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzczk;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzczj;-><init>(Lcom/google/android/gms/internal/zzczg;Lcom/google/android/gms/internal/zzczh;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
