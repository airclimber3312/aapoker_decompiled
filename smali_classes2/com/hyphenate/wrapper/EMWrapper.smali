.class public Lcom/hyphenate/wrapper/EMWrapper;
.super Ljava/lang/Object;
.source "EMWrapper.java"


# instance fields
.field public clientWrapper:Lcom/hyphenate/wrapper/EMClientWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMWrapper;->clientWrapper:Lcom/hyphenate/wrapper/EMClientWrapper;

    .line 14
    new-instance v0, Lcom/hyphenate/helper/EMUnityHelper;

    invoke-direct {v0}, Lcom/hyphenate/helper/EMUnityHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public callSDKApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 21
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 22
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 24
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p3, "EMPresenceManager"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    goto/16 :goto_2

    :sswitch_1
    const-string p3, "EMClient"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_2

    :sswitch_2
    const-string p3, "EMRoomManager"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_2

    :sswitch_3
    const-string p3, "EMPushManager"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_2

    :sswitch_4
    const-string p3, "EMConversationManager"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xa

    goto :goto_2

    :sswitch_5
    const-string p3, "EMMessageManager"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    goto :goto_2

    :sswitch_6
    const-string p3, "EMGroupManager"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_2

    :sswitch_7
    const-string p3, "EMContactManager"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_2

    :sswitch_8
    const-string p3, "EMChatManager"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_2

    :sswitch_9
    const-string p3, "EMThreadManager"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    goto :goto_2

    :sswitch_a
    const-string p3, "EMUserInfoManager"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p1, -0x1

    :goto_2
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 56
    :pswitch_0
    iget-object p1, p0, Lcom/hyphenate/wrapper/EMWrapper;->clientWrapper:Lcom/hyphenate/wrapper/EMClientWrapper;

    iget-object p1, p1, Lcom/hyphenate/wrapper/EMClientWrapper;->conversationWrapper:Lcom/hyphenate/wrapper/EMConversationWrapper;

    invoke-virtual {p1, p2, v1, p4}, Lcom/hyphenate/wrapper/EMConversationWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 53
    :pswitch_1
    iget-object p1, p0, Lcom/hyphenate/wrapper/EMWrapper;->clientWrapper:Lcom/hyphenate/wrapper/EMClientWrapper;

    iget-object p1, p1, Lcom/hyphenate/wrapper/EMClientWrapper;->messageManager:Lcom/hyphenate/wrapper/EMMessageManager;

    invoke-virtual {p1, p2, v1, p4}, Lcom/hyphenate/wrapper/EMMessageManager;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 50
    :pswitch_2
    iget-object p1, p0, Lcom/hyphenate/wrapper/EMWrapper;->clientWrapper:Lcom/hyphenate/wrapper/EMClientWrapper;

    iget-object p1, p1, Lcom/hyphenate/wrapper/EMClientWrapper;->pushManagerWrapper:Lcom/hyphenate/wrapper/EMPushManagerWrapper;

    invoke-virtual {p1, p2, v1, p4}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 47
    :pswitch_3
    iget-object p1, p0, Lcom/hyphenate/wrapper/EMWrapper;->clientWrapper:Lcom/hyphenate/wrapper/EMClientWrapper;

    iget-object p1, p1, Lcom/hyphenate/wrapper/EMClientWrapper;->chatThreadManagerWrapper:Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;

    invoke-virtual {p1, p2, v1, p4}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 44
    :pswitch_4
    iget-object p1, p0, Lcom/hyphenate/wrapper/EMWrapper;->clientWrapper:Lcom/hyphenate/wrapper/EMClientWrapper;

    iget-object p1, p1, Lcom/hyphenate/wrapper/EMClientWrapper;->presenceManagerWrapper:Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;

    invoke-virtual {p1, p2, v1, p4}, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 41
    :pswitch_5
    iget-object p1, p0, Lcom/hyphenate/wrapper/EMWrapper;->clientWrapper:Lcom/hyphenate/wrapper/EMClientWrapper;

    iget-object p1, p1, Lcom/hyphenate/wrapper/EMClientWrapper;->userInfoManagerWrapper:Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;

    invoke-virtual {p1, p2, v1, p4}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 38
    :pswitch_6
    iget-object p1, p0, Lcom/hyphenate/wrapper/EMWrapper;->clientWrapper:Lcom/hyphenate/wrapper/EMClientWrapper;

    iget-object p1, p1, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    invoke-virtual {p1, p2, v1, p4}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 35
    :pswitch_7
    iget-object p1, p0, Lcom/hyphenate/wrapper/EMWrapper;->clientWrapper:Lcom/hyphenate/wrapper/EMClientWrapper;

    iget-object p1, p1, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    invoke-virtual {p1, p2, v1, p4}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 32
    :pswitch_8
    iget-object p1, p0, Lcom/hyphenate/wrapper/EMWrapper;->clientWrapper:Lcom/hyphenate/wrapper/EMClientWrapper;

    iget-object p1, p1, Lcom/hyphenate/wrapper/EMClientWrapper;->contactManagerWrapper:Lcom/hyphenate/wrapper/EMContactManagerWrapper;

    invoke-virtual {p1, p2, v1, p4}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 29
    :pswitch_9
    iget-object p1, p0, Lcom/hyphenate/wrapper/EMWrapper;->clientWrapper:Lcom/hyphenate/wrapper/EMClientWrapper;

    iget-object p1, p1, Lcom/hyphenate/wrapper/EMClientWrapper;->chatManagerWrapper:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    invoke-virtual {p1, p2, v1, p4}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 26
    :pswitch_a
    iget-object p1, p0, Lcom/hyphenate/wrapper/EMWrapper;->clientWrapper:Lcom/hyphenate/wrapper/EMClientWrapper;

    invoke-virtual {p1, p2, v1, p4}, Lcom/hyphenate/wrapper/EMClientWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 61
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "error"

    .line 62
    invoke-virtual {p1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    invoke-virtual {p4, p2}, Lcom/hyphenate/wrapper/callback/EMWrapperCallback;->onError(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_3
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x76607374 -> :sswitch_a
        -0x6f46ed85 -> :sswitch_9
        -0x5b97b893 -> :sswitch_8
        -0x5189d1cb -> :sswitch_7
        -0x3b0f2b0a -> :sswitch_6
        -0x38a8f92 -> :sswitch_5
        0x4a9afe2 -> :sswitch_4
        0x2a01cd6b -> :sswitch_3
        0x5066b08a -> :sswitch_2
        0x6168ca93 -> :sswitch_1
        0x6b94d46a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
