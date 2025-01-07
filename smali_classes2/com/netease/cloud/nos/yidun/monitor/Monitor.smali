.class public Lcom/netease/cloud/nos/yidun/monitor/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# static fields
.field private static LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String;

.field private static final maxListNum:I = 0x1f4

.field private static prompt:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/netease/cloud/nos/yidun/monitor/Monitor;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LIST:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->prompt:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/content/Context;Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->isMonitorThreadEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v1, "monitor add item for thread"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p1}, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->set(Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "send monitor data immediately"

    .line 4
    invoke-static {v0, p1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p1, Lcom/netease/cloud/nos/yidun/monitor/MonitorTask;

    invoke-direct {p1, p0}, Lcom/netease/cloud/nos/yidun/monitor/MonitorTask;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance p0, Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void

    .line 11
    :cond_1
    invoke-static {p0, p1}, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->sendStatItem(Landroid/content/Context;Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;)V

    return-void
.end method

.method public static declared-synchronized clean()V
    .locals 2

    const-class v0, Lcom/netease/cloud/nos/yidun/monitor/Monitor;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LIST:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/netease/cloud/nos/yidun/monitor/Monitor;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LIST:Ljava/util/List;

    const/4 v2, 0x0

    .line 2
    sput-object v2, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LIST:Ljava/util/List;

    const/4 v2, 0x0

    .line 3
    sput-boolean v2, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->prompt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getPostData(Ljava/util/List;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;",
            ">;)",
            "Ljava/io/ByteArrayOutputStream;"
        }
    .end annotation

    const-string v0, "gos close exception"

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 5
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    .line 10
    invoke-static {v4}, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->toJSON(Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 12
    :cond_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "items"

    .line 13
    invoke-virtual {p0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    sget-object v1, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "monitor result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 16
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 17
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v1, v3

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v1, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    .line 26
    :goto_1
    :try_start_3
    sget-object v3, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v4, "get post data json exception"

    invoke-static {v3, v4, p0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    .line 30
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_3
    move-exception p0

    .line 31
    :goto_2
    :try_start_5
    sget-object v3, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v4, "get post data io exception"

    invoke-static {v3, v4, p0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_2

    .line 37
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    .line 39
    sget-object v1, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    return-object v2

    :goto_4
    move-object v3, v1

    :goto_5
    if-eqz v3, :cond_3

    .line 40
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v1

    .line 42
    sget-object v2, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :cond_3
    :goto_6
    throw p0

    :cond_4
    :goto_7
    return-object v1
.end method

.method public static declared-synchronized set(Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;)Z
    .locals 4

    const-string v0, " >= 500"

    const-string v1, "monitor item num "

    const-class v2, Lcom/netease/cloud/nos/yidun/monitor/Monitor;

    monitor-enter v2

    .line 1
    :try_start_0
    sget-object v3, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LIST:Ljava/util/List;

    if-nez v3, :cond_0

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LIST:Ljava/util/List;

    .line 5
    :cond_0
    sget-object v3, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LIST:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object p0, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LIST:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/16 v3, 0x1f4

    if-lt p0, v3, :cond_1

    sget-boolean p0, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->prompt:Z

    if-nez p0, :cond_1

    .line 9
    sget-object p0, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 11
    sput-boolean p0, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->prompt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return p0

    :cond_1
    monitor-exit v2

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method private static toJSON(Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;)Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "a"

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getClientIP()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getClientIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_0

    const-string v1, "b"

    .line 5
    :try_start_2
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getClientIP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/cloud/nos/yidun/utils/Util;->ipToLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    const-string v1, "c"

    .line 7
    :try_start_3
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getLbsIP()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getLbsIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v1, :cond_1

    const-string v1, "d"

    .line 9
    :try_start_4
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getLbsIP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/cloud/nos/yidun/utils/Util;->getIPString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/cloud/nos/yidun/utils/Util;->ipToLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getUploaderIP()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getUploaderIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v1, :cond_2

    const-string v1, "e"

    .line 12
    :try_start_5
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getUploaderIP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/cloud/nos/yidun/utils/Util;->getIPString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/cloud/nos/yidun/utils/Util;->ipToLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_2
    const-string v1, "f"

    .line 14
    :try_start_6
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getFileSize()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0

    const-string v1, "g"

    .line 15
    :try_start_7
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getNetEnv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getLbsUseTime()J

    move-result-wide v3
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    const-string v1, "h"

    .line 17
    :try_start_8
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getLbsUseTime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_3
    const-string v1, "i"

    .line 19
    :try_start_9
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getUploaderUseTime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 20
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getLbsSucc()I

    move-result v1
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_0

    if-eqz v1, :cond_4

    const-string v1, "j"

    .line 21
    :try_start_a
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getLbsSucc()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    :cond_4
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getUploaderSucc()I

    move-result v1
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v1, :cond_5

    const-string v1, "k"

    .line 24
    :try_start_b
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getUploaderSucc()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 26
    :cond_5
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getLbsHttpCode()I

    move-result v1
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_0

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_6

    const-string v1, "l"

    .line 27
    :try_start_c
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getLbsHttpCode()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    :cond_6
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getUploaderHttpCode()I

    move-result v1
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_0

    if-eq v1, v3, :cond_7

    const-string v1, "m"

    .line 30
    :try_start_d
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getUploaderHttpCode()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    :cond_7
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getUploadRetryCount()I

    move-result v1
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_0

    if-eqz v1, :cond_8

    const-string v1, "n"

    .line 33
    :try_start_e
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getUploadRetryCount()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    :cond_8
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getChunkRetryCount()I

    move-result v1
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_0

    if-eqz v1, :cond_9

    const-string v1, "o"

    .line 36
    :try_start_f
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getChunkRetryCount()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    :cond_9
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getQueryRetryCount()I

    move-result v1
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_0

    if-eqz v1, :cond_a

    const-string v1, "p"

    .line 39
    :try_start_10
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getQueryRetryCount()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    :cond_a
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getBucketName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_0

    if-nez v1, :cond_b

    const-string v1, "q"

    .line 42
    :try_start_11
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    :cond_b
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getUploadType()I

    move-result v1
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_0

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_c

    const-string v1, "r"

    .line 45
    :try_start_12
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getUploadType()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 50
    sget-object v1, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v2, "parse statistic item numberFormat exception"

    invoke-static {v1, v2, p0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 51
    sget-object v1, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v2, "parse statistic item json exception"

    invoke-static {v1, v2, p0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_0
    return-object v0
.end method
