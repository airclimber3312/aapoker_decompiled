.class final Lcom/google/android/gms/internal/zzeno;
.super Lcom/google/android/gms/internal/zzems;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzems;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzenn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzems;->zzg(Lcom/google/android/gms/internal/zzenn;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<Max Node>"

    return-object v0
.end method

.method public final zzcce()Lcom/google/android/gms/internal/zzenn;
    .locals 0

    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzenn;)I
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzemq;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final zzm(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzenn;
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemq;->zzcca()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object p1

    return-object p1
.end method
