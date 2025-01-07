.class public final Lcom/tencent/bugly/proguard/ec;
.super Ljava/lang/Object;


# static fields
.field public static hL:Z = false

.field public static lK:I = 0x0

.field public static lL:I = 0x2

.field public static lM:Z = false

.field public static lN:I = 0xf000

.field public static lO:I = 0x2800

.field public static lP:I = 0x32

.field public static lQ:I = 0xbb8

.field public static lR:I = 0x5000

.field public static lS:J = 0xc800000L

.field public static lT:J = 0x240c8400L

.field public static lU:Ljava/lang/String; = null

.field public static lV:Z = false

.field public static lW:Ljava/lang/String; = null

.field public static lX:I = 0x1388

.field public static lY:Z = true

.field public static lZ:Z = true

.field public static ma:J = 0x2L

.field public static mb:J = 0x7530L

.field public static mc:J = 0x2710L

.field public static md:Ljava/lang/String;

.field public static me:Ljava/lang/String;

.field private static mf:Lcom/tencent/bugly/proguard/ec;


# instance fields
.field public W:I

.field public X:Z

.field public final iG:Lcom/tencent/bugly/proguard/ds;

.field public final lB:Lcom/tencent/bugly/proguard/dj;

.field public final mContext:Landroid/content/Context;

.field public final mg:Lcom/tencent/bugly/proguard/eb;

.field public final mh:Lcom/tencent/bugly/proguard/ei;

.field public final mi:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

.field public final mj:Lcom/tencent/bugly/proguard/el;

.field public mk:Lcom/tencent/bugly/proguard/p$a;

.field public ml:Lcom/tencent/bugly/proguard/ek;

