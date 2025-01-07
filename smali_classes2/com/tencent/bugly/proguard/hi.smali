.class final Lcom/tencent/bugly/proguard/hi;
.super Ljava/lang/Object;


# instance fields
.field public status:I

.field public um:Lorg/json/JSONObject;

.field public un:Ljava/lang/String;

.field public uo:J

.field public up:J

.field public uq:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hi;->um:Lorg/json/JSONObject;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/bugly/proguard/hi;->status:I

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hi;->un:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/hi;->uo:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/hi;->up:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/hi;->uq:J

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/hi;->reset()V

    return-void
.end method


# virtual methods
.method public final aG(Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", status: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/tencent/bugly/proguard/hi;->status:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", md5code: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/hi;->un:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", next_time_in_sec: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/hi;->uo:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", config_latest_update_time_in_sec: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/hi;->up:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", last_load_config_time_in_ms: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/hi;->uq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_config"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hi;->um:Lorg/json/JSONObject;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/bugly/proguard/hi;->status:I

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hi;->un:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/hi;->uo:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/hi;->up:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/hi;->uq:J

    return-void
.end method
