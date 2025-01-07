.class Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$4;
.super Lcom/tencent/imsdk/common/IMCallback;
.source "V2TIMMessageManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

.field final synthetic val$v2TIMMessage:Lcom/tencent/imsdk/v2/V2TIMMessage;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$4;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    iput-object p3, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$4;->val$v2TIMMessage:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {p0, p2}, Lcom/tencent/imsdk/common/IMCallback;-><init>(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$4;->val$v2TIMMessage:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v0

    .line 580
    move-object v1, p3

    check-cast v1, Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/Message;->update(Lcom/tencent/imsdk/message/Message;)V

    .line 581
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$4;->val$v2TIMMessage:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v0

    .line 573
    move-object v1, p1

    check-cast v1, Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/Message;->update(Lcom/tencent/imsdk/message/Message;)V

    .line 574
    invoke-super {p0, p1}, Lcom/tencent/imsdk/common/IMCallback;->success(Ljava/lang/Object;)V

    return-void
.end method
