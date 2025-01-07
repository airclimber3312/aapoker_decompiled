.class public final Lcom/google/android/gms/internal/zzeir;
.super Ljava/lang/Object;


# instance fields
.field private final zzmxz:Lcom/google/android/gms/internal/zzemm;

.field private final zznhs:Lcom/google/android/gms/internal/zzeki;

.field private zznht:Lcom/google/android/gms/internal/zzekw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzekw<",
            "Lcom/google/android/gms/internal/zzeiq;",
            ">;"
        }
    .end annotation
.end field

.field private final zznhu:Lcom/google/android/gms/internal/zzejq;

.field private final zznhv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzejk;",
            "Lcom/google/android/gms/internal/zzelu;",
            ">;"
        }
    .end annotation
.end field

.field private final zznhw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzelu;",
            "Lcom/google/android/gms/internal/zzejk;",
            ">;"
        }
    .end annotation
.end field

.field private final zznhx:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzelu;",
            ">;"
        }
    .end annotation
.end field

.field private final zznhy:Lcom/google/android/gms/internal/zzejj;

.field private zznhz:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzegm;Lcom/google/android/gms/internal/zzeki;Lcom/google/android/gms/internal/zzejj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhz:J

    invoke-static {}, Lcom/google/android/gms/internal/zzekw;->zzcaf()Lcom/google/android/gms/internal/zzekw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznht:Lcom/google/android/gms/internal/zzekw;

    new-instance v0, Lcom/google/android/gms/internal/zzejq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzejq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhu:Lcom/google/android/gms/internal/zzejq;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhv:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhw:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhx:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeir;->zznhy:Lcom/google/android/gms/internal/zzejj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeir;->zznhs:Lcom/google/android/gms/internal/zzeki;

    const-string p2, "SyncTree"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzegm;->zzqb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzemm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeir;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzejk;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeir;->zze(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzejk;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzekw;)Lcom/google/android/gms/internal/zzekw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeir;->zznht:Lcom/google/android/gms/internal/zzekw;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzejk;)Lcom/google/android/gms/internal/zzelu;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzejk;)Lcom/google/android/gms/internal/zzelu;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzemm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeir;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzejy;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzejy;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzejy;Lcom/google/android/gms/internal/zzekw;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzejt;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzejy;Lcom/google/android/gms/internal/zzekw;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzejt;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzejy;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzejy;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzejy;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzejy;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznht:Lcom/google/android/gms/internal/zzekw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeir;->zznhu:Lcom/google/android/gms/internal/zzejq;

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzejq;->zzt(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzejt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzejy;Lcom/google/android/gms/internal/zzekw;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzejt;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/internal/zzejy;Lcom/google/android/gms/internal/zzekw;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzejt;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzejy;",
            "Lcom/google/android/gms/internal/zzekw<",
            "Lcom/google/android/gms/internal/zzeiq;",
            ">;",
            "Lcom/google/android/gms/internal/zzenn;",
            "Lcom/google/android/gms/internal/zzejt;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejy;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzejy;Lcom/google/android/gms/internal/zzekw;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzejt;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeiq;

    if-nez p3, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzeiq;->zzr(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p3

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejy;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzejy;->zzc(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzejy;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzekw;->zzcag()Lcom/google/android/gms/internal/zzedq;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzedq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzekw;

    if-eqz p2, :cond_3

    if-eqz v3, :cond_3

    if-eqz p3, :cond_2

    invoke-interface {p3, v2}, Lcom/google/android/gms/internal/zzenn;->zzm(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p4, v2}, Lcom/google/android/gms/internal/zzejt;->zzb(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzejt;

    move-result-object v2

    invoke-direct {p0, v3, p2, v4, v2}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzejy;Lcom/google/android/gms/internal/zzekw;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzejt;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p4, p3}, Lcom/google/android/gms/internal/zzeiq;->zza(Lcom/google/android/gms/internal/zzejy;Lcom/google/android/gms/internal/zzejt;Lcom/google/android/gms/internal/zzenn;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v1
.end method

.method private final zza(Lcom/google/android/gms/internal/zzekw;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzekw<",
            "Lcom/google/android/gms/internal/zzeiq;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzelv;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzekw;Ljava/util/List;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzejy;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzelu;",
            "Lcom/google/android/gms/internal/zzejy;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznht:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzekw;->zzaj(Lcom/google/android/gms/internal/zzegu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeiq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeir;->zznhu:Lcom/google/android/gms/internal/zzejq;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzejq;->zzt(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzejt;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/google/android/gms/internal/zzeiq;->zza(Lcom/google/android/gms/internal/zzejy;Lcom/google/android/gms/internal/zzejt;Lcom/google/android/gms/internal/zzenn;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzelv;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzelv;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeir;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeir;->zzax(Ljava/util/List;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzekw;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzekw<",
            "Lcom/google/android/gms/internal/zzeiq;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzelv;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeiq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeiq;->zzbzc()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeiq;->zzbzd()Lcom/google/android/gms/internal/zzelv;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeiq;->zzbzb()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzekw;->zzcag()Lcom/google/android/gms/internal/zzedq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedq;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekw;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzekw;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzelv;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeir;->zze(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzejk;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzeji;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/zzeji;-><init>(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzelv;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeir;->zznhy:Lcom/google/android/gms/internal/zzejj;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeir;->zzd(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzelu;

    move-result-object p1

    invoke-interface {p2, p1, v1, v2, v2}, Lcom/google/android/gms/internal/zzejj;->zza(Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzejk;Lcom/google/android/gms/internal/zzeev;Lcom/google/android/gms/internal/zzejg;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeir;->zznht:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzekw;->zzah(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzekw;

    move-result-object p1

    if-nez v1, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/zzeiw;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/zzeiw;-><init>(Lcom/google/android/gms/internal/zzeir;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzekw;->zza(Lcom/google/android/gms/internal/zzekz;)V

    :cond_0
    return-void
.end method

.method private final zzax(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzelu;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelu;->zzcbe()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzeir;->zze(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzejk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeir;->zznhw:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhv:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzeki;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeir;->zznhs:Lcom/google/android/gms/internal/zzeki;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzelu;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeir;->zzd(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzelu;

    move-result-object p0

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzejk;)Lcom/google/android/gms/internal/zzelu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhv:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzelu;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzekw;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzekw;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzejy;Lcom/google/android/gms/internal/zzekw;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzejt;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzejy;",
            "Lcom/google/android/gms/internal/zzekw<",
            "Lcom/google/android/gms/internal/zzeiq;",
            ">;",
            "Lcom/google/android/gms/internal/zzenn;",
            "Lcom/google/android/gms/internal/zzejt;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeiq;

    if-nez p3, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzeiq;->zzr(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p3

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzekw;->zzcag()Lcom/google/android/gms/internal/zzedq;

    move-result-object p2

    new-instance v8, Lcom/google/android/gms/internal/zzeix;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzeix;-><init>(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzejt;Lcom/google/android/gms/internal/zzejy;Ljava/util/List;)V

    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/zzedq;->zza(Lcom/google/android/gms/internal/zzeeb;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p4, p3}, Lcom/google/android/gms/internal/zzeiq;->zza(Lcom/google/android/gms/internal/zzejy;Lcom/google/android/gms/internal/zzejt;Lcom/google/android/gms/internal/zzenn;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v7, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v7
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzegr;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzelu;",
            "Lcom/google/android/gms/internal/zzegr;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhs:Lcom/google/android/gms/internal/zzeki;

    new-instance v1, Lcom/google/android/gms/internal/zzeiv;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzeiv;-><init>(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzegr;Lcom/google/firebase/database/DatabaseError;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeki;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private final zzbzf()Lcom/google/android/gms/internal/zzejk;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzejk;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzeir;->zznhz:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/android/gms/internal/zzeir;->zznhz:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzejk;-><init>(J)V

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzejq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeir;->zznhu:Lcom/google/android/gms/internal/zzejq;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzekw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeir;->zznht:Lcom/google/android/gms/internal/zzekw;

    return-object p0
.end method

.method private static zzd(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzelu;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelu;->zzcbe()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelu;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzelu;->zzam(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzelu;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private final zze(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzejk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzejk;

    return-object p1
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzeir;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeir;->zznhw:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzejk;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeir;->zzbzf()Lcom/google/android/gms/internal/zzejk;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzeir;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeir;->zznhv:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzejj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeir;->zznhy:Lcom/google/android/gms/internal/zzejj;

    return-object p0
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznht:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekw;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final zza(JZZLcom/google/android/gms/internal/zzeos;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ",
            "Lcom/google/android/gms/internal/zzeos;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhs:Lcom/google/android/gms/internal/zzeki;

    new-instance v8, Lcom/google/android/gms/internal/zzeiz;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move-wide v4, p1

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzeiz;-><init>(Lcom/google/android/gms/internal/zzeir;ZJZLcom/google/android/gms/internal/zzeos;)V

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/zzeki;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;Lcom/google/android/gms/internal/zzegi;JZ)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Lcom/google/android/gms/internal/zzegi;",
            "Lcom/google/android/gms/internal/zzegi;",
            "JZ)",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    move-object v8, p0

    iget-object v9, v8, Lcom/google/android/gms/internal/zzeir;->zznhs:Lcom/google/android/gms/internal/zzeki;

    new-instance v10, Lcom/google/android/gms/internal/zzeiy;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p6

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzeiy;-><init>(Lcom/google/android/gms/internal/zzeir;ZLcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;JLcom/google/android/gms/internal/zzegi;)V

    invoke-interface {v9, v10}, Lcom/google/android/gms/internal/zzeki;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzejk;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Lcom/google/android/gms/internal/zzenn;",
            "Lcom/google/android/gms/internal/zzejk;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhs:Lcom/google/android/gms/internal/zzeki;

    new-instance v1, Lcom/google/android/gms/internal/zzejf;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/internal/zzejf;-><init>(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzejk;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeki;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenn;JZZ)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Lcom/google/android/gms/internal/zzenn;",
            "Lcom/google/android/gms/internal/zzenn;",
            "JZZ)",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    if-nez p6, :cond_1

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "We shouldn\'t be persisting non-visible writes."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzepd;->zzb(ZLjava/lang/String;)V

    move-object v9, p0

    iget-object v10, v9, Lcom/google/android/gms/internal/zzeir;->zznhs:Lcom/google/android/gms/internal/zzeki;

    new-instance v11, Lcom/google/android/gms/internal/zzeis;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p7

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v5, p4

    move-object v7, p3

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzeis;-><init>(Lcom/google/android/gms/internal/zzeir;ZLcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;JLcom/google/android/gms/internal/zzenn;Z)V

    invoke-interface {v10, v11}, Lcom/google/android/gms/internal/zzeki;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Ljava/util/List;Lcom/google/android/gms/internal/zzejk;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzenu;",
            ">;",
            "Lcom/google/android/gms/internal/zzejk;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzejk;)Lcom/google/android/gms/internal/zzelu;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeir;->zznht:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzekw;->zzaj(Lcom/google/android/gms/internal/zzegu;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzeiq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzeiq;->zzb(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzelv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelv;->zzcbj()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzenu;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzenu;->zzm(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzejk;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzegu;",
            "Lcom/google/android/gms/internal/zzenn;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhs:Lcom/google/android/gms/internal/zzeki;

    new-instance v1, Lcom/google/android/gms/internal/zzejc;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/zzejc;-><init>(Lcom/google/android/gms/internal/zzeir;Ljava/util/Map;Lcom/google/android/gms/internal/zzegu;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeki;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Ljava/util/Map;Lcom/google/android/gms/internal/zzejk;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzegu;",
            "Lcom/google/android/gms/internal/zzenn;",
            ">;",
            "Lcom/google/android/gms/internal/zzejk;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhs:Lcom/google/android/gms/internal/zzeki;

    new-instance v1, Lcom/google/android/gms/internal/zzeit;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/internal/zzeit;-><init>(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzejk;Lcom/google/android/gms/internal/zzegu;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeki;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzejk;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzejk;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhs:Lcom/google/android/gms/internal/zzeki;

    new-instance v1, Lcom/google/android/gms/internal/zzeje;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzeje;-><init>(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzejk;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeki;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelu;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzelu;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzegr;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelu;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhx:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/zzejh;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzejh;-><init>(Lcom/google/android/gms/internal/zzelu;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzeir;->zzg(Lcom/google/android/gms/internal/zzegr;)Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeir;->zznhx:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeir;->zznhx:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/zzejh;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzejh;-><init>(Lcom/google/android/gms/internal/zzelu;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzeir;->zzh(Lcom/google/android/gms/internal/zzegr;)Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeir;->zznhx:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzegu;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzenu;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznht:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzekw;->zzaj(Lcom/google/android/gms/internal/zzegu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeiq;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeiq;->zzbzd()Lcom/google/android/gms/internal/zzelv;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelv;->zzcbj()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzenu;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzenu;->zzm(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzeir;->zzi(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzbze()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhs:Lcom/google/android/gms/internal/zzeki;

    new-instance v1, Lcom/google/android/gms/internal/zzeja;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzeja;-><init>(Lcom/google/android/gms/internal/zzeir;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeki;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzegu;Ljava/util/List;)Lcom/google/android/gms/internal/zzenn;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/zzenn;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznht:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, p1

    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzegu;->zzbyr()Lcom/google/android/gms/internal/zzegu;

    move-result-object v3

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v5

    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzekw;->zze(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzekw;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzekw;->zzcaf()Lcom/google/android/gms/internal/zzekw;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzeiq;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzeiq;->zzr(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v2, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhu:Lcom/google/android/gms/internal/zzejq;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v2, p2, v1}, Lcom/google/android/gms/internal/zzejq;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Ljava/util/List;Z)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzegr;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegr;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhs:Lcom/google/android/gms/internal/zzeki;

    new-instance v1, Lcom/google/android/gms/internal/zzeiu;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzeiu;-><init>(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzegr;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeki;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/zzegr;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegr;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegr;->zzbxy()Lcom/google/android/gms/internal/zzelu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzegr;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Lcom/google/android/gms/internal/zzenn;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhs:Lcom/google/android/gms/internal/zzeki;

    new-instance v1, Lcom/google/android/gms/internal/zzejb;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzejb;-><init>(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeki;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final zzs(Lcom/google/android/gms/internal/zzegu;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeir;->zznhs:Lcom/google/android/gms/internal/zzeki;

    new-instance v1, Lcom/google/android/gms/internal/zzejd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzejd;-><init>(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzegu;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeki;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
