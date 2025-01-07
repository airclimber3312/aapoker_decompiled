.class abstract Lcom/tencent/bugly/proguard/pk;
.super Lcom/tencent/bugly/proguard/pg;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/pc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/pg;-><init>(Lcom/tencent/bugly/proguard/pc;)V

    return-void
.end method


# virtual methods
.method protected final i(Landroid/app/Activity;)V
    .locals 2

    invoke-static {p1}, Lcom/tencent/rmonitor/memory/leakdetect/ActivityLeakSolution;->fixInputMethodManagerLeak(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/tencent/rmonitor/memory/leakdetect/ActivityLeakSolution;->fixAudioManagerLeak(Landroid/content/Context;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/pk;->EA:Lcom/tencent/bugly/proguard/pc;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/tencent/bugly/proguard/pc;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_MemoryLeak_BaseActivityWatcher"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
