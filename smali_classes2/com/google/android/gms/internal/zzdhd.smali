.class public final Lcom/google/android/gms/internal/zzdhd;
.super Lcom/google/android/gms/internal/zzdcr;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzlae:Lcom/google/android/gms/internal/zzdaz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzdaz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdcr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdhd;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdhd;->zzlae:Lcom/google/android/gms/internal/zzdaz;

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzdbb;[Lcom/google/android/gms/internal/zzdjq;)Lcom/google/android/gms/internal/zzdjq;
    .locals 2
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

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdcq;->zzd(Lcom/google/android/gms/internal/zzdjq;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdhd;->zzlae:Lcom/google/android/gms/internal/zzdaz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzdaz;->zzbjc()Lcom/google/android/gms/internal/zzczu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzczu;->zzbgl()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    array-length v1, p2

    if-le v1, p1, :cond_1

    aget-object v0, p2, p1

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzdke;->zzau(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzdjq;

    move-result-object p1

    return-object p1
.end method
