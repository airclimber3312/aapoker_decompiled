.class Lcom/hyphenate/chat/EMSmartHeartBeat$EMParams;
.super Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMSmartHeartBeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EMParams"
.end annotation


# static fields
.field static final MAX_INTERVAL:I = 0x41eb0

.field static final MAX_MIN_INTERVAL_COUNTER:I = 0x3

.field static final MIN_INTERVAL:I = 0x7530

.field static final MOBILE_DEFAULT_INTERVAL:I = 0x2bf20

.field static final PING_PONG_CHECK_INTERVAL:I = 0xdbba0

.field static final PING_PONG_TIMEOUT:I = 0x1f40

.field static final WIFI_DEFAULT_INTERVAL:I = 0x1d4c0


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParams;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;-><init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V

    return-void
.end method


# virtual methods
.method getDefaultInterval()I
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParams;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$000(Lcom/hyphenate/chat/EMSmartHeartBeat;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParams;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$000(Lcom/hyphenate/chat/EMSmartHeartBeat;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParams;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$100(Lcom/hyphenate/chat/EMSmartHeartBeat;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/util/NetUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x1d4c0

    goto :goto_0

    :cond_1
    const v0, 0x2bf20

    :goto_0
    return v0
.end method

.method getMaxInterval()I
    .locals 1

    const v0, 0x41eb0

    return v0
.end method

.method getMinInterval()I
    .locals 1

    const/16 v0, 0x7530

    return v0
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
