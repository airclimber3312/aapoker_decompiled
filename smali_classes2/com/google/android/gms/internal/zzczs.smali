.class public final Lcom/google/android/gms/internal/zzczs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzczy;


# static fields
.field private static final zzkmq:Ljava/lang/Object;

.field private static zzkwe:Lcom/google/android/gms/internal/zzczs;

.field private static final zzkwh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzkwf:Lcom/google/android/gms/internal/zzdau;

.field private zzkwg:Lcom/google/android/gms/internal/zzczz;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzczs;->zzkmq:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "POST"

    const-string v2, "PUT"

    const-string v3, "GET"

    const-string v4, "HEAD"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/zzczs;->zzkwh:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdaa;->zzer(Landroid/content/Context;)Lcom/google/android/gms/internal/zzdaa;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzdbc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdbc;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzczs;-><init>(Lcom/google/android/gms/internal/zzczz;Lcom/google/android/gms/internal/zzdau;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzczz;Lcom/google/android/gms/internal/zzdau;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczs;->zzkwg:Lcom/google/android/gms/internal/zzczz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzczs;->zzkwf:Lcom/google/android/gms/internal/zzdau;

    return-void
.end method

.method public static zzeq(Landroid/content/Context;)Lcom/google/android/gms/internal/zzczy;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzczs;->zzkmq:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzczs;->zzkwe:Lcom/google/android/gms/internal/zzczs;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzczs;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzczs;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/zzczs;->zzkwe:Lcom/google/android/gms/internal/zzczs;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/zzczs;->zzkwe:Lcom/google/android/gms/internal/zzczs;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final dispatch()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzdbe;->zzbje()Lcom/google/android/gms/internal/zzdbe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdbe;->dispatch()V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/zzczs;->zzkwh:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    aput-object p2, p1, v1

    const-string p2, "Unsupport http method %s. Drop the hit."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzdat;->zzbja()Lcom/google/android/gms/internal/zzdat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdat;->isPreview()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzczs;->zzkwf:Lcom/google/android/gms/internal/zzdau;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzdau;->zzaas()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "Too many hits sent too quickly (rate throttled)."

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzczs;->zzkwg:Lcom/google/android/gms/internal/zzczz;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/zzczz;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return v0
.end method

.method public final zzax(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzczs;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzlr(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzczs;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
