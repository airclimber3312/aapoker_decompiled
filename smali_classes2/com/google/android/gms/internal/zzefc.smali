.class final Lcom/google/android/gms/internal/zzefc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzefh;


# instance fields
.field private synthetic zznaz:Lcom/google/android/gms/internal/zzeey;

.field private synthetic zznbd:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeey;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefc;->zznaz:Lcom/google/android/gms/internal/zzeey;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzefc;->zznbd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzal(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefc;->zznaz:Lcom/google/android/gms/internal/zzeey;

    sget-object v1, Lcom/google/android/gms/internal/zzefi;->zznbl:Lcom/google/android/gms/internal/zzefi;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;Lcom/google/android/gms/internal/zzefi;)Lcom/google/android/gms/internal/zzefi;

    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefc;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;I)I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefc;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeey;->zzg(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzeex;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/zzeex;->zzcs(Z)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzefc;->zznbd:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefc;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeey;->zzh(Lcom/google/android/gms/internal/zzeey;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzefc;->zznaz:Lcom/google/android/gms/internal/zzeey;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefc;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;Z)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefc;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeey;->zzg(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzeex;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/zzeex;->zzcs(Z)V

    const-string v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefc;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzemm;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Authentication failed: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v4, v2}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefc;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeey;->zzi(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzeem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeem;->close()V

    const-string p1, "invalid_token"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefc;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeey;->zzj(Lcom/google/android/gms/internal/zzeey;)I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefc;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeey;->zzk(Lcom/google/android/gms/internal/zzeey;)I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefc;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeey;->zzl(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzefz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzefz;->zzbxs()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefc;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzemm;

    move-result-object p1

    const-string v0, "Provided authentication credentials are invalid. This usually indicates your FirebaseApp instance was not initialized correctly. Make sure your google-services.json file has the correct firebase_url and api_key. You can re-download google-services.json from https://console.firebase.google.com/."

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzemm;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
