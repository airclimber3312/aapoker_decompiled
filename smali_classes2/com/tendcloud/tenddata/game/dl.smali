.class public Lcom/tendcloud/tenddata/game/dl;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static a:Ljava/lang/String; = "utf-8"

.field private static final b:Ljava/util/zip/CRC32;

.field private static final c:I = 0x5

.field private static final d:I = 0x6

.field private static final e:I = 0x7530

.field private static final h:Z = true

.field private static final i:I = 0x10000

.field private static volatile j:Lcom/tendcloud/tenddata/game/dl;

.field private static k:Landroid/os/HandlerThread;


# instance fields
.field private f:J

.field private g:Z

.field private l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/dl;->b:Ljava/util/zip/CRC32;

    const/4 v0, 0x0

    .line 430
    sput-object v0, Lcom/tendcloud/tenddata/game/dl;->j:Lcom/tendcloud/tenddata/game/dl;

    .line 472
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/bs;->a()Lcom/tendcloud/tenddata/game/bs;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/dl;->a()Lcom/tendcloud/tenddata/game/dl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bs;->register(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/dl;->f:J

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/tendcloud/tenddata/game/dl;->g:Z

    const/4 v0, 0x0

    .line 432
    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dl;->l:Landroid/os/Handler;

    .line 446
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ModuleDataForward"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/dl;->k:Landroid/os/HandlerThread;

    .line 447
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 448
    new-instance v0, Lcom/tendcloud/tenddata/game/dn;

    sget-object v1, Lcom/tendcloud/tenddata/game/dl;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tendcloud/tenddata/game/dn;-><init>(Lcom/tendcloud/tenddata/game/dl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dl;->l:Landroid/os/Handler;

    .line 467
    invoke-static {}, Lcom/tendcloud/tenddata/game/dl;->g()V

    .line 468
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/dl;->d()V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/dl;
    .locals 2

    .line 435
    sget-object v0, Lcom/tendcloud/tenddata/game/dl;->j:Lcom/tendcloud/tenddata/game/dl;

    if-nez v0, :cond_1

    .line 436
    const-class v0, Lcom/tendcloud/tenddata/game/dl;

    monitor-enter v0

    .line 437
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/dl;->j:Lcom/tendcloud/tenddata/game/dl;

    if-nez v1, :cond_0

    .line 438
    new-instance v1, Lcom/tendcloud/tenddata/game/dl;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dl;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/dl;->j:Lcom/tendcloud/tenddata/game/dl;

    .line 440
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 442
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/game/dl;->j:Lcom/tendcloud/tenddata/game/dl;

    return-object v0
.end method

.method private static a(Ljava/util/TreeSet;)Ljava/lang/String;
    .locals 3

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/game/dp;

    .line 279
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/dp;->c()[B

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/dp;->c()[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 280
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/dp;->c()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 285
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/tendcloud/tenddata/game/a;)V
    .locals 9

    .line 181
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bb;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->needToSendData()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 198
    :try_start_0
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/az$b;->getFeatureLockFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/az;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_3

    if-eqz v1, :cond_2

    .line 270
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az$b;->getFeatureLockFileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 204
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/tendcloud/tenddata/game/do;->a()Lcom/tendcloud/tenddata/game/do;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tendcloud/tenddata/game/do;->a(Lcom/tendcloud/tenddata/game/a;)Ljava/util/TreeSet;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 205
    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v3

    if-gtz v3, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string v3, "New data found, Submitting..."

    const/4 v4, 0x1

    .line 209
    invoke-direct {p0, v3, p1, v4}, Lcom/tendcloud/tenddata/game/dl;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Z)V

    .line 210
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/dl;->a(Ljava/util/TreeSet;)Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bp;->e(Ljava/lang/String;)[B

    move-result-object v3

    .line 216
    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/game/dl;->a(Ljava/util/TreeSet;[B)[B

    move-result-object v2

    .line 222
    sget-object v3, Lcom/tendcloud/tenddata/game/dl;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    .line 223
    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TRACKING"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "/"

    if-eqz v6, :cond_5

    .line 228
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/1"

    .line 229
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 231
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :goto_0
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    .line 237
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "application/octet-stream"

    invoke-static {v3, p1, v5, v2, v6}, Lcom/tendcloud/tenddata/game/at;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;[BLjava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;

    move-result-object v2

    .line 238
    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/at$e;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_6

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/dl;->f:J

    .line 241
    iput-boolean v4, p0, Lcom/tendcloud/tenddata/game/dl;->g:Z

    .line 242
    invoke-static {}, Lcom/tendcloud/tenddata/game/do;->a()Lcom/tendcloud/tenddata/game/do;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tendcloud/tenddata/game/do;->sendMessageSuccess(Lcom/tendcloud/tenddata/game/a;)V

    const-string v2, "Data submitted successfully!"

    .line 243
    invoke-direct {p0, v2, p1, v4}, Lcom/tendcloud/tenddata/game/dl;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Z)V

    .line 245
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 248
    :cond_6
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 258
    invoke-static {}, Lcom/tendcloud/tenddata/game/do;->a()Lcom/tendcloud/tenddata/game/do;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tendcloud/tenddata/game/do;->sendMessageFaild(Lcom/tendcloud/tenddata/game/a;)V

    .line 259
    iput-boolean v0, p0, Lcom/tendcloud/tenddata/game/dl;->g:Z

    const-string v0, "Failed to submit data!"

    .line 260
    invoke-direct {p0, v0, p1, v4}, Lcom/tendcloud/tenddata/game/dl;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Z)V

    :goto_1
    if-eqz v1, :cond_9

    goto :goto_4

    :cond_7
    :goto_2
    const-string v2, "No new data found!"

    .line 206
    invoke-direct {p0, v2, p1, v0}, Lcom/tendcloud/tenddata/game/dl;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_8

    .line 270
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az$b;->getFeatureLockFileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    .line 265
    :goto_3
    :try_start_3
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_9

    .line 270
    :goto_4
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az$b;->getFeatureLockFileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    :cond_9
    return-void

    :catchall_2
    move-exception v0

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az$b;->getFeatureLockFileName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    :cond_a
    throw v0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/dl;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/dl;->d()V

    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/dl;Lcom/tendcloud/tenddata/game/a;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dl;->a(Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Z)V
    .locals 4

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->index()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v2, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    const/4 v3, 0x4

    if-eq p2, v3, :cond_0

    const/4 p1, 0x7

    if-eq p2, p1, :cond_1

    const/16 p1, 0x8

    if-eq p2, p1, :cond_1

    new-array p1, v2, [Ljava/lang/String;

    aput-object v0, p1, v1

    .line 175
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->iForInternal([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_3

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[Push] "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 164
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-array p1, v2, [Ljava/lang/String;

    aput-object v0, p1, v1

    .line 166
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->dForInternal([Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static a(Ljava/util/TreeSet;[B)[B
    .locals 3

    .line 294
    :try_start_0
    array-length v0, p1

    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_1

    .line 295
    invoke-virtual {p0}, Ljava/util/TreeSet;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 296
    :goto_0
    div-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_0

    .line 297
    invoke-virtual {p0}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/dl;->a(Ljava/util/TreeSet;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->e(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/dl;->a(Ljava/util/TreeSet;[B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, p0

    :catchall_0
    :cond_1
    return-object p1
.end method

.method public static a([B)[B
    .locals 6

    const/16 v0, 0x800

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 311
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/util/zip/InflaterInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/util/zip/Inflater;

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v3, v4, p0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 315
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 316
    invoke-virtual {p0, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 319
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 320
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-object v2, v1

    :catch_1
    if-eqz v2, :cond_1

    .line 324
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 327
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v1
.end method

.method static synthetic b()Z
    .locals 1

    .line 43
    invoke-static {}, Lcom/tendcloud/tenddata/game/dl;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic c()Z
    .locals 1

    .line 43
    invoke-static {}, Lcom/tendcloud/tenddata/game/dl;->e()Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dl;->l:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 71
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/bp;->b()Ljava/security/SecureRandom;

    move-result-object v0

    .line 72
    invoke-static {}, Lcom/tendcloud/tenddata/game/ab;->a()[I

    move-result-object v2

    .line 78
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bb;->g(Landroid/content/Context;)Z

    move-result v3

    const/16 v4, 0x7530

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 79
    iget-boolean v3, p0, Lcom/tendcloud/tenddata/game/dl;->g:Z

    if-nez v3, :cond_0

    aget v2, v2, v5

    mul-int/lit8 v2, v2, 0x1

    .line 80
    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    :goto_0
    add-int/2addr v2, v0

    goto :goto_1

    :cond_0
    aget v2, v2, v5

    goto :goto_1

    .line 82
    :cond_1
    iget-boolean v3, p0, Lcom/tendcloud/tenddata/game/dl;->g:Z

    const/4 v6, 0x0

    if-nez v3, :cond_2

    aget v2, v2, v6

    mul-int/lit8 v2, v2, 0x1

    const v3, 0xea60

    .line 83
    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_2
    aget v0, v2, v6

    move v2, v0

    :goto_1
    const v0, 0x1b7740

    if-le v2, v0, :cond_3

    const v2, 0x1b7740

    .line 91
    :cond_3
    invoke-static {}, Lcom/tendcloud/tenddata/game/a;->getFeaturesList()Ljava/util/ArrayList;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tendcloud/tenddata/game/a;

    .line 93
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/dl;->l:Landroid/os/Handler;

    invoke-static {v4, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    int-to-long v5, v2

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 97
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private static e()Z
    .locals 11

    .line 105
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 106
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-long v4, v2

    .line 108
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->e()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v1, v0

    int-to-long v0, v1

    .line 110
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v3, "TD_app_pefercen_profile"

    const-string v6, "TD_sdk_last_send_time_wifi"

    const-wide/16 v7, 0x0

    invoke-static {v2, v3, v6, v7, v8}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->e()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    cmp-long v10, v6, v8

    if-ltz v10, :cond_0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    div-long v6, v4, v6

    sub-long/2addr v0, v6

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v6, 0x1

    cmp-long v8, v0, v6

    if-eqz v8, :cond_0

    const-wide/16 v0, 0x64

    rem-long/2addr v4, v0

    rem-long/2addr v2, v0

    sub-long/2addr v4, v2

    .line 118
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v0, v6

    if-ltz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 124
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static f()Z
    .locals 11

    .line 131
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-long v4, v2

    .line 134
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->e()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 135
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v1, v0

    int-to-long v0, v1

    .line 136
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v3, "TD_app_pefercen_profile"

    const-string v6, "TD_sdk_last_send_time_mobile_data"

    const-wide/16 v7, 0x0

    invoke-static {v2, v3, v6, v7, v8}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->e()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    cmp-long v10, v6, v8

    if-ltz v10, :cond_0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    div-long v6, v4, v6

    sub-long/2addr v0, v6

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v6, 0x1

    cmp-long v8, v0, v6

    if-eqz v8, :cond_0

    const-wide/16 v0, 0x64

    rem-long/2addr v4, v0

    rem-long/2addr v2, v0

    sub-long/2addr v4, v2

    .line 144
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v0, v6

    if-ltz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 150
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cz;->postSDKError(Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static g()V
    .locals 2

    .line 333
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bb;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 337
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bm;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tendcloud/tenddata/game/dm;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dm;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public final onTDEBEventForwardRequest(Lcom/tendcloud/tenddata/game/dj;)V
    .locals 6

    if-eqz p1, :cond_5

    .line 399
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_1

    .line 403
    :cond_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/dj;->b:Lcom/tendcloud/tenddata/game/dj$a;

    sget-object v1, Lcom/tendcloud/tenddata/game/dj$a;->IMMEDIATELY:Lcom/tendcloud/tenddata/game/dj$a;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/dj$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dl;->l:Landroid/os/Handler;

    iget-object v2, p1, Lcom/tendcloud/tenddata/game/dj;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dl;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dl;->l:Landroid/os/Handler;

    iget-object p1, p1, Lcom/tendcloud/tenddata/game/dj;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 411
    :cond_2
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/dj;->b:Lcom/tendcloud/tenddata/game/dj$a;

    sget-object v2, Lcom/tendcloud/tenddata/game/dj$a;->HIGH:Lcom/tendcloud/tenddata/game/dj$a;

    invoke-virtual {v0, v2}, Lcom/tendcloud/tenddata/game/dj$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 412
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dl;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 413
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dl;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tendcloud/tenddata/game/dl;->f:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    sub-long/2addr v2, v4

    .line 418
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    move-wide v4, v2

    .line 422
    :goto_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dl;->l:Landroid/os/Handler;

    iget-object p1, p1, Lcom/tendcloud/tenddata/game/dj;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 426
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dl;->l:Landroid/os/Handler;

    invoke-virtual {v0, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    :goto_1
    return-void
.end method
