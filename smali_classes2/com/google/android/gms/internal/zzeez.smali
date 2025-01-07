.class final Lcom/google/android/gms/internal/zzeez;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zznay:Z

.field final synthetic zznaz:Lcom/google/android/gms/internal/zzeey;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeey;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzeez;->zznay:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzemm;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Trying to fetch auth token"

    invoke-virtual {v0, v4, v3, v2}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeey;->zzb(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzefi;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/zzefi;->zznbh:Lcom/google/android/gms/internal/zzefi;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzeey;->zzb(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzefi;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Not in disconnected state: %s"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzeet;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    sget-object v1, Lcom/google/android/gms/internal/zzefi;->zznbi:Lcom/google/android/gms/internal/zzefi;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;Lcom/google/android/gms/internal/zzefi;)Lcom/google/android/gms/internal/zzefi;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeey;->zzc(Lcom/google/android/gms/internal/zzeey;)J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeey;->zzd(Lcom/google/android/gms/internal/zzeey;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeey;->zzf(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzeeq;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzeez;->zznay:Z

    new-instance v4, Lcom/google/android/gms/internal/zzefa;

    invoke-direct {v4, p0, v0, v1}, Lcom/google/android/gms/internal/zzefa;-><init>(Lcom/google/android/gms/internal/zzeez;J)V

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/zzeeq;->zza(ZLcom/google/android/gms/internal/zzeer;)V

    return-void
.end method
