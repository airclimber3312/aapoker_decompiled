.class public final Lcom/google/android/gms/internal/zzend;
.super Lcom/google/android/gms/internal/zzeni;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzeni<",
        "Lcom/google/android/gms/internal/zzend;",
        ">;"
    }
.end annotation


# instance fields
.field private final zznor:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzenn;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzeni;-><init>(Lcom/google/android/gms/internal/zzenn;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzend;->zznor:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/zzend;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzend;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzend;->zznor:Ljava/lang/Double;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzend;->zznor:Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzend;->zznob:Lcom/google/android/gms/internal/zzenn;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzend;->zznob:Lcom/google/android/gms/internal/zzenn;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzend;->zznor:Ljava/lang/Double;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzend;->zznor:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzend;->zznob:Lcom/google/android/gms/internal/zzenn;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/zzeni;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzend;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzend;->zznor:Ljava/lang/Double;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzend;->zznor:Ljava/lang/Double;

    invoke-virtual {v0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzenp;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeni;->zzb(Lcom/google/android/gms/internal/zzenp;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "number:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzend;->zznor:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzepd;->zzk(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final zzcbv()Lcom/google/android/gms/internal/zzenk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzenk;->zznpa:Lcom/google/android/gms/internal/zzenk;

    return-object v0
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzend;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzend;->zznor:Ljava/lang/Double;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzend;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzenn;)V

    return-object v0
.end method
