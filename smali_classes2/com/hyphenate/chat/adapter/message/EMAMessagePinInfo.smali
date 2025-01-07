.class public Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;->nativeInit()V

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native nativeFinalize()V
.end method

.method native nativeInit()V
.end method

.method native nativePinBy()Ljava/lang/String;
.end method

.method native nativePinnedAt()J
.end method

.method public pinnedAt()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;->nativePinnedAt()J

    move-result-wide v0

    return-wide v0
.end method

.method public pinnedBy()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;->nativePinBy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
