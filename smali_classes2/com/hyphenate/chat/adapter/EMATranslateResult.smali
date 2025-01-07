.class public Lcom/hyphenate/chat/adapter/EMATranslateResult;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->nativeInit(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public conversationId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->nativeConversationId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public msgId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->nativeMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method native nativeConversationId()Ljava/lang/String;
.end method

.method native nativeFinalize()V
.end method

.method native nativeInit(Ljava/lang/String;)V
.end method

.method native nativeMsgId()Ljava/lang/String;
.end method

.method native nativeSetConversationId(Ljava/lang/String;)V
.end method

.method native nativeSetShowTranslation(Z)V
.end method

.method native nativeSetTranslateTime(I)V
.end method

.method native nativeSetTranslations(Ljava/lang/String;)V
.end method

.method native nativeShowTranslation()Z
.end method

.method native nativeTranslateTime()I
.end method

.method native nativeTranslations()Ljava/lang/String;
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->nativeSetConversationId(Ljava/lang/String;)V

    return-void
.end method

.method public setShowTranslation(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->nativeSetShowTranslation(Z)V

    return-void
.end method

.method public setTranslateTime(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->nativeSetTranslateTime(I)V

    return-void
.end method

.method public setTranslations(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->nativeSetTranslations(Ljava/lang/String;)V

    return-void
.end method

.method public showTranslation()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->nativeShowTranslation()Z

    move-result v0

    return v0
.end method

.method public translateTime()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->nativeTranslateTime()I

    move-result v0

    return v0
.end method

.method public translations()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMATranslateResult;->nativeTranslations()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
