.class public final Lcom/google/android/gms/internal/zzemd;
.super Ljava/lang/Object;


# instance fields
.field private final zznnh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzemq;",
            "Lcom/google/android/gms/internal/zzelj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzemd;->zznnh:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzelj;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelj;->zzcan()Lcom/google/android/gms/internal/zzelm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelj;->zzcam()Lcom/google/android/gms/internal/zzemq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzemd;->zznnh:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzemd;->zznnh:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzelj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzelj;->zzcan()Lcom/google/android/gms/internal/zzelm;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzelm;->zznly:Lcom/google/android/gms/internal/zzelm;

    if-ne v0, v4, :cond_0

    sget-object v4, Lcom/google/android/gms/internal/zzelm;->zznlx:Lcom/google/android/gms/internal/zzelm;

    if-ne v3, v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemd;->zznnh:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelj;->zzcam()Lcom/google/android/gms/internal/zzemq;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelj;->zzcak()Lcom/google/android/gms/internal/zzeng;

    move-result-object p1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzelj;->zzcak()Lcom/google/android/gms/internal/zzeng;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/zzelj;->zza(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzeng;Lcom/google/android/gms/internal/zzeng;)Lcom/google/android/gms/internal/zzelj;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v4, Lcom/google/android/gms/internal/zzelm;->zznlx:Lcom/google/android/gms/internal/zzelm;

    if-ne v0, v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/zzelm;->zznly:Lcom/google/android/gms/internal/zzelm;

    if-ne v3, v4, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzemd;->zznnh:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    sget-object v4, Lcom/google/android/gms/internal/zzelm;->zznlx:Lcom/google/android/gms/internal/zzelm;

    if-ne v0, v4, :cond_2

    sget-object v4, Lcom/google/android/gms/internal/zzelm;->zznma:Lcom/google/android/gms/internal/zzelm;

    if-ne v3, v4, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzemd;->zznnh:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzelj;->zzcap()Lcom/google/android/gms/internal/zzeng;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzelj;->zzb(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzeng;)Lcom/google/android/gms/internal/zzelj;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    sget-object v4, Lcom/google/android/gms/internal/zzelm;->zznma:Lcom/google/android/gms/internal/zzelm;

    if-ne v0, v4, :cond_3

    sget-object v4, Lcom/google/android/gms/internal/zzelm;->zznly:Lcom/google/android/gms/internal/zzelm;

    if-ne v3, v4, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemd;->zznnh:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelj;->zzcak()Lcom/google/android/gms/internal/zzeng;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzelj;->zza(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzeng;)Lcom/google/android/gms/internal/zzelj;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    sget-object v4, Lcom/google/android/gms/internal/zzelm;->zznma:Lcom/google/android/gms/internal/zzelm;

    if-ne v0, v4, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/zzelm;->zznma:Lcom/google/android/gms/internal/zzelm;

    if-ne v3, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemd;->zznnh:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelj;->zzcak()Lcom/google/android/gms/internal/zzeng;

    move-result-object p1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzelj;->zzcap()Lcom/google/android/gms/internal/zzeng;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/zzelj;->zza(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzeng;Lcom/google/android/gms/internal/zzeng;)Lcom/google/android/gms/internal/zzelj;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Illegal combination of changes: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " occurred after "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzemd;->zznnh:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelj;->zzcam()Lcom/google/android/gms/internal/zzemq;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzcbp()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzelj;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzemd;->zznnh:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
