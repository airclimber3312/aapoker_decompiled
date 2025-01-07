.class public final Lcom/tencent/bugly/proguard/eu;
.super Ljava/lang/Object;


# static fields
.field public static fY:Z = false

.field private static og:J

.field private static oh:J

.field private static oi:I

.field public static oj:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic A(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "bugly_exit_info"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    const-string v1, "make exit info dir, "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/cf;->y(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/cf;->a(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/app/ActivityManager;Ljava/lang/String;)V
    .locals 32

    move-object/from16 v1, p2

    const-string v0, "v1"

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getHistoricalProcessExitReasons"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "android.app.ApplicationExitInfo"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "Failed to get ApplicationExitInfo class."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v5, "getTimestamp"

    new-array v6, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "getReason"

    new-array v10, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v10, "getPid"

    new-array v11, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const-string v11, "getProcessName"

    new-array v12, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const-string v12, "getDescription"

    new-array v13, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    const-string v13, "getTraceInputStream"

    new-array v14, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    const-string v14, "getProcessStateSummary"

    new-array v15, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v2, :cond_15

    if-eqz v5, :cond_15

    if-eqz v6, :cond_15

    if-eqz v10, :cond_15

    if-eqz v11, :cond_15

    if-eqz v12, :cond_15

    if-eqz v13, :cond_15

    if-nez v3, :cond_1

    goto/16 :goto_12

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/dh;->bG()Lcom/tencent/bugly/proguard/dh;

    move-result-object v14

    iget-object v14, v14, Lcom/tencent/bugly/proguard/dh;->hN:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const-string v15, "exit_normal_count"

    const-string v9, "exit_normal_last_time"

    const-string v4, "exit_last_time"

    if-eqz v14, :cond_2

    const-wide/16 v7, 0x0

    :try_start_1
    invoke-interface {v14, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    sput-wide v17, Lcom/tencent/bugly/proguard/eu;->og:J

    invoke-interface {v14, v9, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    sput-wide v7, Lcom/tencent/bugly/proguard/eu;->oh:J

    const/4 v7, 0x0

    invoke-interface {v14, v15, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/tencent/bugly/proguard/eu;->oi:I

    :cond_2
    invoke-static {}, Lcom/tencent/bugly/proguard/ev;->dR()Lcom/tencent/bugly/proguard/ev;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move-object/from16 v8, p0

    :try_start_2
    iput-object v8, v7, Lcom/tencent/bugly/proguard/ev;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/tencent/bugly/proguard/am;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v17, v4

    const/4 v4, 0x0

    :try_start_3
    invoke-direct {v8, v4}, Lcom/tencent/bugly/proguard/am;-><init>(B)V

    iput-object v8, v7, Lcom/tencent/bugly/proguard/ev;->mM:Lcom/tencent/bugly/proguard/am;

    iget-object v4, v7, Lcom/tencent/bugly/proguard/ev;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v4

    iput-object v4, v7, Lcom/tencent/bugly/proguard/ev;->js:Lcom/tencent/bugly/proguard/dh;

    iget-object v4, v7, Lcom/tencent/bugly/proguard/ev;->mM:Lcom/tencent/bugly/proguard/am;

    iget-object v8, v7, Lcom/tencent/bugly/proguard/ev;->js:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v8}, Lcom/tencent/bugly/proguard/dh;->bK()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/tencent/bugly/proguard/am;->bA:Ljava/lang/String;

    iget-object v4, v7, Lcom/tencent/bugly/proguard/ev;->mM:Lcom/tencent/bugly/proguard/am;

    iget-object v8, v7, Lcom/tencent/bugly/proguard/ev;->js:Lcom/tencent/bugly/proguard/dh;

    iget-object v8, v8, Lcom/tencent/bugly/proguard/dh;->hF:Ljava/lang/String;

    iput-object v8, v4, Lcom/tencent/bugly/proguard/am;->buildNumber:Ljava/lang/String;

    iget-object v4, v7, Lcom/tencent/bugly/proguard/ev;->mM:Lcom/tencent/bugly/proguard/am;

    const-string v8, "unknow_app_key"

    iput-object v8, v4, Lcom/tencent/bugly/proguard/am;->appKey:Ljava/lang/String;

    iget-object v4, v7, Lcom/tencent/bugly/proguard/ev;->mM:Lcom/tencent/bugly/proguard/am;

    iget-object v8, v7, Lcom/tencent/bugly/proguard/ev;->js:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v8}, Lcom/tencent/bugly/proguard/dh;->bJ()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/tencent/bugly/proguard/am;->appId:Ljava/lang/String;

    iget-object v4, v7, Lcom/tencent/bugly/proguard/ev;->mM:Lcom/tencent/bugly/proguard/am;

    iget-object v8, v7, Lcom/tencent/bugly/proguard/ev;->js:Lcom/tencent/bugly/proguard/dh;

    iget-object v8, v8, Lcom/tencent/bugly/proguard/dh;->appVersion:Ljava/lang/String;

    iput-object v8, v4, Lcom/tencent/bugly/proguard/am;->appVersion:Ljava/lang/String;

    iget-object v4, v7, Lcom/tencent/bugly/proguard/ev;->mM:Lcom/tencent/bugly/proguard/am;

    invoke-static {}, Lcom/tencent/bugly/proguard/bx;->az()Lcom/tencent/bugly/proguard/bx;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v18, v15

    :try_start_4
    iget-object v15, v7, Lcom/tencent/bugly/proguard/ev;->mContext:Landroid/content/Context;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v19, v9

    :try_start_5
    const-string v9, "RMonitor_SP"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v20, v14

    const/4 v14, 0x1

    :try_start_6
    invoke-virtual {v8, v15, v9, v14}, Lcom/tencent/bugly/proguard/bx;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, v4, Lcom/tencent/bugly/proguard/am;->bB:Landroid/content/SharedPreferences;

    iget-object v4, v7, Lcom/tencent/bugly/proguard/ev;->mM:Lcom/tencent/bugly/proguard/am;

    invoke-static {}, Lcom/tencent/bugly/proguard/bx;->az()Lcom/tencent/bugly/proguard/bx;

    move-result-object v8

    iget-object v9, v7, Lcom/tencent/bugly/proguard/ev;->mContext:Landroid/content/Context;

    const-string v14, "BUGLY_COMMON_VALUES"

    const/4 v15, 0x1

    invoke-virtual {v8, v9, v14, v15}, Lcom/tencent/bugly/proguard/bx;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, v4, Lcom/tencent/bugly/proguard/am;->bC:Landroid/content/SharedPreferences;

    iget-object v4, v7, Lcom/tencent/bugly/proguard/ev;->mM:Lcom/tencent/bugly/proguard/am;

    iget-object v8, v7, Lcom/tencent/bugly/proguard/ev;->js:Lcom/tencent/bugly/proguard/dh;

    iget-object v8, v8, Lcom/tencent/bugly/proguard/dh;->bD:Ljava/lang/String;

    iput-object v8, v4, Lcom/tencent/bugly/proguard/am;->bD:Ljava/lang/String;

    iget-object v4, v7, Lcom/tencent/bugly/proguard/ev;->mM:Lcom/tencent/bugly/proguard/am;

    iget-object v8, v7, Lcom/tencent/bugly/proguard/ev;->js:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v8}, Lcom/tencent/bugly/proguard/dh;->q()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/tencent/bugly/proguard/am;->m(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/tencent/bugly/proguard/ev;->mM:Lcom/tencent/bugly/proguard/am;

    iget-object v8, v7, Lcom/tencent/bugly/proguard/ev;->js:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v8}, Lcom/tencent/bugly/proguard/dh;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/tencent/bugly/proguard/am;->l(Ljava/lang/String;)V

    new-instance v4, Lcom/tencent/bugly/proguard/bw;

    iget-object v8, v7, Lcom/tencent/bugly/proguard/ev;->mContext:Landroid/content/Context;

    iget-object v9, v7, Lcom/tencent/bugly/proguard/ev;->js:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v9}, Lcom/tencent/bugly/proguard/dh;->bJ()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lcom/tencent/bugly/proguard/bw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, v7, Lcom/tencent/bugly/proguard/ev;->mN:Lcom/tencent/bugly/proguard/bw;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/tencent/bugly/proguard/ev;->ok:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcom/tencent/bugly/proguard/ev;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/bugly/proguard/dh;->bJ()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "upload-file"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/tencent/bugly/proguard/ev;->mO:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/tencent/bugly/proguard/ev;->ok:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lcom/tencent/bugly/proguard/ev;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/dh;->bJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "upload-json"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/tencent/bugly/proguard/ev;->om:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v19, v9

    :goto_0
    move-object/from16 v20, v14

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object/from16 v17, v4

    :goto_1
    move-object/from16 v19, v9

    move-object/from16 v20, v14

    move-object/from16 v18, v15

    :goto_2
    :try_start_7
    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    :goto_3
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v7, 0x0

    aput-object v4, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v0, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v7, 0x2

    aput-object v8, v0, v7

    move-object/from16 v7, p1

    invoke-virtual {v2, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_11

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    const-string v9, "ExitInfo"

    const-string v14, "Attributes"

    const-string v15, "application_exit"

    const-string v4, "type"

    const-string v16, "stage"

    move-object/from16 p1, v9

    const-string v9, "exception"

    if-eqz v0, :cond_10

    :try_start_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v2

    move-object/from16 v22, v14

    const/4 v2, 0x0

    new-array v14, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    move-object/from16 v23, v5

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v14, :cond_f

    if-eqz v2, :cond_f

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    sget-wide v26, Lcom/tencent/bugly/proguard/eu;->og:J

    cmp-long v5, v24, v26

    if-ltz v5, :cond_e

    const/16 v5, 0x32

    if-le v5, v7, :cond_e

    const/16 v5, 0xa

    if-le v5, v8, :cond_e

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v24, v6

    const/4 v6, 0x4

    move/from16 v25, v7

    const/4 v7, 0x5

    if-eq v5, v6, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x6

    if-eq v5, v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0xc

    if-eq v5, v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0x9

    if-eq v5, v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x7

    if-eq v5, v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0x8

    if-eq v5, v7, :cond_4

    sget v0, Lcom/tencent/bugly/proguard/eu;->oi:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    sput v0, Lcom/tencent/bugly/proguard/eu;->oi:I

    goto/16 :goto_c

    :cond_4
    const-string v5, ""

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v6, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_5

    goto :goto_6

    :cond_5
    move-object/from16 v26, v3

    const/4 v3, 0x0

    :goto_5
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_6
    :goto_6
    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    check-cast v5, [B

    if-eqz v5, :cond_c

    array-length v6, v5

    if-eqz v6, :cond_c

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x6

    if-ne v5, v7, :cond_7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v28

    sget-wide v30, Lcom/tencent/bugly/proguard/eu;->oj:D

    cmpg-double v5, v28, v30

    if-gez v5, :cond_7

    const/4 v5, 0x0

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v13, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    if-eqz v5, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v26, v3

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "exit_trace_"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/cf;->a(Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_7

    :cond_7
    move-object/from16 v26, v3

    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x5

    if-ne v5, v7, :cond_8

    invoke-static {}, Lcom/tencent/bugly/proguard/di;->ce()I

    move-result v5

    const/16 v7, 0x1f

    if-lt v5, v7, :cond_8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v27

    sget-wide v29, Lcom/tencent/bugly/proguard/eu;->oj:D

    cmpg-double v5, v27, v29

    if-gez v5, :cond_8

    const/4 v5, 0x0

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v13, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    if-eqz v5, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "exit_tombs_"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/cf;->a(Ljava/lang/String;Ljava/io/InputStream;)V

    :cond_8
    move-object v5, v6

    goto/16 :goto_5

    :goto_8
    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v10, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    move-object/from16 v27, v10

    new-array v10, v6, [Ljava/lang/Object;

    invoke-virtual {v11, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v28, v11

    new-array v11, v6, [Ljava/lang/Object;

    invoke-virtual {v12, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "exitProcessId:"

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "; exitProcessName:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "; exitTime:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "; exitReason:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "; exitDescription:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "; crashIdentify: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v29, v12

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v6, v12}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz v7, :cond_d

    if-eqz v10, :cond_d

    invoke-static {}, Lcom/tencent/bugly/proguard/ev;->dR()Lcom/tencent/bugly/proguard/ev;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :try_start_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/ev;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    :goto_9
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/tencent/bugly/proguard/bb;->a([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object/from16 v30, v13

    :try_start_a
    const-string v13, "process_id"

    invoke-virtual {v14, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "process_name"

    invoke-virtual {v14, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "exit_time"

    invoke-virtual {v14, v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "reason"

    invoke-virtual {v14, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "description"

    invoke-virtual {v14, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "crash_identify"

    invoke-virtual {v14, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "data"

    invoke-virtual {v1, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v6, Lcom/tencent/bugly/proguard/ev;->mContext:Landroid/content/Context;

    iget-object v2, v6, Lcom/tencent/bugly/proguard/ev;->mM:Lcom/tencent/bugly/proguard/am;

    invoke-static {v0, v9, v15, v2}, Lcom/tencent/bugly/proguard/bb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/am;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_b

    :cond_a
    move-object/from16 v2, v22

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lcom/tencent/bugly/proguard/bg;

    iget-object v2, v6, Lcom/tencent/bugly/proguard/ev;->mM:Lcom/tencent/bugly/proguard/am;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/am;->bA:Ljava/lang/String;

    move-object/from16 v5, p1

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/tencent/bugly/proguard/bg;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/tencent/bugly/proguard/bg;->a(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v6, Lcom/tencent/bugly/proguard/ev;->mO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/bw;->a(Lcom/tencent/bugly/proguard/bg;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/tencent/bugly/proguard/bw;->b(Lcom/tencent/bugly/proguard/bg;Ljava/lang/String;Lcom/tencent/bugly/proguard/ba$a;)V

    goto :goto_b

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v6, Lcom/tencent/bugly/proguard/ev;->om:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/bw;->a(Lcom/tencent/bugly/proguard/bg;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/tencent/bugly/proguard/bw;->a(Lcom/tencent/bugly/proguard/bg;Ljava/lang/String;Lcom/tencent/bugly/proguard/ba$a;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object/from16 v30, v13

    :goto_a
    :try_start_b
    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_c
    :goto_c
    move-object/from16 v26, v3

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    :cond_d
    move-object/from16 v30, v13

    :goto_d
    move-object/from16 v1, p2

    move-object/from16 v2, v21

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move/from16 v7, v25

    goto :goto_e

    :cond_e
    move-object/from16 v5, p1

    move-object/from16 v2, v22

    goto :goto_f

    :cond_f
    move-object/from16 v26, v3

    move-object/from16 v24, v6

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    const/4 v1, 0x3

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    :goto_e
    move-object/from16 v3, v26

    move-object/from16 v10, v27

    move-object/from16 v11, v28

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_10
    move-object/from16 v5, p1

    move-object v2, v14

    :goto_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-wide v0, Lcom/tencent/bugly/proguard/eu;->oh:J

    sub-long v0, v10, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v12, 0x5265c00

    cmp-long v3, v12, v0

    if-gez v3, :cond_13

    sget v0, Lcom/tencent/bugly/proguard/eu;->oi:I

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/tencent/bugly/proguard/ev;->dR()Lcom/tencent/bugly/proguard/ev;

    move-result-object v0

    sget v1, Lcom/tencent/bugly/proguard/eu;->oi:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :try_start_c
    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/bugly/proguard/bb;->a([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "normal"

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "count"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, v0, Lcom/tencent/bugly/proguard/ev;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/ev;->mM:Lcom/tencent/bugly/proguard/am;

    invoke-static {v1, v9, v15, v4}, Lcom/tencent/bugly/proguard/bb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/am;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_10

    :cond_11
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lcom/tencent/bugly/proguard/bg;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/ev;->mM:Lcom/tencent/bugly/proguard/am;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/am;->bA:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/tencent/bugly/proguard/bg;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/tencent/bugly/proguard/ev;->om:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/bw;->a(Lcom/tencent/bugly/proguard/bg;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lcom/tencent/bugly/proguard/bw;->a(Lcom/tencent/bugly/proguard/bg;Ljava/lang/String;Lcom/tencent/bugly/proguard/ba$a;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_10

    :catchall_7
    move-exception v0

    :try_start_d
    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    :cond_12
    :goto_10
    sput-wide v10, Lcom/tencent/bugly/proguard/eu;->oh:J

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v1, 0x0

    sput v1, Lcom/tencent/bugly/proguard/eu;->oi:I

    :cond_13
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget v1, Lcom/tencent/bugly/proguard/eu;->oi:I

    move-object/from16 v2, v18

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sput-wide v10, Lcom/tencent/bugly/proguard/eu;->og:J

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-wide v1, Lcom/tencent/bugly/proguard/eu;->og:J

    move-object/from16 v3, v17

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Success handle all info, query exit info: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exception exit upload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_14
    :goto_11
    const-string v0, "No exit info need to upload."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_15
    :goto_12
    const-string v0, "Failed to get ApplicationExitInfo method."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    return-void

    :catchall_8
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public static z(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/ds;->cN()Lcom/tencent/bugly/proguard/ds;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/proguard/eu$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/eu$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ds;->b(Ljava/lang/Runnable;)Z

    return-void
.end method
