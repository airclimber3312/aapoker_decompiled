.class final Lcom/tencent/bugly/proguard/ns;
.super Ljava/lang/Object;


# instance fields
.field private BO:J

.field protected BR:J

.field protected BS:J

.field protected BT:J

.field protected BU:J

.field protected BV:J

.field private BW:J

.field BX:Z

.field BY:Lcom/tencent/bugly/proguard/nm;

.field private final BZ:Lcom/tencent/bugly/proguard/nn;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/nn;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ns;->BR:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ns;->BS:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ns;->BT:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ns;->BU:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ns;->BV:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ns;->BW:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/bugly/proguard/ns;->BX:Z

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ns;->BO:J

    sget-object v0, Lcom/tencent/bugly/proguard/nm;->Bl:Lcom/tencent/bugly/proguard/nm;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ns;->BY:Lcom/tencent/bugly/proguard/nm;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ns;->BZ:Lcom/tencent/bugly/proguard/nn;

    return-void
.end method

.method private J(I)V
    .locals 7

    const/4 v0, 0x1

    const-wide v1, 0x7fffffffffffffffL

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/ns;->BW:J

    goto :goto_1

    :cond_0
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/ns;->BU:J

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/ns;->BV:J

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    goto :goto_0

    :cond_3
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/ns;->BS:J

    :goto_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ns;->hK()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/tencent/bugly/proguard/ns;->BW:J

    :goto_1
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/ns;->BW:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gtz p1, :cond_4

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/ns;->BW:J

    :cond_4
    return-void
.end method

.method private hI()V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ns;->BS:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_launch_cold"

    const-string v2, "onApplicationCreateEndInner"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ns;->BS:J

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ns;->BZ:Lcom/tencent/bugly/proguard/nn;

    const-string v1, "applicationCreate"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/nn;->spanEnd(Ljava/lang/String;)V

    return-void
.end method

.method private hJ()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ns;->BY:Lcom/tencent/bugly/proguard/nm;

    sget-object v1, Lcom/tencent/bugly/proguard/nm;->Bm:Lcom/tencent/bugly/proguard/nm;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hK()J
    .locals 6

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ns;->BZ:Lcom/tencent/bugly/proguard/nn;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/nn;->hx()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ns;->BR:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    move-wide v0, v2

    :cond_0
    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "RMonitor_launch_cold"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "getColdLaunchStartTime, launchStartTime:"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, ", applicationOnCreateTime:"

    aput-object v5, v3, v4

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/ns;->BR:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-wide v0
.end method


