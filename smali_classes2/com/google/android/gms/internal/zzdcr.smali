.class public abstract Lcom/google/android/gms/internal/zzdcr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdcp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs abstract zza(Lcom/google/android/gms/internal/zzdbb;[Lcom/google/android/gms/internal/zzdjq;)Lcom/google/android/gms/internal/zzdjq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzdbb;",
            "[",
            "Lcom/google/android/gms/internal/zzdjq<",
            "*>;)",
            "Lcom/google/android/gms/internal/zzdjq<",
            "*>;"
        }
    .end annotation
.end method

.method public final varargs zzb(Lcom/google/android/gms/internal/zzdbb;[Lcom/google/android/gms/internal/zzdjq;)Lcom/google/android/gms/internal/zzdjq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzdbb;",
            "[",
            "Lcom/google/android/gms/internal/zzdjq<",
            "*>;)",
            "Lcom/google/android/gms/internal/zzdjq<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    array-length v2, p2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzdjq;

    const/4 v3, 0x0

    :goto_2
    array-length v4, p2

    if-ge v3, v4, :cond_8

    aget-object v4, p2, v3

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    aget-object v4, p2, v3

    sget-object v5, Lcom/google/android/gms/internal/zzdjw;->zzlcw:Lcom/google/android/gms/internal/zzdjw;

    if-eq v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    :goto_4
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    aget-object v4, p2, v3

    sget-object v5, Lcom/google/android/gms/internal/zzdjw;->zzlcx:Lcom/google/android/gms/internal/zzdjw;

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_5

    :cond_4
    const/4 v4, 0x0

    :goto_5
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    aget-object v4, p2, v3

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/zzdke;->zza(Lcom/google/android/gms/internal/zzdbb;Lcom/google/android/gms/internal/zzdjq;)Lcom/google/android/gms/internal/zzdjq;

    move-result-object v4

    aput-object v4, v2, v3

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    :goto_6
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    aget-object v4, v2, v3

    sget-object v5, Lcom/google/android/gms/internal/zzdjw;->zzlcw:Lcom/google/android/gms/internal/zzdjw;

    if-eq v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_7

    :cond_6
    const/4 v4, 0x0

    :goto_7
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    aget-object v4, v2, v3

    sget-object v5, Lcom/google/android/gms/internal/zzdjw;->zzlcx:Lcom/google/android/gms/internal/zzdjw;

    if-eq v4, v5, :cond_7

    const/4 v4, 0x1

    goto :goto_8

    :cond_7
    const/4 v4, 0x0

    :goto_8
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/zzdcr;->zza(Lcom/google/android/gms/internal/zzdbb;[Lcom/google/android/gms/internal/zzdjq;)Lcom/google/android/gms/internal/zzdjq;

    move-result-object p1

    if-eqz p1, :cond_9

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkState(Z)V

    return-object p1
.end method
