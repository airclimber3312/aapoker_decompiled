.class public final Lcom/google/android/gms/internal/zzenl;
.super Lcom/google/android/gms/internal/zzeni;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzeni<",
        "Lcom/google/android/gms/internal/zzenl;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:J


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcom/google/android/gms/internal/zzenn;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzeni;-><init>(Lcom/google/android/gms/internal/zzenn;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzenl;->value:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/gms/internal/zzenl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzenl;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzenl;->value:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzenl;->value:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzenl;->zznob:Lcom/google/android/gms/internal/zzenn;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzenl;->zznob:Lcom/google/android/gms/internal/zzenn;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzenl;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzenl;->value:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzenl;->zznob:Lcom/google/android/gms/internal/zzenn;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/zzeni;)I
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/zzenl;

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzenl;->value:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzenl;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzepd;->zzi(JJ)I

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

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzenl;->value:J

    long-to-double v0, v0

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
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzenl;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzenl;->value:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzenl;-><init>(Ljava/lang/Long;Lcom/google/android/gms/internal/zzenn;)V

    return-object v0
.end method
