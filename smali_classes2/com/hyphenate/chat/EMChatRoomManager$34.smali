.class Lcom/hyphenate/chat/EMChatRoomManager$34;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatRoomManager;->asyncSetChatroomAttributesForced(Ljava/lang/String;Ljava/util/Map;ZLcom/hyphenate/EMResultCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatRoomManager;

.field final synthetic val$attributeMap:Ljava/util/Map;

.field final synthetic val$autoDelete:Z

.field final synthetic val$callBack:Lcom/hyphenate/EMResultCallBack;

.field final synthetic val$chatRoomId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/util/Map;Lcom/hyphenate/EMResultCallBack;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatRoomManager$34;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatRoomManager$34;->val$attributeMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatRoomManager$34;->val$callBack:Lcom/hyphenate/EMResultCallBack;

    iput-object p4, p0, Lcom/hyphenate/chat/EMChatRoomManager$34;->val$chatRoomId:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/hyphenate/chat/EMChatRoomManager$34;->val$autoDelete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$34;->val$attributeMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$34;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatRoomManager$34;->val$chatRoomId:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatRoomManager$34;->val$attributeMap:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/hyphenate/chat/EMChatRoomManager$34;->val$autoDelete:Z

    invoke-static {v1, v2, v3, v4, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->access$700(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Ljava/util/Map;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatRoomManager$34;->val$callBack:Lcom/hyphenate/EMResultCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v0

    invoke-interface {v2, v0, v1}, Lcom/hyphenate/EMResultCallBack;->onResult(ILjava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$34;->val$callBack:Lcom/hyphenate/EMResultCallBack;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x6e

    invoke-interface {v0, v2, v1}, Lcom/hyphenate/EMResultCallBack;->onResult(ILjava/lang/Object;)V

    return-void
.end method
