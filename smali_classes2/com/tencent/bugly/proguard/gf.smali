.class public final Lcom/tencent/bugly/proguard/gf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/gf$a;
    }
.end annotation


# instance fields
.field public handler:Landroid/os/Handler;

.field final sa:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/tencent/bugly/proguard/gj;",
            ">;"
        }
    .end annotation
.end field

.field public final sg:Lcom/tencent/bugly/proguard/hb;

.field sh:Lcom/tencent/bugly/proguard/gk;

.field final si:Lcom/tencent/bugly/proguard/hm;

.field private sj:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/hb;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/hb;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/gf;->sg:Lcom/tencent/bugly/proguard/hb;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/gf;->sh:Lcom/tencent/bugly/proguard/gk;

    new-instance v1, Lcom/tencent/bugly/proguard/hm;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/hm;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/gf;->si:Lcom/tencent/bugly/proguard/hm;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/gf;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gf;->sj:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/gf;->sa:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/gf;I)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gf;->sh:Lcom/tencent/bugly/proguard/gk;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/gf;->si:Lcom/tencent/bugly/proguard/hm;

    :goto_0
    const-string v1, "RMonitor_config_fetcher"

    if-nez v0, :cond_1

    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p1, "load config fail for loader is null"

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "load config now."

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/gf;->sg:Lcom/tencent/bugly/proguard/hb;

    invoke-interface {v0, v2, p1}, Lcom/tencent/bugly/proguard/gk;->a(Lcom/tencent/bugly/proguard/hb;I)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/gf;->sa:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/gj;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/gf;->sg:Lcom/tencent/bugly/proguard/hb;

    invoke-interface {v0, v2}, Lcom/tencent/bugly/proguard/gj;->a(Lcom/tencent/bugly/proguard/hb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    invoke-virtual {p1, v1, p0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static eO()Lcom/tencent/bugly/proguard/gf;
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/gf$a;->eR()Lcom/tencent/bugly/proguard/gf;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final aB(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/gf;->eP()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/gf;->eQ()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/gf;->sg:Lcom/tencent/bugly/proguard/hb;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/hb;->aB(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;

    move-result-object p1

    return-object p1
.end method

.method public final ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/gf;->eP()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/gf;->eQ()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/gf;->sg:Lcom/tencent/bugly/proguard/hb;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/hb;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/tencent/bugly/proguard/am;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gf;->si:Lcom/tencent/bugly/proguard/hm;

    iput-object p1, v0, Lcom/tencent/bugly/proguard/hm;->uv:Lcom/tencent/bugly/proguard/am;

    return-void
.end method

.method public final eP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/gf;->sj:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final eQ()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/gf;->sj:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gf;->sj:Z

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/gf;->si:Lcom/tencent/bugly/proguard/hm;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/gf;->sg:Lcom/tencent/bugly/proguard/hb;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/hm;->b(Lcom/tencent/bugly/proguard/hb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "RMonitor_config_fetcher"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
