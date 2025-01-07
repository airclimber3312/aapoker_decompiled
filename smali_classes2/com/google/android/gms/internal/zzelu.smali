.class public final Lcom/google/android/gms/internal/zzelu;
.super Ljava/lang/Object;


# instance fields
.field private final zzmxa:Lcom/google/android/gms/internal/zzegu;

.field private final zzmxe:Lcom/google/android/gms/internal/zzelr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzelr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzelu;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzelu;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    return-void
.end method

.method public static zzam(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzelu;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzelu;

    sget-object v1, Lcom/google/android/gms/internal/zzelr;->zznmi:Lcom/google/android/gms/internal/zzelr;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzelu;-><init>(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzelr;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzelu;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzelu;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzelu;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzegu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzelu;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzelu;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzelr;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelu;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelu;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzelr;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isDefault()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelu;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelr;->isDefault()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelu;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzelu;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbvh()Lcom/google/android/gms/internal/zzegu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelu;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    return-object v0
.end method

.method public final zzcba()Lcom/google/android/gms/internal/zzenf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelu;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelr;->zzcba()Lcom/google/android/gms/internal/zzenf;

    move-result-object v0

    return-object v0
.end method

.method public final zzcbe()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelu;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelr;->zzcbe()Z

    move-result v0

    return v0
.end method

.method public final zzcbh()Lcom/google/android/gms/internal/zzelr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelu;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    return-object v0
.end method
