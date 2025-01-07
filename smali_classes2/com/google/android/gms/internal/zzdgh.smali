.class public final Lcom/google/android/gms/internal/zzdgh;
.super Lcom/google/android/gms/internal/zzdcr;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzlae:Lcom/google/android/gms/internal/zzdaz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzdaz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdcr;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdgh;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdgh;->zzlae:Lcom/google/android/gms/internal/zzdaz;

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzdbb;[Lcom/google/android/gms/internal/zzdjq;)Lcom/google/android/gms/internal/zzdjq;
    .locals 5
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

    const-string v1, ""

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    aget-object v2, p2, v0

    sget-object v3, Lcom/google/android/gms/internal/zzdjw;->zzlcz:Lcom/google/android/gms/internal/zzdjw;

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzdgh;->zzlae:Lcom/google/android/gms/internal/zzdaz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzdaz;->zzbjc()Lcom/google/android/gms/internal/zzczu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzczu;->zzbgl()Ljava/util/Map;

    move-result-object v2

    const-string v3, "_ldl"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/zzdkc;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/zzdkc;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/internal/zzdke;->zzau(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdjq;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/zzdkc;

    if-nez v3, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/zzdkc;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/zzdkc;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    check-cast v2, Lcom/google/android/gms/internal/zzdkc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdjq;->value()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "conv"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzdak;->zzaw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdcq;->zzd(Lcom/google/android/gms/internal/zzdjq;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/zzdkc;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/zzdkc;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    array-length v0, p2

    const/4 v3, 0x0

    if-le v0, p1, :cond_5

    aget-object v0, p2, p1

    sget-object v4, Lcom/google/android/gms/internal/zzdjw;->zzlcz:Lcom/google/android/gms/internal/zzdjw;

    if-ne v0, v4, :cond_4

    goto :goto_0

    :cond_4
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdcq;->zzd(Lcom/google/android/gms/internal/zzdjq;)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    :cond_5
    :goto_0
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzdak;->zzaw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance p2, Lcom/google/android/gms/internal/zzdkc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzdkc;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/zzdkc;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/zzdkc;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_7
    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/zzdkc;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/zzdkc;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
