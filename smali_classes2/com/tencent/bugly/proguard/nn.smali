.class public final Lcom/tencent/bugly/proguard/nn;
.super Lcom/tencent/bugly/proguard/kj;

# interfaces
.implements Lcom/tencent/bugly/proguard/nj$c;
.implements Lcom/tencent/bugly/proguard/nk$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/nn$a;
    }
.end annotation


# static fields
.field private static Bs:Lcom/tencent/bugly/proguard/nn;


# instance fields
.field private BA:Lcom/tencent/bugly/proguard/nu;

.field private BB:Lcom/tencent/bugly/proguard/ns;

.field private Bt:I

.field private Bu:Z

.field private Bv:Lcom/tencent/bugly/proguard/nk;

.field private Bw:Lcom/tencent/bugly/proguard/nj;

.field private final Bx:Lcom/tencent/bugly/proguard/nq;

.field private final By:Lcom/tencent/bugly/proguard/nr;

.field final Bz:Lcom/tencent/bugly/proguard/nt;

.field private wl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/kj;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/nn;->Bt:I

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/nn;->wl:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/nn;->Bu:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nn;->Bv:Lcom/tencent/bugly/proguard/nk;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nn;->Bw:Lcom/tencent/bugly/proguard/nj;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nn;->BA:Lcom/tencent/bugly/proguard/nu;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nn;->BB:Lcom/tencent/bugly/proguard/ns;

    new-instance v0, Lcom/tencent/bugly/proguard/nq;

    invoke-static {}, Lcom/tencent/bugly/proguard/bz;->aI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/nq;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nn;->Bx:Lcom/tencent/bugly/proguard/nq;

    new-instance v0, Lcom/tencent/bugly/proguard/nr;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/nr;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nn;->By:Lcom/tencent/bugly/proguard/nr;

    new-instance v0, Lcom/tencent/bugly/proguard/nt;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/nt;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nn;->Bz:Lcom/tencent/bugly/proguard/nt;

    return-void
.end method

