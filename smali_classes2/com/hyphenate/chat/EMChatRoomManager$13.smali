.class Lcom/hyphenate/chat/EMChatRoomManager$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatRoomManager;->asyncMuteChatRoomMembers(Ljava/lang/String;Ljava/util/List;JLcom/hyphenate/EMValueCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatRoomManager;

.field final synthetic val$callBack:Lcom/hyphenate/EMValueCallBack;

.field final synthetic val$chatRoomId:Ljava/lang/String;

.field final synthetic val$duration:J

.field final synthetic val$muteMembers:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatRoomManager$13;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatRoomManager$13;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatRoomManager$13;->val$chatRoomId:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/chat/EMChatRoomManager$13;->val$muteMembers:Ljava/util/List;

    iput-wide p5, p0, Lcom/hyphenate/chat/EMChatRoomManager$13;->val$duration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$13;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$13;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatRoomManager$13;->val$chatRoomId:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatRoomManager$13;->val$muteMembers:Ljava/util/List;

    iget-wide v4, p0, Lcom/hyphenate/chat/EMChatRoomManager$13;->val$duration:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/hyphenate/chat/EMChatRoomManager;->muteChatRoomMembers(Ljava/lang/String;Ljava/util/List;J)Lcom/hyphenate/chat/EMChatRoom;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$13;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
