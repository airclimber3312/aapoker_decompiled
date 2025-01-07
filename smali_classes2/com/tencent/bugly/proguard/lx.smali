.class public final Lcom/tencent/bugly/proguard/lx;
.super Lcom/tencent/bugly/proguard/lm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/lm;-><init>()V

    return-void
.end method

.method private static a(Lshark/HeapObject$HeapInstance;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "java.net.InetAddress"

    const-string v1, "holder"

    invoke-static {p0, v0, v1}, Lcom/tencent/bugly/proguard/nc;->c(Lshark/HeapObject$HeapInstance;Ljava/lang/String;Ljava/lang/String;)Lshark/HeapObject$HeapInstance;

    move-result-object p0

    const-string v0, "originalHostName"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/nc;->b(Lshark/HeapObject$HeapInstance;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "address"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/nc;->a(Lshark/HeapObject$HeapInstance;Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/lx;->l(J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/tencent/bugly/proguard/mq;Ljava/util/Map;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/bugly/proguard/mq;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/bugly/proguard/mq;->Aj:Lshark/HeapGraph;

    const-string v0, "java.net.Socket"

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

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lshark/HeapObject$HeapInstance;

    const-string v3, "impl"

    invoke-static {v2, v0, v3}, Lcom/tencent/bugly/proguard/nc;->c(Lshark/HeapObject$HeapInstance;Ljava/lang/String;Ljava/lang/String;)Lshark/HeapObject$HeapInstance;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "port"

    const-string v5, "java.net.SocketImpl"

    invoke-static {v3, v5, v4}, Lcom/tencent/bugly/proguard/nc;->a(Lshark/HeapObject$HeapInstance;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v6, "address"

    invoke-static {v3, v5, v6}, Lcom/tencent/bugly/proguard/nc;->c(Lshark/HeapObject$HeapInstance;Ljava/lang/String;Ljava/lang/String;)Lshark/HeapObject$HeapInstance;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/bugly/proguard/lx;->a(Lshark/HeapObject$HeapInstance;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    const-string v3, "/%s:%s"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/lx;->b(Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v2}, Lshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static b(Lcom/tencent/bugly/proguard/mq;Ljava/util/Map;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/bugly/proguard/mq;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/bugly/proguard/mq;->Aj:Lshark/HeapGraph;

    const-string v0, "sun.nio.ch.SocketChannelImpl"

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

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lshark/HeapObject$HeapInstance;

    const-string v3, "remoteAddress"

    invoke-static {v2, v0, v3}, Lcom/tencent/bugly/proguard/nc;->c(Lshark/HeapObject$HeapInstance;Ljava/lang/String;Ljava/lang/String;)Lshark/HeapObject$HeapInstance;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "java.net.InetSocketAddress"

    const-string v5, "holder"

    invoke-static {v3, v4, v5}, Lcom/tencent/bugly/proguard/nc;->c(Lshark/HeapObject$HeapInstance;Ljava/lang/String;Ljava/lang/String;)Lshark/HeapObject$HeapInstance;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "port"

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/nc;->a(Lshark/HeapObject$HeapInstance;Ljava/lang/String;)I

    move-result v4

    const-string v5, "java.net.InetSocketAddress$InetSocketAddressHolder"

    const-string v6, "addr"

    invoke-static {v3, v5, v6}, Lcom/tencent/bugly/proguard/nc;->c(Lshark/HeapObject$HeapInstance;Ljava/lang/String;Ljava/lang/String;)Lshark/HeapObject$HeapInstance;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/bugly/proguard/lx;->a(Lshark/HeapObject$HeapInstance;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    const-string v3, "/%s:%s"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/lx;->b(Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v2}, Lshark/HeapObject$HeapInstance;->getObjectId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static l(J)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    const-wide/16 v3, 0xff

    and-long/2addr v3, p0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    const/16 v3, 0x2e

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v3, 0x8

    shr-long/2addr p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected final synthetic c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 4

    check-cast p1, Lcom/tencent/bugly/proguard/mq;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/lx;->a(Lcom/tencent/bugly/proguard/mq;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/lx;->b(Lcom/tencent/bugly/proguard/mq;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v1, "socket"

    invoke-virtual {p1, v1, v3}, Lcom/tencent/bugly/proguard/mq;->a(Ljava/lang/String;Ljava/util/Set;)V

    return-object v0
.end method

.method public final gU()Ljava/lang/String;
    .locals 1

    const-string v0, "socket"

    return-object v0
.end method
