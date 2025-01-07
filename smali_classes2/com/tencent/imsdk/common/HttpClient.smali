.class public Lcom/tencent/imsdk/common/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/common/HttpClient$BasicAuthenticator;,
        Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field public static final HTTP_ACTION_REQUEST:I = 0x0

.field public static final HTTP_ACTION_RESPONSE:I = 0x1

.field private static final KEEP_ALIVE:J = 0x5L

.field private static final MAX_POOL_SIZE:I

.field private static final PROXY_TYPE_HTTP:I = 0x1

.field private static final PROXY_TYPE_SOCKS5:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HttpClient"

.field private static mNeedRollbackHttps2Http:Z

.field private static mRollbackHttps2Http:Ljava/lang/String;

.field private static final mThreadPoolExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 42
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/tencent/imsdk/common/HttpClient;->CPU_COUNT:I

    add-int/lit8 v2, v0, 0x1

    .line 44
    sput v2, Lcom/tencent/imsdk/common/HttpClient;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x1

    .line 46
    sput v3, Lcom/tencent/imsdk/common/HttpClient;->MAX_POOL_SIZE:I

    const-string v0, ""

    .line 54
    sput-object v0, Lcom/tencent/imsdk/common/HttpClient;->mRollbackHttps2Http:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    sput-boolean v0, Lcom/tencent/imsdk/common/HttpClient;->mNeedRollbackHttps2Http:Z

    .line 59
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/tencent/imsdk/common/HttpClient;->mThreadPoolExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/tencent/imsdk/common/HttpClient;->mRollbackHttps2Http:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    sput-object p0, Lcom/tencent/imsdk/common/HttpClient;->mRollbackHttps2Http:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/tencent/imsdk/common/HttpClient;->mNeedRollbackHttps2Http:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 35
    sput-boolean p0, Lcom/tencent/imsdk/common/HttpClient;->mNeedRollbackHttps2Http:Z

    return p0
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/tencent/imsdk/common/HttpClient;->needRollbackHttps2Http(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/tencent/imsdk/common/HttpClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(IIIJ)V
    .locals 0

    .line 35
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/imsdk/common/HttpClient;->nativeProgressCallback(IIIJ)V

    return-void
.end method

.method static synthetic access$500(I[Ljava/lang/String;[Ljava/lang/String;[BJ)V
    .locals 0

    .line 35
    invoke-static/range {p0 .. p5}, Lcom/tencent/imsdk/common/HttpClient;->nativeResponseCallback(I[Ljava/lang/String;[Ljava/lang/String;[BJ)V

    return-void
.end method

.method private static httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v16, p6

    move-object/from16 v15, p7

    move/from16 v3, p8

    move-object/from16 v4, p9

    move/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move/from16 v9, p13

    move/from16 v10, p14

    move-object/from16 v2, p15

    .line 98
    new-instance v0, Lcom/tencent/imsdk/common/HttpClient$1;

    move-object/from16 p0, v0

    invoke-direct/range {v0 .. v16}, Lcom/tencent/imsdk/common/HttpClient$1;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Ljava/lang/Boolean;[BLjava/lang/String;Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;Ljava/lang/String;)V

    .line 262
    sget-object v0, Lcom/tencent/imsdk/common/HttpClient;->mThreadPoolExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static httpRequest(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;JJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 19

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 276
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_0

    .line 277
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 278
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 279
    aget-object v4, v0, v3

    aget-object v5, v1, v3

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    move-object v6, v2

    .line 282
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    new-instance v10, Lcom/tencent/imsdk/common/HttpClient$2;

    move-wide/from16 v0, p8

    move-wide/from16 v2, p10

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/tencent/imsdk/common/HttpClient$2;-><init>(JJ)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v11, p12

    move-object/from16 v12, p13

    move/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    move/from16 v16, p17

    move/from16 v17, p18

    move-object/from16 v18, p19

    invoke-static/range {v3 .. v18}, Lcom/tencent/imsdk/common/HttpClient;->httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private static native nativeProgressCallback(IIIJ)V
.end method

.method private static native nativeResponseCallback(I[Ljava/lang/String;[Ljava/lang/String;[BJ)V
.end method

.method private static needRollbackHttps2Http(Ljava/lang/String;)Z
    .locals 6

    .line 314
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 319
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string p0, ""

    .line 322
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->isBrandOppo()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "oppo"

    goto :goto_0

    .line 324
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->isBrandVivo()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "vivo"

    goto :goto_0

    .line 326
    :cond_2
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->isBrandHuawei()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "huawei"

    goto :goto_0

    .line 328
    :cond_3
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->isBrandXiaoMi()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p0, "xiaomi"

    goto :goto_0

    .line 330
    :cond_4
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->isBrandMeizu()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p0, "meizu"

    :cond_5
    :goto_0
    const/4 v2, 0x0

    .line 334
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 335
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "brand"

    .line 336
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "below_version"

    .line 337
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 338
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 339
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getSDKVersion()I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt p0, v3, :cond_7

    const/4 p0, 0x1

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 348
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_2
    return v1
.end method
