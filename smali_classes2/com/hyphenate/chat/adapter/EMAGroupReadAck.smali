.class public Lcom/hyphenate/chat/adapter/EMAGroupReadAck;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;->nativeInit()V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAGroupReadAck;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;->nativeInit(Lcom/hyphenate/chat/adapter/EMAGroupReadAck;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAckId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;->nativeGetAckId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;->nativeGetContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;->nativeGetCount()I

    move-result v0

    return v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;->nativeGetFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;->nativeGetMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;->nativeGetTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetAckId()Ljava/lang/String;
.end method

.method native nativeGetContent()Ljava/lang/String;
.end method

.method native nativeGetCount()I
.end method

.method native nativeGetFrom()Ljava/lang/String;
.end method

.method native nativeGetMsgId()Ljava/lang/String;
.end method

.method native nativeGetTimestamp()J
.end method

.method native nativeInit()V
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/EMAGroupReadAck;)V
.end method
