.class public final Lcom/tencent/bugly/proguard/dj;
.super Ljava/lang/Object;


# static fields
.field public static gG:I = 0x3e8

.field private static iE:Lcom/tencent/bugly/proguard/dj; = null

.field public static iF:J = 0xf731400L

.field private static iJ:Ljava/lang/String;


# instance fields
.field private final aa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/o;",
            ">;"
        }
    .end annotation
.end field

.field private eX:Landroid/content/Context;

.field public final iG:Lcom/tencent/bugly/proguard/ds;

.field private final iH:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

.field private iI:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/o;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/dj;->iI:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/dj;->eX:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/bugly/proguard/dh;->hG:Ljava/lang/String;

    const-string v0, "oversea"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "https://astat.bugly.qcloud.com/rqd/async"

    :goto_0
    sput-object p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->ik:Ljava/lang/String;

    sput-object p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->il:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v0, "na_https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "https://astat.bugly.cros.wr.pvp.net/:8180/rqd/async"

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    invoke-direct {p1}, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/dj;->iH:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/dj;->aa:Ljava/util/List;

    invoke-static {}, Lcom/tencent/bugly/proguard/ds;->cN()Lcom/tencent/bugly/proguard/ds;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/dj;->iG:Lcom/tencent/bugly/proguard/ds;

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/dj;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/dj;->eX:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/dj;Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/dj;->iI:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/dj;)Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/dj;->iI:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/dj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/o;",
            ">;)",
            "Lcom/tencent/bugly/proguard/dj;"
        }
    .end annotation

    const-class v0, Lcom/tencent/bugly/proguard/dj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/dj;->iE:Lcom/tencent/bugly/proguard/dj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/dj;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/proguard/dj;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v1, Lcom/tencent/bugly/proguard/dj;->iE:Lcom/tencent/bugly/proguard/dj;

    :cond_0
    sget-object p0, Lcom/tencent/bugly/proguard/dj;->iE:Lcom/tencent/bugly/proguard/dj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized cA()Lcom/tencent/bugly/proguard/dj;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/dj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/dj;->iE:Lcom/tencent/bugly/proguard/dj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static cD()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/dd;->bB()Lcom/tencent/bugly/proguard/dd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/dd;->j(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/df;

    iget-object v1, v0, Lcom/tencent/bugly/proguard/df;->gP:[B

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/df;->gP:[B

    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/dz;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic cE()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/dj;->iJ:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/rr;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/dj;->iI:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/rr;->Jc:J

    iget-object v2, p0, Lcom/tencent/bugly/proguard/dj;->iI:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    iget-wide v2, v2, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iw:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;-><init>()V

    iget-boolean v1, p1, Lcom/tencent/bugly/proguard/rr;->nb:Z

    iput-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->io:Z

    iget-boolean v1, p1, Lcom/tencent/bugly/proguard/rr;->ip:Z

    iput-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->ip:Z

    iget-boolean v1, p1, Lcom/tencent/bugly/proguard/rr;->P:Z

    iput-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->P:Z

    sget-object v1, Lcom/tencent/bugly/proguard/dj;->iJ:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/dz;->Y(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    sget-object v1, Lcom/tencent/bugly/proguard/dj;->iJ:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/dz;->aa(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, p1, Lcom/tencent/bugly/proguard/rr;->iy:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/dz;->aa(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/tencent/bugly/proguard/rr;->iy:Ljava/lang/String;

    aput-object v4, v1, v3

    const-string v4, "[Strategy] Upload url changes to %s"

    invoke-static {v4, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/tencent/bugly/proguard/rr;->iy:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iy:Ljava/lang/String;

    :cond_3
    iget-object v1, p1, Lcom/tencent/bugly/proguard/rr;->Jn:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/dz;->aa(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/tencent/bugly/proguard/rr;->Jn:Ljava/lang/String;

    aput-object v4, v1, v3

    const-string v4, "[Strategy] Exception upload url changes to %s"

    invoke-static {v4, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/tencent/bugly/proguard/rr;->Jn:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iz:Ljava/lang/String;

    :cond_4
    iget-object v1, p1, Lcom/tencent/bugly/proguard/rr;->Jo:Lcom/tencent/bugly/proguard/rq;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/tencent/bugly/proguard/rr;->Jo:Lcom/tencent/bugly/proguard/rq;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/rq;->iA:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/dz;->Y(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/tencent/bugly/proguard/rr;->Jo:Lcom/tencent/bugly/proguard/rq;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/rq;->iA:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iA:Ljava/lang/String;

    :cond_5
    iget-wide v4, p1, Lcom/tencent/bugly/proguard/rr;->Jc:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    iget-wide v4, p1, Lcom/tencent/bugly/proguard/rr;->Jc:J

    iput-wide v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iw:J

    :cond_6
    if-eqz p1, :cond_c

    iget-object v1, p1, Lcom/tencent/bugly/proguard/rr;->iB:Ljava/util/Map;

    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/tencent/bugly/proguard/rr;->iB:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_7

    goto/16 :goto_3

    :cond_7
    iget-object v1, p1, Lcom/tencent/bugly/proguard/rr;->iB:Ljava/util/Map;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iB:Ljava/util/Map;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/rr;->iB:Ljava/util/Map;

    const-string v4, "B11"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "1"

    if-eqz v1, :cond_8

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iq:Z

    iget-object v1, p1, Lcom/tencent/bugly/proguard/rr;->iB:Ljava/util/Map;

    const-string v5, "B3"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iD:J

    :cond_9
    iget v1, p1, Lcom/tencent/bugly/proguard/rr;->Js:I

    int-to-long v5, v1

    iput-wide v5, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->ix:J

    iget v1, p1, Lcom/tencent/bugly/proguard/rr;->Js:I

    int-to-long v5, v1

    iput-wide v5, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iC:J

    iget-object v1, p1, Lcom/tencent/bugly/proguard/rr;->iB:Ljava/util/Map;

    const-string v5, "B27"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_a

    iput v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->fi:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_1
    iget-object v1, p1, Lcom/tencent/bugly/proguard/rr;->iB:Ljava/util/Map;

    const-string v5, "B25"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_2

    :cond_b
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->is:Z

    :cond_c
    :goto_3
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->io:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->ip:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->P:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iq:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v1, v6

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->ir:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x4

    aput-object v4, v1, v6

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iu:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v1, v6

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iv:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x6

    aput-object v4, v1, v6

    iget-wide v6, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->ix:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x7

    aput-object v4, v1, v6

    iget-boolean v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->is:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v6, 0x8

    aput-object v4, v1, v6

    iget-wide v6, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iw:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v6, 0x9

    aput-object v4, v1, v6

    const-string v4, "[Strategy] enableCrashReport:%b, enableQuery:%b, enableUserInfo:%b, enableAnr:%b, enableBlock:%b, enableSession:%b, enableSessionTimer:%b, sessionOverTime:%d, enableCocos:%b, strategyLastUpdateTime:%d"

    invoke-static {v4, v1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/tencent/bugly/proguard/dj;->iI:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/rr;->iy:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/dz;->aa(Ljava/lang/String;)Z

    move-result v1

    const-string v4, ""

    if-nez v1, :cond_d

    const-string v1, "[Strategy] download url is null"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/bugly/proguard/dj;->iI:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    iput-object v4, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iy:Ljava/lang/String;

    :cond_d
    iget-object p1, p1, Lcom/tencent/bugly/proguard/rr;->Jn:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/dz;->aa(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "[Strategy] download crashurl is null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tencent/bugly/proguard/dj;->iI:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    iput-object v4, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iz:Ljava/lang/String;

    :cond_e
    invoke-static {}, Lcom/tencent/bugly/proguard/dd;->bB()Lcom/tencent/bugly/proguard/dd;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/tencent/bugly/proguard/dd;->k(I)V

    new-instance p1, Lcom/tencent/bugly/proguard/df;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/df;-><init>()V

    iput v5, p1, Lcom/tencent/bugly/proguard/df;->type:I

    iget-wide v3, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->id:J

    iput-wide v3, p1, Lcom/tencent/bugly/proguard/df;->id:J

    iget-wide v3, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->in:J

    iput-wide v3, p1, Lcom/tencent/bugly/proguard/df;->fv:J

    invoke-static {v0}, Lcom/tencent/bugly/proguard/dz;->a(Landroid/os/Parcelable;)[B

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/bugly/proguard/df;->gP:[B

    invoke-static {}, Lcom/tencent/bugly/proguard/dd;->bB()Lcom/tencent/bugly/proguard/dd;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/bugly/proguard/dd;->a(Lcom/tencent/bugly/proguard/df;)Z

    invoke-virtual {p0, v0, v2}, Lcom/tencent/bugly/proguard/dj;->b(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V

    return-void
.end method

.method protected final b(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-class v2, Lcom/tencent/bugly/proguard/cr;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "[Strategy] Notify %s"

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/cr;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;Z)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/dj;->aa:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/o;

    :try_start_0
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final declared-synchronized cB()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/dj;->iI:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final cC()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/dj;->iI:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iy:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/dz;->aa(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/dj;->iI:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->ik:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iy:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/dj;->iI:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iz:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/dz;->aa(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/dj;->iI:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->il:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iz:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/dj;->iI:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object v0

    :cond_2
    sget-object v0, Lcom/tencent/bugly/proguard/dj;->iJ:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/dz;->Y(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/bugly/proguard/dj;->iJ:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/dz;->aa(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/dj;->iH:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/tencent/bugly/proguard/dj;->iJ:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iy:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/dj;->iH:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/tencent/bugly/proguard/dj;->iJ:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->iz:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/dj;->iH:Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    return-object v0
.end method
