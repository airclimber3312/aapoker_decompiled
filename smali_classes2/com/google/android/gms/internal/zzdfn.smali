.class public final Lcom/google/android/gms/internal/zzdfn;
.super Lcom/google/android/gms/internal/zzdcr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdcr;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzdbb;[Lcom/google/android/gms/internal/zzdjq;)Lcom/google/android/gms/internal/zzdjq;
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

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    array-length v0, p2

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    array-length v0, p2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    aget-object v0, p2, v1

    instance-of v0, v0, Lcom/google/android/gms/internal/zzdkc;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p2

    if-ne v2, p1, :cond_2

    aget-object p1, p2, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    aget-object v2, p2, v1

    check-cast v2, Lcom/google/android/gms/internal/zzdkc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdjq;->value()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aget-object p2, p2, p1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzdcq;->zzd(Lcom/google/android/gms/internal/zzdjq;)Ljava/lang/String;

    move-result-object p2

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/4 v5, -0x1

    :goto_2
    invoke-virtual {v2, p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    if-eqz v4, :cond_4

    array-length v2, p2

    if-lez v2, :cond_4

    aget-object v2, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    array-length v1, p2

    if-ge p1, v1, :cond_5

    new-instance v1, Lcom/google/android/gms/internal/zzdkc;

    aget-object v2, p2, p1

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzdkc;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    new-instance p1, Lcom/google/android/gms/internal/zzdjx;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzdjx;-><init>(Ljava/util/List;)V

    return-object p1
.end method
