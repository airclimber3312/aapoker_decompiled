.class public final Lcom/tencent/bugly/proguard/gt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/gi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/gt$a;
    }
.end annotation


# instance fields
.field private final tc:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/bugly/proguard/gi;",
            ">;"
        }
    .end annotation
.end field

.field private volatile td:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/gt;->tc:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gt;->td:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/gt;-><init>()V

    return-void
.end method

.method private static aC(Ljava/lang/String;)Lcom/tencent/bugly/proguard/gi;
    .locals 4

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/gi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_config"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "new creator fail {"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private eY()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gt;->tc:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/gt;->eZ()V

    :cond_0
    return-void
.end method

.method private declared-synchronized eZ()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/gt;->td:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_config"

    const-string v2, "generate creator"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    const-string v0, "com.tencent.rmonitor.base.config.creator.LagConfigCreator"

    invoke-static {v0}, Lcom/tencent/bugly/proguard/gt;->aC(Ljava/lang/String;)Lcom/tencent/bugly/proguard/gi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/gt;->a(Lcom/tencent/bugly/proguard/gi;)V

    const-string v0, "com.tencent.rmonitor.base.config.creator.MemoryConfigCreator"

    invoke-static {v0}, Lcom/tencent/bugly/proguard/gt;->aC(Ljava/lang/String;)Lcom/tencent/bugly/proguard/gi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/gt;->a(Lcom/tencent/bugly/proguard/gi;)V

    const-string v0, "com.tencent.rmonitor.base.config.creator.TrafficConfigCreator"

    invoke-static {v0}, Lcom/tencent/bugly/proguard/gt;->aC(Ljava/lang/String;)Lcom/tencent/bugly/proguard/gi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/gt;->a(Lcom/tencent/bugly/proguard/gi;)V

    const-string v0, "com.tencent.bugly.crashreport.common.config.CrashConfigCreator"

    invoke-static {v0}, Lcom/tencent/bugly/proguard/gt;->aC(Ljava/lang/String;)Lcom/tencent/bugly/proguard/gi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/gt;->a(Lcom/tencent/bugly/proguard/gi;)V

    const-string v0, "com.tencent.rmonitor.base.config.creator.DefaultConfigCreator"

    invoke-static {v0}, Lcom/tencent/bugly/proguard/gt;->aC(Ljava/lang/String;)Lcom/tencent/bugly/proguard/gi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/gt;->a(Lcom/tencent/bugly/proguard/gi;)V

    new-instance v0, Lcom/tencent/bugly/proguard/ac;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ac;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/gt;->a(Lcom/tencent/bugly/proguard/gi;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gt;->td:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/gi;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gt;->tc:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gt;->tc:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_config"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add config creator {"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;
    .locals 3

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/gt;->eY()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gt;->tc:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/gi;

    invoke-interface {v1, p1}, Lcom/tencent/bugly/proguard/gi;->j(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v1
.end method

.method public final k(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;
    .locals 3

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/gt;->eY()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gt;->tc:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/gi;

    invoke-interface {v1, p1}, Lcom/tencent/bugly/proguard/gi;->k(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v1
.end method
