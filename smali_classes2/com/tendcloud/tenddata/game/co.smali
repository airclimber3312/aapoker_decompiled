.class public Lcom/tendcloud/tenddata/game/co;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static f:Ljava/lang/String; = null

.field private static g:Ljava/lang/String; = "TDpref_cloudcontrol"

.field private static final h:Ljava/lang/String; = "TDpref_config"

.field private static final i:Ljava/lang/String; = "TDpref_last_request_time"

.field private static final j:Ljava/lang/String; = "TDpref_cloud_cv"

.field private static k:[Ljava/lang/String;

.field private static l:Z

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Z

.field private static t:Z

.field private static volatile u:Lcom/tendcloud/tenddata/game/co;


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/util/HashMap;

.field private d:Ljava/util/HashSet;

.field private e:Lorg/json/JSONObject;

.field private r:I

.field private s:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 65

    const-string v0, "232"

    const-string v1, "206"

    const-string v2, "284"

    const-string v3, "280"

    const-string v4, "219"

    const-string v5, "230"

    const-string v6, "238"

    const-string v7, "248"

    const-string v8, "244"

    const-string v9, "208"

    const-string v10, "308"

    const-string v11, "340"

    const-string v12, "543"

    const-string v13, "546"

    const-string v14, "547"

    const-string v15, "647"

    const-string v16, "742"

    const-string v17, "262"

    const-string v18, "202"

    const-string v19, "216"

    const-string v20, "272"

    const-string v21, "222"

    const-string v22, "247"

    const-string v23, "246"

    const-string v24, "270"

    const-string v25, "278"

    const-string v26, "204"

    const-string v27, "363"

    const-string v28, "362"

    const-string v29, "260"

    const-string v30, "268"

    const-string v31, "226"

    const-string v32, "231"

    const-string v33, "293"

    const-string v34, "214"

    const-string v35, "240"

    const-string v36, "234"

    const-string v37, "235"

    const-string v38, "266"

    const-string v39, "346"

    const-string v40, "348"

    const-string v41, "350"

    const-string v42, "354"

    const-string v43, "376"

    const-string v44, "750"

    const-string v45, "454"

    const-string v46, "455"

    const-string v47, "466"

    const-string v48, "525"

    const-string v49, "310"

    const-string v50, "311"

    const-string v51, "312"

    const-string v52, "313"

    const-string v53, "314"

    const-string v54, "315"

    const-string v55, "316"

    const-string v56, "330"

    const-string v57, "332"

    const-string v58, "534"

    const-string v59, "535"

    const-string v60, "544"

    const-string v61, "302"

    const-string v62, "505"

    const-string v63, "530"

    const-string v64, "548"

    .line 52
    filled-new-array/range {v0 .. v64}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/co;->k:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    sput-boolean v0, Lcom/tendcloud/tenddata/game/co;->q:Z

    const/4 v0, 0x1

    .line 70
    sput-boolean v0, Lcom/tendcloud/tenddata/game/co;->t:Z

    const/4 v0, 0x0

    .line 72
    sput-object v0, Lcom/tendcloud/tenddata/game/co;->u:Lcom/tendcloud/tenddata/game/co;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2d0

    .line 39
    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/co;->a:J

    const-wide/32 v0, 0x240c8400

    .line 40
    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/co;->b:J

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/co;->c:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/co;->d:Ljava/util/HashSet;

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/co;->e:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/co;->s:Landroid/os/Handler;

    .line 87
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ModuleCloudControl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v1, Lcom/tendcloud/tenddata/game/cp;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/tendcloud/tenddata/game/cp;-><init>(Lcom/tendcloud/tenddata/game/co;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/co;->s:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/tendcloud/tenddata/game/a;)I
    .locals 1

    .line 504
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :cond_1
    :goto_0
    return v0
.end method

.method public static a()Lcom/tendcloud/tenddata/game/co;
    .locals 2

    .line 74
    sget-object v0, Lcom/tendcloud/tenddata/game/co;->u:Lcom/tendcloud/tenddata/game/co;

    if-nez v0, :cond_1

    .line 75
    const-class v0, Lcom/tendcloud/tenddata/game/co;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/co;->u:Lcom/tendcloud/tenddata/game/co;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lcom/tendcloud/tenddata/game/co;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/co;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/co;->u:Lcom/tendcloud/tenddata/game/co;

    .line 79
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 81
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/game/co;->u:Lcom/tendcloud/tenddata/game/co;

    return-object v0
.end method

.method private a(Ljava/io/RandomAccessFile;)Ljava/lang/String;
    .locals 3

    .line 540
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    long-to-int v1, v0

    .line 541
    new-array v0, v1, [B

    const-wide/16 v1, 0x0

    .line 542
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 543
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 544
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "r"

    const-string v1, "TDpref_config"

    const-string v2, "cv"

    .line 240
    :try_start_0
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v4, Lcom/tendcloud/tenddata/game/co;->g:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v3, v4, v1, v5}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bp;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 242
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_1

    .line 245
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 247
    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    :cond_0
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v0, Lcom/tendcloud/tenddata/game/co;->g:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v4

    goto :goto_0

    .line 256
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v3, Lcom/tendcloud/tenddata/game/co;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v1, v4}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v1, Lcom/tendcloud/tenddata/game/co;->g:Ljava/lang/String;

    const-string v3, "TDpref_cloud_cv"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v0, v1, v3, v4, v5}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 264
    :cond_2
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v2, Lcom/tendcloud/tenddata/game/co;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 269
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :cond_3
    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/co;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/co;->b(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method

.method private a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 528
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 529
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 530
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 531
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string v0, "clt"

    .line 357
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    const-string v1, "id"

    .line 358
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 359
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 360
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bp;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 362
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/co;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/co;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 365
    :cond_0
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/co;->c:Ljava/util/HashMap;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 371
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 227
    :cond_0
    :try_start_0
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 231
    :cond_1
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/co;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/co;->e()Z

    move-result p0

    return p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 36
    sput-boolean p0, Lcom/tendcloud/tenddata/game/co;->t:Z

    return p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 10

    .line 170
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "bl"

    .line 171
    iget v2, p0, Lcom/tendcloud/tenddata/game/co;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "pl"

    const/4 v2, 0x1

    .line 173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "sv"

    const-string v2, "4.0.26"

    .line 174
    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "smcc"

    .line 175
    sget-object v2, Lcom/tendcloud/tenddata/game/co;->m:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "smnc"

    .line 176
    sget-object v2, Lcom/tendcloud/tenddata/game/co;->n:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "bmcc"

    .line 177
    sget-object v2, Lcom/tendcloud/tenddata/game/co;->o:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "bmnc"

    .line 178
    sget-object v2, Lcom/tendcloud/tenddata/game/co;->p:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "dt"

    const-string v2, "Mobile"

    .line 179
    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ov"

    .line 180
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "av"

    .line 181
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "px"

    .line 182
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/aw;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "nt"

    .line 183
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bb;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "op"

    .line 184
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bb;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ch"

    .line 185
    invoke-direct {p0, v0, v1, p2}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "cv"

    .line 186
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v3, Lcom/tendcloud/tenddata/game/co;->g:Ljava/lang/String;

    const-string v4, "TDpref_cloud_cv"

    const-wide/16 v5, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "TDID"

    .line 187
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/au;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "AppID"

    .line 188
    invoke-direct {p0, v0, v1, p1}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v3, "cloud.xdrig.com"

    sget-object v4, Lcom/tendcloud/tenddata/game/aa;->p:Ljava/lang/String;

    sget-object v5, Lcom/tendcloud/tenddata/game/aa;->t:Ljava/lang/String;

    const-string v6, ""

    .line 196
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string v8, "gzip"

    const-string v9, "application/json"

    .line 193
    invoke-static/range {v2 .. v9}, Lcom/tendcloud/tenddata/game/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;

    move-result-object v0

    .line 197
    sget-object v1, Lcom/tendcloud/tenddata/game/co;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/az;->getFileLock(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/at$e;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 199
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/at$e;->getResponseMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/co;->b(Lorg/json/JSONObject;)V

    .line 202
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object p2, Lcom/tendcloud/tenddata/game/co;->g:Ljava/lang/String;

    const-string p3, "TDpref_last_request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/tendcloud/tenddata/game/bg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 205
    :cond_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/co;->t:Z

    if-eqz v0, :cond_1

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appId"

    .line 207
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "channelId"

    .line 208
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Features"

    .line 209
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/co;->s:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 211
    iget-object p2, p0, Lcom/tendcloud/tenddata/game/co;->s:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 216
    :try_start_1
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 218
    :cond_1
    :goto_0
    sget-object p1, Lcom/tendcloud/tenddata/game/co;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    sget-object p2, Lcom/tendcloud/tenddata/game/co;->f:Ljava/lang/String;

    invoke-static {p2}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "r"

    const-string v1, "c"

    const-string v2, "i"

    if-nez p1, :cond_0

    return-void

    .line 318
    :cond_0
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 320
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/co;->a:J

    .line 323
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/tendcloud/tenddata/game/co;->d:Ljava/util/HashSet;

    .line 324
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 325
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 326
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 327
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 328
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    .line 329
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    .line 330
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 331
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    if-ne v4, v6, :cond_2

    .line 333
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lcom/tendcloud/tenddata/game/co;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 335
    :cond_2
    iget-object v6, p0, Lcom/tendcloud/tenddata/game/co;->d:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_5

    .line 340
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/co;->c:Ljava/util/HashMap;

    .line 343
    :cond_5
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/co;->f()V

    .line 344
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/co;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 351
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    .line 557
    :try_start_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bp;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 560
    :goto_0
    sget-object v2, Lcom/tendcloud/tenddata/game/co;->k:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 561
    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 567
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private d()V
    .locals 2

    .line 151
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tendcloud/tenddata/game/co;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tendcloud/tenddata/game/co;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/co;->g:Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tendcloud/tenddata/game/az$b;->Cloud_Control_Lock_File:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tendcloud/tenddata/game/co;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/co;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 155
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private e()Z
    .locals 7

    .line 160
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v1, Lcom/tendcloud/tenddata/game/co;->g:Ljava/lang/String;

    const-string v2, "TDpref_last_request_time"

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v2, v0, v3

    if-eqz v2, :cond_1

    sub-long/2addr v5, v0

    .line 162
    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/co;->a:J

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    cmp-long v2, v5, v0

    if-gtz v2, :cond_1

    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/co;->b:J

    cmp-long v2, v5, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private f()V
    .locals 2

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/co;->e:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 277
    sget-object v0, Lcom/tendcloud/tenddata/game/co;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/az;->b(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/co;->a(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 282
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 283
    iput-object v1, p0, Lcom/tendcloud/tenddata/game/co;->e:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 290
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private g()V
    .locals 4

    .line 296
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/co;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/az;->getFileLock(Ljava/lang/String;)V

    .line 297
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    sget-object v1, Lcom/tendcloud/tenddata/game/co;->g:Ljava/lang/String;

    const-string v2, "TDpref_config"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 303
    :goto_0
    invoke-direct {p0, v1}, Lcom/tendcloud/tenddata/game/co;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 306
    :try_start_1
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 308
    :goto_1
    sget-object v0, Lcom/tendcloud/tenddata/game/co;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/tendcloud/tenddata/game/co;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    throw v0
.end method

.method private h()V
    .locals 6

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/co;->e:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 482
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 483
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/co;->e:Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 484
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 485
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 486
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 487
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 488
    iget-object v5, p0, Lcom/tendcloud/tenddata/game/co;->d:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 489
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 493
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 494
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 499
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    const/4 v0, 0x0

    .line 377
    invoke-virtual {p0, p1, v0, v0}, Lcom/tendcloud/tenddata/game/co;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 386
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 387
    sget-boolean v5, Lcom/tendcloud/tenddata/game/co;->q:Z

    if-nez v5, :cond_0

    return-object v4

    .line 392
    :cond_0
    :try_start_0
    sget-boolean v5, Lcom/tendcloud/tenddata/game/ab;->q:Z

    if-eqz v5, :cond_1

    return-object v4

    .line 398
    :cond_1
    iget-object v5, v1, Lcom/tendcloud/tenddata/game/co;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    .line 401
    sget-boolean v0, Lcom/tendcloud/tenddata/game/co;->l:Z

    if-eqz v0, :cond_2

    return-object v4

    :cond_2
    return-object v6

    :cond_3
    const/4 v5, 0x1

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 412
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v4

    .line 416
    :cond_4
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v6

    .line 420
    :cond_5
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 424
    :cond_6
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/co;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 425
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 427
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 430
    invoke-direct/range {p0 .. p0}, Lcom/tendcloud/tenddata/game/co;->f()V

    .line 432
    :cond_7
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 433
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 434
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "st"

    .line 436
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v12, "et"

    .line 437
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v14, "cn"

    .line 438
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-ltz v16, :cond_7

    cmp-long v10, v14, v12

    if-gtz v10, :cond_7

    if-gtz v9, :cond_8

    goto :goto_0

    .line 447
    :cond_8
    iget-object v10, v1, Lcom/tendcloud/tenddata/game/co;->e:Lorg/json/JSONObject;

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 448
    iget-object v10, v1, Lcom/tendcloud/tenddata/game/co;->e:Lorg/json/JSONObject;

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 449
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 450
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    if-ge v11, v9, :cond_7

    .line 451
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 452
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 453
    iget-object v8, v1, Lcom/tendcloud/tenddata/game/co;->e:Lorg/json/JSONObject;

    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 456
    :cond_9
    iget-object v9, v1, Lcom/tendcloud/tenddata/game/co;->e:Lorg/json/JSONObject;

    invoke-virtual {v10, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_0

    .line 461
    :cond_a
    iget-object v9, v1, Lcom/tendcloud/tenddata/game/co;->e:Lorg/json/JSONObject;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v10, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 462
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 469
    :cond_b
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_c

    return-object v6

    :catchall_0
    move-exception v0

    .line 474
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    :cond_c
    return-object v4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 6

    .line 110
    invoke-direct {p0, p3}, Lcom/tendcloud/tenddata/game/co;->a(Lcom/tendcloud/tenddata/game/a;)I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/co;->r:I

    .line 113
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bb;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 114
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bb;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x3

    if-eqz v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    sput-object v2, Lcom/tendcloud/tenddata/game/co;->m:Ljava/lang/String;

    .line 116
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/tendcloud/tenddata/game/co;->n:Ljava/lang/String;

    .line 117
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    sput-object v0, Lcom/tendcloud/tenddata/game/co;->o:Ljava/lang/String;

    .line 118
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    sput-object v4, Lcom/tendcloud/tenddata/game/co;->p:Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/tendcloud/tenddata/game/co;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/co;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    sget-object v0, Lcom/tendcloud/tenddata/game/co;->o:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/co;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    sput-boolean v3, Lcom/tendcloud/tenddata/game/co;->l:Z

    .line 122
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/co;->d()V

    .line 125
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/co;->g()V

    .line 128
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bm;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/tendcloud/tenddata/game/cq;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/cq;-><init>(Lcom/tendcloud/tenddata/game/co;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :catchall_0
    sput-boolean v1, Lcom/tendcloud/tenddata/game/co;->q:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 552
    sget-object v0, Lcom/tendcloud/tenddata/game/co;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 574
    sget-object v0, Lcom/tendcloud/tenddata/game/co;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/az;->b(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/co;->e:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tendcloud/tenddata/game/co;->a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    .line 575
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/co;->e:Lorg/json/JSONObject;

    return-void
.end method
