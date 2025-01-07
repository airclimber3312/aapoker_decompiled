.class public Lcom/tencent/imsdk/common/IMLog;
.super Ljava/lang/Object;
.source "IMLog.java"


# static fields
.field public static final LOG_LEVEL_DEBUG:I = 0x3

.field public static final LOG_LEVEL_ERROR:I = 0x6

.field public static final LOG_LEVEL_INFO:I = 0x4

.field public static final LOG_LEVEL_OFF:I = 0x0

.field public static final LOG_LEVEL_VERBOSE:I = 0x2

.field public static final LOG_LEVEL_WARN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "IMLog"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 33
    invoke-static {v0, p0, p1}, Lcom/tencent/imsdk/common/IMLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 63
    invoke-static {v0, p0, p1}, Lcom/tencent/imsdk/common/IMLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 43
    invoke-static {v0, p0, p1}, Lcom/tencent/imsdk/common/IMLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 67
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->loadIMLibrary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    sget-object p0, Lcom/tencent/imsdk/common/IMLog;->TAG:Ljava/lang/String;

    const-string p1, "libimsdk.so is not loaded"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-ltz p0, :cond_4

    const/4 v0, 0x6

    if-le p0, v0, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    sget-object p0, Lcom/tencent/imsdk/common/IMLog;->TAG:Ljava/lang/String;

    const-string p1, "empty logTag"

    invoke-static {p0, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    sget-object p0, Lcom/tencent/imsdk/common/IMLog;->TAG:Ljava/lang/String;

    const-string p1, "empty logContent"

    invoke-static {p0, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, ""

    const/4 v1, 0x0

    .line 87
    invoke-static {p0, p1, v0, v1, p2}, Lcom/tencent/imsdk/common/IMLog;->nativeWriteLog(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 73
    :cond_4
    :goto_0
    sget-object p1, Lcom/tencent/imsdk/common/IMLog;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invalid logLevel\uff1a "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static native nativeWriteLog(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 23
    invoke-static {v0, p0, p1}, Lcom/tencent/imsdk/common/IMLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 53
    invoke-static {v0, p0, p1}, Lcom/tencent/imsdk/common/IMLog;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static writeException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 97
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->loadIMLibrary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    sget-object p0, Lcom/tencent/imsdk/common/IMLog;->TAG:Ljava/lang/String;

    const-string p1, "libimsdk.so is not loaded"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exception : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
