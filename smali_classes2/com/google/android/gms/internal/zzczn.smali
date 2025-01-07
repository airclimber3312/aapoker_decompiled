.class final Lcom/google/android/gms/internal/zzczn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzkvy:Lcom/google/android/gms/internal/zzczg;

.field private final zzkwa:Lcom/google/android/gms/internal/zzdin;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzczg;Lcom/google/android/gms/internal/zzdin;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczn;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzczn;->zzkwa:Lcom/google/android/gms/internal/zzdin;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczn;->zzkwa:Lcom/google/android/gms/internal/zzdin;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdin;->zzbju()Lcom/google/android/gms/internal/zzdio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdio;->zzbjz()Lcom/google/android/gms/internal/zzdjc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzczn;->zzkwa:Lcom/google/android/gms/internal/zzdin;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdin;->zzbjv()Lcom/google/android/gms/internal/zzdjk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzczn;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzczg;->zzb(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/internal/zzdav;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzczn;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzczg;->zzm(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/internal/zzdba;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/internal/zzdba;->zza(Lcom/google/android/gms/internal/zzdjc;Lcom/google/android/gms/internal/zzdjk;)Lcom/google/android/gms/internal/zzdav;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzczg;->zza(Lcom/google/android/gms/internal/zzczg;Lcom/google/android/gms/internal/zzdav;)Lcom/google/android/gms/internal/zzdav;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczn;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzczg;->zza(Lcom/google/android/gms/internal/zzczg;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczn;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zzd(Lcom/google/android/gms/internal/zzczg;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Container "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " loaded during runtime initialization."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczn;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zzi(Lcom/google/android/gms/internal/zzczg;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczn;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zzi(Lcom/google/android/gms/internal/zzczg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzczu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzczu;->zzbio()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "Evaluating tags for pending event "

    if-eqz v5, :cond_1

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v4}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzczn;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzczg;->zzb(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/internal/zzdav;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/zzdav;->zzb(Lcom/google/android/gms/internal/zzczu;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzczn;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzczg;->zza(Lcom/google/android/gms/internal/zzczg;Ljava/util/List;)Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzczn;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zzb(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/internal/zzdav;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdav;->dispatch()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczn;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zzd(Lcom/google/android/gms/internal/zzczg;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v4, "Runtime initialized successfully for container "

    if-eqz v1, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczn;->zzkwa:Lcom/google/android/gms/internal/zzdin;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdin;->zzbju()Lcom/google/android/gms/internal/zzdio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdio;->zzbka()J

    move-result-wide v0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzczn;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzczg;->zzg(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/internal/zzczp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzczp;->zzbfw()J

    move-result-wide v4

    add-long/2addr v0, v4

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzczn;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzczg;->zzl(Lcom/google/android/gms/internal/zzczg;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzczn;->zzkwa:Lcom/google/android/gms/internal/zzdin;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdin;->getSource()I

    move-result v2

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzczn;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzczg;->zzn(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczn;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zzg(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/internal/zzczp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzczp;->zzbim()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzczg;->zza(Lcom/google/android/gms/internal/zzczg;J)V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzczn;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzczg;->zzn(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/common/util/zze;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/32 v3, 0xdbba0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/zzczg;->zza(Lcom/google/android/gms/internal/zzczg;J)V

    return-void
.end method
