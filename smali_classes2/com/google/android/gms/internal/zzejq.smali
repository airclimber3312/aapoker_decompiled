.class public final Lcom/google/android/gms/internal/zzejq;
.super Ljava/lang/Object;


# static fields
.field private static final zznje:Lcom/google/android/gms/internal/zzela;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzela<",
            "Lcom/google/android/gms/internal/zzejn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zznjb:Lcom/google/android/gms/internal/zzegi;

.field private zznjc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzejn;",
            ">;"
        }
    .end annotation
.end field

.field private zznjd:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzejs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzejs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzejq;->zznje:Lcom/google/android/gms/internal/zzela;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzegi;->zzbxz()Lcom/google/android/gms/internal/zzegi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzejq;->zznjc:Ljava/util/List;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzejq;->zznjd:Ljava/lang/Long;

    return-void
.end method

.method private static zza(Ljava/util/List;Lcom/google/android/gms/internal/zzela;Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegi;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzejn;",
            ">;",
            "Lcom/google/android/gms/internal/zzela<",
            "Lcom/google/android/gms/internal/zzejn;",
            ">;",
            "Lcom/google/android/gms/internal/zzegu;",
            ")",
            "Lcom/google/android/gms/internal/zzegi;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzegi;->zzbxz()Lcom/google/android/gms/internal/zzegi;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzejn;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzela;->zzbw(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejn;->zzbzk()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzegu;->zzi(Lcom/google/android/gms/internal/zzegu;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejn;->zzbzi()Lcom/google/android/gms/internal/zzenn;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzegi;->zze(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzegi;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/zzegu;->zzi(Lcom/google/android/gms/internal/zzegu;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejn;->zzbzi()Lcom/google/android/gms/internal/zzenn;

    move-result-object v1

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzenn;->zzan(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/zzegi;->zze(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzegi;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzegu;->zzi(Lcom/google/android/gms/internal/zzegu;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejn;->zzbzj()Lcom/google/android/gms/internal/zzegi;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzegi;->zzb(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;)Lcom/google/android/gms/internal/zzegi;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/zzegu;->zzi(Lcom/google/android/gms/internal/zzegu;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejn;->zzbzj()Lcom/google/android/gms/internal/zzegi;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzegi;->zzf(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    goto :goto_1

    :cond_5
    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenm;ZLcom/google/android/gms/internal/zzenf;)Lcom/google/android/gms/internal/zzenm;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegi;->zzg(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegi;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegi;->zzf(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzegi;->zzb(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzenm;

    invoke-virtual {p5, p2, p3, p4}, Lcom/google/android/gms/internal/zzenf;->zza(Lcom/google/android/gms/internal/zzenm;Lcom/google/android/gms/internal/zzenm;Z)I

    move-result v0

    if-lez v0, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {p5, p2, v1, p4}, Lcom/google/android/gms/internal/zzenf;->zza(Lcom/google/android/gms/internal/zzenm;Lcom/google/android/gms/internal/zzenm;Z)I

    move-result v0

    if-gez v0, :cond_1

    :cond_2
    move-object v1, p2

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;
    .locals 0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzegu;->zzh(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzegi;->zze(Lcom/google/android/gms/internal/zzegu;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzegi;->zzg(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegi;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p4, p2}, Lcom/google/android/gms/internal/zzenn;->zzan(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p4, p2}, Lcom/google/android/gms/internal/zzenn;->zzan(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzegi;->zzb(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzelh;)Lcom/google/android/gms/internal/zzenn;
    .locals 1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegi;->zzf(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzelh;->zzf(Lcom/google/android/gms/internal/zzemq;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegi;->zzg(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegi;

    move-result-object p1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzelh;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/zzenn;->zzm(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzegi;->zzb(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Ljava/util/List;Z)Lcom/google/android/gms/internal/zzenn;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Lcom/google/android/gms/internal/zzenn;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/google/android/gms/internal/zzenn;"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzegi;->zzf(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p3

    if-eqz p3, :cond_0

    return-object p3

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzegi;->zzg(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegi;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p2

    :cond_1
    if-nez p2, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzegi;->zze(Lcom/google/android/gms/internal/zzegu;)Z

    move-result p3

    if-nez p3, :cond_2

    return-object v1

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzegi;->zzb(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegi;->zzg(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegi;

    move-result-object v0

    if-nez p4, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegi;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    return-object p2

    :cond_5
    if-nez p4, :cond_6

    if-nez p2, :cond_6

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzegi;->zze(Lcom/google/android/gms/internal/zzegu;)Z

    move-result v0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/zzejr;

    invoke-direct {v0, p0, p4, p3, p1}, Lcom/google/android/gms/internal/zzejr;-><init>(Lcom/google/android/gms/internal/zzejq;ZLjava/util/List;Lcom/google/android/gms/internal/zzegu;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/zzejq;->zznjc:Ljava/util/List;

    invoke-static {p3, v0, p1}, Lcom/google/android/gms/internal/zzejq;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzela;Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegi;

    move-result-object p1

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzegi;->zzb(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;Ljava/lang/Long;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejq;->zznjc:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/zzejn;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/zzejn;-><init>(JLcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzegi;->zzb(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;)Lcom/google/android/gms/internal/zzegi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzejq;->zznjd:Ljava/lang/Long;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Ljava/lang/Long;Z)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejq;->zznjc:Ljava/util/List;

    new-instance v7, Lcom/google/android/gms/internal/zzejn;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, v7

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzejn;-><init>(JLcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Z)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/internal/zzegi;->zze(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzegi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/zzejq;->zznjd:Ljava/lang/Long;

    return-void
.end method

.method public final zzbw(J)Lcom/google/android/gms/internal/zzejn;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejq;->zznjc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzejn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejn;->zzbzh()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzbx(J)Z
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejq;->zznjc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzejn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejn;->zzbzh()J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzejq;->zznjc:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejn;->isVisible()Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzejq;->zznjc:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v4, 0x0

    :goto_2
    if-eqz p1, :cond_7

    if-ltz p2, :cond_7

    iget-object v5, p0, Lcom/google/android/gms/internal/zzejq;->zznjc:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzejn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzejn;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_6

    if-lt p2, v2, :cond_5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzejn;->zzbzk()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/zzegu;->zzi(Lcom/google/android/gms/internal/zzegu;)Z

    move-result v6

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzejn;->zzbzj()Lcom/google/android/gms/internal/zzegi;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzegi;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v9

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/zzegu;->zzh(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/zzegu;->zzi(Lcom/google/android/gms/internal/zzegu;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_5

    const/4 p1, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/zzegu;->zzi(Lcom/google/android/gms/internal/zzegu;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v4, 0x1

    :cond_6
    :goto_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    return v1

    :cond_8
    if-eqz v4, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/zzejq;->zznjc:Ljava/util/List;

    sget-object p2, Lcom/google/android/gms/internal/zzejq;->zznje:Lcom/google/android/gms/internal/zzela;

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/zzejq;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzela;Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzejq;->zznjc:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/internal/zzejq;->zznjc:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzejn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejn;->zzbzh()J

    move-result-wide p1

    goto :goto_5

    :cond_9
    const-wide/16 p1, -0x1

    :goto_5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejq;->zznjd:Ljava/lang/Long;

    return v0

    :cond_a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejn;->zzbzk()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzegi;->zzd(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    goto :goto_7

    :cond_b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejn;->zzbzj()Lcom/google/android/gms/internal/zzegi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegi;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzegu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/zzegu;->zzh(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzegi;->zzd(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegi;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    goto :goto_6

    :cond_c
    :goto_7
    return v0
.end method

.method public final zzbzn()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzejn;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejq;->zznjc:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzegi;->zzbxz()Lcom/google/android/gms/internal/zzegi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzejq;->zznjc:Ljava/util/List;

    return-object v0
.end method

.method public final zzj(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzegi;->zzf(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzenn;->zzccd()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzenn;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzenm;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzenm;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzenn;->zze(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzegi;->zzg(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegi;

    move-result-object p1

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzenn;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzenm;

    new-instance v2, Lcom/google/android/gms/internal/zzegu;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/zzemq;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzegu;-><init>([Lcom/google/android/gms/internal/zzemq;)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzegi;->zzg(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegi;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzenm;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzegi;->zzb(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzenn;->zze(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegi;->zzbyb()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzenm;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzenm;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzenn;->zze(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public final zzt(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzejt;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzejt;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/zzejt;-><init>(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzejq;)V

    return-object v0
.end method

.method public final zzu(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejq;->zznjb:Lcom/google/android/gms/internal/zzegi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegi;->zzf(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1
.end method
