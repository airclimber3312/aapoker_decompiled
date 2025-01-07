.class public final Lcom/tencent/bugly/proguard/gu;
.super Lcom/tencent/bugly/proguard/hc;


# instance fields
.field public tf:I

.field public tg:I

.field public th:Z

.field public ti:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const-string v1, "fd_leak"

    const/16 v2, 0xa

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3dcccccd    # 0.1f

    const/16 v5, 0x320

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;IFFI)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/gu;->tf:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/tencent/bugly/proguard/gu;->tg:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gu;->th:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gu;->ti:Z

    return-void
.end method

.method private constructor <init>(Lcom/tencent/bugly/proguard/gu;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/hc;-><init>(Lcom/tencent/bugly/proguard/hc;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/gu;->tf:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/tencent/bugly/proguard/gu;->tg:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gu;->th:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gu;->ti:Z

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/gu;->a(Lcom/tencent/bugly/proguard/hc;)V

    return-void
.end method

.method private fb()Lcom/tencent/bugly/proguard/gu;
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/gu;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/gu;-><init>(Lcom/tencent/bugly/proguard/gu;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/hc;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/hc;->a(Lcom/tencent/bugly/proguard/hc;)V

    instance-of v0, p1, Lcom/tencent/bugly/proguard/gu;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/bugly/proguard/gu;

    iget v0, p1, Lcom/tencent/bugly/proguard/gu;->tf:I

    iput v0, p0, Lcom/tencent/bugly/proguard/gu;->tf:I

    iget v0, p1, Lcom/tencent/bugly/proguard/gu;->tg:I

    iput v0, p0, Lcom/tencent/bugly/proguard/gu;->tg:I

    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/gu;->th:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gu;->th:Z

    iget-boolean p1, p1, Lcom/tencent/bugly/proguard/gu;->ti:Z

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/gu;->ti:Z

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "use_fd_track_feature"

    const-string v1, "check_leak_in_native"

    const-string v2, "hprof_strip_switch"

    const-string v3, "fd_monitor_switch"

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/hc;->a(Lorg/json/JSONObject;)V

    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/tencent/bugly/proguard/gu;->tf:I

    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tencent/bugly/proguard/gu;->tg:I

    :cond_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/gu;->th:Z

    :cond_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/gu;->ti:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_config"

    const-string v2, "parsePluginConfig"

    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/gu;->fb()Lcom/tencent/bugly/proguard/gu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic eX()Lcom/tencent/bugly/proguard/hc;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/gu;->fb()Lcom/tencent/bugly/proguard/gu;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FdLeakPluginConfig{threshold="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/bugly/proguard/gu;->tV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxReportNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/gu;->tS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventSampleRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/gu;->tT:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fdMonitorSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/gu;->tf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hprofStripSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/gu;->tg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", checkLeakInNative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/gu;->th:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useFdTrackFeature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/gu;->ti:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
