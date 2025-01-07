.class public final Lcom/google/android/gms/internal/zzbwm;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbwj;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DP:",
            "Ljava/lang/Object;",
            "DT:",
            "Ljava/lang/Object;",
            ">(TDP;",
            "Lcom/google/android/gms/internal/zzbwj<",
            "TDP;TDT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbwj;->zzarn()Lcom/google/android/gms/internal/zzbwk;

    move-result-object v0

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/zzbwj;->zzab(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbwk;->zzhm(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/zzbwj;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbwk;->zzac(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/internal/zzbwk;->zzg(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, p0, v3}, Lcom/google/android/gms/internal/zzbwj;->zzd(Ljava/lang/Object;I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/internal/zzbwk;->zzf(Ljava/lang/Object;I)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Lcom/google/android/gms/internal/zzbwn;->zzhlz:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " not set"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/internal/zzbwk;->zze(Ljava/lang/Object;I)I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v5, v7

    if-nez v9, :cond_2

    invoke-interface {p1, p0, v3}, Lcom/google/android/gms/internal/zzbwj;->zzc(Ljava/lang/Object;I)I

    move-result v5

    int-to-double v5, v5

    goto :goto_1

    :cond_2
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    cmpl-double v9, v5, v7

    if-nez v9, :cond_6

    invoke-interface {p1, p0, v3}, Lcom/google/android/gms/internal/zzbwj;->zzb(Ljava/lang/Object;I)D

    move-result-wide v5

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/zzbwn;->zzase()Lcom/google/android/gms/internal/zzbwn;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/zzbwn;->zzhv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbwp;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/zzbwp;->zzf(D)Z

    move-result v7

    if-nez v7, :cond_3

    const-string p0, "Field out of range"

    return-object p0

    :cond_3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbwk;->zzad(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/zzbwn;->zzase()Lcom/google/android/gms/internal/zzbwn;

    move-result-object v8

    invoke-virtual {v8, v7, v4}, Lcom/google/android/gms/internal/zzbwn;->zzz(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbwp;

    move-result-object v4

    if-eqz v4, :cond_6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p0, v7}, Lcom/google/android/gms/internal/zzbwj;->zza(Ljava/lang/Object;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const-string v11, "DataPoint out of range"

    cmp-long v12, v7, v9

    if-nez v12, :cond_5

    const-wide/16 p0, 0x0

    cmpl-double v0, v5, p0

    if-nez v0, :cond_4

    return-object v2

    :cond_4
    return-object v11

    :cond_5
    long-to-double v7, v7

    div-double/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzbwp;->zzf(D)Z

    move-result v4

    if-nez v4, :cond_6

    return-object v11

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v2
.end method
