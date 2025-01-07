.class public final Lcom/google/android/gms/internal/zzeng;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/google/android/gms/internal/zzenm;",
        ">;"
    }
.end annotation


# static fields
.field private static final zznot:Lcom/google/android/gms/internal/zzedv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzedv<",
            "Lcom/google/android/gms/internal/zzenm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zznme:Lcom/google/android/gms/internal/zzenf;

.field private final zznou:Lcom/google/android/gms/internal/zzenn;

.field private zznov:Lcom/google/android/gms/internal/zzedv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzedv<",
            "Lcom/google/android/gms/internal/zzenm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzedv;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzedv;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/android/gms/internal/zzeng;->zznot:Lcom/google/android/gms/internal/zzedv;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeng;->zznme:Lcom/google/android/gms/internal/zzenf;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeng;->zznou:Lcom/google/android/gms/internal/zzenn;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeng;->zznov:Lcom/google/android/gms/internal/zzedv;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenf;Lcom/google/android/gms/internal/zzedv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzenn;",
            "Lcom/google/android/gms/internal/zzenf;",
            "Lcom/google/android/gms/internal/zzedv<",
            "Lcom/google/android/gms/internal/zzenm;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeng;->zznme:Lcom/google/android/gms/internal/zzenf;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeng;->zznou:Lcom/google/android/gms/internal/zzenn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeng;->zznov:Lcom/google/android/gms/internal/zzedv;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenf;)Lcom/google/android/gms/internal/zzeng;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzeng;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzeng;-><init>(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenf;)V

    return-object v0
.end method

