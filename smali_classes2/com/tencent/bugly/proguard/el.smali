.class public final Lcom/tencent/bugly/proguard/el;
.super Ljava/lang/Object;


# static fields
.field private static np:Lcom/tencent/bugly/proguard/el; = null

.field private static volatile nr:Ljava/lang/String; = null

.field private static volatile ns:J = -0x1L


# instance fields
.field private final kq:Lcom/tencent/bugly/proguard/dh;

.field private final lB:Lcom/tencent/bugly/proguard/dj;

.field private final mContext:Landroid/content/Context;

.field private final mg:Lcom/tencent/bugly/proguard/eb;

.field public final ng:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final nh:Landroid/app/ActivityManager;

.field private final ni:Lcom/tencent/bugly/proguard/ds;

.field private final nj:Ljava/lang/Object;

.field private nk:Ljava/lang/String;

.field private nl:Landroid/os/FileObserver;

.field private nm:Z

.field private nn:Lcom/tencent/bugly/proguard/et;

.field private no:I

.field private nq:J

.field private final nt:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/dj;Lcom/tencent/bugly/proguard/dh;Lcom/tencent/bugly/proguard/ds;Lcom/tencent/bugly/proguard/eb;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/el;->ng:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/el;->nj:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/el;->nm:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/el;->nq:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/el;->nt:Ljava/lang/Object;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/dz;->x(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/el;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/el;->nh:Landroid/app/ActivityManager;

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getDumpFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/dz;->Y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bugly"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getDumpFilePath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/tencent/bugly/proguard/el;->nk:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    iput-object p4, p0, Lcom/tencent/bugly/proguard/el;->ni:Lcom/tencent/bugly/proguard/ds;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/el;->lB:Lcom/tencent/bugly/proguard/dj;

    iput-object p5, p0, Lcom/tencent/bugly/proguard/el;->mg:Lcom/tencent/bugly/proguard/eb;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 5

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-direct {p2}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-wide v0, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kE:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kE:J

    :cond_1
    const/4 v0, 0x3

    iput v0, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->type:I

    const-string v0, "ANR_EXCEPTION"

    iput-object v0, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kU:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "main stack is null , some error may be encountered."

    :goto_1
    iput-object p1, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/dh;->processName:Ljava/lang/String;

    iput-object p1, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->processName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :goto_2
    invoke-static {p1}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/el;)Lcom/tencent/bugly/proguard/ds;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/el;->ni:Lcom/tencent/bugly/proguard/ds;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/bugly/proguard/dj;Lcom/tencent/bugly/proguard/dh;Lcom/tencent/bugly/proguard/ds;Lcom/tencent/bugly/proguard/eb;)Lcom/tencent/bugly/proguard/el;
    .locals 7

    sget-object v0, Lcom/tencent/bugly/proguard/el;->np:Lcom/tencent/bugly/proguard/el;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/proguard/el;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/el;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/dj;Lcom/tencent/bugly/proguard/dh;Lcom/tencent/bugly/proguard/ds;Lcom/tencent/bugly/proguard/eb;)V

    sput-object v0, Lcom/tencent/bugly/proguard/el;->np:Lcom/tencent/bugly/proguard/el;

    :cond_0
    sget-object p0, Lcom/tencent/bugly/proguard/el;->np:Lcom/tencent/bugly/proguard/el;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/el;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/el;->b(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/el;Ljava/lang/String;)V
    .locals 10

    const-string v0, " "

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/el;->k(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "read trace first dump for create time!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-string v0, "path:%s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/tencent/bugly/proguard/ep$a;

    invoke-direct {v4}, Lcom/tencent/bugly/proguard/ep$a;-><init>()V

    new-instance v5, Lcom/tencent/bugly/proguard/ep$2;

    invoke-direct {v5, v4}, Lcom/tencent/bugly/proguard/ep$2;-><init>(Lcom/tencent/bugly/proguard/ep$a;)V

    invoke-static {p1, v5}, Lcom/tencent/bugly/proguard/ep;->a(Ljava/lang/String;Lcom/tencent/bugly/proguard/ep$b;)V

    iget-wide v5, v4, Lcom/tencent/bugly/proguard/ep$a;->nE:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    iget-wide v5, v4, Lcom/tencent/bugly/proguard/ep$a;->nG:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    iget-object v5, v4, Lcom/tencent/bugly/proguard/ep$a;->nF:Ljava/lang/String;

    if-eqz v5, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    const-string v5, "first dump error %s"

    new-array v6, v1, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v4, Lcom/tencent/bugly/proguard/ep$a;->nE:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v4, Lcom/tencent/bugly/proguard/ep$a;->nG:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/tencent/bugly/proguard/ep$a;->nF:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    const-wide/16 v4, -0x1

    if-eqz v3, :cond_2

    iget-wide v6, v3, Lcom/tencent/bugly/proguard/ep$a;->nG:J

    goto :goto_1

    :cond_2
    move-wide v6, v4

    :goto_1
    cmp-long v0, v6, v4

    if-nez v0, :cond_3

    const-string v0, "trace dump fail could not get time!"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :cond_3
    invoke-direct {p0, v6, v7}, Lcom/tencent/bugly/proguard/el;->h(J)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    const-string v3, "ANR"

    sget v4, Lcom/tencent/bugly/proguard/dy$a;->kt:I

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->recordProcessingState(Ljava/lang/String;I)V

    invoke-direct {p0, v6, v7, p1}, Lcom/tencent/bugly/proguard/el;->b(JLjava/lang/String;)V

    new-instance p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-direct {p1}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>()V

    sget-wide v3, Lcom/tencent/bugly/proguard/el;->ns:J

    iput-wide v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kE:J

    sget-object v0, Lcom/tencent/bugly/proguard/el;->nr:Ljava/lang/String;

    iput-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->la:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/el;->mg:Lcom/tencent/bugly/proguard/eb;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/eb;->g(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    sget v3, Lcom/tencent/bugly/proguard/dy$a;->ku:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->modifyProcessingState(IZ)V

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/el;->x(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "handle anr error %s"

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method static synthetic aj(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "manual_bugly_trace_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".txt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/util/List;J)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/eo;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\n>>>>> \u4ee5\u4e0b\u4e3aanr\u8fc7\u7a0b\u4e2d\u4e3b\u7ebf\u7a0b\u5806\u6808\u8bb0\u5f55\uff0c\u53ef\u6839\u636e\u5806\u6808\u51fa\u73b0\u6b21\u6570\u63a8\u6d4b\u5728\u8be5\u5806\u6808\u963b\u585e\u7684\u65f6\u95f4\uff0c\u51fa\u73b0\u6b21\u6570\u8d8a\u591a\u5bf9anr\u8d21\u732e\u8d8a\u5927\uff0c\u8d8a\u53ef\u80fd\u662f\u9020\u6210anr\u7684\u539f\u56e0 >>>>>\n\n>>>>> Thread Stack Traces Records Start >>>>>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/eo;

    const-string v3, "Thread name:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/bugly/proguard/eo;->lf:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/tencent/bugly/proguard/eo;->fv:J

    sub-long/2addr v4, p1

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1

    const-string v6, "before "

    goto :goto_1

    :cond_1
    const-string v6, "after "

    :goto_1
    const-string v7, "Got "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "anr:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/eo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    const v3, 0x18c00

    if-ge v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "\n<<<<< Thread Stack Traces Records End <<<<<\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const-string p0, "main thread stack not enable\n"

    return-object p0
.end method

.method private b(JLjava/lang/String;)V
    .locals 6

    const-string v0, "anr time:%s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "trace file:%s"

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p3, v2, v4

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/el;->nk:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "bugly_trace_"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ".txt"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "trace file exists"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "/data/anr/"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/bugly/proguard/dg;->m(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v2, v3}, Lcom/tencent/bugly/proguard/el;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    const-string v2, "backup trace isOK:%s"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p3

    const-string v2, "trace file rename :%s"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    iget-object p3, p0, Lcom/tencent/bugly/proguard/el;->nj:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/el;->nn:Lcom/tencent/bugly/proguard/et;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v5, v2, Lcom/tencent/bugly/proguard/et;->od:Lcom/tencent/bugly/proguard/es;

    if-eqz v5, :cond_2

    iget-object v2, v2, Lcom/tencent/bugly/proguard/et;->od:Lcom/tencent/bugly/proguard/es;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/es;->dL()Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    :cond_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    invoke-static {v3, p1, p2}, Lcom/tencent/bugly/proguard/el;->b(Ljava/util/List;J)Ljava/lang/String;

    move-result-object p3

    const-string v2, "save main stack trace"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, p3, v2, v3, v1}, Lcom/tencent/bugly/proguard/dv;->a(Ljava/io/File;Ljava/lang/String;JZ)Z

    :cond_3
    sput-wide p1, Lcom/tencent/bugly/proguard/el;->ns:J

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tencent/bugly/proguard/el;->nr:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_1
    const-string p1, "trace file is null or not exists, just ignore"

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/el;)V
    .locals 5

    sget-wide v0, Lcom/tencent/bugly/proguard/ec;->lT:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/dz;->cX()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/bugly/proguard/el;->nk:Ljava/lang/String;

    const-string v3, "bugly_trace_"

    const-string v4, ".txt"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/tencent/bugly/proguard/dv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/el;->nk:Ljava/lang/String;

    const-string v3, "manual_bugly_trace_"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/tencent/bugly/proguard/dv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/el;->nk:Ljava/lang/String;

    const-string v3, "main_stack_record_"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/tencent/bugly/proguard/dv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/tencent/bugly/proguard/el;->nk:Ljava/lang/String;

    const-string v2, ".txt.merged"

    invoke-static {p0, v3, v2, v0, v1}, Lcom/tencent/bugly/proguard/dv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/bugly/proguard/el;)Lcom/tencent/bugly/proguard/dh;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    return-object p0
