.class public final Lcom/google/android/gms/internal/zzxu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzabh;
.end annotation


# direct methods
.method public static zza(Lcom/google/ads/AdRequest$ErrorCode;)I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzxv;->zzckn:[I

    invoke-virtual {p0}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzkk;Z)Lcom/google/ads/mediation/MediationAdRequest;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkk;->zzbgx:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkk;->zzbgx:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    new-instance v0, Lcom/google/ads/mediation/MediationAdRequest;

    new-instance v2, Ljava/util/Date;

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzkk;->zzbgv:J

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    iget v1, p0, Lcom/google/android/gms/internal/zzkk;->zzbgw:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    sget-object v1, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    :goto_1
    move-object v3, v1

    iget-object v6, p0, Lcom/google/android/gms/internal/zzkk;->zzbhd:Landroid/location/Location;

    move-object v1, v0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/mediation/MediationAdRequest;-><init>(Ljava/util/Date;Lcom/google/ads/AdRequest$Gender;Ljava/util/Set;ZLandroid/location/Location;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzko;)Lcom/google/ads/AdSize;
    .locals 5

    const/4 v0, 0x6

    new-array v1, v0, [Lcom/google/ads/AdSize;

    sget-object v2, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v4, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    sget-object v4, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    sget-object v4, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    sget-object v4, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    aput-object v4, v1, v2

    const/4 v2, 0x5

    sget-object v4, Lcom/google/ads/AdSize;->IAB_WIDE_SKYSCRAPER:Lcom/google/ads/AdSize;

    aput-object v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v2, v1, v3

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/internal/zzko;->width:I

    if-ne v2, v4, :cond_0

    aget-object v2, v1, v3

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/internal/zzko;->height:I

    if-ne v2, v4, :cond_0

    aget-object p0, v1, v3

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/ads/AdSize;

    iget v1, p0, Lcom/google/android/gms/internal/zzko;->width:I

    iget v2, p0, Lcom/google/android/gms/internal/zzko;->height:I

    iget-object p0, p0, Lcom/google/android/gms/internal/zzko;->zzbia:Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lcom/google/android/gms/ads/zzb;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/ads/AdSize;-><init>(Lcom/google/android/gms/ads/AdSize;)V

    return-object v0
.end method