# virtual methods
.method protected final a(Lcom/tencent/bugly/proguard/nj$a;)V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ns;->BU:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ns;->BU:J

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ns;->BZ:Lcom/tencent/bugly/proguard/nn;

    const-string v1, "firstScreenRender"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/nn;->spanEnd(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ns;->hA()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ns;->BZ:Lcom/tencent/bugly/proguard/nn;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/nn;->Bz:Lcom/tencent/bugly/proguard/nt;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/nj$a;->name:Ljava/lang/String;

    sget v1, Lcom/tencent/bugly/proguard/nt$a;->Cg:I

    iget-object v2, v0, Lcom/tencent/bugly/proguard/nt;->Cd:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/tencent/bugly/proguard/nt;->Cd:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, v0, Lcom/tencent/bugly/proguard/nt;->Cb:Z

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/tencent/bugly/proguard/nt;->Cc:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget v1, Lcom/tencent/bugly/proguard/nt$a;->Ce:I

    goto :goto_1

    :cond_2
    :goto_0
    sget v1, Lcom/tencent/bugly/proguard/nt$a;->Cf:I

    :cond_3
    :goto_1
    sget p1, Lcom/tencent/bugly/proguard/nt$a;->Cf:I

    if-ne v1, p1, :cond_4

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/ns;->J(I)V

    return-void

    :cond_4
    sget p1, Lcom/tencent/bugly/proguard/nt$a;->Ce:I

    if-ne v1, p1, :cond_5

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/ns;->J(I)V

    :cond_5
    return-void
.end method

.method protected final b(Lcom/tencent/bugly/proguard/nm;)V
    .locals 7

    sget-object v0, Lcom/tencent/bugly/proguard/nm;->Bl:Lcom/tencent/bugly/proguard/nm;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ns;->BY:Lcom/tencent/bugly/proguard/nm;

    sget-object v3, Lcom/tencent/bugly/proguard/nm;->Bm:Lcom/tencent/bugly/proguard/nm;

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ns;->BY:Lcom/tencent/bugly/proguard/nm;

    sget-object v3, Lcom/tencent/bugly/proguard/nm;->Bl:Lcom/tencent/bugly/proguard/nm;

    if-ne v0, v3, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/nm;->Bm:Lcom/tencent/bugly/proguard/nm;

    if-ne p1, v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/tencent/bugly/proguard/ns;->BS:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x7d0

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ns;->hI()V

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "RMonitor_launch_cold"

    aput-object v4, v3, v2

    const-string v2, "updateLaunchMode, appLaunchMode: "

    aput-object v2, v3, v1

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ns;->BY:Lcom/tencent/bugly/proguard/nm;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ns;->hJ()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/ns;->J(I)V

    :cond_2
    return-void
.end method

.method protected final hA()Z
    .locals 5

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ns;->BW:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final hE()V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/bugly/proguard/ns;->BX:Z

    if-nez v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/tencent/bugly/proguard/ns;->hJ()Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/bugly/proguard/ns;->hA()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {v0, v2}, Lcom/tencent/bugly/proguard/ns;->J(I)V

    :cond_0
    iget-object v1, v0, Lcom/tencent/bugly/proguard/ns;->BZ:Lcom/tencent/bugly/proguard/nn;

    const-string v3, "tag_normal_launch"

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/tencent/bugly/proguard/ns;->BZ:Lcom/tencent/bugly/proguard/nn;

    const-string v3, "tag_pre_launch"

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/proguard/nn;->addTag(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/bugly/proguard/ns;->BZ:Lcom/tencent/bugly/proguard/nn;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/ns;->BY:Lcom/tencent/bugly/proguard/nm;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/nm;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Lcom/tencent/bugly/proguard/nn;->addTag(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/tencent/bugly/proguard/ns;->BW:J

    const/4 v1, 0x1

    const-wide/16 v5, 0x0

    const-wide/32 v7, 0x2bf20

    cmp-long v9, v3, v7

    if-gez v9, :cond_3

    cmp-long v9, v3, v5

    if-lez v9, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/tencent/bugly/proguard/ns;->hK()J

    move-result-wide v12

    iget-object v10, v0, Lcom/tencent/bugly/proguard/ns;->BZ:Lcom/tencent/bugly/proguard/nn;

    const-string v11, "cold_launch"

    iget-wide v14, v0, Lcom/tencent/bugly/proguard/ns;->BW:J

    iget-wide v2, v0, Lcom/tencent/bugly/proguard/ns;->BO:J

    iget-wide v4, v0, Lcom/tencent/bugly/proguard/ns;->BR:J

    cmp-long v6, v12, v4

    if-eqz v6, :cond_2

    add-long/2addr v2, v12

    sub-long/2addr v2, v4

    :cond_2
    move-wide/from16 v16, v2

    invoke-virtual/range {v10 .. v17}, Lcom/tencent/bugly/proguard/nn;->a(Ljava/lang/String;JJJ)V

    goto :goto_2

    :cond_3
    cmp-long v9, v3, v7

    if-ltz v9, :cond_4

    const-string v5, "300201"

    goto :goto_1

    :cond_4
    cmp-long v7, v3, v5

    if-gez v7, :cond_5

    const-string v5, "300200"

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/tencent/bugly/proguard/nn;->I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "RMonitor_launch_cold"

    aput-object v6, v4, v5

    const-string v5, "reportColdCost has invalid data of launchType["

    aput-object v5, v4, v1

    const/4 v5, 0x2

    const-string v6, "cold_launch"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "], coldCostInMs["

    aput-object v6, v4, v5

    iget-wide v5, v0, Lcom/tencent/bugly/proguard/ns;->BW:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    const-string v5, "]"

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :goto_2
    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/ns;->BX:Z

    :cond_7
    return-void
.end method

.method protected final hG()V
    .locals 4

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "onApplicationCreateStart"

    const-string v2, "RMonitor_launch_cold"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ns;->BO:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ns;->BR:J

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ns;->BZ:Lcom/tencent/bugly/proguard/nn;

    const-string v1, "applicationCreate"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/tencent/bugly/proguard/nn;->spanStart(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "postCheckPreLaunchTask, delay: "

    const-string v3, "20000"

    filled-new-array {v2, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/bugly/proguard/ns$1;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/ns$1;-><init>(Lcom/tencent/bugly/proguard/ns;)V

    const-wide/16 v1, 0x4e20

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/by;->c(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ns;->BZ:Lcom/tencent/bugly/proguard/nn;

    sget-object v1, Lcom/tencent/bugly/proguard/nn$a;->BD:Lcom/tencent/bugly/proguard/nn$a;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/nn;->a(Lcom/tencent/bugly/proguard/nn$a;)V

    return-void
.end method

.method protected final hH()V
    .locals 5

    sget-object v0, Lcom/tencent/bugly/proguard/nm;->Bm:Lcom/tencent/bugly/proguard/nm;

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/ns;->b(Lcom/tencent/bugly/proguard/nm;)V

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ns;->BT:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ns;->BT:J

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ns;->BZ:Lcom/tencent/bugly/proguard/nn;

    const-string v1, "firstScreenRender"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/nn;->spanStart(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final reportAppFullLaunch()V
    .locals 5

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ns;->BV:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ns;->BV:J

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/ns;->J(I)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ns;->BZ:Lcom/tencent/bugly/proguard/nn;

    sget-object v1, Lcom/tencent/bugly/proguard/nn$a;->BF:Lcom/tencent/bugly/proguard/nn$a;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/nn;->a(Lcom/tencent/bugly/proguard/nn$a;)V

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_launch_cold"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "reportAppFullLaunch, uptime: "

    aput-object v3, v1, v2

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ns;->BV:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    return-void
.end method
