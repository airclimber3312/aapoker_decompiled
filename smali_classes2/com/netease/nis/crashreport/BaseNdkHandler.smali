.class public abstract Lcom/netease/nis/crashreport/BaseNdkHandler;
.super Ljava/lang/Object;
.source "BaseNdkHandler.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/netease/nis/basesdk/crash/CrashStore;

.field private final d:Lcom/netease/nis/crashreport/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://crash.163.com/uploadCrashLogInfo.do"

    .line 2
    iput-object v0, p0, Lcom/netease/nis/crashreport/BaseNdkHandler;->a:Ljava/lang/String;

    const-string v0, "https://crash.163.com/client/api/uploadStartUpInfo.do"

    .line 3
    iput-object v0, p0, Lcom/netease/nis/crashreport/BaseNdkHandler;->b:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/netease/nis/crashreport/b;

    invoke-direct {v0, p0}, Lcom/netease/nis/crashreport/b;-><init>(Lcom/netease/nis/crashreport/BaseNdkHandler;)V

    iput-object v0, p0, Lcom/netease/nis/crashreport/BaseNdkHandler;->d:Lcom/netease/nis/crashreport/d;

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/crashreport/BaseNdkHandler;)Lcom/netease/nis/basesdk/crash/CrashStore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/crashreport/BaseNdkHandler;->c:Lcom/netease/nis/basesdk/crash/CrashStore;

    return-object p0
.end method


# virtual methods
.method protected abstract buildCrashInfo(Ljava/lang/String;)Ljava/util/Map;
.end method

.method protected abstract buildStartInfo()Ljava/util/Map;
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/netease/nis/basesdk/crash/CrashStore;->getInstance()Lcom/netease/nis/basesdk/crash/CrashStore;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/crashreport/BaseNdkHandler;->c:Lcom/netease/nis/basesdk/crash/CrashStore;

    .line 2
    invoke-virtual {v0, p1}, Lcom/netease/nis/basesdk/crash/CrashStore;->initialize(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/netease/nis/crashreport/NativeHandler;->a()Lcom/netease/nis/crashreport/NativeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/crashreport/BaseNdkHandler;->d:Lcom/netease/nis/crashreport/d;

    invoke-virtual {v0, p1, p2, v1}, Lcom/netease/nis/crashreport/NativeHandler;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/crashreport/d;)I

    .line 6
    invoke-virtual {p0}, Lcom/netease/nis/crashreport/BaseNdkHandler;->buildStartInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/netease/nis/basesdk/crash/StartReportRunnable;

    invoke-virtual {p0}, Lcom/netease/nis/crashreport/BaseNdkHandler;->buildStartInfo()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/crashreport/BaseNdkHandler;->b:Ljava/lang/String;

    new-instance v2, Lcom/netease/nis/crashreport/a;

    invoke-direct {v2, p0}, Lcom/netease/nis/crashreport/a;-><init>(Lcom/netease/nis/crashreport/BaseNdkHandler;)V

    invoke-direct {p2, v0, v1, v2}, Lcom/netease/nis/basesdk/crash/StartReportRunnable;-><init>(Ljava/util/Map;Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    const-string p1, "check and report crash info"

    .line 19
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/netease/nis/crashreport/BaseNdkHandler;->c:Lcom/netease/nis/basesdk/crash/CrashStore;

    invoke-virtual {p1}, Lcom/netease/nis/basesdk/crash/CrashStore;->loadNative()[Ljava/io/File;

    move-result-object p1

    .line 22
    array-length p2, p1

    if-lez p2, :cond_2

    .line 23
    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x5

    const-wide/16 v3, 0x5

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 32
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 34
    :try_start_0
    iget-object v3, p0, Lcom/netease/nis/crashreport/BaseNdkHandler;->c:Lcom/netease/nis/basesdk/crash/CrashStore;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netease/nis/basesdk/crash/CrashStore;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {p0, v3}, Lcom/netease/nis/crashreport/BaseNdkHandler;->interceptHandleException(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 36
    iget-object v3, p0, Lcom/netease/nis/crashreport/BaseNdkHandler;->c:Lcom/netease/nis/basesdk/crash/CrashStore;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/netease/nis/basesdk/crash/CrashStore;->delete(Ljava/lang/String;)V

    goto :goto_1

    .line 38
    :cond_1
    invoke-static {v3}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 40
    new-instance v4, Lcom/netease/nis/basesdk/crash/CrashReportRunnable;

    invoke-virtual {p0, v3}, Lcom/netease/nis/crashreport/BaseNdkHandler;->buildCrashInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lcom/netease/nis/crashreport/BaseNdkHandler;->a:Ljava/lang/String;

    new-instance v6, Lcom/netease/nis/crashreport/c;

    invoke-direct {v6, p0, v2}, Lcom/netease/nis/crashreport/c;-><init>(Lcom/netease/nis/crashreport/BaseNdkHandler;Ljava/lang/String;)V

    invoke-direct {v4, v3, v5, v6}, Lcom/netease/nis/basesdk/crash/CrashReportRunnable;-><init>(Ljava/util/Map;Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    .line 41
    invoke-virtual {p2, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "BaseNdkHandler"

    const-string v3, "logInfo encode error"

    .line 44
    invoke-static {v2, v3}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected interceptHandleException(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected report(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/nis/crashreport/BaseNdkHandler;->c:Lcom/netease/nis/basesdk/crash/CrashStore;

    invoke-virtual {v0, p1}, Lcom/netease/nis/basesdk/crash/CrashStore;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/netease/nis/crashreport/BaseNdkHandler;->interceptHandleException(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/nis/crashreport/BaseNdkHandler;->c:Lcom/netease/nis/basesdk/crash/CrashStore;

    invoke-virtual {v0, p1}, Lcom/netease/nis/basesdk/crash/CrashStore;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/Thread;

    .line 8
    new-instance v2, Lcom/netease/nis/basesdk/crash/CrashReportRunnable;

    invoke-virtual {p0, v0}, Lcom/netease/nis/crashreport/BaseNdkHandler;->buildCrashInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/nis/crashreport/BaseNdkHandler;->a:Ljava/lang/String;

    new-instance v4, Lcom/netease/nis/crashreport/c;

    invoke-direct {v4, p0, p1}, Lcom/netease/nis/crashreport/c;-><init>(Lcom/netease/nis/crashreport/BaseNdkHandler;Ljava/lang/String;)V

    invoke-direct {v2, v0, v3, v4}, Lcom/netease/nis/basesdk/crash/CrashReportRunnable;-><init>(Ljava/util/Map;Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0xbb8

    .line 12
    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const-string p1, "quick upload isInterrupted"

    .line 15
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setStartUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/crashreport/BaseNdkHandler;->b:Ljava/lang/String;

    return-void
.end method

.method public setUploadUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/crashreport/BaseNdkHandler;->a:Ljava/lang/String;

    return-void
.end method

.method public testCrash()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/nis/crashreport/NativeHandler;->a()Lcom/netease/nis/crashreport/NativeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/crashreport/NativeHandler;->c()V

    return-void
.end method
