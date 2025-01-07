.class public final Lcom/google/android/gms/internal/zzejx;
.super Lcom/google/android/gms/internal/zzejy;


# instance fields
.field private final zznjo:Lcom/google/android/gms/internal/zzegi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzejz;->zznjs:Lcom/google/android/gms/internal/zzejz;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzejy;-><init>(Lcom/google/android/gms/internal/zzejz;Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzejx;->zznjo:Lcom/google/android/gms/internal/zzegi;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejy;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejy;->zznjq:Lcom/google/android/gms/internal/zzeka;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejx;->zznjo:Lcom/google/android/gms/internal/zzegi;

    aput-object v2, v0, v1

    const-string v1, "Merge { path=%s, source=%s, children=%s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbzr()Lcom/google/android/gms/internal/zzegi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejx;->zznjo:Lcom/google/android/gms/internal/zzegi;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzejy;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejx;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejx;->zznjo:Lcom/google/android/gms/internal/zzegi;

    new-instance v2, Lcom/google/android/gms/internal/zzegu;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/zzemq;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzegu;-><init>([Lcom/google/android/gms/internal/zzemq;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzegi;->zzg(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegi;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegi;->zzbya()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzekc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejx;->zznjq:Lcom/google/android/gms/internal/zzeka;

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegi;->zzbya()Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzejx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejx;->zznjq:Lcom/google/android/gms/internal/zzeka;

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzejx;-><init>(Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzejx;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzemq;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/zzejx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejx;->zznjq:Lcom/google/android/gms/internal/zzeka;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejx;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegu;->zzbyr()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejx;->zznjo:Lcom/google/android/gms/internal/zzegi;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzejx;-><init>(Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;)V

    return-object p1

    :cond_3
    return-object v1
.end method
