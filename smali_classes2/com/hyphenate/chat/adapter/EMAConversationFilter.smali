.class public Lcom/hyphenate/chat/adapter/EMAConversationFilter;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversationFilter;->nativeInit()V

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversationFilter;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getMarkType()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversationFilter;->nativeGetMarkType()I

    move-result v0

    return v0
.end method

.method public getPageSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversationFilter;->nativeGetPageSize()I

    move-result v0

    return v0
.end method

.method public isNeedMark()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversationFilter;->nativeIsNeedMark()Z

    move-result v0

    return v0
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetMarkType()I
.end method

.method native nativeGetPageSize()I
.end method

.method native nativeInit()V
.end method

.method native nativeIsNeedMark()Z
.end method

.method native nativeSetIsNeedMark(Z)V
.end method

.method native nativeSetMarkType(I)V
.end method

.method native nativeSetPageSize(I)V
.end method

.method public setMarkType(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAConversationFilter;->nativeSetMarkType(I)V

    return-void
.end method

.method public setNeedMark(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAConversationFilter;->nativeSetIsNeedMark(Z)V

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAConversationFilter;->nativeSetPageSize(I)V

    return-void
.end method
