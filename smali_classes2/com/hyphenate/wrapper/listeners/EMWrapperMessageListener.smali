.class public Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;
.super Ljava/lang/Object;
.source "EMWrapperMessageListener.java"

# interfaces
.implements Lcom/hyphenate/EMMessageListener;
.implements Lcom/hyphenate/EMConversationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCmdMessageReceived$1(Lorg/json/JSONArray;)V
    .locals 3

    .line 45
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onCmdMessagesReceived"

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onConversationRead$11(Lorg/json/JSONObject;)V
    .locals 3

    .line 174
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onConversationRead"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onConversationUpdate$10()V
    .locals 4

    .line 165
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onConversationsUpdate"

    const/4 v2, 0x0

    const-string v3, "chatListener"

    invoke-interface {v0, v3, v1, v2}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onGroupMessageRead$6(Lorg/json/JSONArray;)V
    .locals 3

    .line 116
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onGroupMessageRead"

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onMessageContentChanged$8(Lorg/json/JSONObject;)V
    .locals 3

    .line 142
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onMessageContentChanged"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onMessageDelivered$3(Lorg/json/JSONArray;)V
    .locals 3

    .line 71
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onMessagesDelivered"

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onMessagePinChanged$9(Lorg/json/JSONObject;)V
    .locals 3

    .line 157
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onMessagePinChanged"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onMessageRead$2(Lorg/json/JSONArray;)V
    .locals 3

    .line 58
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onMessagesRead"

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onMessageRecalledWithExt$4(Lorg/json/JSONArray;)V
    .locals 3

    .line 98
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onMessagesRecalledByExt"

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onMessageReceived$0(Lorg/json/JSONArray;)V
    .locals 3

    .line 32
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onMessagesReceived"

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onReactionChanged$7(Lorg/json/JSONArray;)V
    .locals 3

    .line 129
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "messageReactionDidChange"

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onReadAckForGroupMessageUpdated$5()V
    .locals 4

    .line 106
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onReadAckForGroupMessageUpdated"

    const/4 v2, 0x0

    const-string v3, "chatListener"

    invoke-interface {v0, v3, v1, v2}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onTestGroupMessageRead$13(Lorg/json/JSONArray;)V
    .locals 3

    .line 185
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onGroupMessageRead"

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onTestReactionChanged$12(Lorg/json/JSONArray;)V
    .locals 3

    .line 181
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "messageReactionDidChange"

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCmdMessageReceived(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;)V"
        }
    .end annotation

    .line 40
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 42
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMMessage;

    .line 43
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda2;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onConversationRead(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 171
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "from"

    .line 172
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "to"

    .line 173
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda11;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda11;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 176
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onConversationUpdate()V
    .locals 1

    .line 165
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGroupMessageRead(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMGroupReadAck;",
            ">;)V"
        }
    .end annotation

    .line 111
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 113
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMGroupReadAck;

    .line 114
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMGroupAckHelper;->toJson(Lcom/hyphenate/chat/EMGroupReadAck;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 116
    :cond_0
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda1;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public synthetic onMessageChanged(Lcom/hyphenate/chat/EMMessage;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hyphenate/EMMessageListener$-CC;->$default$onMessageChanged(Lcom/hyphenate/EMMessageListener;Lcom/hyphenate/chat/EMMessage;Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageContentChanged(Lcom/hyphenate/chat/EMMessage;Ljava/lang/String;J)V
    .locals 2

    .line 137
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "msg"

    .line 139
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "operatorId"

    .line 140
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "operationTime"

    .line 141
    invoke-virtual {v0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 142
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda7;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda7;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onMessageDelivered(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;)V"
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 68
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMMessage;

    .line 69
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 71
    :cond_0
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda5;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda5;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onMessagePinChanged(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;Lcom/hyphenate/chat/EMMessagePinInfo;)V
    .locals 2

    .line 150
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "msgId"

    .line 152
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "convId"

    .line 153
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "isPinned"

    .line 154
    sget-object p2, Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;->PIN:Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;

    if-ne p3, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "operatorId"

    .line 155
    invoke-virtual {p4}, Lcom/hyphenate/chat/EMMessagePinInfo;->operatorId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ts"

    .line 156
    invoke-virtual {p4}, Lcom/hyphenate/chat/EMMessagePinInfo;->pinTime()J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 157
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda6;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda6;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onMessageRead(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;)V"
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 55
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMMessage;

    .line 56
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda13;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda13;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onMessageRecalled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onMessageRecalledWithExt(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMRecallMessageInfo;",
            ">;)V"
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 95
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMRecallMessageInfo;

    .line 96
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMRecallMessageInfoHelper;->toJson(Lcom/hyphenate/chat/EMRecallMessageInfo;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda0;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onMessageReceived(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;)V"
        }
    .end annotation

    .line 27
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 29
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMMessage;

    .line 30
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda8;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda8;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onReactionChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessageReactionChange;",
            ">;)V"
        }
    .end annotation

    .line 124
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 126
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMMessageReactionChange;

    .line 127
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageReactionChangeHelper;->toJson(Lcom/hyphenate/chat/EMMessageReactionChange;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 129
    :cond_0
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda4;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda4;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onReadAckForGroupMessageUpdated()V
    .locals 1

    .line 106
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTestGroupMessageRead(Lorg/json/JSONArray;)V
    .locals 1

    .line 185
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda12;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTestReactionChanged(Lorg/json/JSONArray;)V
    .locals 1

    .line 181
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener$$ExternalSyntheticLambda10;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 0

    .line 189
    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMWrapperThreadUtil;->mainThreadExecute(Ljava/lang/Runnable;)V

    return-void
.end method
