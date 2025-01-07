.class public final Lcom/tencent/bugly/proguard/r;
.super Ljava/lang/Object;


# static fields
.field public static Z:Z = true

.field public static aa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/o;",
            ">;"
        }
    .end annotation
.end field

.field public static ab:Z

.field private static ac:Lcom/tencent/bugly/proguard/dd;

.field private static ad:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/r;->aa:Ljava/util/List;

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Lcom/tencent/bugly/proguard/ad;->D()Lcom/tencent/bugly/proguard/ad;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/proguard/bx;->az()Lcom/tencent/bugly/proguard/bx;

    move-result-object v1

    const-string v2, "BUGLY_COMMON_VALUES"

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Lcom/tencent/bugly/proguard/bx;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, ""

    if-eqz p0, :cond_0

    const-string v4, "G15"

    invoke-interface {p0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/bugly/proguard/ad;->aC:Ljava/lang/String;

    const-string v4, "D4"

    const-string v5, "0"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/bugly/proguard/ad;->aD:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/ad;->D()Lcom/tencent/bugly/proguard/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ad;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setAppHotPatchNum(Ljava/lang/String;)Z

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/bx;->az()Lcom/tencent/bugly/proguard/bx;

    move-result-object p0

    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/tencent/bugly/proguard/bx;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "shiply_version_info"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string p0, "a11"

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/ae;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setAppVersionLabel(Ljava/lang/String;)Z

    :cond_3
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->ge()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setStage(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/la;->gG()Lcom/tencent/bugly/proguard/kz;

    move-result-object v0

    const-string v1, "a12"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/kz;->be(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ae;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setTestLabel(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/la;->gG()Lcom/tencent/bugly/proguard/kz;

    move-result-object v0

    const-string v1, "a13"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/kz;->be(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ae;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setCaseLabel(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->gb()Lcom/tencent/bugly/proguard/kd;

    move-result-object p0

    new-instance v0, Lcom/tencent/bugly/proguard/fw;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/fw;-><init>()V

    iget-object p0, p0, Lcom/tencent/bugly/proguard/kd;->xP:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/proguard/p;J)V
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-class v3, Lcom/tencent/bugly/proguard/r;

    monitor-enter v3

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/proguard/r;->ad:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const-string v0, "[init] initial Multi-times, ignore this."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit v3

    return-void

    :cond_0
    if-nez p0, :cond_1

    :try_start_1
    sget-object v0, Lcom/tencent/bugly/proguard/du;->TAG:Ljava/lang/String;

    const-string v1, "[init] context is null, check it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    monitor-exit v3

    return-void

    :cond_1
    if-nez v1, :cond_2

    :try_start_2
    sget-object v0, Lcom/tencent/bugly/proguard/du;->TAG:Ljava/lang/String;

    const-string v1, "init arg \'crashReportAppID\' should not be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit v3

    return-void

    :cond_2
    const/4 v5, 0x1

    :try_start_3
    sput-boolean v5, Lcom/tencent/bugly/proguard/r;->ad:Z

    if-eqz p2, :cond_3

    sput-boolean v5, Lcom/tencent/bugly/proguard/r;->ab:Z

    sput-boolean v5, Lcom/tencent/bugly/proguard/du;->jO:Z

    const-string v0, "Bugly debug\u6a21\u5f0f\u5f00\u542f\uff0c\u8bf7\u5728\u53d1\u5e03\u65f6\u628aisDebug\u5173\u95ed\u3002 -- Running in debug model for \'isDebug\' is enabled. Please disable it when you release."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "--------------------------------------------------------------------------------------------"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "Bugly debug\u6a21\u5f0f\u5c06\u6709\u4ee5\u4e0b\u884c\u4e3a\u7279\u6027 -- The following list shows the behaviour of debug model: "

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "[1] \u8f93\u51fa\u8be6\u7ec6\u7684Bugly SDK\u7684Log -- More detailed log of Bugly SDK will be output to logcat;"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "[2] \u6bcf\u4e00\u6761Crash\u90fd\u4f1a\u88ab\u7acb\u5373\u4e0a\u62a5 -- Every crash caught by Bugly will be uploaded immediately."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "[3] \u81ea\u5b9a\u4e49\u65e5\u5fd7\u5c06\u4f1a\u5728Logcat\u4e2d\u8f93\u51fa -- Custom log will be output to logcat."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "--------------------------------------------------------------------------------------------"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "[init] Open debug mode of Bugly."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_3
    const-string v0, " crash report start initializing..."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "[init] Bugly start initializing..."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "[init] Bugly complete version: v%s"

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "4.4.1.2"

    aput-object v7, v6, v4

    invoke-static {v0, v6}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/proguard/dz;->x(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v7

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v0

    const-string v8, "crash"

    invoke-virtual {v0, v8}, Lcom/tencent/bugly/proguard/gf;->aB(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;

    move-result-object v0

    instance-of v8, v0, Lcom/tencent/bugly/proguard/ct;

    if-eqz v8, :cond_6

    move-object v8, v0

    check-cast v8, Lcom/tencent/bugly/proguard/ct;

    iget v8, v8, Lcom/tencent/bugly/proguard/ct;->fR:I

    if-lez v8, :cond_4

    const v9, 0xfa000

    if-ge v8, v9, :cond_4

    sput v8, Lcom/tencent/bugly/proguard/ec;->lN:I

    :cond_4
    move-object v8, v0

    check-cast v8, Lcom/tencent/bugly/proguard/ct;

    iget-wide v8, v8, Lcom/tencent/bugly/proguard/ct;->fS:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-lez v12, :cond_5

    const-wide/16 v10, 0xa

    cmp-long v12, v8, v10

    if-gez v12, :cond_5

    sput-wide v8, Lcom/tencent/bugly/proguard/ec;->ma:J

    :cond_5
    move-object v8, v0

    check-cast v8, Lcom/tencent/bugly/proguard/ct;

    iget-boolean v8, v8, Lcom/tencent/bugly/proguard/ct;->fQ:Z

    invoke-static {v6}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v9

    iput-boolean v8, v9, Lcom/tencent/bugly/proguard/dh;->hS:Z

    check-cast v0, Lcom/tencent/bugly/proguard/ct;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/ct;->fP:Z

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setCustomFileUploadAble(Z)V

    :cond_6
    invoke-virtual {v7}, Lcom/tencent/bugly/proguard/dh;->bS()Ljava/lang/String;

    invoke-static {v6}, Lcom/tencent/bugly/proguard/dx;->w(Landroid/content/Context;)V

    sget-object v0, Lcom/tencent/bugly/proguard/r;->aa:Ljava/util/List;

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/dd;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/dd;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/r;->ac:Lcom/tencent/bugly/proguard/dd;

    invoke-static {v6}, Lcom/tencent/bugly/proguard/dp;->t(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dp;

    sget-object v0, Lcom/tencent/bugly/proguard/r;->aa:Ljava/util/List;

    invoke-static {v6, v0}, Lcom/tencent/bugly/proguard/dj;->b(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/dj;

    invoke-static {v6}, Lcom/tencent/bugly/proguard/db;->l(Landroid/content/Context;)Lcom/tencent/bugly/proguard/db;

    move-result-object v8

    iget-object v0, v7, Lcom/tencent/bugly/proguard/dh;->hz:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "bugly"

    if-eqz v0, :cond_7

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const-string v0, "crash_portal_ratio"

    invoke-static {v0}, Lcom/tencent/bugly/proguard/cy;->K(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "crash report is disabled, please modify your project\'s setting"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v0, v9}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_9

    sput-boolean v4, Lcom/tencent/bugly/proguard/r;->Z:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v3

    return-void

    :cond_9
    :try_start_4
    iput-object v1, v7, Lcom/tencent/bugly/proguard/dh;->appId:Ljava/lang/String;

    const-string v0, "APP_ID"

    invoke-virtual {v7, v0, v1}, Lcom/tencent/bugly/proguard/dh;->p(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[param] Set APP ID:%s"

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v1, v9, v4

    invoke-static {v0, v9}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/proguard/p;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/16 v12, 0x64

    if-nez v9, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v12, :cond_a

    invoke-virtual {v0, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v13, "appVersion %s length is over limit %d substring to %s"

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v0, v14, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v14, v5

    aput-object v9, v14, v11

    invoke-static {v13, v14}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v9

    :cond_a
    iput-object v0, v7, Lcom/tencent/bugly/proguard/dh;->appVersion:Ljava/lang/String;

    const-string v0, "[param] Set App version: %s"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/proguard/p;->j()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v4

    invoke-static {v0, v9}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_b
    :try_start_5
    iget-boolean v0, v2, Lcom/tencent/bugly/proguard/p;->S:Z

    const/16 v13, 0x22c

    if-eqz v0, :cond_d

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/proguard/p;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    if-le v14, v12, :cond_c

    invoke-virtual {v0, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string v15, "appChannel %s length is over limit %d substring to %s"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v0, v9, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v5

    aput-object v14, v9, v11

    invoke-static {v15, v9}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v14

    :cond_c
    sget-object v9, Lcom/tencent/bugly/proguard/r;->ac:Lcom/tencent/bugly/proguard/dd;

    const-string v14, "app_channel"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v9, v13, v14, v15, v4}, Lcom/tencent/bugly/proguard/dd;->a(ILjava/lang/String;[BZ)Z

    iput-object v0, v7, Lcom/tencent/bugly/proguard/dh;->appChannel:Ljava/lang/String;

    goto :goto_2

    :cond_d
    sget-object v0, Lcom/tencent/bugly/proguard/r;->ac:Lcom/tencent/bugly/proguard/dd;

    const/4 v9, 0x0

    invoke-virtual {v0, v13, v9}, Lcom/tencent/bugly/proguard/dd;->a(ILcom/tencent/bugly/proguard/dc;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v9, "app_channel"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_e

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v9, v7, Lcom/tencent/bugly/proguard/dh;->appChannel:Ljava/lang/String;

    :cond_e
    :goto_2
    const-string v0, "[param] Set App channel: %s"

    new-array v9, v5, [Ljava/lang/Object;

    iget-object v13, v7, Lcom/tencent/bugly/proguard/dh;->appChannel:Ljava/lang/String;

    aput-object v13, v9, v4

    invoke-static {v0, v9}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_6
    sget-boolean v9, Lcom/tencent/bugly/proguard/r;->ab:Z

    if-eqz v9, :cond_f

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/proguard/p;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v12, :cond_10

    invoke-virtual {v0, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v13, "appPackageName %s length is over limit %d substring to %s"

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v0, v14, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v14, v5

    aput-object v9, v14, v11

    invoke-static {v13, v14}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v9

    :cond_10
    iput-object v0, v7, Lcom/tencent/bugly/proguard/dh;->gW:Ljava/lang/String;

    const-string v0, "[param] Set App package: %s"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/proguard/p;->getAppPackageName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v4

    invoke-static {v0, v9}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_11
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/proguard/p;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v12, :cond_12

    invoke-virtual {v0, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v13, "deviceId %s length is over limit %d substring to %s"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v5

    aput-object v9, v10, v11

    invoke-static {v13, v10}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v9

    :cond_12
    invoke-virtual {v7, v0}, Lcom/tencent/bugly/proguard/dh;->L(Ljava/lang/String;)V

    const-string v9, "[param] Set device ID: %s"

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v0, v10, v4

    invoke-static {v9, v10}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_13
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/proguard/p;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v7, v0}, Lcom/tencent/bugly/proguard/dh;->M(Ljava/lang/String;)V

    const-string v9, "[param] Set device model: %s"

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v0, v10, v4

    invoke-static {v9, v10}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_14
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/proguard/p;->g()Z

    move-result v0

    iput-boolean v0, v7, Lcom/tencent/bugly/proguard/dh;->T:Z

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/proguard/p;->h()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/bugly/proguard/dx;->jO:Z

    sget-object v0, Lcom/tencent/bugly/proguard/aq;->cl:Lcom/tencent/bugly/proguard/aq;

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->S()V

    const/4 v9, 0x0

    :goto_4
    sget-object v0, Lcom/tencent/bugly/proguard/r;->aa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-ge v9, v0, :cond_16

    :try_start_7
    sget-object v0, Lcom/tencent/bugly/proguard/r;->aa:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/o;

    iget v0, v0, Lcom/tencent/bugly/proguard/o;->id:I

    invoke-virtual {v8, v0}, Lcom/tencent/bugly/proguard/db;->i(I)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/tencent/bugly/proguard/r;->aa:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/o;

    invoke-virtual {v0, v6, v2}, Lcom/tencent/bugly/proguard/o;->a(Landroid/content/Context;Lcom/tencent/bugly/proguard/p;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result v10

    if-nez v10, :cond_15

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_16
    invoke-static {}, Lcom/tencent/bugly/proguard/dh;->bG()Lcom/tencent/bugly/proguard/dh;

    move-result-object v0

    iget-object v8, v0, Lcom/tencent/bugly/proguard/dh;->hv:Ljava/lang/String;

    invoke-static {v8}, Lcom/tencent/bugly/proguard/dz;->Y(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_17

    const/4 v8, 0x1

    goto :goto_6

    :cond_17
    const/4 v8, 0x0

    :goto_6
    const-string v9, "Bugly_Native"

    iget-object v10, v0, Lcom/tencent/bugly/proguard/dh;->hv:Ljava/lang/String;

    if-nez v8, :cond_18

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v10, v9

    :cond_18
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    invoke-virtual {v0, v10, v8}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->tryLoadSo(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "Failed to load so: %s"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v9, v8, v4

    invoke-static {v0, v8}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_7

    :cond_19
    const-string v0, "Success to load so: %s"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v9, v8, v4

    invoke-static {v0, v8}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_7
    invoke-static {v6}, Lcom/tencent/bugly/proguard/dt;->v(Landroid/content/Context;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    iget-object v0, v7, Lcom/tencent/bugly/proguard/dh;->hj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    const-string v8, "ro.product.cpu.abi"

    invoke-virtual {v0, v8}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/tencent/bugly/proguard/dh;->hj:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    :try_start_a
    const-string v8, "Failed to read cpu type. "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1a
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "bugly_crash_processing"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/proguard/ds;->cN()Lcom/tencent/bugly/proguard/ds;

    move-result-object v8

    new-instance v9, Lcom/tencent/bugly/proguard/dy$1;

    invoke-direct {v9, v6, v0}, Lcom/tencent/bugly/proguard/dy$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/tencent/bugly/proguard/ds;->b(Ljava/lang/Runnable;)Z

    invoke-static {v6}, Lcom/tencent/bugly/proguard/eu;->z(Landroid/content/Context;)V

    invoke-static {v6, v2}, Lcom/tencent/bugly/proguard/cr;->c(Landroid/content/Context;Lcom/tencent/bugly/proguard/p;)V

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/proguard/p;->m()J

    move-result-wide v8

    invoke-static {}, Lcom/tencent/bugly/proguard/dj;->cA()Lcom/tencent/bugly/proguard/dj;

    move-result-object v0

    iget-object v2, v0, Lcom/tencent/bugly/proguard/dj;->iG:Lcom/tencent/bugly/proguard/ds;

    new-instance v10, Lcom/tencent/bugly/proguard/dj$1;

    invoke-direct {v10, v0}, Lcom/tencent/bugly/proguard/dj$1;-><init>(Lcom/tencent/bugly/proguard/dj;)V

    invoke-virtual {v2, v10, v8, v9}, Lcom/tencent/bugly/proguard/ds;->e(Ljava/lang/Runnable;J)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iget-boolean v0, v7, Lcom/tencent/bugly/proguard/dh;->hL:Z

    invoke-static {}, Lcom/tencent/bugly/proguard/ds;->cN()Lcom/tencent/bugly/proguard/ds;

    move-result-object v2

    new-instance v7, Lcom/tencent/bugly/proguard/r$1;

    move-object v12, v7

    move-wide/from16 v15, p4

    move/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lcom/tencent/bugly/proguard/r$1;-><init>(JJZ)V

    invoke-virtual {v2, v7}, Lcom/tencent/bugly/proguard/ds;->b(Ljava/lang/Runnable;)Z

    invoke-static {v6}, Lcom/tencent/bugly/proguard/r;->a(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    const-string v0, "com.tencent.bugly.proguard.or"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "initLinkage"

    new-array v7, v11, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v4

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v6, v2, v4

    aput-object v1, v2, v5

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "init linkage success."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1b
    const-string v0, "init linkage fail for method is null."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    :try_start_c
    const-string v1, "init linkage fail for %s."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_9
    const-string v0, "[init] Bugly initialization finished."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    monitor-exit v3

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static declared-synchronized a(Lcom/tencent/bugly/proguard/o;)V
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/r;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/r;->aa:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/tencent/bugly/proguard/r;->aa:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
