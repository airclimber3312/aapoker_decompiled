.class public final Lcom/tencent/bugly/proguard/bl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/bk;


# instance fields
.field private final dy:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tencent/bugly/proguard/bi;",
            ">;"
        }
    .end annotation
.end field

.field private dz:Lcom/tencent/bugly/proguard/bj;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bl;->dy:Ljava/util/LinkedList;

    return-void
.end method

.method private static a(Lcom/tencent/bugly/proguard/bi;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/bugly/proguard/bi;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/bi;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/bi;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/bi;

    if-nez v1, :cond_2

    const-string v2, ""

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/bi;->getKey()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/tencent/bugly/proguard/bi;->a(Lcom/tencent/bugly/proguard/bi;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0
.end method

.method private a(JJI)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/bugly/proguard/bl;->dy:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/tencent/bugly/proguard/bl;->dy:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/bi;

    if-lt v1, p5, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/tencent/bugly/proguard/bl;->dy:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-wide v3, v2, Lcom/tencent/bugly/proguard/bi;->dw:J

    cmp-long v5, p1, v3

    if-gtz v5, :cond_0

    iget-wide v3, v2, Lcom/tencent/bugly/proguard/bi;->dw:J

    cmp-long v5, v3, p3

    if-gtz v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;J)Lcom/tencent/bugly/proguard/bi;
    .locals 8

    iget-object v0, p0, Lcom/tencent/bugly/proguard/bl;->dy:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/proguard/bi;

    iget-object v5, v4, Lcom/tencent/bugly/proguard/bi;->dr:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/tencent/bugly/proguard/bi;->ds:Ljava/lang/String;

    invoke-static {p2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-wide v5, v4, Lcom/tencent/bugly/proguard/bi;->dx:J

    sub-long/2addr v5, p3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-gez v7, :cond_0

    move-object v3, v4

    move-wide v1, v5

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public final a(Lcom/tencent/bugly/proguard/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/bl;->dz:Lcom/tencent/bugly/proguard/bj;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Attributes"

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p1}, Lcom/tencent/bugly/proguard/bi;->d(Lorg/json/JSONObject;)Lcom/tencent/bugly/proguard/bi;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, v1, Lcom/tencent/bugly/proguard/bi;->du:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/proguard/bz;->aI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/bugly/proguard/bl;->dy:Ljava/util/LinkedList;

    :goto_0
    invoke-static {v1, p2, v2}, Lcom/tencent/bugly/proguard/bl;->a(Lcom/tencent/bugly/proguard/bi;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lcom/tencent/bugly/proguard/bi;->dt:Ljava/lang/String;

    iget-object v3, v1, Lcom/tencent/bugly/proguard/bi;->du:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/bl;->dz:Lcom/tencent/bugly/proguard/bj;

    if-eqz v4, :cond_3

    invoke-interface {v4, v2, v3}, Lcom/tencent/bugly/proguard/bj;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/bi;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/bi;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "linkages"

    if-nez v1, :cond_7

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_7
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "RMonitor_link"

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "collect plugin link data fail for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public final ar()Lcom/tencent/bugly/proguard/bj;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/bl;->dz:Lcom/tencent/bugly/proguard/bj;

    return-object v0
.end method

.method public final e(Lorg/json/JSONObject;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/tencent/bugly/proguard/bi;->d(Lorg/json/JSONObject;)Lcom/tencent/bugly/proguard/bi;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/bi;->aq()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/bl;->dy:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/bl;->dy:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/bl;->dy:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    add-long/2addr v2, v0

    const-wide/16 v4, 0xe10

    sub-long v5, v0, v4

    const/16 v9, 0x1f4

    move-object v4, p0

    move-wide v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/tencent/bugly/proguard/bl;->a(JJI)V

    iget-object v4, p0, Lcom/tencent/bugly/proguard/bl;->dy:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/16 v5, 0x177

    if-le v4, v5, :cond_1

    const-wide/16 v4, 0x708

    sub-long v5, v0, v4

    const/16 v9, 0x64

    move-object v4, p0

    move-wide v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/tencent/bugly/proguard/bl;->a(JJI)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bl;->dz:Lcom/tencent/bugly/proguard/bj;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/tencent/bugly/proguard/bj;->b(Lcom/tencent/bugly/proguard/bi;)Z

    :cond_2
    return-void
.end method
