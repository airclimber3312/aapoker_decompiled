.class public final Lcom/tencent/bugly/proguard/lp;
.super Lcom/tencent/bugly/proguard/lm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/lm;-><init>()V

    return-void
.end method

.method private static a(Lshark/HeapGraph;Ljava/util/Map;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HeapGraph;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "android.database.sqlite.SQLiteCursor"

    invoke-interface {p0, v0}, Lshark/HeapGraph;->findClassByName(Ljava/lang/String;)Lshark/HeapObject$HeapClass;

    move-result-object p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lshark/HeapObject$HeapClass;->getInstances()Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lshark/HeapObject$HeapInstance;

    const-string v3, "mEditTable"

    invoke-static {v2, v0, v3}, Lcom/tencent/bugly/proguard/nc;->b(Lshark/HeapObject$HeapInstance;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "default_table"

    :cond_2
    const-string v4, "android.database.AbstractWindowedCursor"

    const-string v5, "mWindow"

    invoke-static {v2, v4, v5}, Lcom/tencent/bugly/proguard/nc;->c(Lshark/HeapObject$HeapInstance;Ljava/lang/String;Ljava/lang/String;)Lshark/HeapObject$HeapInstance;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "android.database.CursorWindow"

    const-string v5, "mName"

    invoke-static {v2, v4, v5}, Lcom/tencent/bugly/proguard/nc;->b(Lshark/HeapObject$HeapInstance;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    aput-object v3, v5, v4

    const-string v3, "%s/table:%s"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/lp;->b(Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v2}, Lshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method protected final synthetic c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 3

    check-cast p1, Lcom/tencent/bugly/proguard/mq;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lcom/tencent/bugly/proguard/mq;->Aj:Lshark/HeapGraph;

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/lp;->a(Lshark/HeapGraph;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "cursor"

    invoke-virtual {p1, v2, v1}, Lcom/tencent/bugly/proguard/mq;->a(Ljava/lang/String;Ljava/util/Set;)V

    return-object v0
.end method

.method public final gU()Ljava/lang/String;
    .locals 1

    const-string v0, "cursor"

    return-object v0
.end method
