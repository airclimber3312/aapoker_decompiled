.class public final Lcom/tencent/bugly/proguard/ff;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/ff$a;,
        Lcom/tencent/bugly/proguard/ff$f;,
        Lcom/tencent/bugly/proguard/ff$d;,
        Lcom/tencent/bugly/proguard/ff$b;,
        Lcom/tencent/bugly/proguard/ff$e;,
        Lcom/tencent/bugly/proguard/ff$c;
    }
.end annotation


# static fields
.field public static pH:Z = false

.field private static pI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static pL:Z


# instance fields
.field private final nT:Landroid/os/Handler;

.field private volatile ox:Lcom/tencent/bugly/proguard/ff$a;

.field private volatile pJ:Z

.field private volatile pK:Z

.field private pM:Z

.field private final px:Lcom/tencent/bugly/proguard/ez;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/ff;->pI:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/proguard/ff;->pL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/ez;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ez;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ff;->px:Lcom/tencent/bugly/proguard/ez;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ff;->nT:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ff;->pM:Z

    return-void
.end method

.method public static M(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/tencent/bugly/proguard/ff;->dU()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "arm"

    goto :goto_0

    :cond_0
    const-string v0, "arm64"

    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/oat/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/base.odex"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized N(Landroid/content/Context;)Lcom/tencent/bugly/proguard/ff$a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ff;->ox:Lcom/tencent/bugly/proguard/ff$a;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ff;->ox:Lcom/tencent/bugly/proguard/ff$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    new-instance v0, Lcom/tencent/bugly/proguard/ff$a;

    invoke-direct {v0, p1, p0}, Lcom/tencent/bugly/proguard/ff$a;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/ff;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ff;->ox:Lcom/tencent/bugly/proguard/ff$a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ff;->pJ:Z

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ff;->ox:Lcom/tencent/bugly/proguard/ff$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/ff;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ff;->pJ:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ff;->pK:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/bugly/proguard/ff;->px:Lcom/tencent/bugly/proguard/ez;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ez;->ox:Lcom/tencent/bugly/proguard/ff$a;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/fe;->F(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/tencent/bugly/proguard/ez;->ow:Lcom/tencent/bugly/proguard/fc;

    sget-object v0, Lcom/tencent/bugly/proguard/fc$b;->pn:Lcom/tencent/bugly/proguard/fc$b;

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/fc;->a(Lcom/tencent/bugly/proguard/fc$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/ff;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ff;->pM:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/bugly/proguard/ff;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ff;->dY()V

    return-void
.end method

.method public static dT()V
    .locals 12

    sget-boolean v0, Lcom/tencent/bugly/proguard/ff;->pH:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/proguard/ff;->pH:Z

    sget-object v1, Lcom/tencent/bugly/proguard/ff$e;->qj:Lcom/tencent/bugly/proguard/ff;

    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/bugly/proguard/ff;->N(Landroid/content/Context;)Lcom/tencent/bugly/proguard/ff$a;

    move-result-object v1

    sget-object v2, Lcom/tencent/bugly/proguard/ff$d;->qe:Lcom/tencent/bugly/proguard/ff$d;

    iget-boolean v3, v1, Lcom/tencent/bugly/proguard/ff$a;->qb:Z

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    iput-object v2, v1, Lcom/tencent/bugly/proguard/ff$a;->pQ:Lcom/tencent/bugly/proguard/ff$d;

    :cond_0
    sget-object v2, Lcom/tencent/bugly/proguard/ff$f;->qm:Lcom/tencent/bugly/proguard/ff$f;

    iget-boolean v3, v1, Lcom/tencent/bugly/proguard/ff$a;->qb:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iput-object v2, v1, Lcom/tencent/bugly/proguard/ff$a;->pX:Lcom/tencent/bugly/proguard/ff$f;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/ff$a;->pd:J

    :goto_0
    sget-object v2, Lcom/tencent/bugly/proguard/ff;->pI:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    sget-object v2, Lcom/tencent/bugly/proguard/ff;->pI:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, v1, Lcom/tencent/bugly/proguard/ff$a;->qb:Z

    if-nez v4, :cond_2

    iget-object v4, v1, Lcom/tencent/bugly/proguard/ff$a;->pP:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-boolean v2, v1, Lcom/tencent/bugly/proguard/ff$a;->qb:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iput-boolean v3, v1, Lcom/tencent/bugly/proguard/ff$a;->pW:Z

    :goto_2
    iget-boolean v2, v1, Lcom/tencent/bugly/proguard/ff$a;->qb:Z

    if-nez v2, :cond_1b

    iput-boolean v0, v1, Lcom/tencent/bugly/proguard/ff$a;->qb:Z

    iget-object v2, v1, Lcom/tencent/bugly/proguard/ff$a;->qc:Lcom/tencent/bugly/proguard/ff;

    iget-object v4, v1, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/ey;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v5, ":backtrace__"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_6

    const-string v0, "Matrix.Backtrace"

    const-string v1, "Isolate process does not need any configuration."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-boolean v4, v1, Lcom/tencent/bugly/proguard/ff$a;->pW:Z

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/tencent/bugly/proguard/ff$a;->pR:Lcom/tencent/bugly/proguard/ff$c;

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Lcom/tencent/bugly/proguard/ff$b;

    const-string v1, "Custom library loader is not supported in isolate process warm-up mode."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/ff$b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    iget-object v4, v1, Lcom/tencent/bugly/proguard/ff$a;->pR:Lcom/tencent/bugly/proguard/ff$c;

    sget-boolean v5, Lcom/tencent/bugly/proguard/ff;->pL:Z

    if-nez v5, :cond_a

    if-nez v4, :cond_9

    const-string v4, "buglybacktrace"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const-string v5, "Matrix.Backtrace"

    const-string v6, "Using custom library loader: %s."

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v4, v7, v3

    invoke-static {v5, v6, v7}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    sput-boolean v0, Lcom/tencent/bugly/proguard/ff;->pL:Z

    :cond_a
    iget-object v4, v1, Lcom/tencent/bugly/proguard/ff$a;->qa:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/bugly/matrix/xlog/XLogNative;->ar(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/tencent/bugly/proguard/ff$a;->pY:Z

    invoke-static {v4}, Lcom/tencent/bugly/matrix/backtrace/WeChatBacktraceNative;->enableLogger(Z)V

    const-string v4, "Matrix.Backtrace"

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ff$a;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/tencent/bugly/proguard/ff$a;->pQ:Lcom/tencent/bugly/proguard/ff$d;

    sget-object v5, Lcom/tencent/bugly/proguard/ff$d;->qd:Lcom/tencent/bugly/proguard/ff$d;

    if-eq v4, v5, :cond_b

    iget-object v4, v1, Lcom/tencent/bugly/proguard/ff$a;->pQ:Lcom/tencent/bugly/proguard/ff$d;

    sget-object v5, Lcom/tencent/bugly/proguard/ff$d;->qf:Lcom/tencent/bugly/proguard/ff$d;

    if-ne v4, v5, :cond_c

    :cond_b
    iget-object v4, v1, Lcom/tencent/bugly/proguard/ff$a;->pQ:Lcom/tencent/bugly/proguard/ff$d;

    iget v4, v4, Lcom/tencent/bugly/proguard/ff$d;->value:I

    invoke-static {v4}, Lcom/tencent/bugly/matrix/backtrace/WeChatBacktraceNative;->setBacktraceMode(I)V

    :cond_c
    iget-object v4, v1, Lcom/tencent/bugly/proguard/ff$a;->pQ:Lcom/tencent/bugly/proguard/ff$d;

    sget-object v5, Lcom/tencent/bugly/proguard/ff$d;->qe:Lcom/tencent/bugly/proguard/ff$d;

    if-eq v4, v5, :cond_d

    iget-object v4, v1, Lcom/tencent/bugly/proguard/ff$a;->pQ:Lcom/tencent/bugly/proguard/ff$d;

    sget-object v5, Lcom/tencent/bugly/proguard/ff$d;->qg:Lcom/tencent/bugly/proguard/ff$d;

    if-eq v4, v5, :cond_d

    iget-object v4, v1, Lcom/tencent/bugly/proguard/ff$a;->pQ:Lcom/tencent/bugly/proguard/ff$d;

    sget-object v5, Lcom/tencent/bugly/proguard/ff$d;->qh:Lcom/tencent/bugly/proguard/ff$d;

    if-eq v4, v5, :cond_d

    iget-boolean v4, v1, Lcom/tencent/bugly/proguard/ff$a;->pT:Z

    if-eqz v4, :cond_1a

    :cond_d
    invoke-static {v1}, Lcom/tencent/bugly/proguard/fe;->b(Lcom/tencent/bugly/proguard/ff$a;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Matrix.Backtrace"

    const-string v6, "Set saving path: %s"

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v4, v7, v3

    invoke-static {v5, v6, v7}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_e
    iget-object v5, v2, Lcom/tencent/bugly/proguard/ff;->px:Lcom/tencent/bugly/proguard/ez;

    invoke-virtual {v5, v4}, Lcom/tencent/bugly/proguard/ez;->setSavingPath(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/tencent/bugly/proguard/ff$a;->pV:Z

    if-eqz v4, :cond_11

    iget-object v4, v1, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/fe;->F(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    iget-boolean v5, v1, Lcom/tencent/bugly/proguard/ff$a;->pU:Z

    if-eqz v5, :cond_10

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_10

    const/16 v5, 0x1000

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/fe;->b(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_f

    :goto_6
    iput-boolean v0, v1, Lcom/tencent/bugly/proguard/ff$a;->pS:Z

    goto :goto_7

    :cond_f
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    iget-object v6, v1, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "Matrix.Backtrace"

    const-string v6, "Apk updated, remove warmed-up file."

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_10
    :goto_7
    iget-boolean v5, v1, Lcom/tencent/bugly/proguard/ff$a;->pS:Z

    if-eqz v5, :cond_11

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    iget-object v4, v1, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/fe;->H(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_11
    iget-object v4, v2, Lcom/tencent/bugly/proguard/ff;->px:Lcom/tencent/bugly/proguard/ez;

    iget-object v5, v4, Lcom/tencent/bugly/proguard/ez;->oy:[Z

    monitor-enter v5

    :try_start_0
    iget-object v6, v4, Lcom/tencent/bugly/proguard/ez;->oy:[Z

    aget-boolean v6, v6, v3

    if-eqz v6, :cond_12

    monitor-exit v5

    goto :goto_8

    :cond_12
    iget-object v6, v4, Lcom/tencent/bugly/proguard/ez;->oy:[Z

    aput-boolean v0, v6, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, v4, Lcom/tencent/bugly/proguard/ez;->ox:Lcom/tencent/bugly/proguard/ff$a;

    iget-boolean v5, v1, Lcom/tencent/bugly/proguard/ff$a;->pW:Z

    iput-boolean v5, v4, Lcom/tencent/bugly/proguard/ez;->os:Z

    new-instance v5, Lcom/tencent/bugly/proguard/ez$c;

    const-string v6, "WeChatBacktraceTask"

    invoke-direct {v5, v6}, Lcom/tencent/bugly/proguard/ez$c;-><init>(Ljava/lang/String;)V

    iput-object v5, v4, Lcom/tencent/bugly/proguard/ez;->ov:Lcom/tencent/bugly/proguard/ez$c;

    new-instance v11, Lcom/tencent/bugly/proguard/fc;

    iget-object v7, v1, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/tencent/bugly/proguard/ff$a;->pX:Lcom/tencent/bugly/proguard/ff$f;

    iget-wide v9, v1, Lcom/tencent/bugly/proguard/ff$a;->pd:J

    move-object v5, v11

    move-object v6, v4

    invoke-direct/range {v5 .. v10}, Lcom/tencent/bugly/proguard/fc;-><init>(Lcom/tencent/bugly/proguard/ez;Landroid/content/Context;Lcom/tencent/bugly/proguard/ff$f;J)V

    iput-object v11, v4, Lcom/tencent/bugly/proguard/ez;->ow:Lcom/tencent/bugly/proguard/fc;

    iget-boolean v5, v1, Lcom/tencent/bugly/proguard/ff$a;->pV:Z

    if-eqz v5, :cond_15

    iget-object v5, v1, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/bugly/proguard/fe;->F(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "Matrix.WarmUpDelegate"

    const-string v7, "Has not been warmed up"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/tencent/bugly/proguard/ez;->ow:Lcom/tencent/bugly/proguard/fc;

    sget-object v7, Lcom/tencent/bugly/proguard/fc$b;->pl:Lcom/tencent/bugly/proguard/fc$b;

    invoke-virtual {v6, v7}, Lcom/tencent/bugly/proguard/fc;->a(Lcom/tencent/bugly/proguard/fc$b;)V

    :cond_13
    invoke-static {v5}, Lcom/tencent/bugly/proguard/fe;->J(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "Matrix.WarmUpDelegate"

    const-string v7, "Need clean up"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/tencent/bugly/proguard/ez;->ow:Lcom/tencent/bugly/proguard/fc;

    sget-object v7, Lcom/tencent/bugly/proguard/fc$b;->pm:Lcom/tencent/bugly/proguard/fc$b;

    invoke-virtual {v6, v7}, Lcom/tencent/bugly/proguard/fc;->a(Lcom/tencent/bugly/proguard/fc$b;)V

    :cond_14
    invoke-static {v5}, Lcom/tencent/bugly/proguard/fe;->K(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "Matrix.WarmUpDelegate"

    const-string v6, "Should schedule disk usage task."

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v4, Lcom/tencent/bugly/proguard/ez;->ow:Lcom/tencent/bugly/proguard/fc;

    sget-object v5, Lcom/tencent/bugly/proguard/fc$b;->po:Lcom/tencent/bugly/proguard/fc$b;

    invoke-virtual {v4, v5}, Lcom/tencent/bugly/proguard/fc;->a(Lcom/tencent/bugly/proguard/fc$b;)V

    :cond_15
    :goto_8
    iget-object v4, v1, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/fe;->F(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    iget-object v5, v1, Lcom/tencent/bugly/proguard/ff$a;->pQ:Lcom/tencent/bugly/proguard/ff$d;

    sget-object v6, Lcom/tencent/bugly/proguard/ff$d;->qe:Lcom/tencent/bugly/proguard/ff$d;

    if-eq v5, v6, :cond_16

    iget-boolean v5, v1, Lcom/tencent/bugly/proguard/ff$a;->pT:Z

    if-nez v5, :cond_19

    :cond_16
    sget-object v5, Lcom/tencent/bugly/proguard/ff$d;->qe:Lcom/tencent/bugly/proguard/ff$d;

    if-nez v4, :cond_18

    iget-object v6, v1, Lcom/tencent/bugly/proguard/ff$a;->pQ:Lcom/tencent/bugly/proguard/ff$d;

    sget-object v7, Lcom/tencent/bugly/proguard/ff$d;->qg:Lcom/tencent/bugly/proguard/ff$d;

    if-ne v6, v7, :cond_17

    sget-object v5, Lcom/tencent/bugly/proguard/ff$d;->qd:Lcom/tencent/bugly/proguard/ff$d;

    goto :goto_9

    :cond_17
    iget-object v6, v1, Lcom/tencent/bugly/proguard/ff$a;->pQ:Lcom/tencent/bugly/proguard/ff$d;

    sget-object v7, Lcom/tencent/bugly/proguard/ff$d;->qh:Lcom/tencent/bugly/proguard/ff$d;

    if-ne v6, v7, :cond_18

    sget-object v5, Lcom/tencent/bugly/proguard/ff$d;->qf:Lcom/tencent/bugly/proguard/ff$d;

    :cond_18
    :goto_9
    iget v5, v5, Lcom/tencent/bugly/proguard/ff$d;->value:I

    invoke-static {v5}, Lcom/tencent/bugly/matrix/backtrace/WeChatBacktraceNative;->setBacktraceMode(I)V

    :cond_19
    const-string v5, "Matrix.Backtrace"

    const-string v6, "Has warmed up: %s"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v5, v6, v7}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/tencent/bugly/matrix/backtrace/WeChatBacktraceNative;->setWarmedUp(Z)V

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/ff;->dY()V

    iget-boolean v3, v1, Lcom/tencent/bugly/proguard/ff$a;->pV:Z

    if-nez v3, :cond_1a

    iget-object v3, v2, Lcom/tencent/bugly/proguard/ff;->px:Lcom/tencent/bugly/proguard/ez;

    iget-object v4, v1, Lcom/tencent/bugly/proguard/ff$a;->pQ:Lcom/tencent/bugly/proguard/ff$d;

    invoke-virtual {v3, v1, v4}, Lcom/tencent/bugly/proguard/ez;->a(Lcom/tencent/bugly/proguard/ff$a;Lcom/tencent/bugly/proguard/ff$d;)V

    :cond_1a
    iput-boolean v0, v2, Lcom/tencent/bugly/proguard/ff;->pK:Z

    goto :goto_a

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1b
    :goto_a
    return-void
.end method

.method private static dU()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "arm64-v8a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "x86_64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mips64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static dV()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ff;->dU()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/apex/com.android.runtime/lib/"

    return-object v0

    :cond_0
    const-string v0, "/apex/com.android.runtime/lib64/"

    return-object v0
.end method

.method public static dW()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ff;->dU()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/system/lib/"

    return-object v0

    :cond_0
    const-string v0, "/system/lib64/"

    return-object v0
.end method

.method public static dX()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/ff;->dU()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/system/framework/arm/"

    return-object v0

    :cond_0
    const-string v0, "/system/framework/arm64/"

    return-object v0
.end method

.method private dY()V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ff;->pM:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ff;->pM:Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ff;->nT:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/bugly/proguard/ff$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/ff$1;-><init>(Lcom/tencent/bugly/proguard/ff;)V

    const-wide/32 v2, 0x1499700

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static dZ()V
    .locals 1

    const-string v0, "buglybacktrace"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method static enableLogger(Z)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/bugly/matrix/backtrace/WeChatBacktraceNative;->enableLogger(Z)V

    return-void
.end method

.method public static setQutLibraryPath(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/tencent/bugly/proguard/ff;->pI:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
