.class public Lcom/tencent/bugly/traffic/TrafficMonitor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/ao;
.implements Lcom/tencent/bugly/proguard/ke;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/traffic/TrafficMonitor$a;
    }
.end annotation


# static fields
.field public static qs:Ljava/lang/String; = "unknown"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private qA:Lcom/tencent/bugly/proguard/fo;

.field private qB:Lcom/tencent/bugly/proguard/fo;

.field private qC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/fo;",
            ">;"
        }
    .end annotation
.end field

.field private qD:Lcom/tencent/bugly/proguard/fo;

.field private qE:Lcom/tencent/bugly/proguard/fo;

.field private qF:Lcom/tencent/bugly/proguard/fo;

.field private qG:Lcom/tencent/bugly/proguard/fo;

.field private qH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/fo;",
            ">;"
        }
    .end annotation
.end field

.field private final qq:Lcom/tencent/bugly/proguard/he;

.field private qr:J

.field private qt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field qu:Z

.field qv:Z

.field private qw:Z

.field private qx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/fi;",
            ">;"
        }
    .end annotation
.end field

.field private qy:Lcom/tencent/bugly/proguard/fo;

.field private qz:Lcom/tencent/bugly/proguard/fo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qr:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qt:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qu:Z

    iput-boolean v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qv:Z

    iput-boolean v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qw:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qx:Ljava/util/ArrayList;

    new-instance v0, Lcom/tencent/bugly/proguard/fs;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/fs;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qy:Lcom/tencent/bugly/proguard/fo;

    new-instance v0, Lcom/tencent/bugly/proguard/fr;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/fr;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qz:Lcom/tencent/bugly/proguard/fo;

    new-instance v0, Lcom/tencent/bugly/proguard/fq;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/fq;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qA:Lcom/tencent/bugly/proguard/fo;

    new-instance v0, Lcom/tencent/bugly/proguard/fp;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/fp;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qB:Lcom/tencent/bugly/proguard/fo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qC:Ljava/util/List;

    new-instance v0, Lcom/tencent/bugly/proguard/fs;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/fs;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qD:Lcom/tencent/bugly/proguard/fo;

    new-instance v0, Lcom/tencent/bugly/proguard/fr;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/fr;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qE:Lcom/tencent/bugly/proguard/fo;

    new-instance v0, Lcom/tencent/bugly/proguard/fq;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/fq;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qF:Lcom/tencent/bugly/proguard/fo;

    new-instance v0, Lcom/tencent/bugly/proguard/fp;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/fp;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qG:Lcom/tencent/bugly/proguard/fo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qH:Ljava/util/List;

    new-instance v0, Lcom/tencent/bugly/traffic/TrafficMonitor$1;

    invoke-static {}, Lcom/tencent/bugly/proguard/by;->aF()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/bugly/traffic/TrafficMonitor$1;-><init>(Lcom/tencent/bugly/traffic/TrafficMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    const-string v0, "traffic_detail"

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/gf;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/he;

    iput-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qq:Lcom/tencent/bugly/proguard/he;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/traffic/TrafficMonitor;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/tencent/bugly/proguard/fi;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/fi;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/ii;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/proguard/ic;->fC()Lcom/tencent/bugly/proguard/ic;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    iget p0, p1, Lcom/tencent/bugly/proguard/fi;->qO:I

    invoke-static {p0}, Lcom/tencent/bugly/proguard/fl;->p(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    iget p0, p1, Lcom/tencent/bugly/proguard/fi;->qN:I

    invoke-static {p0}, Lcom/tencent/bugly/proguard/fl;->q(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    sget-object p0, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/kp;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const/4 p0, 0x4

    invoke-static {}, Lcom/tencent/bugly/proguard/bz;->aI()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    const/4 p0, 0x5

    iget-object p1, p1, Lcom/tencent/bugly/proguard/fi;->qQ:Ljava/lang/String;

    aput-object p1, v0, p0

    const-string p0, "host = ? AND front_state = ? AND net_state = ? AND process_name = ? AND process_launch_id = ? AND type = ?"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/ic;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/fi;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/fi;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/fi;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private c(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/fi;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/fi;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/fi;

    iget-object v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qx:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/fi;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/fi;->qQ:Ljava/lang/String;

    iget-object v4, v2, Lcom/tencent/bugly/proguard/fi;->qQ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/tencent/bugly/proguard/fi;->qQ:Ljava/lang/String;

    const-string v4, "custom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/tencent/bugly/proguard/fi;->qK:Ljava/lang/String;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/fi;->qK:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iget v1, v2, Lcom/tencent/bugly/proguard/fi;->qL:I

    iget v3, v0, Lcom/tencent/bugly/proguard/fi;->qL:I

    add-int/2addr v1, v3

    iput v1, v2, Lcom/tencent/bugly/proguard/fi;->qL:I

    iget v1, v2, Lcom/tencent/bugly/proguard/fi;->qM:I

    iget v3, v0, Lcom/tencent/bugly/proguard/fi;->qM:I

    add-int/2addr v1, v3

    iput v1, v2, Lcom/tencent/bugly/proguard/fi;->qM:I

    goto :goto_2

    :cond_2
    iget-wide v5, v0, Lcom/tencent/bugly/proguard/fi;->qR:J

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-eqz v3, :cond_1

    iget-wide v5, v0, Lcom/tencent/bugly/proguard/fi;->qR:J

    iget-wide v7, v2, Lcom/tencent/bugly/proguard/fi;->qR:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/tencent/bugly/proguard/fi;->qQ:Ljava/lang/String;

    const-string v5, "auto"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qx:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qx:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static ea()Lcom/tencent/bugly/traffic/TrafficMonitor;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/traffic/TrafficMonitor$a;->qJ:Lcom/tencent/bugly/traffic/TrafficMonitor;

    return-object v0
.end method

.method private static eb()Z
    .locals 3

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aS()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "TrafficMonitor"

    const-string v2, "below android o, could not open traffic"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private ec()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qC:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qy:Lcom/tencent/bugly/proguard/fo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qC:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qz:Lcom/tencent/bugly/proguard/fo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qC:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qA:Lcom/tencent/bugly/proguard/fo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qC:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qB:Lcom/tencent/bugly/proguard/fo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qH:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qD:Lcom/tencent/bugly/proguard/fo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qH:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qE:Lcom/tencent/bugly/proguard/fo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qH:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qF:Lcom/tencent/bugly/proguard/fo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qH:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qG:Lcom/tencent/bugly/proguard/fo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/tencent/bugly/proguard/aq;->cl:Lcom/tencent/bugly/proguard/aq;

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->X()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qs:Ljava/lang/String;

    const-string v0, "rmonitor_base"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qq:Lcom/tencent/bugly/proguard/he;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/he;->tK:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qq:Lcom/tencent/bugly/proguard/he;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/he;->tK:Ljava/util/List;

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, v0, v0, v1}, Lcom/tencent/bugly/traffic/TrafficMonitor;->nativeInitMatrixTraffic(ZZZ[Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/bugly/proguard/aq;->cl:Lcom/tencent/bugly/proguard/aq;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/aq;->a(Lcom/tencent/bugly/proguard/ao;)V

    sget-object v1, Lcom/tencent/bugly/proguard/aq;->cl:Lcom/tencent/bugly/proguard/aq;

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->Z()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/tencent/bugly/traffic/TrafficMonitor;->nativeSetNetworkState(I)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tencent/bugly/proguard/aq;->cl:Lcom/tencent/bugly/proguard/aq;

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->aa()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2}, Lcom/tencent/bugly/traffic/TrafficMonitor;->nativeSetNetworkState(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/tencent/bugly/traffic/TrafficMonitor;->nativeSetNetworkState(I)V

    :goto_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/kh;->a(Lcom/tencent/bugly/proguard/ke;)V

    sget-object v1, Lcom/tencent/bugly/proguard/kh;->yf:Lcom/tencent/bugly/proguard/kh;

    invoke-static {}, Lcom/tencent/bugly/proguard/kh;->gh()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/tencent/bugly/traffic/TrafficMonitor;->nativeSetForegroundState(I)V

    return-void

    :cond_3
    invoke-static {v2}, Lcom/tencent/bugly/traffic/TrafficMonitor;->nativeSetForegroundState(I)V

    return-void
.end method

.method public static ed()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/fi;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/tencent/bugly/traffic/TrafficMonitor;->nativeGetTrafficInfo(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/fm;->ei()Lcom/tencent/bugly/proguard/fm;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/bugly/proguard/fm;->qW:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/fn;

    new-instance v3, Lcom/tencent/bugly/proguard/fi;

    invoke-direct {v3}, Lcom/tencent/bugly/proguard/fi;-><init>()V

    iget-wide v4, v2, Lcom/tencent/bugly/proguard/fn;->rh:J

    long-to-int v5, v4

    iput v5, v3, Lcom/tencent/bugly/proguard/fi;->qL:I

    iget-wide v4, v2, Lcom/tencent/bugly/proguard/fn;->rg:J

    long-to-int v5, v4

    iput v5, v3, Lcom/tencent/bugly/proguard/fi;->qM:I

    const-string v4, "custom"

    iput-object v4, v3, Lcom/tencent/bugly/proguard/fi;->qQ:Ljava/lang/String;

    iget v4, v2, Lcom/tencent/bugly/proguard/fn;->rc:I

    iput v4, v3, Lcom/tencent/bugly/proguard/fi;->qN:I

    iget v4, v2, Lcom/tencent/bugly/proguard/fn;->rd:I

    iput v4, v3, Lcom/tencent/bugly/proguard/fi;->qO:I

    iget-object v4, v2, Lcom/tencent/bugly/proguard/fn;->ra:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/bugly/proguard/fi;->qK:Ljava/lang/String;

    iget-wide v4, v2, Lcom/tencent/bugly/proguard/fn;->rf:J

    iput-wide v4, v3, Lcom/tencent/bugly/proguard/fi;->qP:J

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static ee()V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/traffic/TrafficMonitor;->nativeClearTrafficInfo()V

    invoke-static {}, Lcom/tencent/bugly/proguard/fm;->ei()Lcom/tencent/bugly/proguard/fm;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/fm;->qW:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    invoke-static {}, Lcom/tencent/bugly/proguard/fm;->ei()Lcom/tencent/bugly/proguard/fm;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/fm;->qX:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method private ef()I
    .locals 8

    iget-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qy:Lcom/tencent/bugly/proguard/fo;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/fo;->el()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qz:Lcom/tencent/bugly/proguard/fo;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/fo;->el()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qA:Lcom/tencent/bugly/proguard/fo;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/fo;->el()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qB:Lcom/tencent/bugly/proguard/fo;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/fo;->el()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-double v0, v0

    iget-object v2, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qq:Lcom/tencent/bugly/proguard/he;

    iget-wide v2, v2, Lcom/tencent/bugly/proguard/he;->tX:D

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-double v2, v2, v4

    mul-double v2, v2, v4

    cmpl-double v6, v0, v2

    if-lez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qB:Lcom/tencent/bugly/proguard/fo;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/fo;->el()J

    move-result-wide v1

    iget-object v3, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qz:Lcom/tencent/bugly/proguard/fo;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/fo;->el()J

    move-result-wide v6

    add-long/2addr v1, v6

    long-to-double v1, v1

    iget-object v3, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qq:Lcom/tencent/bugly/proguard/he;

    iget-wide v6, v3, Lcom/tencent/bugly/proguard/he;->tY:D

    mul-double v6, v6, v4

    mul-double v6, v6, v4

    cmpl-double v3, v1, v6

    if-lez v3, :cond_1

    add-int/lit8 v0, v0, 0x2

    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qA:Lcom/tencent/bugly/proguard/fo;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/fo;->el()J

    move-result-wide v1

    iget-object v3, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qB:Lcom/tencent/bugly/proguard/fo;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/fo;->el()J

    move-result-wide v6

    add-long/2addr v1, v6

    long-to-double v1, v1

    iget-object v3, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qq:Lcom/tencent/bugly/proguard/he;

    iget-wide v6, v3, Lcom/tencent/bugly/proguard/he;->tZ:D

    mul-double v6, v6, v4

    mul-double v6, v6, v4

    cmpl-double v3, v1, v6

    if-lez v3, :cond_2

    add-int/lit8 v0, v0, 0x4

    :cond_2
    iget-object v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qz:Lcom/tencent/bugly/proguard/fo;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/fo;->en()J

    move-result-wide v1

    iget-object v3, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qy:Lcom/tencent/bugly/proguard/fo;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/fo;->en()J

    move-result-wide v6

    add-long/2addr v1, v6

    iget-object v3, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qA:Lcom/tencent/bugly/proguard/fo;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/fo;->en()J

    move-result-wide v6

    add-long/2addr v1, v6

    iget-object v3, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qB:Lcom/tencent/bugly/proguard/fo;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/fo;->en()J

    move-result-wide v6

    add-long/2addr v1, v6

    long-to-double v1, v1

    iget-object v3, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qq:Lcom/tencent/bugly/proguard/he;

    iget-wide v6, v3, Lcom/tencent/bugly/proguard/he;->ua:D

    mul-double v6, v6, v4

    mul-double v6, v6, v4

    cmpl-double v3, v1, v6

    if-lez v3, :cond_3

    add-int/lit8 v0, v0, 0x10

    :cond_3
    return v0
.end method

.method private static native nativeClearTrafficInfo()V
.end method

.method private static native nativeGetTrafficInfo(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/fi;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeInitMatrixTraffic(ZZZ[Ljava/lang/String;)V
.end method

.method private static native nativeReleaseMatrixTraffic()V
.end method

.method private static native nativeRestart()V
.end method

.method private static native nativeSetForegroundState(I)V
.end method

.method private static native nativeSetNetworkState(I)V
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method final b(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/fi;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/fo;

    invoke-virtual {v1, p1}, Lcom/tencent/bugly/proguard/fo;->f(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/fo;->eo()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/fo;->em()Ljava/util/Map;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/bugly/traffic/TrafficMonitor;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/fi;

    iget-object v3, v2, Lcom/tencent/bugly/proguard/fi;->qK:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/tencent/bugly/traffic/TrafficMonitor;->a(Ljava/lang/String;Lcom/tencent/bugly/proguard/fi;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/proguard/ii;

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget v6, v4, Lcom/tencent/bugly/proguard/ii;->vH:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/bugly/proguard/ii;

    iget v7, v7, Lcom/tencent/bugly/proguard/ii;->vH:I

    add-int/2addr v6, v7

    iput v6, v4, Lcom/tencent/bugly/proguard/ii;->vH:I

    iget v6, v4, Lcom/tencent/bugly/proguard/ii;->vI:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/bugly/proguard/ii;

    iget v7, v7, Lcom/tencent/bugly/proguard/ii;->vI:I

    add-int/2addr v6, v7

    iput v6, v4, Lcom/tencent/bugly/proguard/ii;->vI:I

    invoke-static {}, Lcom/tencent/bugly/proguard/ic;->fC()Lcom/tencent/bugly/proguard/ic;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/bugly/proguard/ii;

    invoke-static {v6}, Lcom/tencent/bugly/proguard/ic;->b(Lcom/tencent/bugly/proguard/ii;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget v3, v4, Lcom/tencent/bugly/proguard/ii;->vH:I

    iget v5, v2, Lcom/tencent/bugly/proguard/fi;->qL:I

    add-int/2addr v3, v5

    iput v3, v4, Lcom/tencent/bugly/proguard/ii;->vH:I

    iget v3, v4, Lcom/tencent/bugly/proguard/ii;->vI:I

    iget v2, v2, Lcom/tencent/bugly/proguard/fi;->qM:I

    add-int/2addr v3, v2

    iput v3, v4, Lcom/tencent/bugly/proguard/ii;->vI:I

    invoke-static {}, Lcom/tencent/bugly/proguard/ic;->fC()Lcom/tencent/bugly/proguard/ic;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/ic;->a(Lcom/tencent/bugly/proguard/ii;)I

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/tencent/bugly/proguard/ii;

    invoke-direct {v3}, Lcom/tencent/bugly/proguard/ii;-><init>()V

    iget-object v4, v2, Lcom/tencent/bugly/proguard/fi;->qK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/ii;->setHost(Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/bz;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/ii;->aN(Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/kp;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/ii;->aM(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/bz;->aI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/ii;->aP(Ljava/lang/String;)V

    iget v4, v2, Lcom/tencent/bugly/proguard/fi;->qO:I

    invoke-static {v4}, Lcom/tencent/bugly/proguard/fl;->p(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/ii;->aQ(Ljava/lang/String;)V

    iget v4, v2, Lcom/tencent/bugly/proguard/fi;->qN:I

    invoke-static {v4}, Lcom/tencent/bugly/proguard/fl;->q(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/ii;->aR(Ljava/lang/String;)V

    iget v4, v2, Lcom/tencent/bugly/proguard/fi;->qL:I

    iput v4, v3, Lcom/tencent/bugly/proguard/ii;->vH:I

    iget v4, v2, Lcom/tencent/bugly/proguard/fi;->qM:I

    iput v4, v3, Lcom/tencent/bugly/proguard/ii;->vI:I

    sget-object v4, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/am;->appVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/ii;->aS(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/tencent/bugly/proguard/fi;->qQ:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/tencent/bugly/proguard/ii;->aO(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ad;->D()Lcom/tencent/bugly/proguard/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/ad;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/tencent/bugly/proguard/ii;->aT(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/la;->gG()Lcom/tencent/bugly/proguard/kz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/kz;->gD()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v3, v2}, Lcom/tencent/bugly/proguard/ii;->i(Lorg/json/JSONObject;)V

    :cond_3
    invoke-static {}, Lcom/tencent/bugly/proguard/ic;->fC()Lcom/tencent/bugly/proguard/ic;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/ic;->a(Lcom/tencent/bugly/proguard/ii;)I

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public final c(I)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/bugly/traffic/TrafficMonitor;->nativeSetNetworkState(I)V

    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method final d(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/fi;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/bugly/traffic/TrafficMonitor;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qr:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x927c0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    iput-wide v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qr:J

    iget-object p1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qC:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/fo;

    iget-object v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/fo;->f(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/bugly/traffic/TrafficMonitor;->ef()I

    move-result p1

    iget-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qx:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qC:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/tencent/bugly/proguard/fk;->a(ILjava/util/ArrayList;Ljava/util/List;)V

    iget-object p1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qx:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public final e(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final eg()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/bugly/traffic/TrafficMonitor;->nativeSetForegroundState(I)V

    return-void
.end method

.method public final eh()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/bugly/traffic/TrafficMonitor;->nativeSetForegroundState(I)V

    return-void
.end method

.method public final f(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final q(Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qu:Z

    return p1
.end method

.method public final r(Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qv:Z

    return p1
.end method

.method public final s(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tencent/bugly/traffic/TrafficMonitor;->ed()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/traffic/TrafficMonitor;->b(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/traffic/TrafficMonitor;->d(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/tencent/bugly/traffic/TrafficMonitor;->ee()V

    :cond_0
    iget-boolean p1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qu:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qv:Z

    if-nez p1, :cond_1

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "TrafficMonitor"

    const-string v1, "traffic monitor stop"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qt:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/tencent/bugly/traffic/TrafficMonitor;->nativeReleaseMatrixTraffic()V

    :cond_1
    return-void
.end method

.method public final start()V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qu:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qv:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/bugly/traffic/TrafficMonitor;->eb()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "TrafficMonitor"

    const-string v2, "traffic monitor start"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qt:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qr:J

    iget-boolean v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qw:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/bugly/traffic/TrafficMonitor;->ec()V

    iput-boolean v1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->qw:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/traffic/TrafficMonitor;->nativeRestart()V

    :goto_0
    iget-object v0, p0, Lcom/tencent/bugly/traffic/TrafficMonitor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method
