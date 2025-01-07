.class public abstract Lcom/hyphenate/chat/adapter/EMAThreadManagerListener;
.super Lcom/hyphenate/chat/adapter/EMABase;

# interfaces
.implements Lcom/hyphenate/chat/adapter/EMAThreadManagerListenerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAThreadManagerListener;->nativeInit()V

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAThreadManagerListener;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native nativeFinalize()V
.end method

.method native nativeInit()V
.end method

.method public onLeaveThread(Lcom/hyphenate/chat/adapter/EMAThreadInfo;I)V
    .locals 0

    return-void
.end method

.method public onMemberExited(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V
    .locals 0

    return-void
.end method

.method public onMemberJoined(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V
    .locals 0

    return-void
.end method

.method public onThreadNameUpdated(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V
    .locals 0

    return-void
.end method

.method public onThreadNotifyChange(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V
    .locals 0

    return-void
.end method
