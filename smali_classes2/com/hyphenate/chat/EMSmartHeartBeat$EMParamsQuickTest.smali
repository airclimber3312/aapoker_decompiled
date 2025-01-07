.class Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsQuickTest;
.super Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMSmartHeartBeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EMParamsQuickTest"
.end annotation


# static fields
.field static final MAX_INTERVAL:I = 0x7530

.field static final MAX_MIN_INTERVAL_COUNTER:I = 0x3

.field static final MIN_INTERVAL:I = 0x2710

.field static final MOBILE_DEFAULT_INTERVAL:I = 0x4e20

.field static final PING_PONG_CHECK_INTERVAL:I = 0xdbba0

.field static final PING_PONG_TIMEOUT:I = 0x1f40

.field static final WIFI_DEFAULT_INTERVAL:I = 0x4e20


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsQuickTest;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;-><init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V

    return-void
.end method


# virtual methods
.method getDefaultInterval()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsQuickTest;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$100(Lcom/hyphenate/chat/EMSmartHeartBeat;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/util/NetUtils;->isWifiConnected(Landroid/content/Context;)Z

    const/16 v0, 0x4e20

    return v0
.end method

.method getMaxInterval()I
    .locals 1

    const/16 v0, 0x7530

    return v0
.end method

.method getMinInterval()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method

.method getNextInterval(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    mul-int/lit8 p2, p2, 0x5

    mul-int/lit16 p2, p2, 0x3e8

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsQuickTest;->getMaxInterval()I

    move-result p2

    if-le p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsQuickTest;->getMaxInterval()I

    move-result p1

    :cond_1
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsQuickTest;->getMinInterval()I

    move-result p2

    if-ge p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsQuickTest;->getMinInterval()I

    move-result p1

    :cond_2
    return p1
.end method

.method getPingPongCheckInterval()I
    .locals 1

    const v0, 0xdbba0

    return v0
.end method

.method getPingPongTimeout()I
    .locals 1

    const/16 v0, 0x1f40

    return v0
.end method
