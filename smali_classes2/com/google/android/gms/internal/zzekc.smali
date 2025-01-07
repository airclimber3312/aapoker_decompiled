.class public final Lcom/google/android/gms/internal/zzekc;
.super Lcom/google/android/gms/internal/zzejy;


# instance fields
.field private final zznke:Lcom/google/android/gms/internal/zzenn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzejz;->zznjr:Lcom/google/android/gms/internal/zzejz;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzejy;-><init>(Lcom/google/android/gms/internal/zzejz;Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzekc;->zznke:Lcom/google/android/gms/internal/zzenn;

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

    iget-object v2, p0, Lcom/google/android/gms/internal/zzekc;->zznke:Lcom/google/android/gms/internal/zzenn;

    aput-object v2, v0, v1

    const-string v1, "Overwrite { path=%s, source=%s, snapshot=%s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbzx()Lcom/google/android/gms/internal/zzenn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekc;->zznke:Lcom/google/android/gms/internal/zzenn;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzejy;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekc;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzekc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekc;->zznjq:Lcom/google/android/gms/internal/zzeka;

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzekc;->zznke:Lcom/google/android/gms/internal/zzenn;

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/zzenn;->zzm(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    return-object v0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzekc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekc;->zznjq:Lcom/google/android/gms/internal/zzeka;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekc;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegu;->zzbyr()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzekc;->zznke:Lcom/google/android/gms/internal/zzenn;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    return-object p1
.end method
