.class final Lcom/tencent/bugly/proguard/ny$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ny;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic wv:Lcom/tencent/bugly/proguard/bg;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ny$a;->wv:Lcom/tencent/bugly/proguard/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ny$a;->wv:Lcom/tencent/bugly/proguard/bg;

    iget v0, v0, Lcom/tencent/bugly/proguard/bg;->cS:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/id;->uK:Lcom/tencent/bugly/proguard/hw;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tencent/bugly/proguard/ib;->vh:Lcom/tencent/bugly/proguard/ib$a;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ny$a;->wv:Lcom/tencent/bugly/proguard/bg;

    iget v1, v1, Lcom/tencent/bugly/proguard/bg;->cS:I

    int-to-long v1, v1

    sget-object v3, Lcom/tencent/bugly/proguard/hu;->uG:Lcom/tencent/bugly/proguard/hu;

    iget v3, v3, Lcom/tencent/bugly/proguard/hu;->value:I

    const-string v4, "report_data"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/tencent/bugly/proguard/hv;->a(Ljava/lang/String;JI)I

    :cond_0
    sget-boolean v0, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ny$a;->wv:Lcom/tencent/bugly/proguard/bg;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/bg;->da:Lorg/json/JSONObject;

    const-string v1, "client_identify"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "RMonitor_looper_report"

    aput-object v4, v2, v3

    const-string v3, "deal cached report data, clientIdentify: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method
