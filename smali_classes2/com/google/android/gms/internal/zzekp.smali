.class public final Lcom/google/android/gms/internal/zzekp;
.super Ljava/lang/Object;


# static fields
.field private static final zznkt:Lcom/google/android/gms/internal/zzela;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzela<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzelr;",
            "Lcom/google/android/gms/internal/zzeko;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final zznku:Lcom/google/android/gms/internal/zzela;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzela<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzelr;",
            "Lcom/google/android/gms/internal/zzeko;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final zznkv:Lcom/google/android/gms/internal/zzela;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzela<",
            "Lcom/google/android/gms/internal/zzeko;",
            ">;"
        }
    .end annotation
.end field

.field private static final zznkw:Lcom/google/android/gms/internal/zzela;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzela<",
            "Lcom/google/android/gms/internal/zzeko;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzmxz:Lcom/google/android/gms/internal/zzemm;

.field private final zznkg:Lcom/google/android/gms/internal/zzekj;

.field private zznkx:Lcom/google/android/gms/internal/zzekw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzekw<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzelr;",
            "Lcom/google/android/gms/internal/zzeko;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zznky:Lcom/google/android/gms/internal/zzeos;

.field private zznkz:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzekq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzekq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzekp;->zznkt:Lcom/google/android/gms/internal/zzela;

    new-instance v0, Lcom/google/android/gms/internal/zzekr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzekr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzekp;->zznku:Lcom/google/android/gms/internal/zzela;

    new-instance v0, Lcom/google/android/gms/internal/zzeks;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeks;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzekp;->zznkv:Lcom/google/android/gms/internal/zzela;

    new-instance v0, Lcom/google/android/gms/internal/zzekt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzekt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzekp;->zznkw:Lcom/google/android/gms/internal/zzela;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzekj;Lcom/google/android/gms/internal/zzemm;Lcom/google/android/gms/internal/zzeos;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzekp;->zznkz:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzekp;->zznkg:Lcom/google/android/gms/internal/zzekj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzekp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzekp;->zznky:Lcom/google/android/gms/internal/zzeos;

    new-instance p2, Lcom/google/android/gms/internal/zzekw;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/zzekw;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzekp;->zznkx:Lcom/google/android/gms/internal/zzekw;

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekj;->beginTransaction()V

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzeos;->millis()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/zzekj;->zzbo(J)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekj;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekj;->endTransaction()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekj;->zzbvm()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzeko;

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzeko;->id:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzekp;->zznkz:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzekp;->zznkz:J

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzekp;->zzb(Lcom/google/android/gms/internal/zzeko;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzekp;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekj;->endTransaction()V

    throw p1
.end method

.method private final zza(Lcom/google/android/gms/internal/zzela;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzela<",
            "Lcom/google/android/gms/internal/zzeko;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeko;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekp;->zznkx:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekw;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzeko;

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/zzela;->zzbw(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzeko;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzekp;->zzb(Lcom/google/android/gms/internal/zzeko;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekp;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzekj;->zza(Lcom/google/android/gms/internal/zzeko;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzekp;Lcom/google/android/gms/internal/zzeko;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzekp;->zza(Lcom/google/android/gms/internal/zzeko;)V

    return-void
.end method

.method private final zzad(Lcom/google/android/gms/internal/zzegu;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekp;->zznkx:Lcom/google/android/gms/internal/zzekw;

    sget-object v1, Lcom/google/android/gms/internal/zzekp;->zznkt:Lcom/google/android/gms/internal/zzela;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzekw;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzela;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzae(Lcom/google/android/gms/internal/zzegu;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekp;->zznkx:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzekw;->zzaj(Lcom/google/android/gms/internal/zzegu;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzeko;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzeko;->zznkr:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzelu;->zzcbe()Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v1, v1, Lcom/google/android/gms/internal/zzeko;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzeko;)V
    .locals 8

    iget-object v0, p1, Lcom/google/android/gms/internal/zzeko;->zznkr:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelu;->zzcbe()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelu;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Can\'t have tracked non-default query that loads all data"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzepd;->zzb(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekp;->zznkx:Lcom/google/android/gms/internal/zzekw;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzeko;->zznkr:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzekw;->zzaj(Lcom/google/android/gms/internal/zzegu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekp;->zznkx:Lcom/google/android/gms/internal/zzekw;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzeko;->zznkr:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/internal/zzekw;->zzb(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzekw;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzekp;->zznkx:Lcom/google/android/gms/internal/zzekw;

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/zzeko;->zznkr:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzelu;->zzcbh()Lcom/google/android/gms/internal/zzelr;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzeko;

    if-eqz v1, :cond_3

    iget-wide v4, v1, Lcom/google/android/gms/internal/zzeko;->id:J

    iget-wide v6, p1, Lcom/google/android/gms/internal/zzeko;->id:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    invoke-static {v2}, Lcom/google/android/gms/internal/zzepd;->zzcw(Z)V

    iget-object v1, p1, Lcom/google/android/gms/internal/zzeko;->zznkr:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzelu;->zzcbh()Lcom/google/android/gms/internal/zzelr;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzelu;Z)V
    .locals 21

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzekp;->zzj(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzelu;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzekp;->zzk(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzeko;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzekp;->zznky:Lcom/google/android/gms/internal/zzeos;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzeos;->millis()J

    move-result-wide v9

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/zzeko;

    iget-wide v6, v1, Lcom/google/android/gms/internal/zzeko;->id:J

    iget-object v8, v1, Lcom/google/android/gms/internal/zzeko;->zznkr:Lcom/google/android/gms/internal/zzelu;

    iget-boolean v11, v1, Lcom/google/android/gms/internal/zzeko;->complete:Z

    iget-boolean v12, v1, Lcom/google/android/gms/internal/zzeko;->zzjgp:Z

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/internal/zzeko;-><init>(JLcom/google/android/gms/internal/zzelu;JZZ)V

    new-instance v1, Lcom/google/android/gms/internal/zzeko;

    iget-wide v14, v2, Lcom/google/android/gms/internal/zzeko;->id:J

    iget-object v3, v2, Lcom/google/android/gms/internal/zzeko;->zznkr:Lcom/google/android/gms/internal/zzelu;

    iget-wide v4, v2, Lcom/google/android/gms/internal/zzeko;->zznks:J

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzeko;->complete:Z

    move-object v13, v1

    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    move/from16 v19, v2

    move/from16 v20, p2

    invoke-direct/range {v13 .. v20}, Lcom/google/android/gms/internal/zzeko;-><init>(JLcom/google/android/gms/internal/zzelu;JZZ)V

    goto :goto_0

    :cond_0
    new-instance v11, Lcom/google/android/gms/internal/zzeko;

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzekp;->zznkz:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v2

    iput-wide v5, v0, Lcom/google/android/gms/internal/zzekp;->zznkz:J

    const/4 v7, 0x0

    move-object v1, v11

    move-wide v5, v9

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzeko;-><init>(JLcom/google/android/gms/internal/zzelu;JZZ)V

    :goto_0
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzekp;->zza(Lcom/google/android/gms/internal/zzeko;)V

    return-void
.end method

.method static synthetic zzcae()Lcom/google/android/gms/internal/zzela;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzekp;->zznkv:Lcom/google/android/gms/internal/zzela;

    return-object v0
.end method

.method private static zzj(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzelu;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelu;->zzcbe()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzelu;->zzam(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzelu;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekk;
    .locals 11

    sget-object v0, Lcom/google/android/gms/internal/zzekp;->zznkv:Lcom/google/android/gms/internal/zzela;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzekp;->zza(Lcom/google/android/gms/internal/zzela;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->zzbzy()F

    move-result v4

    sub-float/2addr v3, v4

    long-to-float v4, v1

    mul-float v4, v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->zzbzz()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    sub-long/2addr v1, v3

    new-instance p1, Lcom/google/android/gms/internal/zzekk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzekk;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzekp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzekp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x50

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Pruning old queries.  Prunable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Count to prune: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v4, v7}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/zzekv;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzekv;-><init>(Lcom/google/android/gms/internal/zzekp;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    :goto_0
    int-to-long v6, v3

    cmp-long v8, v6, v1

    if-gez v8, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzeko;

    iget-object v7, v6, Lcom/google/android/gms/internal/zzeko;->zznkr:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/zzekk;->zzx(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzekk;

    move-result-object p1

    iget-object v6, v6, Lcom/google/android/gms/internal/zzeko;->zznkr:Lcom/google/android/gms/internal/zzelu;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzekp;->zzj(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzelu;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/zzekp;->zzk(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzeko;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/internal/zzekp;->zznkg:Lcom/google/android/gms/internal/zzekj;

    iget-wide v9, v7, Lcom/google/android/gms/internal/zzeko;->id:J

    invoke-interface {v8, v9, v10}, Lcom/google/android/gms/internal/zzekj;->zzbn(J)V

    iget-object v7, p0, Lcom/google/android/gms/internal/zzekp;->zznkx:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzekw;->zzaj(Lcom/google/android/gms/internal/zzegu;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzelu;->zzcbh()Lcom/google/android/gms/internal/zzelr;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/google/android/gms/internal/zzekp;->zznkx:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/zzekw;->zzai(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzekw;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/zzekp;->zznkx:Lcom/google/android/gms/internal/zzekw;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    long-to-int v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzeko;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzeko;->zznkr:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzekk;->zzy(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzekk;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/zzekp;->zznkw:Lcom/google/android/gms/internal/zzela;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzekp;->zza(Lcom/google/android/gms/internal/zzela;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x1f

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unprunable queries: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzeko;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzeko;->zznkr:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzekk;->zzy(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzekk;

    move-result-object p1

    goto :goto_2

    :cond_5
    return-object p1
.end method

.method public final zzaa(Lcom/google/android/gms/internal/zzegu;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzemq;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzekp;->zzae(Lcom/google/android/gms/internal/zzegu;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzekp;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/zzekj;->zzg(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzekp;->zznkx:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzekw;->zzah(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzekw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzekw;->zzcag()Lcom/google/android/gms/internal/zzedq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedq;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzemq;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/android/gms/internal/zzekp;->zznkt:Lcom/google/android/gms/internal/zzela;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/zzela;->zzbw(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final zzab(Lcom/google/android/gms/internal/zzegu;)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzekp;->zzad(Lcom/google/android/gms/internal/zzegu;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzelu;->zzam(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzelu;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzekp;->zzk(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzeko;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzeko;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzekp;->zznkz:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzekp;->zznkz:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekp;->zznky:Lcom/google/android/gms/internal/zzeos;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeos;->millis()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzeko;-><init>(JLcom/google/android/gms/internal/zzelu;JZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeko;->zzcac()Lcom/google/android/gms/internal/zzeko;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzekp;->zza(Lcom/google/android/gms/internal/zzeko;)V

    :cond_1
    return-void
.end method

.method public final zzac(Lcom/google/android/gms/internal/zzegu;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekp;->zznkx:Lcom/google/android/gms/internal/zzekw;

    sget-object v1, Lcom/google/android/gms/internal/zzekp;->zznku:Lcom/google/android/gms/internal/zzela;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzekw;->zzb(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzela;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzcad()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzekp;->zznkv:Lcom/google/android/gms/internal/zzela;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzekp;->zza(Lcom/google/android/gms/internal/zzela;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzelu;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzekp;->zzb(Lcom/google/android/gms/internal/zzelu;Z)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/zzelu;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzekp;->zzb(Lcom/google/android/gms/internal/zzelu;Z)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzeko;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzekp;->zzj(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzelu;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekp;->zznkx:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzekw;->zzaj(Lcom/google/android/gms/internal/zzegu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzcbh()Lcom/google/android/gms/internal/zzelr;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzeko;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzl(Lcom/google/android/gms/internal/zzelu;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzekp;->zzj(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzelu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzekp;->zzk(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzeko;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzeko;->complete:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeko;->zzcac()Lcom/google/android/gms/internal/zzeko;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzekp;->zza(Lcom/google/android/gms/internal/zzeko;)V

    :cond_0
    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/zzelu;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzekp;->zzad(Lcom/google/android/gms/internal/zzegu;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzcbe()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzekp;->zznkx:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzekw;->zzaj(Lcom/google/android/gms/internal/zzegu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzcbh()Lcom/google/android/gms/internal/zzelr;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzcbh()Lcom/google/android/gms/internal/zzelr;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzeko;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzeko;->complete:Z

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final zzz(Lcom/google/android/gms/internal/zzegu;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekp;->zznkx:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzekw;->zzah(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzekw;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzeku;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzeku;-><init>(Lcom/google/android/gms/internal/zzekp;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzekw;->zza(Lcom/google/android/gms/internal/zzekz;)V

    return-void
.end method
