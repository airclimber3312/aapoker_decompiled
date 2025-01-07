.class Lcom/hyphenate/chat/EMChatRoomManager$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatRoomManager;->asyncCreateChatRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/hyphenate/EMValueCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatRoomManager;

.field final synthetic val$callBack:Lcom/hyphenate/EMValueCallBack;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$maxUserCount:I

.field final synthetic val$members:Ljava/util/List;

.field final synthetic val$subject:Ljava/lang/String;

.field final synthetic val$welcomeMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatRoomManager$8;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatRoomManager$8;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatRoomManager$8;->val$subject:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/chat/EMChatRoomManager$8;->val$description:Ljava/lang/String;

    iput-object p5, p0, Lcom/hyphenate/chat/EMChatRoomManager$8;->val$welcomeMessage:Ljava/lang/String;

    iput p6, p0, Lcom/hyphenate/chat/EMChatRoomManager$8;->val$maxUserCount:I

    iput-object p7, p0, Lcom/hyphenate/chat/EMChatRoomManager$8;->val$members:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$8;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$8;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatRoomManager$8;->val$subject:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatRoomManager$8;->val$description:Ljava/lang/String;

    iget-object v4, p0, Lcom/hyphenate/chat/EMChatRoomManager$8;->val$welcomeMessage:Ljava/lang/String;

    iget v5, p0, Lcom/hyphenate/chat/EMChatRoomManager$8;->val$maxUserCount:I

    iget-object v6, p0, Lcom/hyphenate/chat/EMChatRoomManager$8;->val$members:Ljava/util/List;

    invoke-virtual/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatRoomManager;->createChatRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Lcom/hyphenate/chat/EMChatRoom;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$8;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
