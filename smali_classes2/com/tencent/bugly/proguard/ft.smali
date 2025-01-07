.class public final Lcom/tencent/bugly/proguard/ft;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/ft$a;
    }
.end annotation


# static fields
.field protected static P:Z = true

.field protected static ad:Z = false

.field protected static rs:Lcom/tencent/bugly/proguard/fv; = null

.field private static rt:Z = false

.field private static ru:Z = false

.field private static rv:Lcom/tencent/bugly/proguard/ek;

.field private static rw:Lcom/tencent/bugly/proguard/do;

.field private static rx:Lcom/tencent/bugly/proguard/ft$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/ft$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ft$a;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/ft;->rx:Lcom/tencent/bugly/proguard/ft$a;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/proguard/fv;)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/tencent/bugly/proguard/ft;->ad:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/cc;->f(Landroid/content/Context;)V

    const/4 v6, 0x1

    sput v6, Lcom/tencent/bugly/proguard/ec;->lL:I

    invoke-static {p0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v0

    iput-boolean v6, v0, Lcom/tencent/bugly/proguard/dh;->hL:Z

    sput-boolean v6, Lcom/tencent/bugly/proguard/ec;->hL:Z

    const-wide/32 v0, 0x1499700

    sput-wide v0, Lcom/tencent/bugly/proguard/dj;->iF:J

    sput-object p3, Lcom/tencent/bugly/proguard/ft;->rs:Lcom/tencent/bugly/proguard/fv;

    const-string v0, "eup"

    sput-object v0, Lcom/tencent/bugly/proguard/du;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/tencent/bugly/proguard/du;->jN:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/bugly/proguard/ft;->rt:Z

    if-nez v0, :cond_2

    const-string v0, "https://android.rqd.qq.com/analytics/async"

    sput-object v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->ik:Ljava/lang/String;

    sput-object v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->il:Ljava/lang/String;

    :cond_2
    new-instance v3, Lcom/tencent/bugly/proguard/p;

    invoke-direct {v3}, Lcom/tencent/bugly/proguard/p;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/p;->n()Lcom/tencent/bugly/proguard/p;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/tencent/bugly/proguard/fv;->ev()Lcom/tencent/feedback/eup/CrashHandleListener;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/tencent/bugly/proguard/ft$1;

    invoke-direct {v1, v0}, Lcom/tencent/bugly/proguard/ft$1;-><init>(Lcom/tencent/feedback/eup/CrashHandleListener;)V

    sput-object v1, Lcom/tencent/bugly/proguard/ft;->rv:Lcom/tencent/bugly/proguard/ek;

    invoke-static {}, Lcom/tencent/bugly/proguard/ec;->dc()Lcom/tencent/bugly/proguard/ec;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/tencent/bugly/proguard/ft;->rv:Lcom/tencent/bugly/proguard/ek;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ec;->a(Lcom/tencent/bugly/proguard/ek;)V

    :cond_3
    invoke-virtual {p3}, Lcom/tencent/bugly/proguard/fv;->ew()Lcom/tencent/feedback/upload/UploadHandleListener;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/tencent/bugly/proguard/ft$2;

    invoke-direct {v1, v0}, Lcom/tencent/bugly/proguard/ft$2;-><init>(Lcom/tencent/feedback/upload/UploadHandleListener;)V

    sput-object v1, Lcom/tencent/bugly/proguard/ft;->rw:Lcom/tencent/bugly/proguard/do;

    invoke-static {}, Lcom/tencent/bugly/proguard/dp;->cI()Lcom/tencent/bugly/proguard/dp;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/tencent/bugly/proguard/ft;->rw:Lcom/tencent/bugly/proguard/do;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/dp;->jb:Lcom/tencent/bugly/proguard/do;

    :cond_4
    invoke-virtual {p3}, Lcom/tencent/bugly/proguard/fv;->ey()I

    move-result v0

    mul-int/lit8 v0, v0, 0x18

    mul-int/lit16 v0, v0, 0xe10

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Lcom/tencent/bugly/proguard/ec;->lT:J

    invoke-virtual {p3}, Lcom/tencent/bugly/proguard/fv;->eA()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/ec;->lU:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/tencent/bugly/proguard/fv;->eB()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/bugly/proguard/ec;->lV:Z

    invoke-virtual {p3}, Lcom/tencent/bugly/proguard/fv;->eD()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/ec;->lW:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/tencent/bugly/proguard/fv;->eC()I

    move-result v0

    sput v0, Lcom/tencent/bugly/proguard/ec;->lX:I

    iget v0, p3, Lcom/tencent/bugly/proguard/fv;->rB:I

    sput v0, Lcom/tencent/bugly/proguard/ec;->lN:I

    invoke-virtual {p3}, Lcom/tencent/bugly/proguard/fv;->eE()I

    move-result v0

    sput v0, Lcom/tencent/bugly/proguard/ec;->lR:I

    invoke-virtual {p3}, Lcom/tencent/bugly/proguard/fv;->ez()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/bugly/proguard/ec;->lM:Z

    invoke-virtual {p3}, Lcom/tencent/bugly/proguard/fv;->ex()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/bugly/proguard/ec;->lY:Z

    invoke-virtual {p3}, Lcom/tencent/bugly/proguard/fv;->s()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/bugly/proguard/p;->d(Z)Lcom/tencent/bugly/proguard/p;

    invoke-virtual {p3}, Lcom/tencent/bugly/proguard/fv;->r()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/bugly/proguard/p;->b(Z)Lcom/tencent/bugly/proguard/p;

    invoke-virtual {p3}, Lcom/tencent/bugly/proguard/fv;->g()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/bugly/proguard/p;->a(Z)Lcom/tencent/bugly/proguard/p;

    sget-boolean v0, Lcom/tencent/bugly/proguard/ft;->P:Z

    invoke-virtual {v3, v0}, Lcom/tencent/bugly/proguard/p;->c(Z)Lcom/tencent/bugly/proguard/p;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v0

    invoke-virtual {p3}, Lcom/tencent/bugly/proguard/fv;->g()Z

    move-result p3

    iput-boolean p3, v0, Lcom/tencent/bugly/proguard/dh;->T:Z

    :cond_5
    sget-boolean p3, Lcom/tencent/bugly/proguard/ft;->ru:Z

    if-nez p3, :cond_8

    invoke-static {p0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object p3

    iget-object p3, p3, Lcom/tencent/bugly/proguard/dh;->appVersion:Ljava/lang/String;

    if-eqz p3, :cond_8

    invoke-static {p3}, Lcom/tencent/bugly/proguard/dz;->Y(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_0
    array-length v8, v0

    if-ge v2, v8, :cond_7

    aget-char v8, v0, v2

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_6

    add-int/lit8 v7, v7, 0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x3

    if-ge v7, v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object p3

    iget-object p3, p3, Lcom/tencent/bugly/proguard/dh;->hE:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v0

    iput-object p3, v0, Lcom/tencent/bugly/proguard/dh;->appVersion:Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p3, v0, v1

    const-string p3, "rqdp{ RQD version: %s }"

    invoke-static {p3, v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_8
    sget-object p3, Lcom/tencent/bugly/proguard/ft;->rx:Lcom/tencent/bugly/proguard/ft$a;

    invoke-static {p3}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/o;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/proguard/r;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/proguard/p;J)V

    sput-boolean v6, Lcom/tencent/bugly/proguard/ft;->ad:Z

    return-void
.end method

.method public static a(Landroid/content/Context;ZZ)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object p0

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/dh;->hP:Z

    iput-boolean p2, p0, Lcom/tencent/bugly/proguard/dh;->hQ:Z

    return-void
.end method

.method public static as(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/dh;->bG()Lcom/tencent/bugly/proguard/dh;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Can not set RDM UUID if RQD has not been initialized."

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    iput-object p0, v0, Lcom/tencent/bugly/proguard/dh;->hF:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setNativeAppBuildNum(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public static at(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/ad;->D()Lcom/tencent/bugly/proguard/ad;

    move-result-object v0

    iput-object p0, v0, Lcom/tencent/bugly/proguard/ad;->aE:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/ad;->D()Lcom/tencent/bugly/proguard/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ad;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setAppHotPatchNum(Ljava/lang/String;)Z

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "set app hot patch num: %s"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static dj()V
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/proguard/ft;->ad:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/du;->TAG:Ljava/lang/String;

    const-string v1, "NativeCrashReport has not been initialed! pls to call method \'initNativeCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "start to create a native crash for test!"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/proguard/ec;->dc()Lcom/tencent/bugly/proguard/ec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ec;->dj()V

    return-void
.end method

.method public static ep()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/bugly/proguard/ft;->ad:Z

    return v0
.end method

.method public static eq()V
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/proguard/ft;->ad:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/du;->TAG:Ljava/lang/String;

    const-string v1, "NativeCrashReport has not been initialed! pls to call method \'initNativeCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This Crash create for Test! You can go to Bugly see more detail!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static er()V
    .locals 2

    sget-boolean v0, Lcom/tencent/bugly/proguard/ft;->ad:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/du;->TAG:Ljava/lang/String;

    const-string v1, "NativeCrashReport has not been initialed! pls to call method \'initNativeCrashReport\' first!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "start to create a anr crash for test!"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/proguard/ec;->dc()Lcom/tencent/bugly/proguard/ec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ec;->dk()V

    return-void
.end method

.method public static es()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/proguard/cv;->fU:Z

    return-void
.end method

.method static synthetic et()Lcom/tencent/bugly/proguard/ek;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/ft;->rv:Lcom/tencent/bugly/proguard/ek;

    return-object v0
.end method

.method static synthetic eu()Lcom/tencent/bugly/proguard/do;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/ft;->rw:Lcom/tencent/bugly/proguard/do;

    return-object v0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x64

    if-le v0, v3, :cond_1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "userId %s length is over limit %d substring to %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 p1, 0x2

    aput-object v0, v5, p1

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object p1, v0

    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/dh;->bK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {p0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object p0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/dh;->hY:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/proguard/dh;->userId:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "[user] set userId : %s"

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    sget-boolean p0, Lcom/tencent/bugly/proguard/cr;->fh:Z

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setNativeUserId(Ljava/lang/String;)Z

    :cond_3
    invoke-static {}, Lcom/tencent/bugly/proguard/cr;->bn()V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static handleCatchException(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[BZ)Z
    .locals 9

    invoke-static {}, Lcom/tencent/bugly/proguard/ec;->dc()Lcom/tencent/bugly/proguard/ec;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    const-string v2, "error_portal_ratio"

    invoke-static {v2}, Lcom/tencent/bugly/proguard/cy;->K(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "java error report is disabled, please modify your project\'s setting"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v7, v1, Lcom/tencent/bugly/proguard/ec;->iG:Lcom/tencent/bugly/proguard/ds;

    new-instance v8, Lcom/tencent/bugly/proguard/ec$3;

    move-object v0, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/bugly/proguard/ec$3;-><init>(Lcom/tencent/bugly/proguard/ec;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[BZ)V

    invoke-virtual {v7, v8}, Lcom/tencent/bugly/proguard/ds;->b(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object p0, Lcom/tencent/bugly/proguard/du;->TAG:Ljava/lang/String;

    const-string p1, "Can not handle catch exception because bugly is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/dh;->L(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setNativeDeviceId(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/dh;->M(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setNativeDeviceModel(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x2

    aput-object v3, v4, p1

    const-string p1, "appVersion %s length is over limit %d substring to %s"

    invoke-static {p1, v4}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object p1, v3

    :cond_0
    sput-boolean v1, Lcom/tencent/bugly/proguard/ft;->ru:Z

    invoke-static {p0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object p0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/dh;->appVersion:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setNativeAppVersion(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lcom/tencent/bugly/proguard/du;->TAG:Ljava/lang/String;

    const-string p1, "setAppChannel args context should not be null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object p0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/dh;->appChannel:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setNativeAppChannel(Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method public static postException(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/tencent/bugly/proguard/r;->Z:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/tencent/bugly/proguard/du;->TAG:Ljava/lang/String;

    const-string p1, "Can not post crash caught because bugly is disable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/bugly/proguard/eh;->a(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "putUserData args context should not be null"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-static {p1}, Lcom/tencent/bugly/proguard/dz;->Y(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "putUserData args key should not be null"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-static {p2}, Lcom/tencent/bugly/proguard/dz;->Y(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "putUserData args value should not be null"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_2
    const-string v1, "[a-zA-Z[0-9]_]+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "putUserData args key should match [a-zA-Z[0-9]_]+  {"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_3
    const-string v1, "_userParam_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xfa0

    goto :goto_0

    :cond_4
    const/16 v1, 0xc8

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v1, :cond_5

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v4, "user data value length over limit %d , has been cutted!"

    invoke-static {v4, v2}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_5
    invoke-static {p0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->bZ()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_6

    invoke-static {p0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/dh;->o(Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v4, [Ljava/lang/Object;

    aput-object p1, p0, v0

    aput-object p2, p0, v3

    const-string p1, "replace KV %s %s"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_6
    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->bY()I

    move-result v1

    const/16 v2, 0x1f4

    const/16 v5, 0x32

    if-lt v1, v2, :cond_7

    new-array p0, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v0

    aput-object p1, p0, v3

    const-string p1, "user data size is over limit %d , will drop this new key %s"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_8

    new-array p0, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v0

    aput-object p1, p0, v3

    const-string p1, "user data key length over limit %d , will drop this new key %s"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_8
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->putKeyValueToNative(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_9
    invoke-static {p0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/dh;->o(Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v4, [Ljava/lang/Object;

    aput-object p1, p0, v0

    aput-object p2, p0, v3

    const-string p1, "[param] set user data: %s - %s"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static reRegisterHandler()Z
    .locals 3

    sget-boolean v0, Lcom/tencent/bugly/proguard/ft;->ad:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "reRegisterHandler failed, please call initCrashReport first"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/ec;->dc()Lcom/tencent/bugly/proguard/ec;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/ec;->dc()Lcom/tencent/bugly/proguard/ec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ec;->dd()V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static removeUserData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "removeUserData args context should not be null"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/tencent/bugly/proguard/dz;->Y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v1, "[param] remove user data: %s"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/dh;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setAdditionalAttachmentPaths([Ljava/lang/String;)Z
    .locals 7

    sget-boolean v0, Lcom/tencent/bugly/proguard/ft;->ad:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/tencent/bugly/proguard/r;->Z:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p0, :cond_6

    array-length v0, p0

    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    invoke-static {v4}, Lcom/tencent/bugly/proguard/dz;->Y(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_4

    const-string p0, "setAdditionalAttachmentPaths failed for all empty files"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    :cond_4
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setAdditionalAttachmentPaths(Ljava/util/ArrayList;)Z

    move-result p0

    return p0

    :cond_5
    const-string p0, "setAdditionalAttachmentPaths failed, NativeCrashHandler is null"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    :cond_6
    :goto_1
    const-string p0, "setAdditionalAttachmentPaths failed for params check"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    :cond_7
    :goto_2
    const-string p0, "setAdditionalAttachmentPaths failed."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1
.end method

.method public static setCaseLabels(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/tencent/bugly/proguard/dz;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "a13"

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/ae;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setCaseLabel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setQutLibraryPath(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ff;->setQutLibraryPath(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static setTestLabels(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/tencent/bugly/proguard/dz;->ab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "a12"

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/ae;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setTestLabel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static t(Z)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ec;->dc()Lcom/tencent/bugly/proguard/ec;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ec;->df()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ec;->de()V

    :cond_1
    return-void
.end method

.method public static u(Z)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ec;->dc()Lcom/tencent/bugly/proguard/ec;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ec;->startNativeMonitor()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ec;->dg()V

    :cond_1
    return-void
.end method

.method public static v(Z)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/ec;->dc()Lcom/tencent/bugly/proguard/ec;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string p0, "startANRMonitor"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ec;->dh()V

    return-void

    :cond_0
    const-string p0, "stopANRMonitor"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ec;->di()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    return-void
.end method
