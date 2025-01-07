.class public final Lcom/google/android/gms/internal/zzeey;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeen;
.implements Lcom/google/android/gms/internal/zzeew;


# static fields
.field private static zzmzj:J


# instance fields
.field private final zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzmxz:Lcom/google/android/gms/internal/zzemm;

.field private final zzmzk:Lcom/google/android/gms/internal/zzeeu;

.field private final zzmzv:Lcom/google/android/gms/internal/zzeeq;

.field private final zznab:Lcom/google/android/gms/internal/zzeex;

.field private zznac:Ljava/lang/String;

.field private zznad:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zznae:Z

.field private zznaf:J

.field private zznag:Lcom/google/android/gms/internal/zzeem;

.field private zznah:Lcom/google/android/gms/internal/zzefi;

.field private zznai:J

.field private zznaj:J

.field private zznak:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/zzefh;",
            ">;"
        }
    .end annotation
.end field

.field private zznal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzefk;",
            ">;"
        }
    .end annotation
.end field

.field private zznam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/zzefm;",
            ">;"
        }
    .end annotation
.end field

.field private zznan:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzefj;",
            "Lcom/google/android/gms/internal/zzefl;",
            ">;"
        }
    .end annotation
.end field

.field private zznao:Ljava/lang/String;

.field private zznap:Z

.field private final zznaq:Lcom/google/android/gms/internal/zzees;

.field private final zznar:Lcom/google/android/gms/internal/zzefz;

.field private zznas:Ljava/lang/String;

.field private zznat:J

.field private zznau:I

.field private zznav:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private zznaw:J