.method private final zzccr()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeng;->zznov:Lcom/google/android/gms/internal/zzedv;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeng;->zznme:Lcom/google/android/gms/internal/zzenf;

    invoke-static {}, Lcom/google/android/gms/internal/zzenh;->zzccu()Lcom/google/android/gms/internal/zzenh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeng;->zznou:Lcom/google/android/gms/internal/zzenn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzenn;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzenm;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeng;->zznme:Lcom/google/android/gms/internal/zzenf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzenm;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zzenf;->zzi(Lcom/google/android/gms/internal/zzenn;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    new-instance v5, Lcom/google/android/gms/internal/zzenm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzenm;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/google/android/gms/internal/zzenm;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/zzedv;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeng;->zznme:Lcom/google/android/gms/internal/zzenf;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzedv;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeng;->zznov:Lcom/google/android/gms/internal/zzedv;

    return-void

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/zzeng;->zznot:Lcom/google/android/gms/internal/zzedv;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeng;->zznov:Lcom/google/android/gms/internal/zzedv;

    :cond_4
    return-void
.end method

.method public static zzj(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzeng;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzeng;

    invoke-static {}, Lcom/google/android/gms/internal/zzens;->zzccy()Lcom/google/android/gms/internal/zzens;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzeng;-><init>(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenf;)V

    return-object v0
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/zzenm;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeng;->zzccr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeng;->zznov:Lcom/google/android/gms/internal/zzedv;

    sget-object v1, Lcom/google/android/gms/internal/zzeng;->zznot:Lcom/google/android/gms/internal/zzedv;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeng;->zznou:Lcom/google/android/gms/internal/zzenn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedv;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenf;)Lcom/google/android/gms/internal/zzemq;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeng;->zznme:Lcom/google/android/gms/internal/zzenf;

    invoke-static {}, Lcom/google/android/gms/internal/zzenh;->zzccu()Lcom/google/android/gms/internal/zzenh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeng;->zznme:Lcom/google/android/gms/internal/zzenf;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Index not available in IndexedNode!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeng;->zzccr()V

    iget-object p3, p0, Lcom/google/android/gms/internal/zzeng;->zznov:Lcom/google/android/gms/internal/zzedv;

    sget-object v0, Lcom/google/android/gms/internal/zzeng;->zznot:Lcom/google/android/gms/internal/zzedv;

    if-ne p3, v0, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeng;->zznou:Lcom/google/android/gms/internal/zzenn;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzenn;->zzl(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzemq;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzenm;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzenm;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/zzedv;->zzbr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzenm;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzbve()Lcom/google/android/gms/internal/zzenn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeng;->zznou:Lcom/google/android/gms/internal/zzenn;

    return-object v0
.end method

.method public final zzbvr()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/zzenm;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeng;->zzccr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeng;->zznov:Lcom/google/android/gms/internal/zzedv;

    sget-object v1, Lcom/google/android/gms/internal/zzeng;->zznot:Lcom/google/android/gms/internal/zzedv;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeng;->zznou:Lcom/google/android/gms/internal/zzenn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzenn;->zzbvr()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedv;->zzbvr()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zzccs()Lcom/google/android/gms/internal/zzenm;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeng;->zznou:Lcom/google/android/gms/internal/zzenn;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzems;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeng;->zzccr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeng;->zznov:Lcom/google/android/gms/internal/zzedv;

    sget-object v1, Lcom/google/android/gms/internal/zzeng;->zznot:Lcom/google/android/gms/internal/zzedv;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeng;->zznou:Lcom/google/android/gms/internal/zzenn;

    check-cast v0, Lcom/google/android/gms/internal/zzems;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzems;->zzccf()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzenm;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeng;->zznou:Lcom/google/android/gms/internal/zzenn;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzenn;->zzm(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzenm;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedv;->zzbvt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzenm;

    return-object v0
.end method

.method public final zzcct()Lcom/google/android/gms/internal/zzenm;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeng;->zznou:Lcom/google/android/gms/internal/zzenn;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzems;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeng;->zzccr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeng;->zznov:Lcom/google/android/gms/internal/zzedv;

    sget-object v1, Lcom/google/android/gms/internal/zzeng;->zznot:Lcom/google/android/gms/internal/zzedv;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeng;->zznou:Lcom/google/android/gms/internal/zzenn;

    check-cast v0, Lcom/google/android/gms/internal/zzems;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzems;->zzccg()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzenm;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeng;->zznou:Lcom/google/android/gms/internal/zzenn;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzenn;->zzm(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzenm;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedv;->zzbvu()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzenm;

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzeng;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeng;->zznou:Lcom/google/android/gms/internal/zzenn;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzenn;->zze(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeng;->zznov:Lcom/google/android/gms/internal/zzedv;

    sget-object v2, Lcom/google/android/gms/internal/zzeng;->zznot:Lcom/google/android/gms/internal/zzedv;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeng;->zznme:Lcom/google/android/gms/internal/zzenf;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzenf;->zzi(Lcom/google/android/gms/internal/zzenn;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzeng;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeng;->zznme:Lcom/google/android/gms/internal/zzenf;

    invoke-direct {p1, v0, p2, v2}, Lcom/google/android/gms/internal/zzeng;-><init>(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenf;Lcom/google/android/gms/internal/zzedv;)V

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeng;->zznov:Lcom/google/android/gms/internal/zzedv;

    if-eqz v1, :cond_3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeng;->zznou:Lcom/google/android/gms/internal/zzenn;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzenn;->zzm(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeng;->zznov:Lcom/google/android/gms/internal/zzedv;

    new-instance v3, Lcom/google/android/gms/internal/zzenm;

    invoke-direct {v3, p1, v1}, Lcom/google/android/gms/internal/zzenm;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzedv;->zzbp(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzedv;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/zzenm;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/zzenm;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzedv;->zzbq(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzedv;

    move-result-object v1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/zzeng;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeng;->zznme:Lcom/google/android/gms/internal/zzenf;

    invoke-direct {p1, v0, p2, v1}, Lcom/google/android/gms/internal/zzeng;-><init>(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenf;Lcom/google/android/gms/internal/zzedv;)V

    return-object p1

    :cond_3
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/zzeng;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeng;->zznme:Lcom/google/android/gms/internal/zzenf;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lcom/google/android/gms/internal/zzeng;-><init>(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenf;Lcom/google/android/gms/internal/zzedv;)V

    return-object p1
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzeng;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzeng;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeng;->zznou:Lcom/google/android/gms/internal/zzenn;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzenn;->zzf(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeng;->zznme:Lcom/google/android/gms/internal/zzenf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeng;->zznov:Lcom/google/android/gms/internal/zzedv;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzeng;-><init>(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenf;Lcom/google/android/gms/internal/zzedv;)V

    return-object v0
.end method
