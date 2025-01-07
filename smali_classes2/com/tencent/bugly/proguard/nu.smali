.class final Lcom/tencent/bugly/proguard/nu;
.super Ljava/lang/Object;


# instance fields
.field BO:J

.field final BZ:Lcom/tencent/bugly/proguard/nn;

.field Ci:Z

.field Cj:J

.field Ck:J

.field Cl:Z

.field Cm:I

.field Cn:I


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/nn;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/nu;->Ci:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/nu;->Cj:J

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/nu;->Ck:J

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/nu;->Cl:Z

    iput v0, p0, Lcom/tencent/bugly/proguard/nu;->Cm:I

    iput v0, p0, Lcom/tencent/bugly/proguard/nu;->Cn:I

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/nu;->BO:J

    iput-object p1, p0, Lcom/tencent/bugly/proguard/nu;->BZ:Lcom/tencent/bugly/proguard/nn;

    return-void
.end method


# virtual methods
.method final hL()Z
    .locals 1

    iget v0, p0, Lcom/tencent/bugly/proguard/nu;->Cm:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final hM()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/nu;->Ck:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/nu;->Cj:J

    iget v0, p0, Lcom/tencent/bugly/proguard/nu;->Cn:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/bugly/proguard/nu;->Cn:I

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/nu;->Cl:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/nu;->Ci:Z

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nu;->BZ:Lcom/tencent/bugly/proguard/nn;

    sget-object v1, Lcom/tencent/bugly/proguard/nn$a;->BE:Lcom/tencent/bugly/proguard/nn$a;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/nn;->a(Lcom/tencent/bugly/proguard/nn$a;)V

    return-void
.end method

.method final hN()V
    .locals 9

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/nu;->Cj:J

    const/4 v8, 0x0

    const-wide/16 v0, 0x0

    const-wide/32 v2, 0xea60

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nu;->BZ:Lcom/tencent/bugly/proguard/nn;

    const-string v1, "warm_launch"

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/nu;->Ck:J

    iget-wide v6, p0, Lcom/tencent/bugly/proguard/nu;->BO:J

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/bugly/proguard/nn;->a(Ljava/lang/String;JJJ)V

    goto :goto_1

    :cond_0
    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    const-string v0, "300401"

    goto :goto_0

    :cond_1
    cmp-long v2, v4, v0

    if-gez v2, :cond_2

    const-string v0, "300400"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/nn;->I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "RMonitor_launch_warm"

    aput-object v2, v1, v8

    const/4 v2, 0x1

    const-string v3, "reportWarmCost has invalid data of launchType["

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "warm_launch"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "], warmCostInMs["

    aput-object v3, v1, v2

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/nu;->Cj:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    const-string v3, "]"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :goto_1
    iput-boolean v8, p0, Lcom/tencent/bugly/proguard/nu;->Cl:Z

    return-void
.end method
