.class public Lcom/netease/cloud/nos/yidun/core/WanAccelerator;
.super Ljava/lang/Object;
.source "WanAccelerator.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static conf:Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

.field private static isInit:Z

.field public static isOpened:Z

.field public static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->LOGTAG:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->conf:Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    invoke-direct {v0}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;-><init>()V

    sput-object v0, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->conf:Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    .line 4
    :cond_0
    sget-object v0, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->conf:Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    return-object v0
.end method

.method private static initScheduler(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->isMonitorThreadEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->LOGTAG:Ljava/lang/String;

    const-string v1, "init monitor timer"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 4
    new-instance v3, Lcom/netease/cloud/nos/yidun/monitor/MonitorTask;

    invoke-direct {v3, p0}, Lcom/netease/cloud/nos/yidun/monitor/MonitorTask;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getMonitorInterval()J

    move-result-wide v4

    .line 6
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getMonitorInterval()J

    move-result-wide v6

    .line 7
    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->LOGTAG:Ljava/lang/String;

    const-string v1, "init scheduler"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/cloud/nos/yidun/service/MonitorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/high16 v2, 0x2000000

    .line 12
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    const-string v0, "alarm"

    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/app/AlarmManager;

    .line 14
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getMonitorInterval()J

    move-result-wide v7

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method private static put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/Callback;ZLcom/netease/cloud/nos/yidun/core/WanNOSObject;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;
    .locals 16

    move-object/from16 v0, p4

    move-object/from16 v11, p7

    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object/from16 v13, p5

    move-object/from16 v10, p9

    .line 1
    :try_start_0
    invoke-static {v1, v0, v13, v10, v11}, Lcom/netease/cloud/nos/yidun/utils/Util;->checkParameters(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Lcom/netease/cloud/nos/yidun/core/WanNOSObject;Lcom/netease/cloud/nos/yidun/core/Callback;)V

    .line 2
    instance-of v2, v0, Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 3
    check-cast v0, Ljava/io/InputStream;

    goto :goto_1

    .line 4
    :cond_0
    instance-of v2, v0, Ljava/io/File;

    if-eqz v2, :cond_1

    .line 5
    new-instance v2, Ljava/io/FileInputStream;

    check-cast v0, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    move-object v14, v2

    goto :goto_2

    .line 6
    :cond_1
    instance-of v2, v0, Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_2
    instance-of v2, v0, Ljava/io/FileDescriptor;

    if-eqz v2, :cond_3

    .line 9
    new-instance v2, Ljava/io/FileInputStream;

    check-cast v0, Ljava/io/FileDescriptor;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/netease/cloud/nos/yidun/exception/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_3
    move-object v0, v12

    :goto_1
    move-object v14, v0

    .line 19
    :goto_2
    sget-boolean v0, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->isInit:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 20
    sput-boolean v0, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->isInit:Z

    .line 24
    :cond_4
    :try_start_1
    new-instance v15, Lcom/netease/cloud/nos/yidun/core/UploadTask;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v14

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/netease/cloud/nos/yidun/core/UploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/Callback;ZLcom/netease/cloud/nos/yidun/core/WanNOSObject;)V

    .line 31
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v15, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 33
    new-instance v0, Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

    invoke-direct {v0, v15}, Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;-><init>(Lcom/netease/cloud/nos/yidun/core/UploadTask;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v7, v0

    .line 35
    invoke-static {v14}, Lcom/netease/cloud/nos/yidun/utils/Util;->closeInputStream(Ljava/io/InputStream;)V

    .line 36
    new-instance v8, Lcom/netease/cloud/nos/yidun/core/CallRet;

    const/16 v3, 0x3e7

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v0, v8

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct/range {v0 .. v7}, Lcom/netease/cloud/nos/yidun/core/CallRet;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {v11, v8}, Lcom/netease/cloud/nos/yidun/core/Callback;->onFailure(Lcom/netease/cloud/nos/yidun/core/CallRet;)V

    return-object v12

    :catch_1
    move-exception v0

    goto :goto_3

    .line 37
    :catch_2
    :try_start_2
    new-instance v0, Lcom/netease/cloud/nos/yidun/exception/InvalidParameterException;

    const-string v1, "file not found"

    invoke-direct {v0, v1}, Lcom/netease/cloud/nos/yidun/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/netease/cloud/nos/yidun/exception/InvalidParameterException; {:try_start_2 .. :try_end_2} :catch_1

    .line 40
    :goto_3
    invoke-static {v12}, Lcom/netease/cloud/nos/yidun/utils/Util;->closeInputStream(Ljava/io/InputStream;)V

    .line 41
    throw v0
.end method

.method public static putFileByHttp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/WanNOSObject;Lcom/netease/cloud/nos/yidun/core/Callback;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;
    .locals 10

    .line 7
    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getUploadToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getNosBucketName()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getNosObjectName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    move-object v9, p4

    .line 9
    invoke-static/range {v0 .. v9}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/Callback;ZLcom/netease/cloud/nos/yidun/core/WanNOSObject;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static putFileByHttp(Landroid/content/Context;Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/WanNOSObject;Lcom/netease/cloud/nos/yidun/core/Callback;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;
    .locals 10

    .line 1
    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getUploadToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getNosBucketName()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getNosObjectName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    move-object v9, p4

    .line 3
    invoke-static/range {v0 .. v9}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/Callback;ZLcom/netease/cloud/nos/yidun/core/WanNOSObject;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static putFileByHttp(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/WanNOSObject;Lcom/netease/cloud/nos/yidun/core/Callback;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;
    .locals 10

    .line 4
    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getUploadToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getNosBucketName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getNosObjectName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    move-object v9, p4

    .line 6
    invoke-static/range {v0 .. v9}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/Callback;ZLcom/netease/cloud/nos/yidun/core/WanNOSObject;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static putFileByHttp(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/WanNOSObject;Lcom/netease/cloud/nos/yidun/core/Callback;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;
    .locals 10

    .line 10
    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getUploadToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getNosBucketName()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getNosObjectName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    move-object v9, p4

    .line 12
    invoke-static/range {v0 .. v9}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/Callback;ZLcom/netease/cloud/nos/yidun/core/WanNOSObject;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static putFileByHttps(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/WanNOSObject;Lcom/netease/cloud/nos/yidun/core/Callback;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;
    .locals 10

    .line 7
    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getUploadToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getNosBucketName()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getNosObjectName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    move-object v9, p4

    .line 9
    invoke-static/range {v0 .. v9}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/Callback;ZLcom/netease/cloud/nos/yidun/core/WanNOSObject;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static putFileByHttps(Landroid/content/Context;Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/WanNOSObject;Lcom/netease/cloud/nos/yidun/core/Callback;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;
    .locals 10

    .line 1
    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getUploadToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getNosBucketName()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getNosObjectName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    move-object v9, p4

    .line 3
    invoke-static/range {v0 .. v9}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/Callback;ZLcom/netease/cloud/nos/yidun/core/WanNOSObject;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static putFileByHttps(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/WanNOSObject;Lcom/netease/cloud/nos/yidun/core/Callback;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;
    .locals 10

    .line 4
    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getUploadToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getNosBucketName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getNosObjectName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    move-object v9, p4

    .line 6
    invoke-static/range {v0 .. v9}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/Callback;ZLcom/netease/cloud/nos/yidun/core/WanNOSObject;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static putFileByHttps(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/WanNOSObject;Lcom/netease/cloud/nos/yidun/core/Callback;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;
    .locals 10

    .line 10
    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getUploadToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getNosBucketName()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p4}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getNosObjectName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    move-object v9, p4

    .line 12
    invoke-static/range {v0 .. v9}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/Callback;ZLcom/netease/cloud/nos/yidun/core/WanNOSObject;)Lcom/netease/cloud/nos/yidun/core/UploadTaskExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static setConf(Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->conf:Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    return-void
.end method
