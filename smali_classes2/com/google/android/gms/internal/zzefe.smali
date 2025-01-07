.class final Lcom/google/android/gms/internal/zzefe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzefh;


# instance fields
.field private synthetic zznaz:Lcom/google/android/gms/internal/zzeey;

.field private synthetic zznbg:Lcom/google/android/gms/internal/zzefl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeey;Lcom/google/android/gms/internal/zzefl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefe;->zznaz:Lcom/google/android/gms/internal/zzeey;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefe;->zznbg:Lcom/google/android/gms/internal/zzefl;

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

    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "d"

    if-eqz v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "w"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzefe;->zznaz:Lcom/google/android/gms/internal/zzeey;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzefe;->zznbg:Lcom/google/android/gms/internal/zzefl;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzefl;->zzb(Lcom/google/android/gms/internal/zzefl;)Lcom/google/android/gms/internal/zzefj;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;Ljava/util/List;Lcom/google/android/gms/internal/zzefj;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzefe;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeey;->zzo(Lcom/google/android/gms/internal/zzeey;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzefe;->zznbg:Lcom/google/android/gms/internal/zzefl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzefl;->zzbxd()Lcom/google/android/gms/internal/zzefj;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzefl;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzefe;->zznbg:Lcom/google/android/gms/internal/zzefl;

    if-ne v2, v4, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefe;->zznaz:Lcom/google/android/gms/internal/zzeey;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefe;->zznbg:Lcom/google/android/gms/internal/zzefl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzefl;->zzbxd()Lcom/google/android/gms/internal/zzefj;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;Lcom/google/android/gms/internal/zzefj;)Lcom/google/android/gms/internal/zzefl;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefe;->zznbg:Lcom/google/android/gms/internal/zzefl;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzefl;->zzc(Lcom/google/android/gms/internal/zzefl;)Lcom/google/android/gms/internal/zzefo;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/zzefo;->zzbc(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzefe;->zznbg:Lcom/google/android/gms/internal/zzefl;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzefl;->zzc(Lcom/google/android/gms/internal/zzefl;)Lcom/google/android/gms/internal/zzefo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/google/android/gms/internal/zzefo;->zzbc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
