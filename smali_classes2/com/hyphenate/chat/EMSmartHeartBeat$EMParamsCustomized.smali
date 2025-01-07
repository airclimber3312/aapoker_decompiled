.class Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsCustomized;
.super Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMSmartHeartBeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EMParamsCustomized"
.end annotation


# static fields
.field static final PING_PONG_CHECK_INTERVAL:I = 0xdbba0

.field static final PING_PONG_TIMEOUT:I = 0x1f40


# instance fields
.field private final defaultInterval:I

.field private final maxInterval:I

.field private final minInterval:I

.field final synthetic this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMSmartHeartBeat;Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsCustomized;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;-><init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V

    iget p1, p2, Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;->defaultInterval:I

    iput p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsCustomized;->defaultInterval:I

    iget p1, p2, Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;->minInterval:I

    iput p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsCustomized;->minInterval:I

    iget p1, p2, Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;->maxInterval:I

    iput p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsCustomized;->maxInterval:I

    return-void
.end method


# virtual methods
.method getDefaultInterval()I
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsCustomized;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$000(Lcom/hyphenate/chat/EMSmartHeartBeat;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsCustomized;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$000(Lcom/hyphenate/chat/EMSmartHeartBeat;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get customized default: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsCustomized;->defaultInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smart ping"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsCustomized;->defaultInterval:I

    return v0
.end method

.method getMaxInterval()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsCustomized;->maxInterval:I

    return v0
.end method

.method getMinInterval()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsCustomized;->minInterval:I

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
