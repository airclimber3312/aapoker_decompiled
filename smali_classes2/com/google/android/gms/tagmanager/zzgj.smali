.class final Lcom/google/android/gms/tagmanager/zzgj;
.super Ljava/lang/Number;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/tagmanager/zzgj;",
        ">;"
    }
.end annotation


# instance fields
.field private zzkuh:D

.field private zzkui:J

.field private zzkuj:Z


# direct methods
.method private constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzgj;->zzkuh:D

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/tagmanager/zzgj;->zzkuj:Z

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzgj;->zzkui:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/tagmanager/zzgj;->zzkuj:Z

    return-void
.end method

.method public static zzb(Ljava/lang/Double;)Lcom/google/android/gms/tagmanager/zzgj;
    .locals 3

    new-instance v0, Lcom/google/android/gms/tagmanager/zzgj;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzgj;-><init>(D)V

    return-object v0
.end method

.method public static zzbi(J)Lcom/google/android/gms/tagmanager/zzgj;
    .locals 1

    new-instance v0, Lcom/google/android/gms/tagmanager/zzgj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/zzgj;-><init>(J)V

    return-object v0
.end method

.method public static zzmh(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzgj;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/android/gms/tagmanager/zzgj;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzgj;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzgj;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzgj;-><init>(D)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " is not a valid TypedNumber"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final byteValue()B
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzgj;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-byte v0, v1

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/tagmanager/zzgj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzgj;->zza(Lcom/google/android/gms/tagmanager/zzgj;)I

    move-result p1

    return p1
.end method

.method public final doubleValue()D
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzgj;->zzkuj:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzgj;->zzkui:J

    long-to-double v0, v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzgj;->zzkuh:D

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/tagmanager/zzgj;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/tagmanager/zzgj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzgj;->zza(Lcom/google/android/gms/tagmanager/zzgj;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final floatValue()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzgj;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzgj;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public final intValue()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzgj;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final longValue()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzgj;->zzkuj:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzgj;->zzkui:J

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzgj;->zzkuh:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public final shortValue()S
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzgj;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzgj;->zzkuj:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzgj;->zzkui:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzgj;->zzkuh:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/tagmanager/zzgj;)I
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzgj;->zzkuj:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/google/android/gms/tagmanager/zzgj;->zzkuj:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzgj;->zzkui:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iget-wide v1, p1, Lcom/google/android/gms/tagmanager/zzgj;->zzkui:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzgj;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzgj;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public final zzbid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzgj;->zzkuj:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbie()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzgj;->zzkuj:Z

    return v0
.end method
