.class public Lcom/hyphenate/chat/adapter/EMACallback;
.super Lcom/hyphenate/chat/adapter/EMABase;


# instance fields
.field private owner:Lcom/hyphenate/EMCallBack;


# direct methods
.method public constructor <init>(Lcom/hyphenate/EMCallBack;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/adapter/EMACallback;->owner:Lcom/hyphenate/EMCallBack;

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMACallback;->nativeInit()V

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMACallback;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native nativeFinalize()V
.end method

.method native nativeInit()V
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMACallback;->owner:Lcom/hyphenate/EMCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hyphenate/chat/adapter/EMACallback;->owner:Lcom/hyphenate/EMCallBack;

    :cond_0
    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMACallback;->owner:Lcom/hyphenate/EMCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/hyphenate/EMCallBack;->onProgress(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMACallback;->owner:Lcom/hyphenate/EMCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hyphenate/EMCallBack;->onSuccess()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyphenate/chat/adapter/EMACallback;->owner:Lcom/hyphenate/EMCallBack;

    :cond_0
    return-void
.end method

.method setOwner(Lcom/hyphenate/EMCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/adapter/EMACallback;->owner:Lcom/hyphenate/EMCallBack;

    return-void
.end method
