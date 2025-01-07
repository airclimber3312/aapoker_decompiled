.class public Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;
.super Lcom/hyphenate/chat/adapter/message/EMAMessageBody;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;->nativeInit(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;->nativeInit(Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;->nativeInit(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public event()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;->nativeEvent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native nativeEvent()Ljava/lang/String;
.end method

.method native nativeFinalize()V
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;)V
.end method

.method native nativeInit(Ljava/lang/String;)V
.end method

.method native nativeParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeSetEvent(Ljava/lang/String;)V
.end method

.method native nativeSetParams(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public params()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;->nativeParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;->nativeSetEvent(Ljava/lang/String;)V

    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMACustomMessageBody;->nativeSetParams(Ljava/util/Map;)V

    return-void
.end method
