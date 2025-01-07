.class public Lcom/hyphenate/chat/adapter/EMATranslateManager;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    return-void
.end method


# virtual methods
.method public getTranslationResultByMsgId(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMATranslateResult;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateManager;->nativeGetTranslationResultByMsgId(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMATranslateResult;

    move-result-object p1

    return-object p1
.end method

.method public loadTranslateResults(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMATranslateResult;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateManager;->nativeLoadTranslateResults(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method native nativeGetTranslationResultByMsgId(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMATranslateResult;
.end method

.method native nativeLoadTranslateResults(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMATranslateResult;",
            ">;"
        }
    .end annotation
.end method

.method native nativeRemoveAllTranslations()Z
.end method

.method native nativeRemoveTranslationsByConversationId(Ljava/lang/String;)Z
.end method

.method native nativeRemoveTranslationsByMsgId(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method native nativeUpdateTranslation(Lcom/hyphenate/chat/adapter/EMATranslateResult;)Z
.end method

.method public removeAllTranslations()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMATranslateManager;->nativeRemoveAllTranslations()Z

    move-result v0

    return v0
.end method

.method public removeTranslationsByConversationId(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateManager;->nativeRemoveTranslationsByConversationId(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeTranslationsByMsgId(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateManager;->nativeRemoveTranslationsByMsgId(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public updateTranslation(Lcom/hyphenate/chat/adapter/EMATranslateResult;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMATranslateManager;->nativeUpdateTranslation(Lcom/hyphenate/chat/adapter/EMATranslateResult;)Z

    move-result p1

    return p1
.end method
