.class final Lcom/google/android/gms/internal/zzefd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzefh;


# instance fields
.field private synthetic val$action:Ljava/lang/String;

.field private synthetic zznaz:Lcom/google/android/gms/internal/zzeey;

.field private synthetic zznbc:Lcom/google/android/gms/internal/zzefo;

.field private synthetic zznbe:J

.field private synthetic zznbf:Lcom/google/android/gms/internal/zzefm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeey;Ljava/lang/String;JLcom/google/android/gms/internal/zzefm;Lcom/google/android/gms/internal/zzefo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefd;->zznaz:Lcom/google/android/gms/internal/zzeey;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefd;->val$action:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzefd;->zznbe:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zzefd;->zznbf:Lcom/google/android/gms/internal/zzefm;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzefd;->zznbc:Lcom/google/android/gms/internal/zzefo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzal(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefd;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzemm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefd;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzemm;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefd;->val$action:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xb

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " response: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefd;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeey;->zzm(Lcom/google/android/gms/internal/zzeey;)Ljava/util/Map;

    move-result-object v0

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzefd;->zznbe:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzefm;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefd;->zznbf:Lcom/google/android/gms/internal/zzefm;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefd;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeey;->zzm(Lcom/google/android/gms/internal/zzeey;)Ljava/util/Map;

    move-result-object v0

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzefd;->zznbe:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefd;->zznbc:Lcom/google/android/gms/internal/zzefo;

    if-eqz v0, :cond_3

    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefd;->zznbc:Lcom/google/android/gms/internal/zzefo;

    invoke-interface {p1, v2, v2}, Lcom/google/android/gms/internal/zzefo;->zzbc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefd;->zznbc:Lcom/google/android/gms/internal/zzefo;

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/zzefo;->zzbc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzefd;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzemm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefd;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzemm;

    move-result-object p1

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzefd;->zznbe:J

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x51

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Ignoring on complete for put "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " because it was removed already."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzefd;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeey;->zzn(Lcom/google/android/gms/internal/zzeey;)V

    return-void
.end method
