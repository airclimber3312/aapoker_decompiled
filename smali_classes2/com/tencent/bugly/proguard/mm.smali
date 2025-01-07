.class public final Lcom/tencent/bugly/proguard/mm;
.super Ljava/lang/Object;


# static fields
.field private static final Af:[Lcom/tencent/bugly/proguard/mp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/bugly/proguard/mp;

    new-instance v1, Lcom/tencent/bugly/proguard/mu;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/mu;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/tencent/bugly/proguard/mw;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/mw;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/tencent/bugly/proguard/mt;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/mt;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/tencent/bugly/proguard/mv;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/mv;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/bugly/proguard/mm;->Af:[Lcom/tencent/bugly/proguard/mp;

    return-void
.end method

.method public static a(ILcom/tencent/bugly/proguard/mo;)Lcom/tencent/bugly/proguard/mn;
    .locals 6

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/tencent/bugly/proguard/mo;->D(I)V

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/mm;->Af:[Lcom/tencent/bugly/proguard/mp;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v1, :cond_6

    aget-object v4, v0, v2

    invoke-interface {v4}, Lcom/tencent/bugly/proguard/mp;->getType()I

    move-result v5

    if-ne v5, p0, :cond_5

    invoke-static {}, Lcom/tencent/bugly/proguard/mm;->hc()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    if-eq p0, v3, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    const-string v1, "fd_stacks.txt"

    goto :goto_1

    :cond_2
    const-string v1, "heap.hprof"

    goto :goto_1

    :cond_3
    const-string v1, "threads.txt"

    goto :goto_1

    :cond_4
    const-string v1, "fd.txt"

    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/tencent/bugly/proguard/mp;->bj(Ljava/lang/String;)Lcom/tencent/bugly/proguard/mn;

    move-result-object v0

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_7

    invoke-static {p0, v3}, Lcom/tencent/bugly/proguard/mn;->d(II)Lcom/tencent/bugly/proguard/mn;

    move-result-object v0

    :cond_7
    if-eqz p1, :cond_8

    invoke-interface {p1, p0, v0}, Lcom/tencent/bugly/proguard/mo;->a(ILcom/tencent/bugly/proguard/mn;)V

    :cond_8
    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/mn;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/mn;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/mn;->gZ()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/tencent/bugly/proguard/mn;->cP:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcom/tencent/bugly/proguard/mn;->cP:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    const-string v1, "RMonitor_FdLeak_kDumpHelper"

    const-string v2, "dump result error or dump file path is empty"

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/nb;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/mm;->b(Ljava/util/List;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/util/List;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "fd_dump_"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gK()Ljava/io/File;

    move-result-object v3

    const-string v4, "zips"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/tencent/bugly/proguard/ku;->a(Ljava/io/File;)V

    :cond_2
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/ku;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ku;->a(Ljava/io/File;)V

    goto :goto_0

    :cond_3
    return-object p1

    :cond_4
    return-object v1
.end method

.method private static hc()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gK()Ljava/io/File;

    move-result-object v1

    const-string v2, "dump_root"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hd()V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/mm;->hc()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ku;->a(Ljava/io/File;)V

    return-void
.end method
