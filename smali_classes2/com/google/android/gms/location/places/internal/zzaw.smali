.class public Lcom/google/android/gms/location/places/internal/zzaw;
.super Lcom/google/android/gms/common/data/zzc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;[B)[B
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/zzc;->zzgj(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/zzc;->zzgl(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/zzc;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected final zza(Ljava/lang/String;F)F
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/zzc;->zzgj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/zzc;->zzgl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/zzc;->getFloat(Ljava/lang/String;)F

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method protected final zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/internal/zzbgp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/android/gms/internal/zzbgp;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator<",
            "TE;>;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzaw;->zzb(Ljava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgq;->zza([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/internal/zzbgp;

    move-result-object p1

    return-object p1
.end method

.method protected final zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/android/gms/internal/zzbgp;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzaw;->zzb(Ljava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdoh;->zzae([B)Lcom/google/android/gms/internal/zzdoh;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzdoh;->zzlyk:[[B

    if-nez v0, :cond_1

    return-object p3

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzdoh;->zzlyk:[[B

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p1, Lcom/google/android/gms/internal/zzdoh;->zzlyk:[[B

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-static {v3, p2}, Lcom/google/android/gms/internal/zzbgq;->zza([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/internal/zzbgp;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzflr; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    const/4 p2, 0x6

    const-string v0, "SafeDataBufferRef"

    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Cannot parse byte[]"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-object p3
.end method

.method protected final zzad(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/zzc;->zzgj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/zzc;->zzgl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/zzc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method protected final zzc(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzaw;->zzb(Ljava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdoh;->zzae([B)Lcom/google/android/gms/internal/zzdoh;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzdoh;->zzlyj:[I

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzdoh;->zzlyj:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lcom/google/android/gms/internal/zzdoh;->zzlyj:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p1, Lcom/google/android/gms/internal/zzdoh;->zzlyj:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzflr; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    const/4 v0, 0x6

    const-string v1, "SafeDataBufferRef"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Cannot parse byte[]"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-object p2
.end method

.method protected final zzd(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzaw;->zzb(Ljava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdoh;->zzae([B)Lcom/google/android/gms/internal/zzdoh;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzdoh;->zzlyi:[Ljava/lang/String;

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/zzdoh;->zzlyi:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzflr; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x6

    const-string v1, "SafeDataBufferRef"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Cannot parse byte[]"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object p2
.end method

.method protected final zzy(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/zzc;->zzgj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/zzc;->zzgl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/zzc;->getInteger(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method
