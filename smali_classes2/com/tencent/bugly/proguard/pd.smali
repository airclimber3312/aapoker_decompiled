.class public final Lcom/tencent/bugly/proguard/pd;
.super Lcom/tencent/bugly/proguard/iy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/pd$a;
    }
.end annotation


# instance fields
.field private EA:Lcom/tencent/bugly/proguard/pc;

.field private EB:Lcom/tencent/bugly/proguard/pf;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/iy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/pd;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized start()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aP()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/fy;->aY()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_MemoryLeak"

    const-string v2, "don\'t support fork dumper"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/proguard/nf;->hn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pd;->EA:Lcom/tencent/bugly/proguard/pc;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/tencent/bugly/proguard/by;->aF()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v1, Lcom/tencent/bugly/proguard/iv;->vN:Lcom/tencent/bugly/proguard/iw;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/iw;->fK()Lcom/tencent/bugly/proguard/ik;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/it;

    if-nez v1, :cond_1

    new-instance v1, Lcom/tencent/bugly/proguard/pb;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/pb;-><init>()V

    :cond_1
    new-instance v2, Lcom/tencent/bugly/proguard/pc;

    invoke-direct {v2, v0, v1}, Lcom/tencent/bugly/proguard/pc;-><init>(Landroid/os/Handler;Lcom/tencent/bugly/proguard/it;)V

    iput-object v2, p0, Lcom/tencent/bugly/proguard/pd;->EA:Lcom/tencent/bugly/proguard/pc;

    new-instance v0, Lcom/tencent/bugly/proguard/pf;

    invoke-direct {v0, v2}, Lcom/tencent/bugly/proguard/pf;-><init>(Lcom/tencent/bugly/proguard/pc;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/pd;->EB:Lcom/tencent/bugly/proguard/pf;

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/pd;->EB:Lcom/tencent/bugly/proguard/pf;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/pf;->iu()Z

    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v0

    const-string v1, "activity_leak"

    invoke-static {v1}, Lcom/tencent/bugly/proguard/gz;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/cj;->F(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_MemoryLeak"

    const-string v2, "has not valid dumper, start failed"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final stop()V
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/nf;->hn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pd;->EA:Lcom/tencent/bugly/proguard/pc;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/pc;->Ej:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/pd;->EB:Lcom/tencent/bugly/proguard/pf;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/pf;->iv()V

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v0

    const-string v1, "activity_leak"

    invoke-static {v1}, Lcom/tencent/bugly/proguard/gz;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/cj;->G(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
