.class final Lcom/tencent/bugly/proguard/gd$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/gd;->r(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic se:Lcom/tencent/bugly/proguard/gd;

.field final synthetic sf:I


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/gd;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/gd$2;->se:Lcom/tencent/bugly/proguard/gd;

    iput p2, p0, Lcom/tencent/bugly/proguard/gd$2;->sf:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gd$2;->se:Lcom/tencent/bugly/proguard/gd;

    iget-boolean v1, v0, Lcom/tencent/bugly/proguard/gd;->sc:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/gd;->sc:Z

    sget-object v1, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    invoke-static {}, Lcom/tencent/bugly/proguard/ix;->fL()V

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/bugly/proguard/gd;->sb:Lcom/tencent/bugly/proguard/gk;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/tencent/bugly/proguard/gd;->sb:Lcom/tencent/bugly/proguard/gk;

    iput-object v2, v1, Lcom/tencent/bugly/proguard/gf;->sh:Lcom/tencent/bugly/proguard/gk;

    goto :goto_0

    :cond_0
    const-string v2, "v7"

    invoke-static {v2}, Lcom/tencent/bugly/proguard/id;->aL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/bugly/proguard/gf;->si:Lcom/tencent/bugly/proguard/hm;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/hm;->uj:Lcom/tencent/bugly/proguard/hh;

    iput-object v2, v3, Lcom/tencent/bugly/proguard/hh;->iy:Ljava/lang/String;

    sget-object v2, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/gf;->c(Lcom/tencent/bugly/proguard/am;)V

    :goto_0
    invoke-static {}, Lcom/tencent/bugly/proguard/by;->aF()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v1, Lcom/tencent/bugly/proguard/gf;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/tencent/bugly/proguard/gf;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v3, v2, :cond_2

    :cond_1
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, v1, Lcom/tencent/bugly/proguard/gf;->handler:Landroid/os/Handler;

    :cond_2
    iget-object v1, v1, Lcom/tencent/bugly/proguard/gf;->sa:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v0

    iget v1, p0, Lcom/tencent/bugly/proguard/gd$2;->sf:I

    new-instance v2, Lcom/tencent/bugly/proguard/gf$2;

    invoke-direct {v2, v0, v1}, Lcom/tencent/bugly/proguard/gf$2;-><init>(Lcom/tencent/bugly/proguard/gf;I)V

    iget-object v0, v0, Lcom/tencent/bugly/proguard/gf;->handler:Landroid/os/Handler;

    const-string v1, "RMonitor_config_fetcher"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_4

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v4, "load config in specified thread."

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_5
    :goto_1
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "load config in current thread."

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void
.end method
