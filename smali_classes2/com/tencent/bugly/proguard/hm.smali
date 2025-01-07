.class public final Lcom/tencent/bugly/proguard/hm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/gk;


# instance fields
.field public final uj:Lcom/tencent/bugly/proguard/hh;

.field private final us:Lcom/tencent/bugly/proguard/hp;

.field private final ut:Lcom/tencent/bugly/proguard/ho;

.field private uu:Lcom/tencent/bugly/proguard/hn;

.field public uv:Lcom/tencent/bugly/proguard/am;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/hh;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/hh;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hm;->uj:Lcom/tencent/bugly/proguard/hh;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hm;->uu:Lcom/tencent/bugly/proguard/hn;

    new-instance v0, Lcom/tencent/bugly/proguard/hl;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/hl;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hm;->us:Lcom/tencent/bugly/proguard/hp;

    new-instance v0, Lcom/tencent/bugly/proguard/hk;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/hk;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hm;->ut:Lcom/tencent/bugly/proguard/ho;

    return-void
.end method

.method private ft()Lcom/tencent/bugly/proguard/hn;
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/hm;->uu:Lcom/tencent/bugly/proguard/hn;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/hj;

    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/hm;->uj:Lcom/tencent/bugly/proguard/hh;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/hh;->iy:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/hj;-><init>(Ljava/net/URL;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hm;->uu:Lcom/tencent/bugly/proguard/hn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "RMonitor_config_Loader"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/hm;->uu:Lcom/tencent/bugly/proguard/hn;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/hb;I)V
    .locals 11

    iget-object v0, p0, Lcom/tencent/bugly/proguard/hm;->uj:Lcom/tencent/bugly/proguard/hh;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/hm;->uv:Lcom/tencent/bugly/proguard/am;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/tencent/bugly/proguard/am;->appId:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/bugly/proguard/hh;->appId:Ljava/lang/String;

    iget-object v2, v1, Lcom/tencent/bugly/proguard/am;->appKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/bugly/proguard/hh;->appKey:Ljava/lang/String;

    iget-object v2, v1, Lcom/tencent/bugly/proguard/am;->bE:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/bugly/proguard/hh;->bE:Ljava/lang/String;

    iget-object v2, v1, Lcom/tencent/bugly/proguard/am;->appVersion:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/bugly/proguard/hh;->appVersion:Ljava/lang/String;

    iget-object v2, v1, Lcom/tencent/bugly/proguard/am;->bD:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/bugly/proguard/hh;->bD:Ljava/lang/String;

    iget-object v2, v1, Lcom/tencent/bugly/proguard/am;->bE:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/bugly/proguard/hh;->bE:Ljava/lang/String;

    iget-object v2, v1, Lcom/tencent/bugly/proguard/am;->bA:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/bugly/proguard/hh;->bA:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/am;->P()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/proguard/hh;->by:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/proguard/ay;->aj()Lcom/tencent/bugly/proguard/ay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ay;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/cm;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/proguard/hh;->bx:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/proguard/ay;->aj()Lcom/tencent/bugly/proguard/ay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ay;->ah()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/proguard/hh;->cC:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/proguard/ay;->aj()Lcom/tencent/bugly/proguard/ay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ay;->ai()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/proguard/hh;->cD:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/hm;->ft()Lcom/tencent/bugly/proguard/hn;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/hm;->us:Lcom/tencent/bugly/proguard/hp;

    invoke-interface {v1}, Lcom/tencent/bugly/proguard/hp;->fs()Lcom/tencent/bugly/proguard/hg;

    move-result-object v1

    const-string v2, "RMonitor_config_Loader"

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    sget v4, Lcom/tencent/bugly/proguard/gk$a;->su:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p2, v4, :cond_7

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/hm;->uj:Lcom/tencent/bugly/proguard/hh;

    if-nez p2, :cond_3

    :cond_2
    :goto_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, v1, Lcom/tencent/bugly/proguard/hg;->uj:Lcom/tencent/bugly/proguard/hh;

    iget-object v7, v4, Lcom/tencent/bugly/proguard/hh;->appId:Ljava/lang/String;

    iget-object v8, p2, Lcom/tencent/bugly/proguard/hh;->appId:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/tencent/bugly/proguard/hh;->appKey:Ljava/lang/String;

    iget-object v8, p2, Lcom/tencent/bugly/proguard/hh;->appKey:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/tencent/bugly/proguard/hh;->bE:Ljava/lang/String;

    iget-object v8, p2, Lcom/tencent/bugly/proguard/hh;->bE:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/tencent/bugly/proguard/hh;->appVersion:Ljava/lang/String;

    iget-object v8, p2, Lcom/tencent/bugly/proguard/hh;->appVersion:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/tencent/bugly/proguard/hh;->bD:Ljava/lang/String;

    iget-object v8, p2, Lcom/tencent/bugly/proguard/hh;->bD:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/tencent/bugly/proguard/hh;->by:Ljava/lang/String;

    iget-object v8, p2, Lcom/tencent/bugly/proguard/hh;->by:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/tencent/bugly/proguard/hh;->bA:Ljava/lang/String;

    iget-object v8, p2, Lcom/tencent/bugly/proguard/hh;->bA:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/tencent/bugly/proguard/hh;->cD:Ljava/lang/String;

    iget-object v8, p2, Lcom/tencent/bugly/proguard/hh;->cD:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v4, v4, Lcom/tencent/bugly/proguard/hh;->bx:Ljava/lang/String;

    iget-object p2, p2, Lcom/tencent/bugly/proguard/hh;->bx:Ljava/lang/String;

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    iget-object p2, v1, Lcom/tencent/bugly/proguard/hg;->uk:Lcom/tencent/bugly/proguard/hi;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p2, Lcom/tencent/bugly/proguard/hi;->uq:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    iget-wide v9, p2, Lcom/tencent/bugly/proguard/hi;->uo:J

    cmp-long p2, v7, v9

    if-ltz p2, :cond_6

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 p2, 0x1

    :goto_3
    if-eqz p2, :cond_c

    sget-object p2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v4, "load config from server."

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/hm;->uj:Lcom/tencent/bugly/proguard/hh;

    if-nez v1, :cond_8

    const-string v2, ""

    goto :goto_4

    :cond_8
    iget-object v2, v1, Lcom/tencent/bugly/proguard/hg;->uk:Lcom/tencent/bugly/proguard/hi;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/hi;->un:Ljava/lang/String;

    :goto_4
    iput-object v2, p2, Lcom/tencent/bugly/proguard/hh;->ul:Ljava/lang/String;

    iget-object p2, p0, Lcom/tencent/bugly/proguard/hm;->uj:Lcom/tencent/bugly/proguard/hh;

    invoke-interface {v0, p2}, Lcom/tencent/bugly/proguard/hn;->b(Lcom/tencent/bugly/proguard/hh;)V

    invoke-interface {v0}, Lcom/tencent/bugly/proguard/hn;->fp()I

    move-result p2

    invoke-interface {v0}, Lcom/tencent/bugly/proguard/hn;->fq()Lcom/tencent/bugly/proguard/hi;

    move-result-object v0

    if-ne p2, v6, :cond_9

    iget-object v3, v0, Lcom/tencent/bugly/proguard/hi;->um:Lorg/json/JSONObject;

    goto :goto_5

    :cond_9
    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    iget-object v1, v1, Lcom/tencent/bugly/proguard/hg;->uk:Lcom/tencent/bugly/proguard/hi;

    iget-object v3, v1, Lcom/tencent/bugly/proguard/hi;->um:Lorg/json/JSONObject;

    :goto_5
    const/4 v1, 0x3

    if-eq p2, v1, :cond_e

    if-ne p2, v6, :cond_b

    const/4 v5, 0x1

    :cond_b
    new-instance p2, Lcom/tencent/bugly/proguard/hg;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/hm;->uj:Lcom/tencent/bugly/proguard/hh;

    invoke-direct {p2, v1, v0, v5}, Lcom/tencent/bugly/proguard/hg;-><init>(Lcom/tencent/bugly/proguard/hh;Lcom/tencent/bugly/proguard/hi;Z)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/hm;->us:Lcom/tencent/bugly/proguard/hp;

    invoke-interface {v0, p2}, Lcom/tencent/bugly/proguard/hp;->a(Lcom/tencent/bugly/proguard/hg;)Z

    goto :goto_7

    :cond_c
    if-nez v1, :cond_d

    goto :goto_6

    :cond_d
    iget-object p2, v1, Lcom/tencent/bugly/proguard/hg;->uk:Lcom/tencent/bugly/proguard/hi;

    iget-object v3, p2, Lcom/tencent/bugly/proguard/hi;->um:Lorg/json/JSONObject;

    :goto_6
    sget-object p2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "load config from cache."

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_e
    :goto_7
    if-eqz v3, :cond_f

    iget-object p2, p0, Lcom/tencent/bugly/proguard/hm;->ut:Lcom/tencent/bugly/proguard/ho;

    invoke-interface {p2, v3, p1}, Lcom/tencent/bugly/proguard/ho;->a(Lorg/json/JSONObject;Lcom/tencent/bugly/proguard/hb;)Z

    :cond_f
    const-string p2, "loadConfig"

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/hb;->aG(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/tencent/bugly/proguard/hb;)V
    .locals 3

    const-string v0, "RMonitor_config_Loader"

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/hm;->us:Lcom/tencent/bugly/proguard/hp;

    invoke-interface {v1}, Lcom/tencent/bugly/proguard/hp;->fs()Lcom/tencent/bugly/proguard/hg;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/tencent/bugly/proguard/hg;->uk:Lcom/tencent/bugly/proguard/hi;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/hi;->um:Lorg/json/JSONObject;

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/tencent/bugly/proguard/hm;->ut:Lcom/tencent/bugly/proguard/ho;

    invoke-interface {v2, v1, p1}, Lcom/tencent/bugly/proguard/ho;->a(Lorg/json/JSONObject;Lcom/tencent/bugly/proguard/hb;)Z

    :cond_1
    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "load config from local."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "load config from local fail."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void
.end method
