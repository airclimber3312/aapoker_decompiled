.class Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$3;
.super Ljava/lang/Object;
.source "V2TIMMessageManagerImpl.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Lcom/tencent/imsdk/message/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

.field final synthetic val$sendCallback:Lcom/tencent/imsdk/v2/V2TIMSendCallback;

.field final synthetic val$v2TIMMessage:Lcom/tencent/imsdk/v2/V2TIMMessage;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMSendCallback;Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$3;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$3;->val$sendCallback:Lcom/tencent/imsdk/v2/V2TIMSendCallback;

    iput-object p3, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$3;->val$v2TIMMessage:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$3;->val$sendCallback:Lcom/tencent/imsdk/v2/V2TIMSendCallback;

    if-eqz v0, :cond_0

    .line 564
    invoke-interface {v0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMSendCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/tencent/imsdk/message/Message;)V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$3;->val$sendCallback:Lcom/tencent/imsdk/v2/V2TIMSendCallback;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$3;->val$v2TIMMessage:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    .line 557
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$3;->val$sendCallback:Lcom/tencent/imsdk/v2/V2TIMSendCallback;

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$3;->val$v2TIMMessage:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-interface {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMSendCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 552
    check-cast p1, Lcom/tencent/imsdk/message/Message;

    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$3;->onSuccess(Lcom/tencent/imsdk/message/Message;)V

    return-void
.end method