.field private final mm:Lcom/tencent/bugly/proguard/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/ds;ZLcom/tencent/bugly/proguard/ek;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    iput v0, p0, Lcom/tencent/bugly/proguard/ec;->W:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ec;->X:Z

    new-instance v0, Lcom/tencent/bugly/proguard/ed;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ed;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mm:Lcom/tencent/bugly/proguard/ed;

    const/16 v0, 0x3eb

    sput v0, Lcom/tencent/bugly/proguard/ec;->lK:I

    invoke-static {p1}, Lcom/tencent/bugly/proguard/dz;->x(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ec;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/proguard/dj;->cA()Lcom/tencent/bugly/proguard/dj;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ec;->lB:Lcom/tencent/bugly/proguard/dj;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ec;->iG:Lcom/tencent/bugly/proguard/ds;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ec;->mk:Lcom/tencent/bugly/proguard/p$a;

    iput-object p4, p0, Lcom/tencent/bugly/proguard/ec;->ml:Lcom/tencent/bugly/proguard/ek;

    invoke-static {}, Lcom/tencent/bugly/proguard/dp;->cI()Lcom/tencent/bugly/proguard/dp;

    move-result-object v3

    invoke-static {}, Lcom/tencent/bugly/proguard/dd;->bB()Lcom/tencent/bugly/proguard/dd;

    move-result-object v4

    new-instance v8, Lcom/tencent/bugly/proguard/eb;

    move-object v1, v8

    move-object v2, p1

    move-object v5, v0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/eb;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/dp;Lcom/tencent/bugly/proguard/dd;Lcom/tencent/bugly/proguard/dj;Lcom/tencent/bugly/proguard/ek;)V

    iput-object v8, p0, Lcom/tencent/bugly/proguard/ec;->mg:Lcom/tencent/bugly/proguard/eb;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/dh;->q(Landroid/content/Context;)Lcom/tencent/bugly/proguard/dh;

    move-result-object p4

    new-instance v1, Lcom/tencent/bugly/proguard/ei;

    invoke-direct {v1, p1, v8, v0, p4}, Lcom/tencent/bugly/proguard/ei;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/eb;Lcom/tencent/bugly/proguard/dj;Lcom/tencent/bugly/proguard/dh;)V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ec;->mh:Lcom/tencent/bugly/proguard/ei;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p4

    move-object v3, v8

    move-object v4, v0

    move-object v5, p2

    move v6, p3

    invoke-static/range {v1 .. v7}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance(Landroid/content/Context;Lcom/tencent/bugly/proguard/dh;Lcom/tencent/bugly/proguard/eb;Lcom/tencent/bugly/proguard/dj;Lcom/tencent/bugly/proguard/ds;ZLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object p3

    iput-object p3, p0, Lcom/tencent/bugly/proguard/ec;->mi:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    iput-object p3, p4, Lcom/tencent/bugly/proguard/dh;->hM:Lcom/tencent/bugly/proguard/cp;

    invoke-static {p1, v0, p4, p2, v8}, Lcom/tencent/bugly/proguard/el;->a(Landroid/content/Context;Lcom/tencent/bugly/proguard/dj;Lcom/tencent/bugly/proguard/dh;Lcom/tencent/bugly/proguard/ds;Lcom/tencent/bugly/proguard/eb;)Lcom/tencent/bugly/proguard/el;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ec;->mj:Lcom/tencent/bugly/proguard/el;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;ZLcom/tencent/bugly/proguard/ek;)Lcom/tencent/bugly/proguard/ec;
    .locals 3

    const-class v0, Lcom/tencent/bugly/proguard/ec;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/ec;->mf:Lcom/tencent/bugly/proguard/ec;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/ec;

    invoke-static {}, Lcom/tencent/bugly/proguard/ds;->cN()Lcom/tencent/bugly/proguard/ds;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/tencent/bugly/proguard/ec;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/ds;ZLcom/tencent/bugly/proguard/ek;)V

    sput-object v1, Lcom/tencent/bugly/proguard/ec;->mf:Lcom/tencent/bugly/proguard/ec;

    :cond_0
    sget-object p0, Lcom/tencent/bugly/proguard/ec;->mf:Lcom/tencent/bugly/proguard/ec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/ec;)Lcom/tencent/bugly/proguard/ei;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/ec;->mh:Lcom/tencent/bugly/proguard/ei;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/ec;Ljava/util/List;)V
    .locals 14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x14

    cmp-long v7, v1, v5

    if-lez v7, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v2, 0x0

    :goto_0
    int-to-long v7, v2

    cmp-long v9, v7, v5

    if-gez v9, :cond_0

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v2

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    iget v8, v7, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->type:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    iget-wide v10, v7, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kE:J

    sub-long v10, v5, v10

    sget-wide v12, Lcom/tencent/bugly/proguard/ec;->mb:J

    cmp-long v8, v10, v12

    if-ltz v8, :cond_4

    :cond_2
    iget v8, v7, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->type:I

    if-eqz v8, :cond_3

    iget v8, v7, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->type:I

    if-ne v8, v3, :cond_7

    :cond_3
    iget-wide v10, v7, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kE:J

    sub-long v10, v5, v10

    sget-wide v12, Lcom/tencent/bugly/proguard/ec;->mc:J

    cmp-long v8, v10, v12

    if-gez v8, :cond_7

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "crash may in upload process, try add to delay list, crash type: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v7, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kU:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v8, v10}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-boolean v8, v7, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ly:Z

    if-nez v8, :cond_6

    iget v8, v7, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->type:I

    if-ne v8, v9, :cond_5

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    iput-boolean v3, v7, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ly:Z

    invoke-virtual {p0, v7}, Lcom/tencent/bugly/proguard/ec;->g(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    goto :goto_1

    :cond_6
    const-string v7, "crash in upload delay process, do not add to delay upload list again."

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "try upload crash, "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " immediately, "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " crash delay, "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " anr delay."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object v5, p0, Lcom/tencent/bugly/proguard/ec;->mg:Lcom/tencent/bugly/proguard/eb;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-virtual/range {v5 .. v11}, Lcom/tencent/bugly/proguard/eb;->a(Ljava/util/List;JZZZ)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "do upload db crash immediately, upload crash num: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_9
    sget-wide v3, Lcom/tencent/bugly/proguard/ec;->mb:J

    invoke-direct {p0, v1, v3, v4}, Lcom/tencent/bugly/proguard/ec;->a(Ljava/util/List;J)V

    sget-wide v0, Lcom/tencent/bugly/proguard/ec;->mc:J

    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/bugly/proguard/ec;->a(Ljava/util/List;J)V

    return-void
.end method

.method private a(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;J)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "do post a delay upload task to upload crash, delay time: "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/proguard/ds;->cN()Lcom/tencent/bugly/proguard/ds;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/proguard/ec$5;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/proguard/ec$5;-><init>(Lcom/tencent/bugly/proguard/ec;Ljava/util/List;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/tencent/bugly/proguard/ds;->e(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/ec;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/ec;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/tencent/bugly/proguard/ec;)Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/ec;->mi:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    return-object p0
.end method

.method static synthetic d(Lcom/tencent/bugly/proguard/ec;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/eb;->cZ()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/eb;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    iget-boolean v2, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/ef;->dq()Lcom/tencent/bugly/proguard/ef;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/bugly/proguard/ec;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kJ:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/tencent/bugly/proguard/ef;->f(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public static declared-synchronized dc()Lcom/tencent/bugly/proguard/ec;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/ec;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/ec;->mf:Lcom/tencent/bugly/proguard/ec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected static dm()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v0

    const-string v1, "crash_report"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/gf;->aB(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/bugly/proguard/cv;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/bugly/proguard/cv;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/cv;->fV:Z

    sput-boolean v0, Lcom/tencent/bugly/proguard/dh;->ib:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "crash upload with json = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/tencent/bugly/proguard/dh;->ib:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/tencent/bugly/proguard/ek;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mg:Lcom/tencent/bugly/proguard/eb;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/tencent/bugly/proguard/eb;->lC:Lcom/tencent/bugly/proguard/ek;
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

.method public final declared-synchronized dd()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mm:Lcom/tencent/bugly/proguard/ed;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/ed;->mx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mh:Lcom/tencent/bugly/proguard/ei;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ei;->dw()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mi:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ec;->mm:Lcom/tencent/bugly/proguard/ed;

    iget-boolean v1, v1, Lcom/tencent/bugly/proguard/ed;->my:Z

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->reRegisterNativeHandler(Z)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mi:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ec;->mm:Lcom/tencent/bugly/proguard/ed;

    iget-boolean v1, v1, Lcom/tencent/bugly/proguard/ed;->mz:Z

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->reRegisterANRHandler(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final de()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mm:Lcom/tencent/bugly/proguard/ed;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/ed;->mx:Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mh:Lcom/tencent/bugly/proguard/ei;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ei;->dx()V

    return-void
.end method

.method public final df()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mm:Lcom/tencent/bugly/proguard/ed;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/ed;->mx:Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mh:Lcom/tencent/bugly/proguard/ei;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ei;->dv()V

    return-void
.end method

.method public final dg()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mm:Lcom/tencent/bugly/proguard/ed;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/ed;->my:Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mi:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    return-void
.end method

.method public final dh()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mm:Lcom/tencent/bugly/proguard/ed;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/ed;->mz:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/tencent/bugly/proguard/ec$1;

    invoke-direct {v2, p0}, Lcom/tencent/bugly/proguard/ec$1;-><init>(Lcom/tencent/bugly/proguard/ec;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mj:Lcom/tencent/bugly/proguard/el;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/el;->n(Z)V

    return-void
.end method

.method public final di()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mm:Lcom/tencent/bugly/proguard/ed;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/ed;->mz:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/tencent/bugly/proguard/ec$2;

    invoke-direct {v2, p0}, Lcom/tencent/bugly/proguard/ec$2;-><init>(Lcom/tencent/bugly/proguard/ec;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mj:Lcom/tencent/bugly/proguard/el;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/el;->n(Z)V

    return-void
.end method

.method public final declared-synchronized dj()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mi:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->testNativeCrash(ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized dk()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/el;->dk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final dl()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mj:Lcom/tencent/bugly/proguard/el;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/el;->ng:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final dn()Z
    .locals 1

    iget v0, p0, Lcom/tencent/bugly/proguard/ec;->W:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final do()Z
    .locals 1

    iget v0, p0, Lcom/tencent/bugly/proguard/ec;->W:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mg:Lcom/tencent/bugly/proguard/eb;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/eb;->g(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    return-void
.end method

.method public final startNativeMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mm:Lcom/tencent/bugly/proguard/ed;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/ed;->my:Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ec;->mi:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setUserOpened(Z)V

    return-void
.end method
