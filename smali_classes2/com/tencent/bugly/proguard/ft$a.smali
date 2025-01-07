.class final Lcom/tencent/bugly/proguard/ft$a;
.super Lcom/tencent/bugly/proguard/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/tencent/bugly/proguard/p;)V
    .locals 5

    sget-boolean v0, Lcom/tencent/bugly/proguard/r;->ab:Z

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->et()Lcom/tencent/bugly/proguard/ek;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/bugly/proguard/ec;->a(Landroid/content/Context;ZLcom/tencent/bugly/proguard/ek;)Lcom/tencent/bugly/proguard/ec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ec;->df()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/ec;->X:Z

    sget-object v1, Lcom/tencent/bugly/proguard/ft;->rs:Lcom/tencent/bugly/proguard/fv;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/bugly/proguard/ft;->rs:Lcom/tencent/bugly/proguard/fv;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/fv;->eI()I

    move-result v1

    iput v1, v0, Lcom/tencent/bugly/proguard/ec;->W:I

    sget-object v1, Lcom/tencent/bugly/proguard/ft;->rs:Lcom/tencent/bugly/proguard/fv;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/fv;->eJ()Z

    move-result v1

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/ec;->X:Z

    sget-object v1, Lcom/tencent/bugly/proguard/ft;->rs:Lcom/tencent/bugly/proguard/fv;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/fv;->isEnableCatchAnrTrace()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->disableCatchAnrTrace()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->enableCatchAnrTrace()V

    :goto_0
    invoke-static {p1}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v1

    sget-object v2, Lcom/tencent/bugly/proguard/ft;->rs:Lcom/tencent/bugly/proguard/fv;

    iget-boolean v2, v2, Lcom/tencent/bugly/proguard/fv;->O:Z

    iput-boolean v2, v1, Lcom/tencent/bugly/proguard/dh;->hR:Z

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->enableCatchAnrTrace()V

    :goto_1
    invoke-static {}, Lcom/tencent/bugly/proguard/dh;->bG()Lcom/tencent/bugly/proguard/dh;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/bugly/proguard/dh;->processName:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/ec;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/dg;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/tencent/bugly/proguard/ec;->mi:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->removeEmptyNativeRecordFiles()V

    :cond_2
    const/4 v1, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/p;->r()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "[crash] Closed native crash monitor!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ec;->dg()V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/p;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v3

    invoke-static {v2}, Lcom/tencent/bugly/proguard/dz;->Y(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iput-object v2, v3, Lcom/tencent/bugly/proguard/dh;->hv:Ljava/lang/String;

    :cond_5
    invoke-static {p1}, Lcom/tencent/feedback/eup/jni/NativeExceptionHandlerRqdImp;->getInstance(Landroid/content/Context;)Lcom/tencent/feedback/eup/jni/NativeExceptionHandlerRqdImp;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/eup/jni/NativeExceptionUpload;->setmHandler(Lcom/tencent/feedback/eup/jni/NativeExceptionHandler;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ec;->dc()Lcom/tencent/bugly/proguard/ec;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/ec;->startNativeMonitor()V

    :cond_6
    :goto_3
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/p;->s()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    const-string v2, "[crash] Closed ANR monitor!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ec;->di()V

    goto :goto_5

    :cond_8
    :goto_4
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ec;->dh()V

    :goto_5
    invoke-static {p1}, Lcom/tencent/bugly/proguard/eh;->y(Landroid/content/Context;)Lcom/tencent/bugly/proguard/eh;

    invoke-static {}, Lcom/tencent/bugly/proguard/dp;->cI()Lcom/tencent/bugly/proguard/dp;

    move-result-object p1

    invoke-static {}, Lcom/tencent/bugly/proguard/ft;->eu()Lcom/tencent/bugly/proguard/do;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/bugly/proguard/dp;->jb:Lcom/tencent/bugly/proguard/do;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/p;->m()J

    move-result-wide p1

    goto :goto_6

    :cond_9
    const-wide/16 p1, 0xbb8

    :goto_6
    invoke-static {}, Lcom/tencent/bugly/proguard/ds;->cN()Lcom/tencent/bugly/proguard/ds;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/proguard/ec$4;

    invoke-direct {v2, v0}, Lcom/tencent/bugly/proguard/ec$4;-><init>(Lcom/tencent/bugly/proguard/ec;)V

    invoke-virtual {v1, v2, p1, p2}, Lcom/tencent/bugly/proguard/ds;->e(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/ec;->dc()Lcom/tencent/bugly/proguard/ec;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/tencent/bugly/proguard/ec;->mh:Lcom/tencent/bugly/proguard/ei;

    invoke-virtual {v1, p1}, Lcom/tencent/bugly/proguard/ei;->onStrategyChanged(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V

    iget-object v1, v0, Lcom/tencent/bugly/proguard/ec;->mi:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v1, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->onStrategyChanged(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V

    iget-object p1, v0, Lcom/tencent/bugly/proguard/ec;->mj:Lcom/tencent/bugly/proguard/el;

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/el;->dE()V

    :cond_1
    return-void
.end method

.method public final f()[Ljava/lang/String;
    .locals 1

    const-string v0, "t_cr"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
