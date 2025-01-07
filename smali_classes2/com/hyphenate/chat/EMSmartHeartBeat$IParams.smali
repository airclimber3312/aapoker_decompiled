.class abstract Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMSmartHeartBeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "IParams"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getDefaultInterval()I
.end method

.method abstract getMaxInterval()I
.end method

.method abstract getMinInterval()I
.end method

.method getNextInterval(IZ)I
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$000(Lcom/hyphenate/chat/EMSmartHeartBeat;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "use fixed interval: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {p2}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$000(Lcom/hyphenate/chat/EMSmartHeartBeat;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "smart ping"

    invoke-static {p2, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {p1}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$000(Lcom/hyphenate/chat/EMSmartHeartBeat;)I

    move-result p1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    const p2, 0x1d4c0

    const v0, 0xea60

    if-gez v1, :cond_3

    if-gt p1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-gt p1, p2, :cond_5

    goto :goto_2

    :cond_3
    if-ge p1, v0, :cond_4

    :goto_0
    mul-int/lit8 v1, v1, 0xa

    :goto_1
    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr p1, v1

    goto :goto_3

    :cond_4
    if-ge p1, p2, :cond_5

    :goto_2
    mul-int/lit8 v1, v1, 0x1e

    goto :goto_1

    :cond_5
    mul-int/lit8 v1, v1, 0x2d

    goto :goto_1

    :goto_3
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;->getMaxInterval()I

    move-result p2

    if-le p1, p2, :cond_6

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;->getMaxInterval()I

    move-result p1

    :cond_6
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;->getMinInterval()I

    move-result p2

    if-ge p1, p2, :cond_7

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;->getMinInterval()I

    move-result p1

    :cond_7
    return p1
.end method

.method abstract getPingPongCheckInterval()I
.end method

.method abstract getPingPongTimeout()I
.end method
