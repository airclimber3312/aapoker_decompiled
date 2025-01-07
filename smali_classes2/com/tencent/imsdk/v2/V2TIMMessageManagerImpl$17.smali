.class Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$17;
.super Ljava/lang/Object;
.source "V2TIMMessageManagerImpl.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->modifyMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMCompleteCallback<",
        "Lcom/tencent/imsdk/message/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

.field final synthetic val$callback:Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;)V
    .locals 0

    .line 992
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$17;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$17;->val$callback:Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Lcom/tencent/imsdk/message/Message;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 997
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 998
    invoke-virtual {v0, p3}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1001
    :goto_0
    iget-object p3, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$17;->val$callback:Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;

    if-eqz p3, :cond_1

    .line 1002
    invoke-interface {p3, p1, p2, v0}, Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 992
    check-cast p3, Lcom/tencent/imsdk/message/Message;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$17;->onComplete(ILjava/lang/String;Lcom/tencent/imsdk/message/Message;)V

    return-void
.end method
