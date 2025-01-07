.class Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$29;
.super Lcom/tencent/imsdk/common/IMCallback;
.source "V2TIMMessageManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->insertGroupMessageToLocalStorage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)Ljava/lang/String;
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

    .line 1232
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$29;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    iput-object p3, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$29;->val$v2TIMMessage:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {p0, p2}, Lcom/tencent/imsdk/common/IMCallback;-><init>(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0

    .line 1242
    invoke-super {p0, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 2

    .line 1235
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$29;->val$v2TIMMessage:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v0

    .line 1236
    move-object v1, p1

    check-cast v1, Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/Message;->update(Lcom/tencent/imsdk/message/Message;)V

    .line 1237
    invoke-super {p0, p1}, Lcom/tencent/imsdk/common/IMCallback;->success(Ljava/lang/Object;)V

    return-void
.end method
