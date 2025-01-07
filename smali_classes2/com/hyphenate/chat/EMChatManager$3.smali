.class Lcom/hyphenate/chat/EMChatManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatManager;->sendMessage(Lcom/hyphenate/chat/EMMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatManager;

.field final synthetic val$conv:Lcom/hyphenate/chat/EMConversation;

.field final synthetic val$msg:Lcom/hyphenate/chat/EMMessage;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/chat/EMConversation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$3;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$3;->val$msg:Lcom/hyphenate/chat/EMMessage;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatManager$3;->val$conv:Lcom/hyphenate/chat/EMConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$3;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->getOptions()Lcom/hyphenate/chat/EMOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMOptions;->getAutoTransferMessageAttachments()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$3;->val$msg:Lcom/hyphenate/chat/EMMessage;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage;->getType()Lcom/hyphenate/chat/EMMessage$Type;

    move-result-object v1

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->IMAGE:Lcom/hyphenate/chat/EMMessage$Type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "File not exists or can not be read"

    const-string v4, "Message body can not be null"

    const/16 v5, 0x191

    if-ne v1, v2, :cond_5

    :try_start_1
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$3;->val$msg:Lcom/hyphenate/chat/EMMessage;

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Status;->INPROGRESS:Lcom/hyphenate/chat/EMMessage$Status;

    invoke-virtual {v1, v2}, Lcom/hyphenate/chat/EMMessage;->setStatus(Lcom/hyphenate/chat/EMMessage$Status;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$3;->val$msg:Lcom/hyphenate/chat/EMMessage;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage;->getBody()Lcom/hyphenate/chat/EMMessageBody;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMImageMessageBody;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$1HandleError;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$3;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatManager$3;->val$msg:Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v1, v2, v0, v4, v3}, Lcom/hyphenate/chat/EMChatManager$1HandleError;-><init>(Lcom/hyphenate/chat/EMChatManager;ILjava/lang/String;Lcom/hyphenate/chat/EMMessage;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/hyphenate/chat/EMImageMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMImageMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/hyphenate/util/EMFileHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$1HandleError;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$3;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v4, p0, Lcom/hyphenate/chat/EMChatManager$3;->val$msg:Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/hyphenate/chat/EMChatManager$1HandleError;-><init>(Lcom/hyphenate/chat/EMChatManager;ILjava/lang/String;Lcom/hyphenate/chat/EMMessage;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/hyphenate/chat/EMImageMessageBody;->isSendOriginalImage()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/hyphenate/util/EMFileHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatManager$3;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v3, v3, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/hyphenate/util/ImageUtils;->getScaledImageByUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1, v2}, Lcom/hyphenate/chat/EMImageMessageBody;->setOriginalLocalPath(Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/hyphenate/util/EMFileHelper;->getFileLength(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/hyphenate/util/EMFileHelper;->getFileLength(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v10, 0x0

    const-string v2, "EMChatManager"

    const-string v4, "original image size:"

    cmp-long v12, v6, v10

    if-nez v12, :cond_2

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$1HandleError;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$3;->this$0:Lcom/hyphenate/chat/EMChatManager;

    const-string v3, "original image size is 0"

    iget-object v4, p0, Lcom/hyphenate/chat/EMChatManager$3;->val$msg:Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/hyphenate/chat/EMChatManager$1HandleError;-><init>(Lcom/hyphenate/chat/EMChatManager;ILjava/lang/String;Lcom/hyphenate/chat/EMMessage;)V

    return-void

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " scaled image size:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ratio:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v6, v8, v6

    long-to-int v4, v6

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/hyphenate/util/EMFileHelper;->formatInUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hyphenate/chat/EMImageMessageBody;->setLocalUrl(Landroid/net/Uri;)V

    invoke-virtual {v1, v8, v9}, Lcom/hyphenate/chat/EMImageMessageBody;->setFileLength(J)V

    move-object v2, v3

    :cond_3
    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/hyphenate/util/EMFileHelper;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hyphenate/chat/EMImageMessageBody;->setFileName(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/hyphenate/chat/EMChatManager$3;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v3, v3, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/hyphenate/util/ImageUtils;->getBitmapOptions(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    if-eqz v2, :cond_8

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v1, v3, v2}, Lcom/hyphenate/chat/EMImageMessageBody;->setSize(II)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$3;->val$msg:Lcom/hyphenate/chat/EMMessage;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage;->getType()Lcom/hyphenate/chat/EMMessage$Type;

    move-result-object v1

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->VIDEO:Lcom/hyphenate/chat/EMMessage$Type;

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$3;->val$msg:Lcom/hyphenate/chat/EMMessage;

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Status;->INPROGRESS:Lcom/hyphenate/chat/EMMessage$Status;

    invoke-virtual {v1, v2}, Lcom/hyphenate/chat/EMMessage;->setStatus(Lcom/hyphenate/chat/EMMessage$Status;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$3;->val$msg:Lcom/hyphenate/chat/EMMessage;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage;->getBody()Lcom/hyphenate/chat/EMMessageBody;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMVideoMessageBody;

    if-nez v1, :cond_6

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$1HandleError;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$3;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatManager$3;->val$msg:Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v1, v2, v0, v4, v3}, Lcom/hyphenate/chat/EMChatManager$1HandleError;-><init>(Lcom/hyphenate/chat/EMChatManager;ILjava/lang/String;Lcom/hyphenate/chat/EMMessage;)V

    return-void

    :cond_6
    invoke-virtual {v1}, Lcom/hyphenate/chat/EMVideoMessageBody;->getLocalUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMVideoMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/hyphenate/util/EMFileHelper;->isFileExist(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$1HandleError;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$3;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v4, p0, Lcom/hyphenate/chat/EMChatManager$3;->val$msg:Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/hyphenate/chat/EMChatManager$1HandleError;-><init>(Lcom/hyphenate/chat/EMChatManager;ILjava/lang/String;Lcom/hyphenate/chat/EMMessage;)V

    return-void

    :cond_7
    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMVideoMessageBody;->getLocalThumbUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hyphenate/util/EMFileHelper;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v2}, Lcom/hyphenate/util/ImageUtils;->getBitmapOptions(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v1, v3, v2}, Lcom/hyphenate/chat/EMVideoMessageBody;->setThumbnailSize(II)V

    :cond_8
    :goto_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$3;->val$msg:Lcom/hyphenate/chat/EMMessage;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$3;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatManager$3;->val$msg:Lcom/hyphenate/chat/EMMessage;

    iget-object v4, p0, Lcom/hyphenate/chat/EMChatManager$3;->val$conv:Lcom/hyphenate/chat/EMConversation;

    invoke-static {v2, v3, v4, v1}, Lcom/hyphenate/chat/EMChatManager;->access$300(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/chat/EMConversation;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$3;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v1, v1, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$3;->val$msg:Lcom/hyphenate/chat/EMMessage;

    iget-object v2, v2, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v2, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v1, v2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->sendMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$1HandleError;

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$3;->this$0:Lcom/hyphenate/chat/EMChatManager;

    const-string v3, "send message failed"

    iget-object v4, p0, Lcom/hyphenate/chat/EMChatManager$3;->val$msg:Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/hyphenate/chat/EMChatManager$1HandleError;-><init>(Lcom/hyphenate/chat/EMChatManager;ILjava/lang/String;Lcom/hyphenate/chat/EMMessage;)V

    :goto_1
    return-void
.end method
