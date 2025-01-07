.class public Lcom/hyphenate/wrapper/helper/EMChatThreadHelper;
.super Ljava/lang/Object;
.source "EMChatThreadHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJson(Lcom/hyphenate/chat/EMChatThread;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "threadId"

    .line 12
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatThread;->getChatThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatThread;->getChatThreadName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "name"

    .line 14
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatThread;->getChatThreadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "owner"

    .line 16
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatThread;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "msgId"

    .line 17
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatThread;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "parentId"

    .line 18
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatThread;->getParentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "memberCount"

    .line 19
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatThread;->getMemberCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msgCount"

    .line 20
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatThread;->getMessageCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "createAt"

    .line 21
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatThread;->getCreateAt()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatThread;->getLastMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatThread;->getLastMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object p0

    invoke-static {p0}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "lastMsg"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-object v0
.end method
