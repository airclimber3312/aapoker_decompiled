.class Lcom/hyphenate/chat/EMChatRoomManager$38;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatRoomManager;->asyncRemoveChatRoomAttributesFromServer(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMResultCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatRoomManager;

.field final synthetic val$callBack:Lcom/hyphenate/EMResultCallBack;

.field final synthetic val$chatRoomId:Ljava/lang/String;

.field final synthetic val$keyList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/util/List;Lcom/hyphenate/EMResultCallBack;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatRoomManager$38;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatRoomManager$38;->val$keyList:Ljava/util/List;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatRoomManager$38;->val$callBack:Lcom/hyphenate/EMResultCallBack;

    iput-object p4, p0, Lcom/hyphenate/chat/EMChatRoomManager$38;->val$chatRoomId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$38;->val$keyList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$38;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatRoomManager$38;->val$chatRoomId:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatRoomManager$38;->val$keyList:Ljava/util/List;

    invoke-static {v1, v2, v3, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->access$1000(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatRoomManager$38;->val$callBack:Lcom/hyphenate/EMResultCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v0

    invoke-interface {v2, v0, v1}, Lcom/hyphenate/EMResultCallBack;->onResult(ILjava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$38;->val$callBack:Lcom/hyphenate/EMResultCallBack;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x6e

    invoke-interface {v0, v2, v1}, Lcom/hyphenate/EMResultCallBack;->onResult(ILjava/lang/Object;)V

    return-void
.end method
