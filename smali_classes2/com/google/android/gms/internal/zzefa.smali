.class final Lcom/google/android/gms/internal/zzefa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeer;


# instance fields
.field private synthetic zznba:J

.field private synthetic zznbb:Lcom/google/android/gms/internal/zzeez;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeez;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefa;->zznbb:Lcom/google/android/gms/internal/zzeez;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzefa;->zznba:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzefa;->zznba:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefa;->zznbb:Lcom/google/android/gms/internal/zzeez;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeey;->zzd(Lcom/google/android/gms/internal/zzeey;)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefa;->zznbb:Lcom/google/android/gms/internal/zzeez;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    sget-object v1, Lcom/google/android/gms/internal/zzefi;->zznbh:Lcom/google/android/gms/internal/zzefi;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;Lcom/google/android/gms/internal/zzefi;)Lcom/google/android/gms/internal/zzefi;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefa;->zznbb:Lcom/google/android/gms/internal/zzeez;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzemm;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Error fetching token: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v4, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefa;->zznbb:Lcom/google/android/gms/internal/zzeez;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeey;->zze(Lcom/google/android/gms/internal/zzeey;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzefa;->zznbb:Lcom/google/android/gms/internal/zzeez;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzemm;

    move-result-object p1

    const-string v0, "Ignoring getToken error, because this was not the latest attempt."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzpr(Ljava/lang/String;)V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzefa;->zznba:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefa;->zznbb:Lcom/google/android/gms/internal/zzeez;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeey;->zzd(Lcom/google/android/gms/internal/zzeey;)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefa;->zznbb:Lcom/google/android/gms/internal/zzeez;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeey;->zzb(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzefi;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzefi;->zznbi:Lcom/google/android/gms/internal/zzefi;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefa;->zznbb:Lcom/google/android/gms/internal/zzeez;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzemm;

    move-result-object v0

    const-string v1, "Successfully fetched token, opening connection"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefa;->zznbb:Lcom/google/android/gms/internal/zzeez;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeey;->zzpu(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzefa;->zznbb:Lcom/google/android/gms/internal/zzeez;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeey;->zzb(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzefi;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/zzefi;->zznbh:Lcom/google/android/gms/internal/zzefi;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefa;->zznbb:Lcom/google/android/gms/internal/zzeez;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeey;->zzb(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzefi;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Expected connection state disconnected, but was %s"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/zzeet;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefa;->zznbb:Lcom/google/android/gms/internal/zzeez;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzemm;

    move-result-object p1

    const-string v0, "Not opening connection after token refresh, because connection was set to disconnected"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzefa;->zznbb:Lcom/google/android/gms/internal/zzeez;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzeez;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzemm;

    move-result-object p1

    const-string v0, "Ignoring getToken result, because this was not the latest attempt."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method
