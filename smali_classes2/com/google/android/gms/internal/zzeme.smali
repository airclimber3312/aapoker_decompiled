.class public final Lcom/google/android/gms/internal/zzeme;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzemg;


# instance fields
.field private final zznme:Lcom/google/android/gms/internal/zzenf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzenf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeme;->zznme:Lcom/google/android/gms/internal/zzenf;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzeng;Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzemh;Lcom/google/android/gms/internal/zzemd;)Lcom/google/android/gms/internal/zzeng;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeng;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object p5

    invoke-interface {p5, p2}, Lcom/google/android/gms/internal/zzenn;->zzm(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/zzenn;->zzan(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v1

    invoke-interface {p3, p4}, Lcom/google/android/gms/internal/zzenn;->zzan(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result p4

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result v1

    if-ne p4, v1, :cond_0

    return-object p1

    :cond_0
    if-eqz p6, :cond_3

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p5, p2}, Lcom/google/android/gms/internal/zzenn;->zzk(Lcom/google/android/gms/internal/zzemq;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzelj;->zzd(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzelj;

    move-result-object p4

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/zzelj;->zzc(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzelj;

    move-result-object p4

    goto :goto_0

    :cond_2
    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/zzelj;->zza(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzelj;

    move-result-object p4

    :goto_0
    invoke-virtual {p6, p4}, Lcom/google/android/gms/internal/zzemd;->zza(Lcom/google/android/gms/internal/zzelj;)V

    :cond_3
    invoke-interface {p5}, Lcom/google/android/gms/internal/zzenn;->zzccd()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_4

    return-object p1

    :cond_4
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzeng;->zzg(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzeng;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeng;Lcom/google/android/gms/internal/zzeng;Lcom/google/android/gms/internal/zzemd;)Lcom/google/android/gms/internal/zzeng;
    .locals 4

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeng;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzenm;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeng;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzenn;->zzk(Lcom/google/android/gms/internal/zzemq;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzenm;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzelj;->zzd(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzelj;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/zzemd;->zza(Lcom/google/android/gms/internal/zzelj;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeng;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->zzccd()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeng;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzenm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeng;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzenn;->zzk(Lcom/google/android/gms/internal/zzemq;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeng;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzenn;->zzm(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzenm;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzenm;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/zzelj;->zza(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzelj;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzenm;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzelj;->zzc(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzelj;

    move-result-object v1

    :goto_2
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/zzemd;->zza(Lcom/google/android/gms/internal/zzelj;)V

    goto :goto_1

    :cond_4
    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeng;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzeng;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeng;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzeng;->zzk(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzeng;

    move-result-object p1

    return-object p1
.end method

.method public final zzcba()Lcom/google/android/gms/internal/zzenf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeme;->zznme:Lcom/google/android/gms/internal/zzenf;

    return-object v0
.end method

.method public final zzcbq()Lcom/google/android/gms/internal/zzemg;
    .locals 0

    return-object p0
.end method

.method public final zzcbr()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
