.class public Le;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkStatusCallback.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 3
    iput-object p1, p0, Le;->a:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Le;->b:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    :cond_0
    return-void
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 5
    invoke-virtual {p0}, Le;->a()V

    const-string p1, "NetWorkStatusCallBack"

    const-string v0, "onAvailable"

    .line 6
    invoke-static {p1, v0}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/aapoker/ProtocalRespond;

    invoke-direct {p1}, Lcom/aapoker/ProtocalRespond;-><init>()V

    const/16 v1, 0x190

    .line 8
    invoke-virtual {p1, v1}, Lcom/aapoker/ProtocalRespond;->setType(I)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/aapoker/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aapoker/MainActivity;->CallRespond(Ljava/lang/String;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    const/16 p1, 0x10

    .line 2
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    const-string p2, "onCapabilitiesChanged"

    const-string v0, "NetWorkStatusCallBack"

    if-eqz p1, :cond_0

    const-string p1, "onCapabilitiesChanged111"

    .line 11
    invoke-static {v0, p1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance p1, Lcom/aapoker/ProtocalRespond;

    invoke-direct {p1}, Lcom/aapoker/ProtocalRespond;-><init>()V

    const/16 v0, 0x190

    .line 13
    invoke-virtual {p1, v0}, Lcom/aapoker/ProtocalRespond;->setType(I)V

    .line 14
    invoke-virtual {p1, p2}, Lcom/aapoker/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aapoker/MainActivity;->CallRespond(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v0, p2}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 2
    new-instance p1, Lcom/aapoker/ProtocalRespond;

    invoke-direct {p1}, Lcom/aapoker/ProtocalRespond;-><init>()V

    const/16 p2, 0x190

    .line 3
    invoke-virtual {p1, p2}, Lcom/aapoker/ProtocalRespond;->setType(I)V

    const-string p2, "onLinkPropertiesChanged"

    .line 4
    invoke-virtual {p1, p2}, Lcom/aapoker/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aapoker/MainActivity;->CallRespond(Ljava/lang/String;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    const-string p1, "NetWorkStatusCallBack"

    const-string p2, "onLosing"

    .line 2
    invoke-static {p1, p2}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/aapoker/ProtocalRespond;

    invoke-direct {p1}, Lcom/aapoker/ProtocalRespond;-><init>()V

    const/16 v0, 0x190

    .line 4
    invoke-virtual {p1, v0}, Lcom/aapoker/ProtocalRespond;->setType(I)V

    .line 5
    invoke-virtual {p1, p2}, Lcom/aapoker/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aapoker/MainActivity;->CallRespond(Ljava/lang/String;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 5
    invoke-virtual {p0}, Le;->a()V

    const-string p1, "NetWorkStatusCallBack"

    const-string v0, "onLost"

    .line 6
    invoke-static {p1, v0}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/aapoker/ProtocalRespond;

    invoke-direct {p1}, Lcom/aapoker/ProtocalRespond;-><init>()V

    const/16 v1, 0x190

    .line 8
    invoke-virtual {p1, v1}, Lcom/aapoker/ProtocalRespond;->setType(I)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/aapoker/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aapoker/MainActivity;->CallRespond(Ljava/lang/String;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    const-string v0, "NetWorkStatusCallBack"

    const-string v1, "onUnavailable"

    .line 2
    invoke-static {v0, v1}, Lcom/aapoker/BaseMainActivity;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/aapoker/ProtocalRespond;

    invoke-direct {v0}, Lcom/aapoker/ProtocalRespond;-><init>()V

    const/16 v2, 0x190

    .line 4
    invoke-virtual {v0, v2}, Lcom/aapoker/ProtocalRespond;->setType(I)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/aapoker/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aapoker/MainActivity;->CallRespond(Ljava/lang/String;)V

    return-void
.end method
