.class public final Lcom/tencent/bugly/proguard/po;
.super Lcom/tencent/bugly/proguard/pg;


# instance fields
.field private final EJ:Lcom/tencent/bugly/proguard/ke;

.field final ER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/pp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/pc;)V
    .locals 1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/po;->d(Lcom/tencent/bugly/proguard/pc;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/proguard/po;-><init>(Lcom/tencent/bugly/proguard/pc;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/bugly/proguard/pc;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/bugly/proguard/pc;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/pp;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/pg;-><init>(Lcom/tencent/bugly/proguard/pc;)V

    new-instance p1, Lcom/tencent/bugly/proguard/po$1;

    invoke-direct {p1, p0}, Lcom/tencent/bugly/proguard/po$1;-><init>(Lcom/tencent/bugly/proguard/po;)V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/po;->EJ:Lcom/tencent/bugly/proguard/ke;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/po;->ER:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/tencent/bugly/proguard/pc;)Lcom/tencent/bugly/proguard/pp;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AndroidOFragmentWatcher"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Lcom/tencent/bugly/proguard/pl;

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/pl;-><init>(Lcom/tencent/bugly/proguard/pc;)V

    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_0
    const-string v1, "AndroidV4FragmentWatcher"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lcom/tencent/bugly/proguard/pm;

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/pm;-><init>(Lcom/tencent/bugly/proguard/pc;)V

    goto :goto_0

    :cond_1
    const-string v1, "AndroidXFragmentWatcher"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/tencent/bugly/proguard/pn;

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/pn;-><init>(Lcom/tencent/bugly/proguard/pc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_memory_FragmentWatcher"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static d(Lcom/tencent/bugly/proguard/pc;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/bugly/proguard/pc;",
            ")",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/pp;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aS()Z

    move-result v0

    const-string v1, "AndroidXFragmentWatcher"

    const-string v2, "AndroidV4FragmentWatcher"

    if-eqz v0, :cond_0

    const-string v0, "AndroidOFragmentWatcher"

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-static {v4, p0}, Lcom/tencent/bugly/proguard/po;->a(Ljava/lang/String;Lcom/tencent/bugly/proguard/pc;)Lcom/tencent/bugly/proguard/pp;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final iu()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/po;->EJ:Lcom/tencent/bugly/proguard/ke;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kh;->a(Lcom/tencent/bugly/proguard/ke;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final iv()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/po;->EJ:Lcom/tencent/bugly/proguard/ke;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kh;->b(Lcom/tencent/bugly/proguard/ke;)V

    return-void
.end method

.method public final iw()Z
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ov;->ij()Lcom/tencent/bugly/proguard/gx;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/gx;->ty:Z

    return v0
.end method
