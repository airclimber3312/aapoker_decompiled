.class public final Lcom/tencent/bugly/proguard/gy;
.super Lcom/tencent/bugly/proguard/hc;


# instance fields
.field public tA:I

.field public tB:I

.field public tC:I

.field public tD:I

.field public tE:J

.field public tF:J

.field public tG:Z

.field private tH:Z

.field public tI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tz:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const-string v1, "native_memory"

    const/16 v2, 0xa

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;IFFI)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gy;->tz:Z

    const/16 v1, 0x32

    iput v1, p0, Lcom/tencent/bugly/proguard/gy;->tA:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/tencent/bugly/proguard/gy;->tB:I

    const/16 v2, 0x1000

    iput v2, p0, Lcom/tencent/bugly/proguard/gy;->tC:I

    iput v2, p0, Lcom/tencent/bugly/proguard/gy;->tD:I

    const-wide/32 v2, 0x40000000

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/gy;->tE:J

    const-wide v4, 0x10000000000L

    iput-wide v4, p0, Lcom/tencent/bugly/proguard/gy;->tF:J

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/tencent/bugly/proguard/gy;->tG:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gy;->tH:Z

    new-instance v5, Lcom/tencent/bugly/proguard/gy$1;

    invoke-direct {v5, p0}, Lcom/tencent/bugly/proguard/gy$1;-><init>(Lcom/tencent/bugly/proguard/gy;)V

    iput-object v5, p0, Lcom/tencent/bugly/proguard/gy;->tI:Ljava/util/List;

    new-instance v5, Lcom/tencent/bugly/proguard/gy$2;

    invoke-direct {v5, p0}, Lcom/tencent/bugly/proguard/gy$2;-><init>(Lcom/tencent/bugly/proguard/gy;)V

    iput-object v5, p0, Lcom/tencent/bugly/proguard/gy;->tJ:Ljava/util/List;

    new-instance v5, Lcom/tencent/bugly/proguard/gy$3;

    invoke-direct {v5, p0}, Lcom/tencent/bugly/proguard/gy$3;-><init>(Lcom/tencent/bugly/proguard/gy;)V

    iput-object v5, p0, Lcom/tencent/bugly/proguard/gy;->tK:Ljava/util/List;

    const/16 v5, 0x2000

    iput v5, p0, Lcom/tencent/bugly/proguard/gy;->tC:I

    iput v5, p0, Lcom/tencent/bugly/proguard/gy;->tD:I

    iput v1, p0, Lcom/tencent/bugly/proguard/gy;->tA:I

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gy;->tz:Z

    iput-boolean v4, p0, Lcom/tencent/bugly/proguard/gy;->tG:Z

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/gy;->tE:J

    return-void
.end method

.method private constructor <init>(Lcom/tencent/bugly/proguard/gy;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/hc;-><init>(Lcom/tencent/bugly/proguard/hc;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gy;->tz:Z

    const/16 v1, 0x32

    iput v1, p0, Lcom/tencent/bugly/proguard/gy;->tA:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/tencent/bugly/proguard/gy;->tB:I

    const/16 v1, 0x1000

    iput v1, p0, Lcom/tencent/bugly/proguard/gy;->tC:I

    iput v1, p0, Lcom/tencent/bugly/proguard/gy;->tD:I

    const-wide/32 v1, 0x40000000

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/gy;->tE:J

    const-wide v1, 0x10000000000L

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/gy;->tF:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/gy;->tG:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gy;->tH:Z

    new-instance v0, Lcom/tencent/bugly/proguard/gy$1;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/gy$1;-><init>(Lcom/tencent/bugly/proguard/gy;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/gy;->tI:Ljava/util/List;

    new-instance v0, Lcom/tencent/bugly/proguard/gy$2;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/gy$2;-><init>(Lcom/tencent/bugly/proguard/gy;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/gy;->tJ:Ljava/util/List;

    new-instance v0, Lcom/tencent/bugly/proguard/gy$3;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/gy$3;-><init>(Lcom/tencent/bugly/proguard/gy;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/gy;->tK:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/gy;->a(Lcom/tencent/bugly/proguard/hc;)V

    return-void
.end method

.method private fl()Lcom/tencent/bugly/proguard/gy;
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/gy;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/gy;-><init>(Lcom/tencent/bugly/proguard/gy;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/hc;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/hc;->a(Lcom/tencent/bugly/proguard/hc;)V

    instance-of v0, p1, Lcom/tencent/bugly/proguard/gy;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/bugly/proguard/gy;

    iget v0, p1, Lcom/tencent/bugly/proguard/gy;->tC:I

    iput v0, p0, Lcom/tencent/bugly/proguard/gy;->tC:I

    iget v0, p1, Lcom/tencent/bugly/proguard/gy;->tD:I

    iput v0, p0, Lcom/tencent/bugly/proguard/gy;->tD:I

    iget v0, p1, Lcom/tencent/bugly/proguard/gy;->tA:I

    iput v0, p0, Lcom/tencent/bugly/proguard/gy;->tA:I

    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/gy;->tz:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gy;->tz:Z

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/gy;->tE:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/gy;->tE:J

    iget-object v0, p1, Lcom/tencent/bugly/proguard/gy;->tI:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/gy;->tI:Ljava/util/List;

    iget-object v0, p1, Lcom/tencent/bugly/proguard/gy;->tJ:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/gy;->tJ:Ljava/util/List;

    iget-object v0, p1, Lcom/tencent/bugly/proguard/gy;->tK:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/gy;->tK:Ljava/util/List;

    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/gy;->tG:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gy;->tG:Z

    iget-boolean p1, p1, Lcom/tencent/bugly/proguard/gy;->tH:Z

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/gy;->tH:Z

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "max_history_mem_size"

    const-string v1, "enable_libc_hook"

    const-string v2, "max_physical_pss"

    const-string v3, "enable_sys_hook"

    const-string v4, "sys_sample_factor"

    const-string v5, "app_min_size"

    const-string v6, "sys_min_size"

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/hc;->a(Lorg/json/JSONObject;)V

    :try_start_0
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/tencent/bugly/proguard/gy;->tC:I

    :cond_1
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/tencent/bugly/proguard/gy;->tD:I

    :cond_2
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/tencent/bugly/proguard/gy;->tA:I

    :cond_3
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/tencent/bugly/proguard/gy;->tz:Z

    :cond_4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/gy;->tE:J

    :cond_5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/gy;->tG:Z

    :cond_6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_7

    sput p1, Lcom/tencent/bugly/proguard/qf;->FT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
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

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/gy;->fl()Lcom/tencent/bugly/proguard/gy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic eX()Lcom/tencent/bugly/proguard/hc;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/gy;->fl()Lcom/tencent/bugly/proguard/gy;

    move-result-object v0

    return-object v0
.end method
