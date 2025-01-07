.class public Lcom/hyphenate/wrapper/helper/EMMessageHelper;
.super Ljava/lang/Object;
.source "EMMessageHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chatTypeFromInt(I)Lcom/hyphenate/chat/EMMessage$ChatType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 355
    sget-object p0, Lcom/hyphenate/chat/EMMessage$ChatType;->Chat:Lcom/hyphenate/chat/EMMessage$ChatType;

    return-object p0

    .line 353
    :cond_0
    sget-object p0, Lcom/hyphenate/chat/EMMessage$ChatType;->ChatRoom:Lcom/hyphenate/chat/EMMessage$ChatType;

    return-object p0

    .line 351
    :cond_1
    sget-object p0, Lcom/hyphenate/chat/EMMessage$ChatType;->GroupChat:Lcom/hyphenate/chat/EMMessage$ChatType;

    return-object p0

    .line 349
    :cond_2
    sget-object p0, Lcom/hyphenate/chat/EMMessage$ChatType;->Chat:Lcom/hyphenate/chat/EMMessage$ChatType;

    return-object p0
.end method

.method public static chatTypeToInt(Lcom/hyphenate/chat/EMMessage$ChatType;)I
    .locals 2

    .line 359
    sget-object v0, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$ChatType:[I

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage$ChatType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMMessage;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "body"

    .line 26
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "type"

    .line 27
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "direction"

    .line 28
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 71
    :pswitch_0
    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->COMBINE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v3}, Lcom/hyphenate/chat/EMMessage;->createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v5

    .line 72
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->combineBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMCombineMessageBody;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    goto/16 :goto_0

    .line 66
    :pswitch_1
    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->CUSTOM:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v3}, Lcom/hyphenate/chat/EMMessage;->createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v5

    .line 67
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->customBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMCustomMessageBody;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    goto/16 :goto_0

    .line 61
    :pswitch_2
    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->CMD:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v3}, Lcom/hyphenate/chat/EMMessage;->createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v5

    .line 62
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->cmdBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMCmdMessageBody;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    goto :goto_0

    .line 56
    :pswitch_3
    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->FILE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v3}, Lcom/hyphenate/chat/EMMessage;->createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v5

    .line 57
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->fileBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMFileMessageBody;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    goto :goto_0

    .line 51
    :pswitch_4
    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->VOICE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v3}, Lcom/hyphenate/chat/EMMessage;->createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v5

    .line 52
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->voiceBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMVoiceMessageBody;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    goto :goto_0

    .line 41
    :pswitch_5
    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->LOCATION:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v3}, Lcom/hyphenate/chat/EMMessage;->createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v5

    .line 42
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->localBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMLocationMessageBody;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    goto :goto_0

    .line 46
    :pswitch_6
    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->VIDEO:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v3}, Lcom/hyphenate/chat/EMMessage;->createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v5

    .line 47
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->videoBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMVideoMessageBody;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    goto :goto_0

    .line 36
    :pswitch_7
    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->IMAGE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v3}, Lcom/hyphenate/chat/EMMessage;->createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v5

    .line 37
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->imageBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMImageMessageBody;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    goto :goto_0

    .line 31
    :pswitch_8
    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->TXT:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v3}, Lcom/hyphenate/chat/EMMessage;->createSendMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v5

    .line 32
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->textBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMTextMessageBody;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    :goto_0
    if-eqz v5, :cond_1

    .line 79
    sget-object v0, Lcom/hyphenate/chat/EMMessage$Direct;->SEND:Lcom/hyphenate/chat/EMMessage$Direct;

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->setDirection(Lcom/hyphenate/chat/EMMessage$Direct;)V

    goto/16 :goto_2

    :cond_0
    packed-switch v3, :pswitch_data_1

    goto/16 :goto_1

    .line 124
    :pswitch_9
    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->COMBINE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/hyphenate/chat/EMMessage;->createReceiveMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v5

    .line 125
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->combineBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMCombineMessageBody;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    goto/16 :goto_1

    .line 119
    :pswitch_a
    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->CUSTOM:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/hyphenate/chat/EMMessage;->createReceiveMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v5

    .line 120
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->customBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMCustomMessageBody;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    goto :goto_1

    .line 114
    :pswitch_b
    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->CMD:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/hyphenate/chat/EMMessage;->createReceiveMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v5

    .line 115
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->cmdBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMCmdMessageBody;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    goto :goto_1

    .line 109
    :pswitch_c
    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->FILE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/hyphenate/chat/EMMessage;->createReceiveMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v5

    .line 110
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->fileBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMFileMessageBody;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    goto :goto_1

    .line 104
    :pswitch_d
    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->VOICE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/hyphenate/chat/EMMessage;->createReceiveMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v5

    .line 105
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->voiceBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMVoiceMessageBody;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    goto :goto_1

    .line 94
    :pswitch_e
    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->LOCATION:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/hyphenate/chat/EMMessage;->createReceiveMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v5

    .line 95
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->localBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMLocationMessageBody;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    goto :goto_1

    .line 99
    :pswitch_f
    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->VIDEO:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/hyphenate/chat/EMMessage;->createReceiveMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v5

    .line 100
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->videoBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMVideoMessageBody;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    goto :goto_1

    .line 89
    :pswitch_10
    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->IMAGE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/hyphenate/chat/EMMessage;->createReceiveMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v5

    .line 90
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->imageBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMImageMessageBody;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    goto :goto_1

    .line 84
    :pswitch_11
    sget-object v0, Lcom/hyphenate/chat/EMMessage$Type;->TXT:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-static {v0}, Lcom/hyphenate/chat/EMMessage;->createReceiveMessage(Lcom/hyphenate/chat/EMMessage$Type;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v5

    .line 85
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->textBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMTextMessageBody;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->addBody(Lcom/hyphenate/chat/EMMessageBody;)V

    :goto_1
    if-eqz v5, :cond_1

    .line 130
    sget-object v0, Lcom/hyphenate/chat/EMMessage$Direct;->RECEIVE:Lcom/hyphenate/chat/EMMessage$Direct;

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->setDirection(Lcom/hyphenate/chat/EMMessage$Direct;)V

    :cond_1
    :goto_2
    const-string v0, "to"

    .line 134
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->setTo(Ljava/lang/String;)V

    :cond_2
    const-string v0, "isRead"

    .line 138
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 139
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v5, v1}, Lcom/hyphenate/chat/EMMessage;->setUnread(Z)V

    :cond_3
    const-string v1, "from"

    .line 142
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 143
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/hyphenate/chat/EMMessage;->setFrom(Ljava/lang/String;)V

    :cond_4
    const-string v1, "hasReadAck"

    .line 146
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v5, v1}, Lcom/hyphenate/chat/EMMessage;->setAcked(Z)V

    const-string v1, "status"

    .line 147
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->statusFromInt(I)Lcom/hyphenate/chat/EMMessage$Status;

    move-result-object v4

    sget-object v6, Lcom/hyphenate/chat/EMMessage$Status;->SUCCESS:Lcom/hyphenate/chat/EMMessage$Status;

    if-ne v4, v6, :cond_5

    .line 148
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->setUnread(Z)V

    :cond_5
    const-string v0, "hasDeliverAck"

    .line 150
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->setDeliverAcked(Z)V

    const-string v0, "isNeedGroupAck"

    .line 151
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->setIsNeedGroupAck(Z)V

    const-string v0, "groupAckCount"

    .line 152
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 153
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->setGroupAckCount(I)V

    :cond_6
    const-string v0, "receiverList"

    .line 156
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 157
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->setReceiverList(Ljava/util/List;)V

    :cond_7
    const-string v0, "isThread"

    .line 160
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->setIsChatThreadMessage(Z)V

    const-string v0, "localTime"

    .line 162
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/hyphenate/chat/EMMessage;->setLocalTime(J)V

    const-string v0, "serverTime"

    .line 163
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 164
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/hyphenate/chat/EMMessage;->setMsgTime(J)V

    .line 166
    :cond_8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->statusFromInt(I)Lcom/hyphenate/chat/EMMessage$Status;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->setStatus(Lcom/hyphenate/chat/EMMessage$Status;)V

    const-string v0, "chatType"

    .line 167
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->chatTypeFromInt(I)Lcom/hyphenate/chat/EMMessage$ChatType;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->setChatType(Lcom/hyphenate/chat/EMMessage$ChatType;)V

    const-string v0, "msgId"

    .line 168
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 169
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->setMsgId(Ljava/lang/String;)V

    :cond_9
    const-string v0, "priority"

    .line 172
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 173
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 175
    sget-object v0, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;->PriorityHigh:Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->setPriority(Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;)V

    goto :goto_3

    :cond_a
    if-ne v0, v3, :cond_b

    .line 177
    sget-object v0, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;->PriorityNormal:Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->setPriority(Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;)V

    goto :goto_3

    :cond_b
    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 179
    sget-object v0, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;->PriorityLow:Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->setPriority(Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;)V

    :cond_c
    :goto_3
    const-string v0, "deliverOnlineOnly"

    .line 183
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 184
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/hyphenate/chat/EMMessage;->deliverOnlineOnly(Z)V

    :cond_d
    const-string v0, "attr"

    .line 187
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 188
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 189
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 190
    :cond_e
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 193
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "value"

    .line 194
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "b"

    .line 195
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v6, "false"

    .line 196
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    .line 197
    invoke-virtual {v5, v1, v4}, Lcom/hyphenate/chat/EMMessage;->setAttribute(Ljava/lang/String;Z)V

    goto :goto_4

    .line 199
    :cond_f
    invoke-virtual {v5, v1, v3}, Lcom/hyphenate/chat/EMMessage;->setAttribute(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_10
    const-string v7, "l"

    .line 201
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 202
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v1, v6, v7}, Lcom/hyphenate/chat/EMMessage;->setAttribute(Ljava/lang/String;J)V

    goto :goto_4

    :cond_11
    const-string v7, "f"

    .line 203
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 204
    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5, v1, v4}, Lcom/hyphenate/chat/EMMessage;->setAttribute(Ljava/lang/String;F)V

    goto :goto_4

    :cond_12
    const-string v7, "d"

    .line 205
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 206
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v1, v6, v7}, Lcom/hyphenate/chat/EMMessage;->setAttribute(Ljava/lang/String;D)V

    goto :goto_4

    :cond_13
    const-string v7, "i"

    .line 207
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 208
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v1, v4}, Lcom/hyphenate/chat/EMMessage;->setAttribute(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_14
    const-string v7, "str"

    .line 209
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 210
    invoke-virtual {v5, v1, v4}, Lcom/hyphenate/chat/EMMessage;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_15
    const-string v7, "jstr"

    .line 211
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 215
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v5, v1, v6}, Lcom/hyphenate/chat/EMMessage;->setAttribute(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 221
    :catch_0
    :try_start_1
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v5, v1, v6}, Lcom/hyphenate/chat/EMMessage;->setAttribute(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    nop

    goto/16 :goto_4

    :cond_16
    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static statusFromInt(I)Lcom/hyphenate/chat/EMMessage$Status;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 381
    sget-object p0, Lcom/hyphenate/chat/EMMessage$Status;->CREATE:Lcom/hyphenate/chat/EMMessage$Status;

    return-object p0

    .line 379
    :cond_0
    sget-object p0, Lcom/hyphenate/chat/EMMessage$Status;->FAIL:Lcom/hyphenate/chat/EMMessage$Status;

    return-object p0

    .line 377
    :cond_1
    sget-object p0, Lcom/hyphenate/chat/EMMessage$Status;->SUCCESS:Lcom/hyphenate/chat/EMMessage$Status;

    return-object p0

    .line 375
    :cond_2
    sget-object p0, Lcom/hyphenate/chat/EMMessage$Status;->INPROGRESS:Lcom/hyphenate/chat/EMMessage$Status;

    return-object p0

    .line 373
    :cond_3
    sget-object p0, Lcom/hyphenate/chat/EMMessage$Status;->CREATE:Lcom/hyphenate/chat/EMMessage$Status;

    return-object p0
.end method

.method public static statusToInt(Lcom/hyphenate/chat/EMMessage$Status;)I
    .locals 2

    .line 385
    sget-object v0, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$Status:[I

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage$Status;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 235
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 236
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 237
    sget-object v2, Lcom/hyphenate/wrapper/helper/EMMessageHelper$1;->$SwitchMap$com$hyphenate$chat$EMMessage$Type:[I

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getType()Lcom/hyphenate/chat/EMMessage$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "body"

    const-string v6, "type"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 279
    :pswitch_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getBody()Lcom/hyphenate/chat/EMMessageBody;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/EMCombineMessageBody;

    invoke-static {v2}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->combineBodyToJson(Lcom/hyphenate/chat/EMCombineMessageBody;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v2, 0x8

    .line 280
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 274
    :pswitch_1
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getBody()Lcom/hyphenate/chat/EMMessageBody;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/EMVoiceMessageBody;

    invoke-static {v2}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->voiceBodyToJson(Lcom/hyphenate/chat/EMVoiceMessageBody;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x4

    .line 275
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 269
    :pswitch_2
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getBody()Lcom/hyphenate/chat/EMMessageBody;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/EMVideoMessageBody;

    invoke-static {v2}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->videoBodyToJson(Lcom/hyphenate/chat/EMVideoMessageBody;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x2

    .line 270
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 264
    :pswitch_3
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getBody()Lcom/hyphenate/chat/EMMessageBody;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/EMNormalFileMessageBody;

    invoke-static {v2}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->fileBodyToJson(Lcom/hyphenate/chat/EMNormalFileMessageBody;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x5

    .line 265
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 259
    :pswitch_4
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getBody()Lcom/hyphenate/chat/EMMessageBody;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/EMCustomMessageBody;

    invoke-static {v2}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->customBodyToJson(Lcom/hyphenate/chat/EMCustomMessageBody;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x7

    .line 260
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 254
    :pswitch_5
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getBody()Lcom/hyphenate/chat/EMMessageBody;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/EMCmdMessageBody;

    invoke-static {v2}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->cmdBodyToJson(Lcom/hyphenate/chat/EMCmdMessageBody;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x6

    .line 255
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 249
    :pswitch_6
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getBody()Lcom/hyphenate/chat/EMMessageBody;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/EMLocationMessageBody;

    invoke-static {v2}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->localBodyToJson(Lcom/hyphenate/chat/EMLocationMessageBody;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x3

    .line 250
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 244
    :pswitch_7
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getBody()Lcom/hyphenate/chat/EMMessageBody;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/EMImageMessageBody;

    invoke-static {v2}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->imageBodyToJson(Lcom/hyphenate/chat/EMImageMessageBody;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 239
    :pswitch_8
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getBody()Lcom/hyphenate/chat/EMMessageBody;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/EMTextMessageBody;

    invoke-static {v2}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->textBodyToJson(Lcom/hyphenate/chat/EMTextMessageBody;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 284
    :goto_0
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->ext()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->ext()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 286
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->ext()Ljava/util/Map;

    move-result-object v1

    .line 287
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 288
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 289
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 290
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 291
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 292
    instance-of v9, v5, Ljava/lang/String;

    const-string v10, "value"

    if-eqz v9, :cond_1

    const-string v9, "str"

    .line 293
    invoke-virtual {v8, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    invoke-virtual {v8, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 295
    :cond_1
    instance-of v9, v5, Ljava/lang/Integer;

    if-eqz v9, :cond_2

    const-string v9, "i"

    .line 296
    invoke-virtual {v8, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    invoke-virtual {v8, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 298
    :cond_2
    instance-of v9, v5, Ljava/lang/Float;

    if-eqz v9, :cond_3

    const-string v9, "f"

    .line 299
    invoke-virtual {v8, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    invoke-virtual {v8, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 301
    :cond_3
    instance-of v9, v5, Ljava/lang/Double;

    if-eqz v9, :cond_4

    const-string v9, "d"

    .line 302
    invoke-virtual {v8, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    invoke-virtual {v8, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 304
    :cond_4
    instance-of v9, v5, Ljava/lang/Long;

    if-eqz v9, :cond_5

    const-string v9, "l"

    .line 305
    invoke-virtual {v8, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    invoke-virtual {v8, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 307
    :cond_5
    instance-of v9, v5, Ljava/lang/Boolean;

    if-eqz v9, :cond_7

    const-string v9, "b"

    .line 308
    invoke-virtual {v8, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    check-cast v5, Ljava/lang/Boolean;

    .line 310
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "True"

    .line 311
    invoke-virtual {v8, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_6
    const-string v5, "False"

    .line 313
    invoke-virtual {v8, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 315
    :cond_7
    instance-of v9, v5, Lorg/json/JSONArray;

    if-nez v9, :cond_8

    instance-of v9, v5, Lorg/json/JSONObject;

    if-eqz v9, :cond_9

    :cond_8
    const-string v9, "jstr"

    .line 316
    invoke-virtual {v8, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    invoke-virtual {v8, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    :cond_9
    :goto_2
    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    :cond_a
    const-string v1, "attr"

    .line 321
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    const-string v1, "from"

    .line 323
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "to"

    .line 324
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hasReadAck"

    .line 325
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->isAcked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "hasDeliverAck"

    .line 326
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->isDelivered()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "localTime"

    .line 327
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->localTime()J

    move-result-wide v5

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "serverTime"

    .line 328
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getMsgTime()J

    move-result-wide v5

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 329
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->status()Lcom/hyphenate/chat/EMMessage$Status;

    move-result-object v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->statusToInt(Lcom/hyphenate/chat/EMMessage$Status;)I

    move-result v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 330
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getChatType()Lcom/hyphenate/chat/EMMessage$ChatType;

    move-result-object v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->chatTypeToInt(Lcom/hyphenate/chat/EMMessage$ChatType;)I

    move-result v1

    const-string v2, "chatType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 331
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->direct()Lcom/hyphenate/chat/EMMessage$Direct;

    move-result-object v1

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Direct;->SEND:Lcom/hyphenate/chat/EMMessage$Direct;

    if-ne v1, v2, :cond_c

    goto :goto_3

    :cond_c
    const/4 v3, 0x1

    :goto_3
    const-string v1, "direction"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "convId"

    .line 332
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "msgId"

    .line 333
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->isUnread()Z

    move-result v1

    xor-int/2addr v1, v4

    const-string v2, "isRead"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isNeedGroupAck"

    .line 335
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->isNeedGroupAck()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "messageOnlineState"

    .line 336
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->isOnlineState()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isThread"

    .line 339
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->isChatThreadMessage()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "deliverOnlineOnly"

    .line 340
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->isDeliverOnlineOnly()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "broadcast"

    .line 341
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->isBroadcast()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isContentReplaced"

    .line 342
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->isContentReplaced()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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
