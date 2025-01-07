.class public Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;->nativeInit()V

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native nativeFinalize()V
.end method

.method native nativeInit()V
.end method

.method native nativeSetDirection(I)V
.end method

.method native nativeSetEndTime(J)V
.end method

.method native nativeSetFrom(Ljava/lang/String;)V
.end method

.method native nativeSetMsgTypes(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage$Type;",
            ">;)V"
        }
    .end annotation
.end method

.method native nativeSetSave(Z)V
.end method

.method native nativeSetStartTime(J)V
.end method

.method public setDirection(Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;)V
    .locals 0

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;->nativeSetDirection(I)V

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;->nativeSetEndTime(J)V

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;->nativeSetFrom(Ljava/lang/String;)V

    return-void
.end method

.method public setMsgTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage$Type;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;->nativeSetMsgTypes(Ljava/util/List;)V

    return-void
.end method

.method public setSave(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;->nativeSetSave(Z)V

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;->nativeSetStartTime(J)V

    return-void
.end method