.field private zznax:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzees;Lcom/google/android/gms/internal/zzeeu;Lcom/google/android/gms/internal/zzeex;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznad:Ljava/util/HashSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeey;->zznae:Z

    sget-object v0, Lcom/google/android/gms/internal/zzefi;->zznbh:Lcom/google/android/gms/internal/zzefi;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzeey;->zznai:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzeey;->zznaj:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzeey;->zznat:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzeey;->zznau:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznav:Ljava/util/concurrent/ScheduledFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeey;->zznab:Lcom/google/android/gms/internal/zzeex;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznaq:Lcom/google/android/gms/internal/zzees;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzees;->zzbwm()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeey;->zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzees;->zzbwl()Lcom/google/android/gms/internal/zzeeq;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeey;->zzmzv:Lcom/google/android/gms/internal/zzeeq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeey;->zzmzk:Lcom/google/android/gms/internal/zzeeu;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeey;->zznan:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeey;->zznak:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeey;->zznam:Ljava/util/Map;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeey;->zznal:Ljava/util/List;

    new-instance p2, Lcom/google/android/gms/internal/zzegb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzees;->zzbwk()Lcom/google/android/gms/internal/zzemn;

    move-result-object v1

    const-string v2, "ConnectionRetryHelper"

    invoke-direct {p2, p3, v1, v2}, Lcom/google/android/gms/internal/zzegb;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzemn;Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/zzegb;->zzbt(J)Lcom/google/android/gms/internal/zzegb;

    move-result-object p2

    const-wide v1, 0x3ff4cccccccccccdL    # 1.3

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/zzegb;->zzi(D)Lcom/google/android/gms/internal/zzegb;

    move-result-object p2

    const-wide/16 v1, 0x7530

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/zzegb;->zzbu(J)Lcom/google/android/gms/internal/zzegb;

    move-result-object p2

    const-wide v1, 0x3fe6666666666666L    # 0.7

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/zzegb;->zzj(D)Lcom/google/android/gms/internal/zzegb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzegb;->zzbxt()Lcom/google/android/gms/internal/zzefz;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeey;->zznar:Lcom/google/android/gms/internal/zzefz;

    sget-wide p2, Lcom/google/android/gms/internal/zzeey;->zzmzj:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p2

    sput-wide v1, Lcom/google/android/gms/internal/zzeey;->zzmzj:J

    new-instance v1, Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzees;->zzbwk()Lcom/google/android/gms/internal/zzemn;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "pc_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PersistentConnection"

    invoke-direct {v1, p1, p3, p2}, Lcom/google/android/gms/internal/zzemm;-><init>(Lcom/google/android/gms/internal/zzemn;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznas:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbxa()V

    return-void
.end method

.method private final isIdle()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznan:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznak:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeey;->zznax:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznam:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeey;I)I
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/zzeey;->zznau:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeey;Lcom/google/android/gms/internal/zzefi;)Lcom/google/android/gms/internal/zzefi;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeey;Lcom/google/android/gms/internal/zzefj;)Lcom/google/android/gms/internal/zzefl;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzefj;)Lcom/google/android/gms/internal/zzefl;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzefj;)Lcom/google/android/gms/internal/zzefl;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "removing query "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznan:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x40

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Trying to remove listener for QuerySpec "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but no listener exists."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    return-object v2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznan:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzefl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeey;->zznan:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbxa()V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzemm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeey;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznao:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeey;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznav:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeey;Ljava/util/List;Lcom/google/android/gms/internal/zzefj;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzeey;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzefj;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzefl;)V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzefl;->zzbxd()Lcom/google/android/gms/internal/zzefj;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzefj;->zzb(Lcom/google/android/gms/internal/zzefj;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeet;->zzau(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "p"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzefl;->zzbxe()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "q"

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzefl;->zzb(Lcom/google/android/gms/internal/zzefl;)Lcom/google/android/gms/internal/zzefj;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzefj;->zzc(Lcom/google/android/gms/internal/zzefj;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "t"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzefl;->zzbxf()Lcom/google/android/gms/internal/zzeev;

    move-result-object v1

    const-string v3, "h"

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzeev;->zzbwq()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzeev;->zzbwr()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzeev;->zzbws()Lcom/google/android/gms/internal/zzeel;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeel;->zzbwi()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzeet;->zzau(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "hs"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeel;->zzbwj()Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ps"

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ch"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/zzefe;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzefe;-><init>(Lcom/google/android/gms/internal/zzeey;Lcom/google/android/gms/internal/zzefl;)V

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/zzeey;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzefh;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzefo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzefo;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "p"

    invoke-static {p2}, Lcom/google/android/gms/internal/zzeet;->zzau(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "d"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/zzefb;

    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/internal/zzefb;-><init>(Lcom/google/android/gms/internal/zzeey;Lcom/google/android/gms/internal/zzefo;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/zzeey;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzefh;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzefo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzefo;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "p"

    invoke-static {p2}, Lcom/google/android/gms/internal/zzeet;->zzau(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "d"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    const-string p2, "h"

    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide p2, p0, Lcom/google/android/gms/internal/zzeey;->zznai:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p2

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzeey;->zznai:J

    iget-object p4, p0, Lcom/google/android/gms/internal/zzeey;->zznam:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzefm;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, p5, v3}, Lcom/google/android/gms/internal/zzefm;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzefo;Lcom/google/android/gms/internal/zzeez;)V

    invoke-interface {p4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbwv()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzeey;->zzbq(J)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzeey;->zznaw:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbxa()V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzefh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzefh;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/zzeey;->zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/zzefh;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/zzefh;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzefh;",
            ")V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzeey;->zznaj:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzeey;->zznaj:J

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "r"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "a"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "b"

    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznag:Lcom/google/android/gms/internal/zzeem;

    invoke-virtual {p1, v2, p2}, Lcom/google/android/gms/internal/zzeem;->zza(Ljava/util/Map;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznak:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zza(Ljava/util/List;Lcom/google/android/gms/internal/zzefj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzefj;",
            ")V"
        }
    .end annotation

    const-string v0, "no_index"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzefj;->zzc(Lcom/google/android/gms/internal/zzefj;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "i"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "\".indexOn\": \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzefj;->zzb(Lcom/google/android/gms/internal/zzefj;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzeet;->zzau(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, 0xaf

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Using an unspecified index. Your data will be downloaded and filtered on the client. Consider adding \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' at "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to your security and Firebase Database rules for better performance"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzemm;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeey;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzeey;->zznap:Z

    return p1
.end method

.method private final zzav(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "removing all listens at path "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v4}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeey;->zznan:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzefj;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzefl;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzefj;->zzb(Lcom/google/android/gms/internal/zzefj;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p1, v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/internal/zzefl;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzeey;->zznan:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzefl;->zzbxd()Lcom/google/android/gms/internal/zzefj;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbxa()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/internal/zzefl;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzefl;->zzc(Lcom/google/android/gms/internal/zzefl;)Lcom/google/android/gms/internal/zzefo;

    move-result-object v3

    const-string v4, "permission_denied"

    invoke-interface {v3, v4, v1}, Lcom/google/android/gms/internal/zzefo;->zzbc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzefi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    return-object p0
.end method

.method private final zzbq(J)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznam:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/zzefm;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzefm;->zzbxc()Lcom/google/android/gms/internal/zzefo;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzefm;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzefm;->zzbxh()V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzefm;->zzbxg()Ljava/util/Map;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/zzefd;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzefd;-><init>(Lcom/google/android/gms/internal/zzeey;Ljava/lang/String;JLcom/google/android/gms/internal/zzefm;Lcom/google/android/gms/internal/zzefo;)V

    invoke-direct {p0, v0, v8, v9}, Lcom/google/android/gms/internal/zzeey;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzefh;)V

    return-void
.end method

.method private final zzbwu()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    sget-object v1, Lcom/google/android/gms/internal/zzefi;->zznbk:Lcom/google/android/gms/internal/zzefi;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    sget-object v1, Lcom/google/android/gms/internal/zzefi;->zznbl:Lcom/google/android/gms/internal/zzefi;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzbwv()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    sget-object v1, Lcom/google/android/gms/internal/zzefi;->zznbl:Lcom/google/android/gms/internal/zzefi;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzbww()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznad:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzbwx()V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbww()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    sget-object v1, Lcom/google/android/gms/internal/zzefi;->zznbh:Lcom/google/android/gms/internal/zzefi;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    aput-object v2, v1, v3

    const-string v2, "Not in disconnected state: %s"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/zzeet;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeey;->zznap:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Scheduling connection attempt"

    invoke-virtual {v1, v5, v4, v2}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzeey;->zznap:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeey;->zznar:Lcom/google/android/gms/internal/zzefz;

    new-instance v2, Lcom/google/android/gms/internal/zzeez;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzeez;-><init>(Lcom/google/android/gms/internal/zzeey;Z)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzefz;->zzo(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private final zzbwy()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeey;->zznam:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzefm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzefm;->zzbxg()Ljava/util/Map;

    move-result-object v3

    const-string v4, "h"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzefm;->zzbxi()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/internal/zzefm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzefm;->zzbxc()Lcom/google/android/gms/internal/zzefo;

    move-result-object v3

    const-string v4, "disconnected"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/internal/zzefo;->zzbc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final zzbwz()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    sget-object v1, Lcom/google/android/gms/internal/zzefi;->zznbl:Lcom/google/android/gms/internal/zzefi;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    aput-object v2, v1, v3

    const-string v2, "Should be connected if we\'re restoring state, but we are: %s"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/zzeet;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const-string v2, "Restoring outstanding listens"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1, v4}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznan:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzefl;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzefl;->zzbxd()Lcom/google/android/gms/internal/zzefj;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Restoring listen "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v1, v6}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzefl;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const-string v2, "Restoring writes."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1, v4}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeey;->zznam:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/internal/zzeey;->zzbq(J)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzefk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzefk;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzefk;->getPath()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzefk;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzefk;->zzbxc()Lcom/google/android/gms/internal/zzefo;

    move-result-object v1

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/zzeey;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzefo;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private final zzbxa()V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->isIdle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznav:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzefg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzefg;-><init>(Lcom/google/android/gms/internal/zzeey;)V

    const-wide/32 v2, 0xea60

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznav:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_1
    const-string v0, "connection_idle"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzeey;->isInterrupted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->isIdle()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, ""

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/zzeet;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzeey;->resume(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final zzbxb()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzeey;->zznaw:J

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzeey;)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzeey;->zznat:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzeey;->zznat:J

    return-wide v0
.end method

.method private final zzct(Z)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbwu()Z

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Must be connected to send auth, but was: %s"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/zzeet;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznao:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Auth token must be set to authenticate!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzeet;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzefc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzefc;-><init>(Lcom/google/android/gms/internal/zzeey;Z)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeey;->zznao:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeoq;->zzqg(Ljava/lang/String;)Lcom/google/android/gms/internal/zzeoq;

    move-result-object v2

    const-string v3, "cred"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeoq;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeoq;->zzcdo()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "authvar"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeoq;->zzcdo()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "gauth"

    :goto_1
    invoke-direct {p0, v2, v1, p1, v0}, Lcom/google/android/gms/internal/zzeey;->zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/zzefh;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeey;->zznao:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "auth"

    goto :goto_1
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzeey;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzeey;->zznat:J

    return-wide v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzeey;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbwx()V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzeeq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeey;->zzmzv:Lcom/google/android/gms/internal/zzeeq;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzeex;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeey;->zznab:Lcom/google/android/gms/internal/zzeex;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzeey;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbwz()V

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzeem;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeey;->zznag:Lcom/google/android/gms/internal/zzeem;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzeey;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzeey;->zznau:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzeey;->zznau:I

    return v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzeey;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzeey;->zznau:I

    return p0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzeey;)Lcom/google/android/gms/internal/zzefz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeey;->zznar:Lcom/google/android/gms/internal/zzefz;

    return-object p0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/zzeey;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeey;->zznam:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/zzeey;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbxa()V

    return-void
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/zzeey;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeey;->zznan:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/zzeey;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbxb()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final initialize()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbwx()V

    return-void
.end method

.method public final interrupt(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Connection interrupted for: "

    if-eqz v3, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznad:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznag:Lcom/google/android/gms/internal/zzeem;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeem;->close()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeey;->zznag:Lcom/google/android/gms/internal/zzeem;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznar:Lcom/google/android/gms/internal/zzefz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzefz;->cancel()V

    sget-object p1, Lcom/google/android/gms/internal/zzefi;->zznbh:Lcom/google/android/gms/internal/zzefi;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznar:Lcom/google/android/gms/internal/zzefz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzefz;->zzbxr()V

    return-void
.end method

.method public final isInterrupted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznad:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final purgeOutstandingWrites()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznam:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "write_canceled"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzefm;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzefm;->zza(Lcom/google/android/gms/internal/zzefm;)Lcom/google/android/gms/internal/zzefo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/internal/zzefm;->zza(Lcom/google/android/gms/internal/zzefm;)Lcom/google/android/gms/internal/zzefo;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Lcom/google/android/gms/internal/zzefo;->zzbc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzefk;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzefk;->zza(Lcom/google/android/gms/internal/zzefk;)Lcom/google/android/gms/internal/zzefo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/zzefk;->zza(Lcom/google/android/gms/internal/zzefk;)Lcom/google/android/gms/internal/zzefo;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Lcom/google/android/gms/internal/zzefo;->zzbc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznam:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbwu()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeey;->zznax:Z

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbxa()V

    return-void
.end method

.method public final refreshAuthToken()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Auth token refresh requested"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const-string v0, "token_refresh"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzeey;->interrupt(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzeey;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public final resume(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Connection no longer interrupted for: "

    if-eqz v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznad:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbww()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    sget-object v0, Lcom/google/android/gms/internal/zzefi;->zznbh:Lcom/google/android/gms/internal/zzefi;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbwx()V

    :cond_2
    return-void
.end method

.method public final shutdown()V
    .locals 1

    const-string v0, "shutdown"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzeey;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/zzefo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzefo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbwv()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "oc"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/google/android/gms/internal/zzeey;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzefo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznal:Ljava/util/List;

    new-instance v7, Lcom/google/android/gms/internal/zzefk;

    const-string v2, "oc"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzefk;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzefo;Lcom/google/android/gms/internal/zzeez;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbxa()V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzefo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzefo;",
            ")V"
        }
    .end annotation

    const-string v1, "p"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzeey;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzefo;)V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzefo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzefo;",
            ")V"
        }
    .end annotation

    const-string v1, "p"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzeey;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzefo;)V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzefj;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzefj;-><init>(Ljava/util/List;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "unlistening on "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p2, v2}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzefj;)Lcom/google/android/gms/internal/zzefl;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbwu()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzefl;->zzb(Lcom/google/android/gms/internal/zzefl;)Lcom/google/android/gms/internal/zzefj;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzefj;->zzb(Lcom/google/android/gms/internal/zzefj;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeet;->zzau(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "p"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzefl;->zzbxe()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzefl;->zzbxd()Lcom/google/android/gms/internal/zzefj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzefj;->zzc(Lcom/google/android/gms/internal/zzefj;)Ljava/util/Map;

    move-result-object p1

    const-string v2, "q"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "t"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p1, "n"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/zzeey;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzefh;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbxa()V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzeev;Ljava/lang/Long;Lcom/google/android/gms/internal/zzefo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzeev;",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/zzefo;",
            ")V"
        }
    .end annotation

    new-instance v6, Lcom/google/android/gms/internal/zzefj;

    invoke-direct {v6, p1, p2}, Lcom/google/android/gms/internal/zzefj;-><init>(Ljava/util/List;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Listening on "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p2, v2}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznan:Ljava/util/Map;

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string v1, "listen() called twice for same QuerySpec."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzeet;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Adding listen query: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p2, v0}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/zzefl;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p5

    move-object v2, v6

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzefl;-><init>(Lcom/google/android/gms/internal/zzefo;Lcom/google/android/gms/internal/zzefj;Ljava/lang/Long;Lcom/google/android/gms/internal/zzeev;Lcom/google/android/gms/internal/zzeez;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeey;->zznan:Ljava/util/Map;

    invoke-interface {p2, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbwu()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzefl;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbxa()V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzefo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzefo;",
            ")V"
        }
    .end annotation

    const-string v1, "m"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzeey;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzefo;)V

    return-void
.end method

.method public final zzaj(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "r"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "b"

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeey;->zznak:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzefh;

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzefh;->zzal(Ljava/util/Map;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "error"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "a"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_14

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "handleServerMessage: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "t"

    const-string v6, "p"

    const-string v7, "m"

    if-nez v2, :cond_10

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_5

    :cond_3
    const-string v2, "rm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v8, "s"

    if-eqz v2, :cond_a

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeet;->zzps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeet;->zzbu(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    check-cast v1, Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "e"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v9, :cond_4

    invoke-static {v9}, Lcom/google/android/gms/internal/zzeet;->zzps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    goto :goto_1

    :cond_4
    move-object v9, v4

    :goto_1
    if-eqz v10, :cond_5

    invoke-static {v10}, Lcom/google/android/gms/internal/zzeet;->zzps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    goto :goto_2

    :cond_5
    move-object v10, v4

    :goto_2
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-instance v11, Lcom/google/android/gms/internal/zzefn;

    invoke-direct {v11, v9, v10, v6}, Lcom/google/android/gms/internal/zzefn;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Ignoring empty range merge for path "

    if-eqz v1, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznab:Lcom/google/android/gms/internal/zzeex;

    invoke-interface {v0, v2, v5, p1}, Lcom/google/android/gms/internal/zzeex;->zza(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V

    :cond_9
    return-void

    :cond_a
    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeet;->zzps(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeey;->zzav(Ljava/util/List;)V

    return-void

    :cond_b
    const-string v2, "ac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Auth token revoked: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v4, v0}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/zzeey;->zznao:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzeey;->zznap:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznab:Lcom/google/android/gms/internal/zzeex;

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/zzeex;->zzcs(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznag:Lcom/google/android/gms/internal/zzeem;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeem;->close()V

    return-void

    :cond_c
    const-string v1, "sd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const-string v1, "msg"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzemm;->info(Ljava/lang/String;)V

    return-void

    :cond_d
    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Unrecognized action from server: "

    if-eqz v1, :cond_e

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_f
    return-void

    :cond_10
    :goto_5
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeet;->zzbu(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    if-eqz v0, :cond_12

    instance-of v5, v1, Ljava/util/Map;

    if-eqz v5, :cond_12

    move-object v5, v1

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_12

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "ignoring empty merge for path "

    if-eqz v1, :cond_11

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void

    :cond_12
    invoke-static {v2}, Lcom/google/android/gms/internal/zzeet;->zzps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeey;->zznab:Lcom/google/android/gms/internal/zzeex;

    invoke-interface {v3, v2, v1, v0, p1}, Lcom/google/android/gms/internal/zzeex;->zza(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V

    :cond_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ignoring unknown message: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v4, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzeeo;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeeo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "Got on disconnect due to "

    if-eqz v4, :cond_0

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v4}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzefi;->zznbh:Lcom/google/android/gms/internal/zzefi;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeey;->zznag:Lcom/google/android/gms/internal/zzeem;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzeey;->zznax:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznak:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbwy()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbww()Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzeey;->zznaf:J

    sub-long/2addr v0, v5

    cmp-long v7, v5, v3

    if-lez v7, :cond_2

    const-wide/16 v5, 0x7530

    cmp-long v7, v0, v5

    if-lez v7, :cond_2

    const/4 v0, 0x1

    const/4 v2, 0x1

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/zzeeo;->zzmzo:Lcom/google/android/gms/internal/zzeeo;

    if-eq p1, v0, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznar:Lcom/google/android/gms/internal/zzefz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzefz;->zzbxr()V

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbwx()V

    :cond_5
    iput-wide v3, p0, Lcom/google/android/gms/internal/zzeey;->zznaf:J

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznab:Lcom/google/android/gms/internal/zzeex;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzeex;->onDisconnect()V

    return-void
.end method

.method public final zzb(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzefo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzefo;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeey;->zznax:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbwv()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "o"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzeey;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzefo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznal:Ljava/util/List;

    new-instance v7, Lcom/google/android/gms/internal/zzefk;

    const-string v2, "o"

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzefk;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzefo;Lcom/google/android/gms/internal/zzeez;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbxa()V

    return-void
.end method

.method public final zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzefo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzefo;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeey;->zznax:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbwv()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "om"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzeey;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzefo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznal:Ljava/util/List;

    new-instance v7, Lcom/google/android/gms/internal/zzefk;

    const-string v2, "om"

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzefk;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzefo;Lcom/google/android/gms/internal/zzeez;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbxa()V

    return-void
.end method

.method public final zzc(JLjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const-string v3, "onReady"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v4}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/zzeey;->zznaf:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const-string v3, "handling timestamp"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v4}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr p1, v3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "serverTimeOffset"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznab:Lcom/google/android/gms/internal/zzeex;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzeex;->zzak(Ljava/util/Map;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzeey;->zznae:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznaq:Lcom/google/android/gms/internal/zzees;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzees;->isPersistenceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "persistence.android.enabled"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznaq:Lcom/google/android/gms/internal/zzees;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzees;->zzbwn()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2e

    const/16 v4, 0x2d

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "sdk.android."

    if-eqz v3, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const-string v3, "Sending first connection stats"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v4}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "c"

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/zzeff;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzeff;-><init>(Lcom/google/android/gms/internal/zzeey;)V

    const-string v3, "s"

    invoke-direct {p0, v3, v0, p1}, Lcom/google/android/gms/internal/zzeey;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzefh;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const-string v0, "Not sending stats because stats are empty"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v3}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const-string v0, "calling restore state"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v3}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    sget-object v0, Lcom/google/android/gms/internal/zzefi;->zznbj:Lcom/google/android/gms/internal/zzefi;

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    :goto_2
    new-array v0, p2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    aput-object v3, v0, v2

    const-string v3, "Wanted to restore auth, but was in wrong state: %s"

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/zzeet;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznao:Ljava/lang/String;

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const-string p2, "Not restoring auth because token is null."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_9
    sget-object p1, Lcom/google/android/gms/internal/zzefi;->zznbl:Lcom/google/android/gms/internal/zzefi;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbwz()V

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const-string v0, "Restoring auth."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v3}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_b
    sget-object p1, Lcom/google/android/gms/internal/zzefi;->zznbk:Lcom/google/android/gms/internal/zzefi;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzeey;->zzct(Z)V

    :goto_3
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzeey;->zznae:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeey;->zznas:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznab:Lcom/google/android/gms/internal/zzeex;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzeex;->zzbwt()V

    return-void
.end method

.method public final zzpp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznac:Ljava/lang/String;

    return-void
.end method

.method public final zzpq(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Firebase Database connection was forcefully killed by the server. Will not attempt reconnect. Reason: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    const-string p1, "server_kill"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeey;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public final zzpt(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Auth token refreshed."

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznao:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbwu()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzeey;->zzct(Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeey;->zzbwu()Z

    move-result p1

    const-string v0, "Must be connected to send unauth."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/zzeet;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznao:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v0, "Auth token must not be set."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzeet;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "unauth"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0, v4}, Lcom/google/android/gms/internal/zzeey;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/zzefh;)V

    :cond_2
    return-void
.end method

.method public final zzpu(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    sget-object v1, Lcom/google/android/gms/internal/zzefi;->zznbi:Lcom/google/android/gms/internal/zzefi;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    aput-object v2, v1, v3

    const-string v2, "Trying to open network connection while in the wrong state: %s"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/zzeet;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeey;->zznab:Lcom/google/android/gms/internal/zzeex;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzeex;->zzcs(Z)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznao:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/internal/zzefi;->zznbj:Lcom/google/android/gms/internal/zzefi;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznah:Lcom/google/android/gms/internal/zzefi;

    new-instance p1, Lcom/google/android/gms/internal/zzeem;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeey;->zznaq:Lcom/google/android/gms/internal/zzees;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeey;->zzmzk:Lcom/google/android/gms/internal/zzeeu;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeey;->zznac:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzeey;->zznas:Ljava/lang/String;

    move-object v0, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzeem;-><init>(Lcom/google/android/gms/internal/zzees;Lcom/google/android/gms/internal/zzeeu;Ljava/lang/String;Lcom/google/android/gms/internal/zzeen;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeey;->zznag:Lcom/google/android/gms/internal/zzeem;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeem;->open()V

    return-void
.end method