.end method

.method static synthetic d(Lcom/tencent/bugly/proguard/el;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/el;->x(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    return-void
.end method

.method public static declared-synchronized dB()Lcom/tencent/bugly/proguard/el;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/el;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/el;->np:Lcom/tencent/bugly/proguard/el;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized dC()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/el;->isOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "start when started!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/tencent/bugly/proguard/el$1;

    const-string v2, "/data/anr/"

    invoke-direct {v0, p0, v2}, Lcom/tencent/bugly/proguard/el$1;-><init>(Lcom/tencent/bugly/proguard/el;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/el;->nl:Landroid/os/FileObserver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    const-string v0, "start anr monitor!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/el;->ni:Lcom/tencent/bugly/proguard/ds;

    new-instance v2, Lcom/tencent/bugly/proguard/el$2;

    invoke-direct {v2, p0}, Lcom/tencent/bugly/proguard/el$2;-><init>(Lcom/tencent/bugly/proguard/el;)V

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/ds;->b(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/tencent/bugly/proguard/el;->nl:Landroid/os/FileObserver;

    const-string v2, "start anr monitor failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dD()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/el;->isOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "close when closed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/el;->nl:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/el;->nl:Landroid/os/FileObserver;

    const-string v0, "close anr monitor!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v2, "stop anr monitor failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dF()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/el;->isOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "start when started!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/el;->nk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/el;->nj:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v2, p0, Lcom/tencent/bugly/proguard/el;->nn:Lcom/tencent/bugly/proguard/et;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/et;->isAlive()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    new-instance v2, Lcom/tencent/bugly/proguard/et;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/et;-><init>()V

    iput-object v2, p0, Lcom/tencent/bugly/proguard/el;->nn:Lcom/tencent/bugly/proguard/et;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-boolean v3, v3, Lcom/tencent/bugly/proguard/dh;->hR:Z

    iput-boolean v3, v2, Lcom/tencent/bugly/proguard/et;->of:Z

    const-string v2, "set record stack trace enable:"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tencent/bugly/proguard/el;->nn:Lcom/tencent/bugly/proguard/et;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bugly-ThreadMonitor"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/tencent/bugly/proguard/el;->no:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/tencent/bugly/proguard/el;->no:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/et;->setName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-boolean v2, v2, Lcom/tencent/bugly/proguard/dh;->hR:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/bugly/proguard/el;->nn:Lcom/tencent/bugly/proguard/et;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/et;->dO()Z

    :cond_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v0, Lcom/tencent/bugly/proguard/el$4;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/el;->nk:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/tencent/bugly/proguard/el$4;-><init>(Lcom/tencent/bugly/proguard/el;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/el;->nl:Landroid/os/FileObserver;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    const-string v0, "startWatchingPrivateAnrDir! dumFilePath is %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/el;->nk:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/el;->ni:Lcom/tencent/bugly/proguard/ds;

    new-instance v2, Lcom/tencent/bugly/proguard/el$5;

    invoke-direct {v2, p0}, Lcom/tencent/bugly/proguard/el$5;-><init>(Lcom/tencent/bugly/proguard/el;)V

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/ds;->b(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_6
    iput-object v2, p0, Lcom/tencent/bugly/proguard/el;->nl:Landroid/os/FileObserver;

    const-string v2, "startWatchingPrivateAnrDir failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_4
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dG()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/el;->isOpened()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "close when closed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/el;->nj:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, p0, Lcom/tencent/bugly/proguard/el;->nn:Lcom/tencent/bugly/proguard/et;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/et;->dN()Z

    iput-object v3, p0, Lcom/tencent/bugly/proguard/el;->nn:Lcom/tencent/bugly/proguard/et;

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v0, "stopWatchingPrivateAnrDir"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/el;->nl:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v3, p0, Lcom/tencent/bugly/proguard/el;->nl:Landroid/os/FileObserver;

    const-string v0, "close anr monitor!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    const-string v2, "stop anr monitor failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static dk()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x1e

    if-ge v1, v3, :cond_0

    :try_start_0
    const-string v1, "try main sleep for make a test anr! try:%d/30 , kill it if you don\'t want to wait!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v3, 0x1388

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/dz;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/tencent/bugly/proguard/el;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/el;->nk:Ljava/lang/String;

    return-object p0
.end method

.method private h(J)Z
    .locals 6

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/el;->nq:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    const-string v0, "should not process ANR too Fre in %dms"

    invoke-static {v0, p2}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return p1

    :cond_0
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/el;->nq:J

    return v4
.end method

.method private static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tencent/bugly/proguard/ep$a;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/ep$a;-><init>()V

    new-instance v2, Lcom/tencent/bugly/proguard/ep$1;

    invoke-direct {v2, v1, p2}, Lcom/tencent/bugly/proguard/ep$1;-><init>(Lcom/tencent/bugly/proguard/ep$a;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/tencent/bugly/proguard/ep;->a(Ljava/lang/String;Lcom/tencent/bugly/proguard/ep$b;)V

    iget-wide v2, v1, Lcom/tencent/bugly/proguard/ep$a;->nE:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    iget-wide v2, v1, Lcom/tencent/bugly/proguard/ep$a;->nG:J

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    iget-object p0, v1, Lcom/tencent/bugly/proguard/ep$a;->nF:Ljava/lang/String;

    if-eqz p0, :cond_1

    move-object v0, v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/tencent/bugly/proguard/ep$a;->nH:Ljava/util/Map;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/tencent/bugly/proguard/ep$a;->nH:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, v0, Lcom/tencent/bugly/proguard/ep$a;->nH:Ljava/util/Map;

    const-string v3, "main"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v4, "\n\n"

    const-string v5, "\n"

    const-string v6, " :\n"

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v2, :cond_3

    array-length v9, v2

    if-lt v9, v7, :cond_3

    const-string v9, "\"main\" tid="

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v2, v8

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v2, v1

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, p0

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, v0, Lcom/tencent/bugly/proguard/ep$a;->nH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    array-length v9, v9

    if-lt v9, v7, :cond_4

    const-string v9, "\""

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\" tid="

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p1, p0, p2}, Lcom/tencent/bugly/proguard/dv;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_6
    :goto_2
    new-array p0, p0, [Ljava/lang/Object;

    aput-object p2, p0, v1

    const-string p1, "not found trace dump for %s"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1
.end method

.method private declared-synchronized isOpened()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/el;->nl:Landroid/os/FileObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isUserOpened()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/el;->nm:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/el;->ng:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "tryChangeAnrState to %s, success:%s"

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0
.end method

.method private declared-synchronized l(Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/el;->dF()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/el;->dG()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized m(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/el;->nm:Z

    if-eq v0, p1, :cond_0

    const-string v0, "user change anr %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/el;->nm:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private w(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 12

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    sget v1, Lcom/tencent/bugly/proguard/dy$a;->kv:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->modifyProcessingState(IZ)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/dz;->a(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    sget v4, Lcom/tencent/bugly/proguard/dy$a;->kw:I

    sub-int/2addr v4, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v1, v4, v3, v5}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->modifyProcessingState(IZZ)V

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/proguard/el;->a(Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "pack anr fail!"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->mg:Lcom/tencent/bugly/proguard/eb;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/eb;->g(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    sget v4, Lcom/tencent/bugly/proguard/dy$a;->kx:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v4, v2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->modifyProcessingState(IZ)V

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/di;->cr()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lg:J

    invoke-static {}, Lcom/tencent/bugly/proguard/di;->cl()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lh:J

    invoke-static {}, Lcom/tencent/bugly/proguard/di;->ct()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->li:J

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->bN()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hg:J

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->bM()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hf:J

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->bO()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hh:J

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/di;->r(Landroid/content/Context;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lj:J

    invoke-static {}, Lcom/tencent/bugly/proguard/di;->cm()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lk:J

    invoke-static {}, Lcom/tencent/bugly/proguard/di;->cn()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ll:J

    invoke-static {}, Lcom/tencent/bugly/proguard/di;->co()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lm:J

    invoke-static {}, Lcom/tencent/bugly/proguard/di;->cp()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ln:J

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/dh;->appVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kN:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/dh;->bD:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kM:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/dh;->hF:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kO:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/dh;->appChannel:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->appChannel:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/dh;->hK:Ljava/util/List;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kQ:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-boolean v1, v1, Lcom/tencent/bugly/proguard/dh;->hI:Z

    iput-boolean v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kL:Z

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->getCountryName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kP:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->bK()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->deviceModel:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lt:Ljava/util/Map;

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-lez v1, :cond_3

    iget-object v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, "GET_FAIL"

    :goto_2
    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kW:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/dz;->j([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kF:Ljava/lang/String;

    :cond_4
    const-string v1, "main(1)"

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lf:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->bV()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hu:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->bT()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kR:Ljava/util/Map;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->cd()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kS:Ljava/util/Map;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/dh;->hw:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lr:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-wide v4, v1, Lcom/tencent/bugly/proguard/dh;->gU:J

    iput-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->gU:J

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->bF()Z

    move-result v1

    iput-boolean v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fC:Z

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->cc()I

    move-result v1

    iput v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fG:I

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    iget v1, v1, Lcom/tencent/bugly/proguard/dh;->fH:I

    iput v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fH:I

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->bW()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fI:Ljava/util/Map;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->cb()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fJ:Ljava/util/Map;

    invoke-static {}, Lcom/tencent/bugly/proguard/ad;->D()Lcom/tencent/bugly/proguard/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ad;->E()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hotPatchNum:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/proguard/ad;->D()Lcom/tencent/bugly/proguard/ad;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/bugly/proguard/ad;->aD:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lx:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->mg:Lcom/tencent/bugly/proguard/eb;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/eb;->g(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    const-string v6, "ANR"

    invoke-static {}, Lcom/tencent/bugly/proguard/dz;->cW()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->processName:Ljava/lang/String;

    const-string v9, "main"

    iget-object v10, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    move-object v11, v0

    invoke-static/range {v6 .. v11}, Lcom/tencent/bugly/proguard/eb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/tencent/bugly/proguard/el;->nt:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->nt:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p1, 0x0

    :goto_4
    int-to-long v4, p1

    const-wide/16 v6, 0xbb8

    cmp-long p1, v4, v6

    if-gez p1, :cond_7

    sget-wide v6, Lcom/tencent/bugly/proguard/el;->ns:J

    const-wide/16 v8, -0x1

    cmp-long p1, v6, v8

    if-eqz p1, :cond_6

    sget-object p1, Lcom/tencent/bugly/proguard/el;->nr:Ljava/lang/String;

    if-eqz p1, :cond_6

    sget-wide v4, Lcom/tencent/bugly/proguard/el;->ns:J

    iput-wide v4, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kE:J

    sget-object p1, Lcom/tencent/bugly/proguard/el;->nr:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->la:Ljava/lang/String;

    goto :goto_5

    :cond_6
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/dz;->sleep(J)V

    add-long/2addr v4, v6

    long-to-int p1, v4

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_7
    :goto_5
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p1

    sget v1, Lcom/tencent/bugly/proguard/dy$a;->ky:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1, v3}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->modifyProcessingState(IZ)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-boolean p1, p1, Lcom/tencent/bugly/proguard/dh;->hQ:Z

    sget v1, Lcom/tencent/bugly/proguard/ec;->lR:I

    invoke-static {p1, v1, v3}, Lcom/tencent/bugly/proguard/dz;->a(ZIZ)Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->le:Ljava/util/Map;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/el;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/dz;->a(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lv:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/eg;->u(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/el;->mg:Lcom/tencent/bugly/proguard/eb;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/eb;->g(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/dx;->cS()[B

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ld:[B

    return-object v0
.end method

.method private x(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 11

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/tencent/bugly/proguard/el;->nj:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v5, p0, Lcom/tencent/bugly/proguard/el;->nn:Lcom/tencent/bugly/proguard/et;

    if-eqz v5, :cond_0

    const-string v5, "Disable record main stack trace."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/tencent/bugly/proguard/el;->nn:Lcom/tencent/bugly/proguard/et;

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/et;->dP()V

    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/el;->w(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object p1

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v4

    const-string v5, "anr"

    invoke-virtual {v4, v5}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->saveAdditionalAttachmentPaths(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getProcessInfoAnr()V

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v4

    sget v5, Lcom/tencent/bugly/proguard/dy$a;->kz:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5, v3}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->modifyProcessingState(IZ)V

    invoke-static {}, Lcom/tencent/bugly/proguard/cs;->bz()Lcom/tencent/bugly/proguard/cs;

    move-result-object v4

    iget-boolean v4, v4, Lcom/tencent/bugly/proguard/cs;->fO:Z

    if-eqz v4, :cond_3

    new-instance v4, Lcom/tencent/bugly/proguard/en;

    invoke-static {}, Lcom/tencent/bugly/proguard/cs;->bz()Lcom/tencent/bugly/proguard/cs;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/bugly/proguard/cs;->fN:Lcom/tencent/bugly/proguard/al;

    invoke-static {}, Lcom/tencent/bugly/proguard/bm;->as()Lcom/tencent/bugly/proguard/bm;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/tencent/bugly/proguard/en;-><init>(Lcom/tencent/bugly/proguard/al;Lcom/tencent/bugly/proguard/bk;)V

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/en;->dH()Ljava/lang/String;

    move-result-object v4

    const-string v5, "save main thread\'s message schedule info"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v7}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/ef;->dq()Lcom/tencent/bugly/proguard/ef;

    iget-object v8, p0, Lcom/tencent/bugly/proguard/el;->mContext:Landroid/content/Context;

    const-string v9, "anr"

    sget-object v10, Lcom/tencent/bugly/proguard/dh;->ic:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/tencent/bugly/proguard/ef;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v7, Ljava/io/File;

    const-string v8, "main_thread_msg.json"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    :cond_2
    const-wide/32 v8, 0x7fffffff

    invoke-static {v7, v4, v8, v9, v3}, Lcom/tencent/bugly/proguard/dv;->a(Ljava/io/File;Ljava/lang/String;JZ)Z

    :cond_3
    iget-object v4, p0, Lcom/tencent/bugly/proguard/el;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/dh;->bF()Z

    move-result v4

    const-wide/16 v7, 0x0

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/tencent/bugly/proguard/di;->cv()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/tencent/bugly/proguard/di;->cw()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v4, 0x1

    :goto_1
    const-string v5, "isAnrCrashDevice:%s"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v5, v9}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/tencent/bugly/proguard/el;->nh:Landroid/app/ActivityManager;

    const-wide/16 v9, 0x5208

    invoke-static {v4, v9, v10}, Lcom/tencent/bugly/proguard/em;->a(Landroid/app/ActivityManager;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v4

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/tencent/bugly/proguard/el;->nh:Landroid/app/ActivityManager;

    invoke-static {v4, v7, v8}, Lcom/tencent/bugly/proguard/em;->a(Landroid/app/ActivityManager;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v4

    :goto_3
    if-nez v4, :cond_8

    const-string p1, "proc state is invisible or not my proc!"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, v4}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_4
    sput-object v2, Lcom/tencent/bugly/proguard/el;->nr:Ljava/lang/String;

    sput-wide v0, Lcom/tencent/bugly/proguard/el;->ns:J

    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/el;->k(Z)Z

    return-void

    :cond_8
    if-nez p1, :cond_9

    :try_start_3
    const-string p1, "pack anr fail!"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, v4}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_9

    :cond_9
    if-nez v4, :cond_a

    const-string v5, ""

    goto :goto_5

    :cond_a
    iget-object v5, v4, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    :goto_5
    iput-object v5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kV:Ljava/lang/String;

    iget-object v5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lt:Ljava/util/Map;

    const-string v9, "BUGLY_CR_01"

    if-nez v4, :cond_b

    const-string v4, ""

    goto :goto_6

    :cond_b
    iget-object v4, v4, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    :goto_6
    invoke-interface {v5, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->id:J

    cmp-long v9, v4, v7

    if-ltz v9, :cond_c

    const-string v4, "backup anr record success!"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    const-string v4, "backup anr record fail!"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_7
    iget-object v4, p0, Lcom/tencent/bugly/proguard/el;->mg:Lcom/tencent/bugly/proguard/eb;

    invoke-static {}, Lcom/tencent/bugly/proguard/di;->cy()Z

    move-result v5

    if-nez v5, :cond_d

    const/4 v5, 0x1

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    :goto_8
    invoke-virtual {v4, p1, v5}, Lcom/tencent/bugly/proguard/eb;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Z)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/tencent/bugly/proguard/el;->mg:Lcom/tencent/bugly/proguard/eb;

    invoke-virtual {v4, p1, v6}, Lcom/tencent/bugly/proguard/eb;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Z)V

    :cond_e
    iget-object v4, p0, Lcom/tencent/bugly/proguard/el;->mg:Lcom/tencent/bugly/proguard/eb;

    invoke-virtual {v4, p1}, Lcom/tencent/bugly/proguard/eb;->d(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    :goto_9
    iget-object p1, p0, Lcom/tencent/bugly/proguard/el;->nj:Ljava/lang/Object;

    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v4, p0, Lcom/tencent/bugly/proguard/el;->nn:Lcom/tencent/bugly/proguard/et;

    if-eqz v4, :cond_f

    const-string v4, "Finish anr process."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/tencent/bugly/proguard/el;->nn:Lcom/tencent/bugly/proguard/et;

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/et;->dQ()V

    :cond_f
    monitor-exit p1

    goto :goto_4

    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_1
    move-exception p1

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_8
    invoke-static {p1}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    sput-object v2, Lcom/tencent/bugly/proguard/el;->nr:Ljava/lang/String;

    sput-wide v0, Lcom/tencent/bugly/proguard/el;->ns:J

    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/el;->k(Z)Z

    throw p1
.end method


# virtual methods
.method public final declared-synchronized dE()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "customer decides whether to open or close."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n(Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/el;->m(Z)V

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/el;->isUserOpened()Z

    move-result p1

    invoke-static {}, Lcom/tencent/bugly/proguard/dj;->cA()Lcom/tencent/bugly/proguard/dj;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/dj;->cC()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->io:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/el;->isOpened()Z

    move-result v0

    if-eq p1, v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "anr changed to %b"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/el;->l(Z)V

    :cond_2
    return-void
.end method

.method public final updateStateAndHandleAnr()Z
    .locals 6

    iget-object v0, p0, Lcom/tencent/bugly/proguard/el;->ng:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "anr is processing, return"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/el;->nh:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/dg;->a(Landroid/app/ActivityManager;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/tencent/bugly/proguard/em;->a(Landroid/app/ActivityManager;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "proc is not in anr, wait next check"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/tencent/bugly/proguard/el;->h(J)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/el;->k(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    const-string v2, "ANR"

    sget v4, Lcom/tencent/bugly/proguard/dy$a;->kt:I

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->recordProcessingState(Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ds;->cN()Lcom/tencent/bugly/proguard/ds;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/proguard/el$3;

    invoke-direct {v2, p0}, Lcom/tencent/bugly/proguard/el$3;-><init>(Lcom/tencent/bugly/proguard/el;)V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/ds;->b(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v1, p0, Lcom/tencent/bugly/proguard/el;->nt:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/el;->nt:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    monitor-exit v1

    return v0

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
