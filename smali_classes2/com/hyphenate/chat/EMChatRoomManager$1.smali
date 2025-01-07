.class Lcom/hyphenate/chat/EMChatRoomManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatRoomManager;->joinChatRoom(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatRoomManager;

.field final synthetic val$callback:Lcom/hyphenate/EMValueCallBack;

.field final synthetic val$roomId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatRoomManager$1;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatRoomManager$1;->val$roomId:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatRoomManager$1;->val$callback:Lcom/hyphenate/EMValueCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$1;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatRoomManager$1;->val$roomId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->joinChatRoom(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/chat/EMChatRoom;

    invoke-direct {v2, v1}, Lcom/hyphenate/chat/EMChatRoom;-><init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$1;->val$callback:Lcom/hyphenate/EMValueCallBack;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v1

    const/16 v3, 0x2bd

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$1;->val$callback:Lcom/hyphenate/EMValueCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errMsg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$1;->val$callback:Lcom/hyphenate/EMValueCallBack;

    invoke-interface {v0, v2}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
