.class public final Lcom/tencent/bugly/proguard/hh;
.super Ljava/lang/Object;


# instance fields
.field public appId:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public bA:Ljava/lang/String;

.field public bD:Ljava/lang/String;

.field public bE:Ljava/lang/String;

.field public bx:Ljava/lang/String;

.field public by:Ljava/lang/String;

.field public cC:Ljava/lang/String;

.field public cD:Ljava/lang/String;

.field public iy:Ljava/lang/String;

.field public ul:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hh;->iy:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hh;->ul:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/hh;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/tencent/bugly/proguard/hh;->iy:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hh;->iy:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/bugly/proguard/hh;->ul:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hh;->ul:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/bugly/proguard/hh;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hh;->appId:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/bugly/proguard/hh;->appKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hh;->appKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/bugly/proguard/hh;->appVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hh;->appVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/bugly/proguard/hh;->bD:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hh;->bD:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/bugly/proguard/hh;->bE:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hh;->bE:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/bugly/proguard/hh;->bA:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hh;->bA:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/bugly/proguard/hh;->by:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hh;->by:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/bugly/proguard/hh;->bx:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hh;->bx:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/bugly/proguard/hh;->cD:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hh;->cD:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/hh;->cC:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/hh;->cC:Ljava/lang/String;

    return-void
.end method

.method public final fo()Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "pid"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/hh;->appId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_key"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/hh;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/hh;->appVersion:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdk_ver"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/hh;->bD:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "uin"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/hh;->bA:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceid"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/hh;->by:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "os"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/hh;->cD:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "manu"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/hh;->cC:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "device"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/hh;->bx:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_version_mode"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/hh;->bE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "md5code"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/hh;->ul:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "RMonitor_config"

    invoke-virtual {v2, v3, v0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v1
.end method
