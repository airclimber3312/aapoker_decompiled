.class public final Lcom/google/android/gms/internal/zzenr;
.super Lcom/google/android/gms/internal/zzenf;


# instance fields
.field private final zznpj:Lcom/google/android/gms/internal/zzegu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzegu;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzenf;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemq;->zzcca()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t create PathIndex with \'.priority\' as key. Please use PriorityIndex instead!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzenr;->zznpj:Lcom/google/android/gms/internal/zzegu;

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/zzenm;

    check-cast p2, Lcom/google/android/gms/internal/zzenm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzenm;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzenr;->zznpj:Lcom/google/android/gms/internal/zzegu;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzenn;->zzan(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzenm;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzenr;->zznpj:Lcom/google/android/gms/internal/zzegu;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzenn;->zzan(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzenn;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzemq;->zzi(Lcom/google/android/gms/internal/zzemq;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzenr;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzenr;->zznpj:Lcom/google/android/gms/internal/zzegu;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzenr;->zznpj:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzegu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzenr;->zznpj:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zzccp()Lcom/google/android/gms/internal/zzenm;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzenr;->zznpj:Lcom/google/android/gms/internal/zzegu;

    sget-object v2, Lcom/google/android/gms/internal/zzenn;->zznpf:Lcom/google/android/gms/internal/zzems;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzems;->zzl(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzenm;

    invoke-static {}, Lcom/google/android/gms/internal/zzemq;->zzcbx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzenm;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    return-object v1
.end method

.method public final zzccq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzenr;->zznpj:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->zzbyo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenm;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzenr;->zznpj:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzems;->zzl(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/zzenm;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzenm;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzenn;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzenr;->zznpj:Lcom/google/android/gms/internal/zzegu;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzenn;->zzan(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
