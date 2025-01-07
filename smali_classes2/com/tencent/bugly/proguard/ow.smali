.class public Lcom/tencent/bugly/proguard/ow;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Lcom/tencent/bugly/proguard/nh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/nf;->hm()Lcom/tencent/bugly/proguard/nh;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/ow;->DW:Lcom/tencent/bugly/proguard/nh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/tencent/bugly/proguard/nh;ZI)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/nh;",
            "ZI)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    const-class v1, Lcom/tencent/bugly/proguard/ow;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "RMonitor_Heap_MemoryDumpHelper"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "ReportLog dumpHprof: "

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object p0, v4, v5

    invoke-virtual {v2, v4}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string v2, "yy-MM-dd_HH.mm.ss"

    invoke-static {v8, v9, v2}, Lcom/tencent/bugly/proguard/ox;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v8, "mounted"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/bugly/proguard/ox;->il()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "dump_"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".hprof"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-lez p3, :cond_2

    new-instance p0, Lcom/tencent/bugly/proguard/ne;

    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/ne;-><init>(ZI)V

    invoke-interface {p1, v0, p0}, Lcom/tencent/bugly/proguard/nh;->a(Ljava/lang/String;Lcom/tencent/bugly/proguard/ne;)I

    move-result p0

    if-nez p0, :cond_3

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/tencent/bugly/proguard/ne;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ne;-><init>()V

    invoke-interface {p1, v0, p0}, Lcom/tencent/bugly/proguard/nh;->a(Ljava/lang/String;Lcom/tencent/bugly/proguard/ne;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_1
    :try_start_2
    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/String;

    const-string p3, "RMonitor_Heap_MemoryDumpHelper"

    aput-object p3, p2, v6

    const-string p3, "dump used "

    aput-object p3, p2, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v5

    const-string p3, " ms"

    aput-object p3, p2, v3

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, p0

    goto :goto_3

    :catchall_0
    move-exception p1

    move v6, p0

    move-object p0, p1

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_2
    :try_start_3
    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p2, "RMonitor_Heap_MemoryDumpHelper"

    invoke-virtual {p1, p2, p0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    new-instance p0, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1

    return-object p0

    :catchall_2
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/bugly/proguard/is;ZI)Lcom/tencent/bugly/proguard/if;
    .locals 1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/tencent/bugly/proguard/is;->fI()Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    new-instance v0, Lcom/tencent/bugly/proguard/if;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/if;-><init>()V

    if-eqz p2, :cond_3

    sget-object p2, Lcom/tencent/bugly/proguard/ow;->DW:Lcom/tencent/bugly/proguard/nh;

    invoke-static {p0, p2, p4, p5}, Lcom/tencent/bugly/proguard/ow;->a(Ljava/lang/String;Lcom/tencent/bugly/proguard/nh;ZI)Landroid/util/Pair;

    move-result-object p2

    iget-object p4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    iput-boolean p4, v0, Lcom/tencent/bugly/proguard/if;->iW:Z

    iget-boolean p4, v0, Lcom/tencent/bugly/proguard/if;->iW:Z

    if-eqz p4, :cond_2

    iget-object p4, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p4, :cond_2

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide p4

    iput-wide p4, v0, Lcom/tencent/bugly/proguard/if;->vA:J

    iput-object p2, v0, Lcom/tencent/bugly/proguard/if;->vC:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string p4, "RMonitor_Heap_MemoryDumpHelper"

    aput-object p4, p2, p3

    const/4 p3, 0x1

    const-string p4, "generateHprof error "

    aput-object p4, p2, p3

    const/4 p3, 0x2

    aput-object p0, p2, p3

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_1
    invoke-static {p0, p1, p3, v0}, Lcom/tencent/bugly/proguard/ow;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/tencent/bugly/proguard/if;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/tencent/bugly/proguard/if;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/bugly/proguard/if;",
            ")V"
        }
    .end annotation

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/ox;->b(Ljava/util/List;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p3, Lcom/tencent/bugly/proguard/if;->iW:Z

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p3, Lcom/tencent/bugly/proguard/if;->vB:Ljava/lang/String;

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "RMonitor_Heap_MemoryDumpHelper"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "leakFlag=true"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ",ZipFile="

    aput-object v2, v0, v1

    iget-boolean v1, p3, Lcom/tencent/bugly/proguard/if;->iW:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, ",leakName="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p0, v0, v1

    const/4 p0, 0x6

    const-string v1, ",dumpPath="

    aput-object v1, v0, p0

    const/4 p0, 0x7

    iget-object p3, p3, Lcom/tencent/bugly/proguard/if;->vB:Ljava/lang/String;

    aput-object p3, v0, p0

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static ik()Z
    .locals 5

    sget-object v0, Lcom/tencent/bugly/proguard/aq;->cl:Lcom/tencent/bugly/proguard/aq;

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->Z()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RMonitor_Heap_MemoryDumpHelper"

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "network is not wifi, don\'t dump"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return v1

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/proguard/id;->vn:Lcom/tencent/bugly/proguard/kr;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/am;->appVersion:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    sget-boolean v3, Lcom/tencent/bugly/proguard/oy;->yv:Z

    if-eqz v3, :cond_2

    :cond_1
    sget-object v1, Lcom/tencent/bugly/proguard/id;->vn:Lcom/tencent/bugly/proguard/kr;

    sget-object v3, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/am;->appVersion:Ljava/lang/String;

    const/4 v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {v1, v3, v0}, Lcom/tencent/bugly/proguard/kr;->e(Ljava/lang/String;I)Lcom/tencent/bugly/proguard/kr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/kr;->commit()Z

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "this user don\'t have dumped"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return v4

    :cond_2
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "this user have dumped."

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return v1
.end method
