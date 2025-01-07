.class public Lcom/tencent/rmonitor/natmem/NatMemMonitor;
.super Lcom/tencent/bugly/proguard/iy;


# static fields
.field private static Gu:Lcom/tencent/rmonitor/natmem/NatMemMonitor; = null

.field protected static Gv:Z = false

.field private static Gy:Z


# instance fields
.field private Gw:Lcom/tencent/rmonitor/natmem/NatMemHandler;

.field public Gx:Lcom/tencent/bugly/proguard/gy;

.field private Gz:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "rmonitor_memory"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "RMonitor_NatMem_Monitor"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gy:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/iy;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gz:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-boolean v0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gy:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    const-string v0, "native_memory"

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/proguard/gf;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/gy;

    iput-object v0, p0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gx:Lcom/tencent/bugly/proguard/gy;

    new-instance v0, Lcom/tencent/rmonitor/natmem/NatMemHandler;

    invoke-static {}, Lcom/tencent/bugly/proguard/by;->aF()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/rmonitor/natmem/NatMemHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gw:Lcom/tencent/rmonitor/natmem/NatMemHandler;

    :cond_0
    sput-object p0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gu:Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    iget-object v0, p0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gz:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;
    .locals 2

    sget-object v0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gu:Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gu:Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    invoke-direct {v1}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;-><init>()V

    sput-object v1, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gu:Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gu:Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    return-object v0
.end method


# virtual methods
.method native nativeDumpNatMemUsageInfo(Ljava/lang/String;J)I
.end method

.method native nativeIgnoreLib(Ljava/lang/String;)I
.end method

.method native nativeInit()I
.end method

.method native nativeInitAppHookParameter(I)V
.end method

.method native nativeInitSysHookParameter(III)V
.end method

.method native nativeRegisterAppLib(Ljava/lang/String;)I
.end method

.method native nativeRegisterSysLib(Ljava/lang/String;)I
.end method

.method native nativeSetSceneInfo(Ljava/lang/String;)V
.end method

.method native nativeSetUnwindSwtich(Z)V
.end method

.method native nativeStartHook(J)I
.end method

.method public final start()V
    .locals 8

    sget-boolean v0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gy:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gz:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aS()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "RMonitor_NatMem_Monitor"

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v5, "start native memory monitor fail, for android version"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    const-string v0, "android_verison"

    invoke-static {v0}, Lcom/tencent/bugly/proguard/qi;->bz(Ljava/lang/String;)V

    const/4 v0, 0x2

    goto/16 :goto_3

    :cond_0
    const/16 v0, 0x9a

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kt;->B(I)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v5, "start native memory monitor fail, for start failed many times"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    const-string v0, "crash_times"

    invoke-static {v0}, Lcom/tencent/bugly/proguard/qi;->bz(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_1
    sget-object v5, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ix;->v(I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v5, "start native memory monitor fail, for can not report again"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    const/4 v0, 0x3

    goto/16 :goto_3

    :cond_2
    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ce;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "x86"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "fail"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v0

    const-string v5, "fd_leak"

    invoke-static {v5}, Lcom/tencent/bugly/proguard/gz;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/tencent/bugly/proguard/cj;->H(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x4

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v5, "start native memory monitor fail, couldn\'t open fd and native same time"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x4

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/gf;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/hc;->enabled:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v5, "fd monitor not enable this time"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/cj;->eJ:Z

    if-nez v0, :cond_6

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v5, "start native memory monitor fail, couldn\'t open fd and native same time, natmem not enabled"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v5, "start native memory monitor fail, couldn\'t support x86 or x86_64 arch"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    const/4 v0, 0x5

    :goto_3
    if-eqz v0, :cond_9

    sget-object v0, Lcom/tencent/bugly/proguard/iv;->vV:Lcom/tencent/bugly/proguard/iw;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/iw;->fJ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_4

    :cond_8
    return-void

    :cond_9
    sget-boolean v0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gy:Z

    const-string v5, "native_memory"

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gv:Z

    if-nez v0, :cond_a

    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/gf;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/gy;

    iput-object v0, p0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gx:Lcom/tencent/bugly/proguard/gy;

    iget-object v0, p0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gw:Lcom/tencent/rmonitor/natmem/NatMemHandler;

    invoke-virtual {v0, v3}, Lcom/tencent/rmonitor/natmem/NatMemHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gw:Lcom/tencent/rmonitor/natmem/NatMemHandler;

    invoke-virtual {v0, v2}, Lcom/tencent/rmonitor/natmem/NatMemHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sput-boolean v3, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gv:Z

    goto :goto_5

    :cond_a
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v2, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "startMonitor failed,mSoLoadSuccess = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v7, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gy:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p0, v3}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->nativeSetUnwindSwtich(Z)V

    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v0

    invoke-static {v5}, Lcom/tencent/bugly/proguard/gz;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/cj;->F(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gz:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "start natmem monitor!!"

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public final stop()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gz:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-boolean v0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gy:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->nativeSetUnwindSwtich(Z)V

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v0

    const-string v1, "native_memory"

    invoke-static {v1}, Lcom/tencent/bugly/proguard/gz;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/cj;->G(Ljava/lang/String;)V

    return-void
.end method
