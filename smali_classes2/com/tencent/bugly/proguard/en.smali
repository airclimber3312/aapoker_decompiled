.class public final Lcom/tencent/bugly/proguard/en;
.super Ljava/lang/Object;


# instance fields
.field private final nx:Lcom/tencent/bugly/proguard/al;

.field private final ny:Lcom/tencent/bugly/proguard/bk;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/al;Lcom/tencent/bugly/proguard/bk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/en;->nx:Lcom/tencent/bugly/proguard/al;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/en;->ny:Lcom/tencent/bugly/proguard/bk;

    return-void
.end method

.method private b(JJ)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/en;->ny:Lcom/tencent/bugly/proguard/bk;

    const-string v1, "looper"

    const-string v2, "looper_stack"

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/tencent/bugly/proguard/bk;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/tencent/bugly/proguard/bi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/tencent/bugly/proguard/bi;->dx:J

    sub-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long v1, p1, p3

    if-gtz v1, :cond_0

    iget-object p1, v0, Lcom/tencent/bugly/proguard/bi;->dv:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final dH()Ljava/lang/String;
    .locals 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/en;->nx:Lcom/tencent/bugly/proguard/al;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/al;->L()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/proguard/al$a;

    iget-wide v6, v3, Lcom/tencent/bugly/proguard/al$a;->bq:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    iget-wide v6, v3, Lcom/tencent/bugly/proguard/al$a;->br:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iget-wide v5, v3, Lcom/tencent/bugly/proguard/al$a;->bq:J

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    iget-wide v5, v3, Lcom/tencent/bugly/proguard/al$a;->br:J

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    iget-object v5, v3, Lcom/tencent/bugly/proguard/al$a;->bs:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget v5, v3, Lcom/tencent/bugly/proguard/al$a;->type:I

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget v5, v3, Lcom/tencent/bugly/proguard/al$a;->count:I

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string v5, ""

    iget v6, v3, Lcom/tencent/bugly/proguard/al$a;->type:I

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    iget-wide v5, v3, Lcom/tencent/bugly/proguard/al$a;->bt:J

    const-wide/16 v7, 0xc8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/tencent/bugly/proguard/en;->b(JJ)Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    const-string v1, "excuted_queue"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/en;->nx:Lcom/tencent/bugly/proguard/al;

    iget-wide v2, v1, Lcom/tencent/bugly/proguard/al;->bg:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    iget-wide v2, v1, Lcom/tencent/bugly/proguard/al;->bh:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    iget-object v2, v1, Lcom/tencent/bugly/proguard/al;->bd:Lcom/tencent/bugly/proguard/al$a;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/tencent/bugly/proguard/al;->bg:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/tencent/bugly/proguard/al$a;->bq:J

    iget-object v2, v1, Lcom/tencent/bugly/proguard/al;->bd:Lcom/tencent/bugly/proguard/al$a;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/tencent/bugly/proguard/al;->bh:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/tencent/bugly/proguard/al$a;->br:J

    goto :goto_2

    :cond_4
    iget-object v2, v1, Lcom/tencent/bugly/proguard/al;->bd:Lcom/tencent/bugly/proguard/al$a;

    iput-wide v4, v2, Lcom/tencent/bugly/proguard/al$a;->bq:J

    iget-object v2, v1, Lcom/tencent/bugly/proguard/al;->bd:Lcom/tencent/bugly/proguard/al$a;

    iput-wide v4, v2, Lcom/tencent/bugly/proguard/al$a;->br:J

    :goto_2
    iget-object v2, v1, Lcom/tencent/bugly/proguard/al;->bd:Lcom/tencent/bugly/proguard/al$a;

    iget-object v3, v1, Lcom/tencent/bugly/proguard/al;->bi:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/al$a;->bs:Ljava/lang/String;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/al;->bd:Lcom/tencent/bugly/proguard/al$a;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-wide v3, v1, Lcom/tencent/bugly/proguard/al$a;->bq:J

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    iget-wide v3, v1, Lcom/tencent/bugly/proguard/al$a;->br:J

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    iget-object v3, v1, Lcom/tencent/bugly/proguard/al$a;->bs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/tencent/bugly/proguard/al$a;->bq:J

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/tencent/bugly/proguard/en;->b(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "current_item"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/en;->nx:Lcom/tencent/bugly/proguard/al;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/al;->M()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/proguard/al$b;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iget v5, v3, Lcom/tencent/bugly/proguard/al$b;->arg1:I

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget v5, v3, Lcom/tencent/bugly/proguard/al$b;->arg2:I

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget v5, v3, Lcom/tencent/bugly/proguard/al$b;->what:I

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-wide v5, v3, Lcom/tencent/bugly/proguard/al$b;->when:J

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    iget-object v5, v3, Lcom/tencent/bugly/proguard/al$b;->bv:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/al$b;->bw:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_5
    const-string v1, "excuting_queue"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
