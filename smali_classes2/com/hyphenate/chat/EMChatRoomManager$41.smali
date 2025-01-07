.class Lcom/hyphenate/chat/EMChatRoomManager$41;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatRoomManager;->asyncRemoveChatRoomAttributeFromServerForced(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatRoomManager;

.field final synthetic val$callBack:Lcom/hyphenate/EMCallBack;

.field final synthetic val$chatRoomId:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatRoomManager$41;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatRoomManager$41;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatRoomManager$41;->val$callBack:Lcom/hyphenate/EMCallBack;

    iput-object p4, p0, Lcom/hyphenate/chat/EMChatRoomManager$41;->val$chatRoomId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$41;->val$key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$41;->val$callBack:Lcom/hyphenate/EMCallBack;

    const-string v1, "remove Attribute key Cannot be an empty string"

    const/16 v2, 0x6e

    invoke-interface {v0, v2, v1}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$41;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$41;->this$0:Lcom/hyphenate/chat/EMChatRoomManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatRoomManager$41;->val$chatRoomId:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->access$1300(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager$41;->val$callBack:Lcom/hyphenate/EMCallBack;

    invoke-interface {v0}, Lcom/hyphenate/EMCallBack;->onSuccess()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager$41;->val$callBack:Lcom/hyphenate/EMCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
