.class public final Lcom/google/android/gms/internal/zzejw;
.super Lcom/google/android/gms/internal/zzejy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzejz;->zznju:Lcom/google/android/gms/internal/zzejz;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzejy;-><init>(Lcom/google/android/gms/internal/zzejz;Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejy;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejy;->zznjq:Lcom/google/android/gms/internal/zzeka;

    aput-object v2, v0, v1

    const-string v1, "ListenComplete { path=%s, source=%s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzejy;
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzejw;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzejw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zznjq:Lcom/google/android/gms/internal/zzeka;

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzejw;-><init>(Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzejw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zznjq:Lcom/google/android/gms/internal/zzeka;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejw;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegu;->zzbyr()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzejw;-><init>(Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;)V

    return-object p1
.end method
