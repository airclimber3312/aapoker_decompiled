.class public Lcom/tencent/rmonitor/fd/cluser/FdCluster;
.super Ljava/lang/Object;


# static fields
.field private static final zZ:[Lcom/tencent/bugly/proguard/mi;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x9

    new-array v1, v0, [Lcom/tencent/bugly/proguard/mi;

    new-instance v2, Lcom/tencent/bugly/proguard/mj;

    const-string v3, "socket:["

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Lcom/tencent/bugly/proguard/mj;-><init>(I[Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/tencent/bugly/proguard/mj;

    const-string v3, "pipe:["

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    invoke-direct {v2, v5, v3}, Lcom/tencent/bugly/proguard/mj;-><init>(I[Ljava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/tencent/bugly/proguard/mg;

    const-string v3, "anon_inode:[eventpoll]"

    const-string v4, "anon_inode:[eventfd]"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/bugly/proguard/mg;-><init>([Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/tencent/bugly/proguard/mj;

    const-string v3, "/dev/ashmem"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v4, v3}, Lcom/tencent/bugly/proguard/mj;-><init>(I[Ljava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/tencent/bugly/proguard/mj;

    const-string v3, "anon_inode:dmabuf"

    const-string v4, "/dev/ion"

    const-string v6, "/dmabuf"

    filled-new-array {v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3}, Lcom/tencent/bugly/proguard/mj;-><init>(I[Ljava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/tencent/bugly/proguard/mj;

    const-string v3, "/storage/"

    const-string v4, "/sdcard/"

    const-string v6, "/data/"

    filled-new-array {v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v2, v4, v3}, Lcom/tencent/bugly/proguard/mj;-><init>(I[Ljava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/tencent/bugly/proguard/mj;

    const-string v3, "/sys/"

    const-string v4, "/proc/"

    const-string v6, "/system/"

    const-string v7, "/vendor/"

    const-string v8, "/apex/"

    filled-new-array {v6, v7, v8, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/tencent/bugly/proguard/mj;-><init>(I[Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v0, Lcom/tencent/bugly/proguard/mj;

    const-string v2, "/dev/kgsl-3d"

    const-string v3, "/dev/pvrsrvkm"

    const-string v4, "/dev/mali"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {v0, v3, v2}, Lcom/tencent/bugly/proguard/mj;-><init>(I[Ljava/lang/String;)V

    aput-object v0, v1, v3

    new-instance v0, Lcom/tencent/bugly/proguard/mj;

    const-string v2, "/dev/"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v0, v3, v2}, Lcom/tencent/bugly/proguard/mj;-><init>(I[Ljava/lang/String;)V

    aput-object v0, v1, v3

    sput-object v1, Lcom/tencent/rmonitor/fd/cluser/FdCluster;->zZ:[Lcom/tencent/bugly/proguard/mi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/bugly/proguard/mh;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/rmonitor/fd/cluser/FdCluster;->bh(Ljava/lang/String;)Lcom/tencent/bugly/proguard/mi;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/tencent/bugly/proguard/mi;->gX()I

    move-result v2

    goto :goto_1

    :cond_0
    const/16 v2, 0xa

    :goto_1
    invoke-static {v2, v1, v0}, Lcom/tencent/rmonitor/fd/cluser/FdCluster;->a(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static a(ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/bugly/proguard/mh;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/mh;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/proguard/mh;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/mh;-><init>(I)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/mh;->bi(Ljava/lang/String;)V

    return-void
.end method

.method private static bh(Ljava/lang/String;)Lcom/tencent/bugly/proguard/mi;
    .locals 5

    sget-object v0, Lcom/tencent/rmonitor/fd/cluser/FdCluster;->zZ:[Lcom/tencent/bugly/proguard/mi;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3, p0}, Lcom/tencent/bugly/proguard/mi;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Ljava/util/Map;)Lcom/tencent/bugly/proguard/mh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/bugly/proguard/mh;",
            ">;)",
            "Lcom/tencent/bugly/proguard/mh;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/proguard/mh;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static matchFdType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/tencent/rmonitor/fd/cluser/FdCluster;->bh(Ljava/lang/String;)Lcom/tencent/bugly/proguard/mi;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/tencent/bugly/proguard/mi;->gX()I

    move-result p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/mu;->G(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "others"

    return-object p0
.end method
