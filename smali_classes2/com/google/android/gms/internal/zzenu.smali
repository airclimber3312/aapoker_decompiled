.class public final Lcom/google/android/gms/internal/zzenu;
.super Ljava/lang/Object;


# instance fields
.field private final zznpl:Lcom/google/android/gms/internal/zzegu;

.field private final zznpm:Lcom/google/android/gms/internal/zzegu;

.field private final zznpn:Lcom/google/android/gms/internal/zzenn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzefn;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzefn;->zzbxj()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/zzegu;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzegu;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/zzenu;->zznpl:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzefn;->zzbxk()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/zzegu;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzegu;-><init>(Ljava/util/List;)V

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/zzenu;->zznpm:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzefn;->zzbxl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzenq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzenu;->zznpn:Lcom/google/android/gms/internal/zzenn;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzenu;->zznpl:Lcom/google/android/gms/internal/zzegu;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegu;->zzj(Lcom/google/android/gms/internal/zzegu;)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzenu;->zznpm:Lcom/google/android/gms/internal/zzegu;

    if-nez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzegu;->zzj(Lcom/google/android/gms/internal/zzegu;)I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzenu;->zznpl:Lcom/google/android/gms/internal/zzegu;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzegu;->zzi(Lcom/google/android/gms/internal/zzegu;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/internal/zzenu;->zznpm:Lcom/google/android/gms/internal/zzegu;

    if-eqz v5, :cond_3

    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/zzegu;->zzi(Lcom/google/android/gms/internal/zzegu;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-lez v0, :cond_4

    if-gez v2, :cond_4

    if-nez v5, :cond_4

    return-object p3

    :cond_4
    if-lez v0, :cond_5

    if-eqz v5, :cond_5

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzenn;->zzccd()Z

    move-result v6

    if-eqz v6, :cond_5

    return-object p3

    :cond_5
    if-lez v0, :cond_7

    if-nez v2, :cond_7

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzenn;->zzccd()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object p1

    return-object p1

    :cond_6
    return-object p2

    :cond_7
    if-nez v3, :cond_9

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    return-object p2

    :cond_9
    :goto_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzenn;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzenm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    invoke-interface {p3}, Lcom/google/android/gms/internal/zzenn;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzenm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzenn;->zzcce()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzenn;->zzcce()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/zzemq;->zzcby()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object v1, p2

    :cond_e
    :goto_7
    if-ge v4, v0, :cond_f

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/google/android/gms/internal/zzemq;

    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/zzenn;->zzm(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v5

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v6

    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/zzenn;->zzm(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v7

    invoke-interface {p3, v3}, Lcom/google/android/gms/internal/zzenn;->zzm(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/google/android/gms/internal/zzenu;->zzb(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v6

    if-eq v6, v5, :cond_e

    invoke-interface {v1, v3, v6}, Lcom/google/android/gms/internal/zzenn;->zze(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v1

    goto :goto_7

    :cond_f
    return-object v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzenu;->zznpl:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzenu;->zznpm:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzenu;->zznpn:Lcom/google/android/gms/internal/zzenn;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x37

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "RangeMerge{optExclusiveStart="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", optInclusiveEnd="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", snap="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzenu;->zznpn:Lcom/google/android/gms/internal/zzenn;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/zzenu;->zzb(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1
.end method
