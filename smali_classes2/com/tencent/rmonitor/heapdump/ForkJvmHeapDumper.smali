.class public Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;
.super Lcom/tencent/rmonitor/heapdump/StripHeapDumper;


# static fields
.field private static Az:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aP()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->Au:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->Az:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/ay;->aj()Lcom/tencent/bugly/proguard/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ay;->ag()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->nInitForkDump(I)Z

    move-result v0

    sput-boolean v0, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->Az:Z

    :cond_1
    return-void
.end method

.method private static native nDisableCrashProtect()V
.end method

.method private static native nEnableCrashProtect()V
.end method

.method private static native nExitProcess(I)V
.end method

.method private static native nInitForkDump(I)Z
.end method

.method private static native nResumeVM(J)V
.end method

.method private static native nSuspendVM(J)I
.end method

.method private static native nWaitProcessExit(I)I
.end method

.method private static z(Z)V
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v0

    const-string v1, "fd_leak"

    invoke-static {v1}, Lcom/tencent/bugly/proguard/gz;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/cj;->H(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gL()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;->y(Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/tencent/bugly/proguard/ne;)I
    .locals 10

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_ForkDumper"

    aput-object v3, v1, v2

    const-string v4, "dump "

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->Au:Z

    if-nez v0, :cond_0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p2, "dump failed caused by so not loaded!"

    filled-new-array {v3, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    const/16 p1, 0x65

    return p1

    :cond_0
    sget-boolean v0, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->Az:Z

    if-nez v0, :cond_1

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p2, "dump failed caused by Symbol is not resolved!"

    filled-new-array {v3, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    const/16 p1, 0x66

    return p1

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/nd;->hl()J

    move-result-wide v0

    const-wide/16 v6, 0x400

    mul-long v0, v0, v6

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    cmp-long v4, v0, v6

    if-lez v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p2, "dump failed caused by disk space not enough!"

    filled-new-array {v3, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    const/16 p1, 0x67

    return p1

    :cond_3
    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aP()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p2, "dump failed caused by version net permitted!"

    filled-new-array {v3, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    const/16 p1, 0x68

    return p1

    :cond_4
    new-instance v0, Lcom/tencent/rmonitor/heapdump/StripHeapDumper$a;

    invoke-direct {v0}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper$a;-><init>()V

    invoke-static {v2}, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->z(Z)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/jl;->c(Ljava/lang/Thread;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->nSuspendVM(J)I

    move-result v1

    const-string v4, "activity_leak"

    const-string v6, "memory"

    if-nez v1, :cond_6

    invoke-static {}, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->nEnableCrashProtect()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->a(Ljava/lang/String;Lcom/tencent/bugly/proguard/ne;Lcom/tencent/rmonitor/heapdump/StripHeapDumper$a;)V

    invoke-static {}, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->nDisableCrashProtect()V

    iget-boolean p2, v0, Lcom/tencent/rmonitor/heapdump/StripHeapDumper$a;->AL:Z

    if-nez p2, :cond_5

    const/16 p2, -0x65

    invoke-static {p2}, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->nExitProcess(I)V

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->nExitProcess(I)V

    goto :goto_2

    :cond_6
    invoke-static {v5}, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->z(Z)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/jl;->c(Ljava/lang/Thread;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->nResumeVM(J)V

    const-string v0, "main process waiting dump result."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v5, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper$1;-><init>(Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    invoke-virtual {p0}, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->ho()Landroid/os/Handler;

    move-result-object v7

    const-wide/32 v8, 0xea60

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {v1}, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->nWaitProcessExit(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->ho()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v5, "main process wait result: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x6a

    goto :goto_1

    :cond_7
    const/16 p1, 0x69

    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/bb;->b(Lcom/tencent/bugly/proguard/am;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v4, v0, v2, v1}, Lcom/tencent/bugly/proguard/rb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p2}, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->a(Lcom/tencent/bugly/proguard/ne;)V

    return p1

    :cond_8
    :goto_2
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    const-wide/32 v0, 0x100000

    cmp-long v3, p1, v0

    if-lez v3, :cond_9

    return v2

    :cond_9
    sget-object p1, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/bb;->b(Lcom/tencent/bugly/proguard/am;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    const-string v0, "108"

    invoke-static {v6, v4, v0, p1, p2}, Lcom/tencent/bugly/proguard/rb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x6c

    return p1
.end method

.method public final bridge synthetic bp(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/rmonitor/heapdump/StripHeapDumper;->bp(Ljava/lang/String;)V

    return-void
.end method

.method public final isValid()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;->Az:Z

    return v0
.end method