.method protected static I(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/tencent/bugly/proguard/no;->hD()Lcom/tencent/bugly/proguard/no;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/bugly/proguard/no;->BJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/tencent/bugly/proguard/no$a;

    invoke-direct {v2, p0, p1}, Lcom/tencent/bugly/proguard/no$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/je;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hA()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->BB:Lcom/tencent/bugly/proguard/ns;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ns;->hA()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hB()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->BA:Lcom/tencent/bugly/proguard/nu;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/nu;->Ci:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hC()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->BB:Lcom/tencent/bugly/proguard/ns;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/ns;->BX:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hw()Lcom/tencent/bugly/proguard/nn;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/nn;->Bs:Lcom/tencent/bugly/proguard/nn;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/bugly/proguard/nn;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/nn;->Bs:Lcom/tencent/bugly/proguard/nn;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/nn;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/nn;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/nn;->Bs:Lcom/tencent/bugly/proguard/nn;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/bugly/proguard/nn;->Bs:Lcom/tencent/bugly/proguard/nn;

    return-object v0
.end method

.method private hz()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->Bw:Lcom/tencent/bugly/proguard/nj;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/nj;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nn;->Bw:Lcom/tencent/bugly/proguard/nj;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->BB:Lcom/tencent/bugly/proguard/ns;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ns;->hH()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->BA:Lcom/tencent/bugly/proguard/nu;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/nu;->hL()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/nu;->Ci:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/bugly/proguard/nu;->BO:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/bugly/proguard/nu;->Ck:J

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/tencent/bugly/proguard/nu;->Cj:J

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/tencent/bugly/proguard/nu;->Cl:Z

    :cond_1
    iget v2, v0, Lcom/tencent/bugly/proguard/nu;->Cm:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/tencent/bugly/proguard/nu;->Cm:I

    :cond_2
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nn;->hB()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nn;->hA()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->Bw:Lcom/tencent/bugly/proguard/nj;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aN()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/tencent/bugly/proguard/nj;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/nj;-><init>(Lcom/tencent/bugly/proguard/nj$c;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nn;->Bw:Lcom/tencent/bugly/proguard/nj;

    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->Bw:Lcom/tencent/bugly/proguard/nj;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, v0, Lcom/tencent/bugly/proguard/nj;->AN:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/proguard/nj$a;

    if-nez v3, :cond_5

    new-instance v3, Lcom/tencent/bugly/proguard/nj$a;

    invoke-direct {v3, p1}, Lcom/tencent/bugly/proguard/nj$a;-><init>(Landroid/app/Activity;)V

    iget-object p1, v0, Lcom/tencent/bugly/proguard/nj;->AN:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/bugly/proguard/nj$a;->AW:J

    iput-boolean v1, v3, Lcom/tencent/bugly/proguard/nj$a;->AS:Z

    :cond_6
    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/nj$a;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->BB:Lcom/tencent/bugly/proguard/ns;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/ns;->a(Lcom/tencent/bugly/proguard/nj$a;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->BA:Lcom/tencent/bugly/proguard/nu;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/tencent/bugly/proguard/nu;->Ci:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/nu;->hM()V

    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_launch_Monitor"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "onLaunchComplete"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/nj$a;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/nm;)V
    .locals 4

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_launch_Monitor"

    aput-object v3, v1, v2

    const-string v2, "onApplicationLaunchEnd, appLaunchMode: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->BB:Lcom/tencent/bugly/proguard/ns;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/ns;->b(Lcom/tencent/bugly/proguard/nm;)V

    :cond_0
    return-void
.end method

.method protected final a(Lcom/tencent/bugly/proguard/nn$a;)V
    .locals 4

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_launch_Monitor"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "postCheckAppLaunchStageTask, from: "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/nn$a;->BE:Lcom/tencent/bugly/proguard/nn$a;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nn;->hC()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/nn$a;->BD:Lcom/tencent/bugly/proguard/nn$a;

    if-ne p1, v0, :cond_1

    const-wide/32 v0, 0x2bf20

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1f4

    :goto_0
    new-instance p1, Lcom/tencent/bugly/proguard/nn$1;

    invoke-direct {p1, p0}, Lcom/tencent/bugly/proguard/nn$1;-><init>(Lcom/tencent/bugly/proguard/nn;)V

    invoke-static {p1, v0, v1}, Lcom/tencent/bugly/proguard/by;->c(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected final a(Ljava/lang/String;JJJ)V
    .locals 12

    move-object v0, p0

    new-instance v9, Lcom/tencent/bugly/proguard/np;

    move-object v1, v9

    move-object v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/tencent/bugly/proguard/np;-><init>(Ljava/lang/String;JJJ)V

    iget-object v1, v0, Lcom/tencent/bugly/proguard/nn;->Bx:Lcom/tencent/bugly/proguard/nq;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lcom/tencent/bugly/proguard/nq;->BP:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/proguard/ca;

    iget-wide v6, v3, Lcom/tencent/bugly/proguard/ca;->eq:J

    const-wide/16 v10, 0x0

    cmp-long v8, v6, v10

    if-eqz v8, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, v9, Lcom/tencent/bugly/proguard/np;->BP:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v1, v9, Lcom/tencent/bugly/proguard/np;->BP:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/tencent/bugly/proguard/nn;->By:Lcom/tencent/bugly/proguard/nr;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/nr;->BQ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v9, Lcom/tencent/bugly/proguard/np;->BQ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v1, v9, Lcom/tencent/bugly/proguard/np;->BQ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/tencent/bugly/proguard/no;->hD()Lcom/tencent/bugly/proguard/no;

    move-result-object v1

    iget-object v2, v1, Lcom/tencent/bugly/proguard/no;->BI:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/je;->c(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/tencent/bugly/proguard/nn;->Bx:Lcom/tencent/bugly/proguard/nq;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/nq;->BP:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v1, v0, Lcom/tencent/bugly/proguard/nn;->By:Lcom/tencent/bugly/proguard/nr;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/nr;->BQ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget v1, v0, Lcom/tencent/bugly/proguard/nn;->Bt:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/tencent/bugly/proguard/nn;->Bt:I

    const/16 v2, 0xa

    const-string v3, "RMonitor_launch_Monitor"

    if-lt v1, v2, :cond_4

    iget-boolean v1, v0, Lcom/tencent/bugly/proguard/nn;->wl:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "AppLaunchMonitor has not started yet."

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/tencent/bugly/proguard/kh;->b(Lcom/tencent/bugly/proguard/ke;)V

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nn;->hz()V

    iput-boolean v4, v0, Lcom/tencent/bugly/proguard/nn;->wl:Z

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "stop"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_4
    :goto_1
    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "report, result: "

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {v9}, Lcom/tencent/bugly/proguard/np;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void
.end method

.method public final addTag(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->By:Lcom/tencent/bugly/proguard/nr;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/nr;->addTag(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->Bw:Lcom/tencent/bugly/proguard/nj;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/bugly/proguard/nj;->AN:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/nj$a;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/nj$a;->AX:J

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tencent/bugly/proguard/nj$a;->AR:Z

    iget-object v2, v1, Lcom/tencent/bugly/proguard/nj$a;->AY:Lcom/tencent/bugly/proguard/nj$b;

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Lcom/tencent/bugly/proguard/nj$b;

    invoke-direct {v2, v0, v1}, Lcom/tencent/bugly/proguard/nj$b;-><init>(Lcom/tencent/bugly/proguard/nj;Lcom/tencent/bugly/proguard/nj$a;)V

    iput-object v2, v1, Lcom/tencent/bugly/proguard/nj$a;->AY:Lcom/tencent/bugly/proguard/nj$b;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, v1, Lcom/tencent/bugly/proguard/nj$a;->AY:Lcom/tencent/bugly/proguard/nj$b;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_launch_ActivityLaunchWatcher"

    const-string v2, "onResume"

    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final d(Landroid/app/Application;)V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/nn;->wl:Z

    const-string v1, "RMonitor_launch_Monitor"

    if-eqz v0, :cond_0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "call startOnApplicationOnCreate fail forAppLaunchMonitor has started before."

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "startOnApplicationOnCreate"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/nn;->wl:Z

    new-instance v0, Lcom/tencent/bugly/proguard/ns;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/ns;-><init>(Lcom/tencent/bugly/proguard/nn;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nn;->BB:Lcom/tencent/bugly/proguard/ns;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ns;->hG()V

    new-instance v0, Lcom/tencent/bugly/proguard/nu;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/nu;-><init>(Lcom/tencent/bugly/proguard/nn;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nn;->BA:Lcom/tencent/bugly/proguard/nu;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/kh;->a(Lcom/tencent/bugly/proguard/ke;)V

    invoke-static {p1}, Lcom/tencent/bugly/proguard/kh;->a(Landroid/app/Application;)V

    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/nn;->Bu:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/tencent/bugly/proguard/nk;

    invoke-direct {p1, p0}, Lcom/tencent/bugly/proguard/nk;-><init>(Lcom/tencent/bugly/proguard/nk$b;)V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/nn;->Bv:Lcom/tencent/bugly/proguard/nk;

    :cond_1
    iget-object p1, p0, Lcom/tencent/bugly/proguard/nn;->Bv:Lcom/tencent/bugly/proguard/nk;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/nk;->hr()V

    :cond_2
    return-void
.end method

.method public final f(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->Bw:Lcom/tencent/bugly/proguard/nj;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/nj;->AN:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/nj$a;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/nj;->a(Landroid/app/Activity;Lcom/tencent/bugly/proguard/nj$a;)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/bugly/proguard/nn;->BA:Lcom/tencent/bugly/proguard/nu;

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/tencent/bugly/proguard/nu;->Cm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/tencent/bugly/proguard/nu;->Cm:I

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/nu;->hL()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/tencent/bugly/proguard/nu;->BO:J

    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/tencent/bugly/proguard/nu;->Ci:Z

    iput-wide v0, p1, Lcom/tencent/bugly/proguard/nu;->Ck:J

    iput-boolean v2, p1, Lcom/tencent/bugly/proguard/nu;->Cl:Z

    iput-wide v0, p1, Lcom/tencent/bugly/proguard/nu;->Cj:J

    :cond_1
    return-void
.end method

.method public final hx()J
    .locals 7

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->Bx:Lcom/tencent/bugly/proguard/nq;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/nq;->BP:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/proguard/ca;

    iget-wide v4, v3, Lcom/tencent/bugly/proguard/ca;->ep:J

    cmp-long v6, v4, v1

    if-gez v6, :cond_0

    iget-wide v1, v3, Lcom/tencent/bugly/proguard/ca;->ep:J

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method protected final hy()V
    .locals 4

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_launch_Monitor"

    const-string v2, "checkAppLaunchStage"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->BB:Lcom/tencent/bugly/proguard/ns;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ns;->hE()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->BA:Lcom/tencent/bugly/proguard/nu;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nn;->hC()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->BA:Lcom/tencent/bugly/proguard/nu;

    iget-boolean v1, v0, Lcom/tencent/bugly/proguard/nu;->Cl:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tencent/bugly/proguard/nu;->BZ:Lcom/tencent/bugly/proguard/nn;

    sget-object v2, Lcom/tencent/bugly/proguard/nm;->Bl:Lcom/tencent/bugly/proguard/nm;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/nn;->BB:Lcom/tencent/bugly/proguard/ns;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/tencent/bugly/proguard/ns;->BY:Lcom/tencent/bugly/proguard/nm;

    :cond_1
    iget v1, v0, Lcom/tencent/bugly/proguard/nu;->Cn:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    sget-object v1, Lcom/tencent/bugly/proguard/nm;->Bm:Lcom/tencent/bugly/proguard/nm;

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/nu;->hN()V

    :cond_3
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nn;->hA()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->Bv:Lcom/tencent/bugly/proguard/nk;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/nk;->hq()V

    :cond_4
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nn;->hA()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nn;->hB()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nn;->hz()V

    :cond_5
    return-void
.end method

.method public final reportAppFullLaunch()V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/nn;->wl:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->BB:Lcom/tencent/bugly/proguard/ns;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ns;->reportAppFullLaunch()V

    :cond_1
    return-void
.end method

.method public final spanEnd(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->Bx:Lcom/tencent/bugly/proguard/nq;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/nq;->spanEnd(Ljava/lang/String;)V

    return-void
.end method

.method public final spanStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nn;->Bx:Lcom/tencent/bugly/proguard/nq;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/nq;->spanStart(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
