.class public abstract Lcom/tencent/bugly/proguard/fo;
.super Ljava/lang/Object;


# instance fields
.field protected ro:J

.field protected rp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/fi;",
            ">;"
        }
    .end annotation
.end field

.field protected rq:J

.field protected rr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/fi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/fo;->rp:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/fo;->rr:Ljava/util/HashMap;

    return-void
.end method

.method private clear()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/fo;->rp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/fo;->rr:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/fo;->ro:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/fo;->rq:J

    return-void
.end method

.method private e(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/fi;",
            ">;)V"
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

    iget-object v1, v0, Lcom/tencent/bugly/proguard/fi;->qQ:Ljava/lang/String;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/tencent/bugly/proguard/fi;->qO:I

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/fo;->ek()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget v1, v0, Lcom/tencent/bugly/proguard/fi;->qN:I

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/fo;->ej()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/fo;->ro:J

    iget v3, v0, Lcom/tencent/bugly/proguard/fi;->qL:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/fo;->ro:J

    iget v3, v0, Lcom/tencent/bugly/proguard/fi;->qM:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/fo;->ro:J

    iget-object v1, p0, Lcom/tencent/bugly/proguard/fo;->rp:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/fi;->qK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/tencent/bugly/proguard/fi;

    invoke-direct {v1, v0}, Lcom/tencent/bugly/proguard/fi;-><init>(Lcom/tencent/bugly/proguard/fi;)V

    :goto_1
    iget-object v2, p0, Lcom/tencent/bugly/proguard/fo;->rp:Ljava/util/HashMap;

    :goto_2
    iget-object v0, v0, Lcom/tencent/bugly/proguard/fi;->qK:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/fo;->rp:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/fi;->qK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/fi;

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/tencent/bugly/proguard/fi;->qL:I

    iget v3, v0, Lcom/tencent/bugly/proguard/fi;->qL:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/tencent/bugly/proguard/fi;->qL:I

    iget v2, v1, Lcom/tencent/bugly/proguard/fi;->qM:I

    iget v3, v0, Lcom/tencent/bugly/proguard/fi;->qM:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/tencent/bugly/proguard/fi;->qM:I

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/tencent/bugly/proguard/fi;->qQ:Ljava/lang/String;

    const-string v2, "custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/tencent/bugly/proguard/fi;->qO:I

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/fo;->ek()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/tencent/bugly/proguard/fi;->qN:I

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/fo;->ej()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/fo;->rq:J

    iget v3, v0, Lcom/tencent/bugly/proguard/fi;->qL:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/fo;->rq:J

    iget v3, v0, Lcom/tencent/bugly/proguard/fi;->qM:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/fo;->rq:J

    iget-object v1, p0, Lcom/tencent/bugly/proguard/fo;->rr:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/fi;->qK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/tencent/bugly/proguard/fi;

    invoke-direct {v1, v0}, Lcom/tencent/bugly/proguard/fi;-><init>(Lcom/tencent/bugly/proguard/fi;)V

    :goto_3
    iget-object v2, p0, Lcom/tencent/bugly/proguard/fo;->rr:Ljava/util/HashMap;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/tencent/bugly/proguard/fo;->rr:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/fi;->qK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/fi;

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/tencent/bugly/proguard/fi;->qL:I

    iget v3, v0, Lcom/tencent/bugly/proguard/fi;->qL:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/tencent/bugly/proguard/fi;->qL:I

    iget v2, v1, Lcom/tencent/bugly/proguard/fi;->qM:I

    iget v3, v0, Lcom/tencent/bugly/proguard/fi;->qM:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/tencent/bugly/proguard/fi;->qM:I

    goto :goto_3

    :cond_4
    return-void
.end method


# virtual methods
.method public ej()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public ek()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final el()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/fo;->ro:J

    return-wide v0
.end method

.method public final em()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/fi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/bugly/proguard/fo;->rp:Ljava/util/HashMap;

    return-object v0
.end method

.method public final en()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/fo;->rq:J

    return-wide v0
.end method

.method public final eo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/fi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/bugly/proguard/fo;->rr:Ljava/util/HashMap;

    return-object v0
.end method

.method public final f(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/fi;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/fo;->clear()V

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/fo;->e(Ljava/util/ArrayList;)V

    return-void
.end method
