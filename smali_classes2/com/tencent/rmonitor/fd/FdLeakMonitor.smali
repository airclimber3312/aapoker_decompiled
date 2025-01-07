.class public Lcom/tencent/rmonitor/fd/FdLeakMonitor;
.super Lcom/tencent/bugly/proguard/iy;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/rmonitor/fd/FdLeakMonitor$a;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private rX:J

.field private final zA:Lcom/tencent/bugly/proguard/gc;

.field private final zB:Lcom/tencent/bugly/proguard/my;

.field private final zC:Lcom/tencent/bugly/proguard/lf;

.field private zD:[Landroid/os/ParcelFileDescriptor;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/iy;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/gc;

    const-wide/16 v1, 0x2710

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/tencent/bugly/proguard/gc;-><init>(JJ)V

    iput-object v0, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->zA:Lcom/tencent/bugly/proguard/gc;

    new-instance v0, Lcom/tencent/bugly/proguard/my;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/my;-><init>()V

    iput-object v0, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->zB:Lcom/tencent/bugly/proguard/my;

    new-instance v3, Lcom/tencent/bugly/proguard/lf;

    invoke-direct {v3, v0}, Lcom/tencent/bugly/proguard/lf;-><init>(Lcom/tencent/bugly/proguard/my;)V

    iput-object v3, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->zC:Lcom/tencent/bugly/proguard/lf;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->zD:[Landroid/os/ParcelFileDescriptor;

    iput-wide v1, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->rX:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/tencent/bugly/proguard/by;->aF()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->handler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/rmonitor/fd/FdLeakMonitor;-><init>()V

    return-void
.end method

.method public static gR()Lcom/tencent/rmonitor/fd/FdLeakMonitor;
    .locals 1

    invoke-static {}, Lcom/tencent/rmonitor/fd/FdLeakMonitor$a;->gS()Lcom/tencent/rmonitor/fd/FdLeakMonitor;

    move-result-object v0

    return-object v0
.end method

.method public static native nEnableLeakDetectThisTime(Z)Z
.end method

.method static native nInitLeakDetectInNative(II)V
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->x(Z)V

    :cond_0
    return v0
.end method

.method public final start()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fdLeakConfig: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gP()Lcom/tencent/bugly/proguard/gu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RMonitor_FdLeak_Monitor"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/nb;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->zC:Lcom/tencent/bugly/proguard/lf;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/lf;->gT()Lcom/tencent/bugly/proguard/lg;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aP()Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/fy;->aY()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cannot start fd leak monitor due to not support fork dump"

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/nb;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-interface {v0, v4}, Lcom/tencent/bugly/proguard/lg;->C(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/nf;->hn()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "cannot start fd leak monitor due to not have valid dumper"

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/nb;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-interface {v0, v3}, Lcom/tencent/bugly/proguard/lg;->C(I)V

    :cond_1
    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_d

    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/bugly/proguard/ce;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "x86"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "fail"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v2

    const-string v6, "native_memory"

    invoke-static {v6}, Lcom/tencent/bugly/proguard/gz;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/tencent/bugly/proguard/cj;->H(Ljava/lang/String;)Z

    move-result v2

    const/4 v7, 0x6

    if-eqz v2, :cond_4

    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v6, "start fd monitor fail, couldn\'t open fd and native same time"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    if-eqz v0, :cond_8

    :goto_2
    invoke-interface {v0, v7}, Lcom/tencent/bugly/proguard/lg;->C(I)V

    goto :goto_5

    :cond_4
    sget-object v2, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    invoke-static {}, Lcom/tencent/bugly/proguard/gf$a;->eR()Lcom/tencent/bugly/proguard/gf;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/tencent/bugly/proguard/gf;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tencent/bugly/proguard/hc;->enabled:Z

    if-nez v2, :cond_5

    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v6, "native memory monitor not enable this time"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tencent/bugly/proguard/cj;->eK:Z

    if-nez v2, :cond_6

    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v6, "start fd monitor fail, couldn\'t open fd and native same time, fd not enabled"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_6
    :goto_3
    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    :goto_4
    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v6, "start fd leak monitor fail, couldn\'t support x86 or x86_64 arch"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_8
    :goto_5
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_d

    sget-object v2, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_9

    const-string v6, "fd_dump_exception_count"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lt v2, v3, :cond_9

    const/4 v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_b

    const-string v2, "dump heap exception too many times."

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/nb;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_a

    const/4 v2, 0x3

    :goto_8
    invoke-interface {v0, v2}, Lcom/tencent/bugly/proguard/lg;->C(I)V

    :cond_a
    const/4 v2, 0x0

    goto :goto_9

    :cond_b
    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gL()Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x97

    invoke-static {v2}, Lcom/tencent/bugly/proguard/kt;->B(I)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "cannot start fd leak monitor due to too many crashes"

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/nb;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_a

    const/4 v2, 0x4

    goto :goto_8

    :cond_c
    const/4 v2, 0x1

    :goto_9
    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    :goto_a
    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->zA:Lcom/tencent/bugly/proguard/gc;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/kh;->a(Lcom/tencent/bugly/proguard/ke;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v2

    const-string v3, "fd_leak"

    invoke-static {v3}, Lcom/tencent/bugly/proguard/gz;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/cj;->F(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->handler:Landroid/os/Handler;

    iget-wide v6, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->rX:J

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gL()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->hi()Z

    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gN()Z

    move-result v2

    if-eqz v2, :cond_f

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aQ()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_c

    :cond_e
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->zD:[Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_f

    array-length v2, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gM()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->zD:[Landroid/os/ParcelFileDescriptor;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->nInitLeakDetectInNative(II)V

    iget-object v2, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->zD:[Landroid/os/ParcelFileDescriptor;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/proguard/by;->aF()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    new-instance v6, Lcom/tencent/bugly/proguard/lh;

    invoke-direct {v6}, Lcom/tencent/bugly/proguard/lh;-><init>()V

    invoke-virtual {v3, v2, v4, v6}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-static {v5}, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->nEnableLeakDetectThisTime(Z)Z

    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    invoke-virtual {v3, v1, v2}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    invoke-static {v4}, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->nEnableLeakDetectThisTime(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v2

    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    invoke-virtual {v3, v1, v2}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_c
    const-string v2, "fd leak monitor started."

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/nb;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_10

    invoke-interface {v0, v5}, Lcom/tencent/bugly/proguard/lg;->C(I)V

    :cond_10
    invoke-static {}, Lcom/tencent/bugly/proguard/ff;->dT()V

    :try_start_3
    const-string v0, "com.tencent.bugly.proguard.fu"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "triggerUserInfoUpload"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    invoke-virtual {v2, v1, v0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    return-void
.end method

.method public final stop()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->zA:Lcom/tencent/bugly/proguard/gc;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kh;->b(Lcom/tencent/bugly/proguard/ke;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v0

    const-string v1, "fd_leak"

    invoke-static {v1}, Lcom/tencent/bugly/proguard/gz;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/cj;->G(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gN()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->nEnableLeakDetectThisTime(Z)Z

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gL()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->hj()V

    :cond_1
    return-void
.end method

.method public final x(Z)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current fd: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/mu;->hg()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", from native: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RMonitor_FdLeak_Monitor"

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/nb;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/mu;->hg()I

    move-result p1

    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gM()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const/16 v1, 0x97

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->zC:Lcom/tencent/bugly/proguard/lf;

    iget v4, p1, Lcom/tencent/bugly/proguard/lf;->zH:I

    const/4 v5, 0x3

    const-string v6, "RMonitor_FdLeak_Trigger"

    if-lt v4, v5, :cond_2

    const-string p1, "fd leak detected, but fd dump empty to many times."

    :goto_2
    invoke-static {v6, p1}, Lcom/tencent/bugly/proguard/nb;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    sget-object v4, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ix;->v(I)Z

    move-result v4

    if-nez v4, :cond_3

    const-string p1, "fd leak detected, but don\'t collect."

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/tencent/bugly/proguard/mm;->hd()V

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/lf;->gT()Lcom/tencent/bugly/proguard/lg;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/mm;->a(ILcom/tencent/bugly/proguard/mo;)Lcom/tencent/bugly/proguard/mn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/mn;->getErrorCode()I

    move-result v5

    const/16 v7, 0xb

    if-ne v5, v7, :cond_4

    iget v5, p1, Lcom/tencent/bugly/proguard/lf;->zH:I

    add-int/2addr v5, v2

    iput v5, p1, Lcom/tencent/bugly/proguard/lf;->zH:I

    goto :goto_3

    :cond_4
    iput v3, p1, Lcom/tencent/bugly/proguard/lf;->zH:I

    :goto_3
    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/mn;->gZ()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    iget-object v5, v4, Lcom/tencent/bugly/proguard/mn;->data:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    invoke-static {v5}, Lcom/tencent/rmonitor/fd/cluser/FdCluster;->f(Ljava/util/Map;)Lcom/tencent/bugly/proguard/mh;

    move-result-object v5

    const-string v7, "top fd: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/nb;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gP()Lcom/tencent/bugly/proguard/gu;

    move-result-object v7

    iget v7, v7, Lcom/tencent/bugly/proguard/gu;->tT:F

    invoke-static {v7}, Lcom/tencent/bugly/proguard/ix;->a(F)Z

    move-result v7

    if-nez v7, :cond_7

    const-string p1, "do fd analyze, but not sampled."

    invoke-static {v6, p1}, Lcom/tencent/bugly/proguard/nb;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/tencent/bugly/proguard/mu;->hg()I

    move-result v3

    new-instance v6, Lcom/tencent/bugly/proguard/lf$1;

    invoke-direct {v6, p1, v5, v3, v4}, Lcom/tencent/bugly/proguard/lf$1;-><init>(Lcom/tencent/bugly/proguard/lf;Lcom/tencent/bugly/proguard/mh;ILcom/tencent/bugly/proguard/mn;)V

    const-wide/16 v3, 0x0

    invoke-static {v6, v3, v4}, Lcom/tencent/bugly/proguard/by;->b(Ljava/lang/Runnable;J)V

    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_9

    const-wide/32 v3, 0x15f90

    iput-wide v3, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->rX:J

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->zA:Lcom/tencent/bugly/proguard/gc;

    iget-wide v3, p1, Lcom/tencent/bugly/proguard/gc;->rX:J

    iput-wide v3, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->rX:J

    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gN()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v2}, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->nEnableLeakDetectThisTime(Z)Z

    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-object p1, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ix;->v(I)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->handler:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->rX:J

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_a
    const-string p1, "fd leak can\'t collect, stop detect."

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/nb;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->stop()V

    return-void
.end method
