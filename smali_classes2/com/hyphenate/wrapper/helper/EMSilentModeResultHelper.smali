.class public Lcom/hyphenate/wrapper/helper/EMSilentModeResultHelper;
.super Ljava/lang/Object;
.source "EMSilentModeResultHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJson(Lcom/hyphenate/chat/EMSilentModeResult;)Lorg/json/JSONObject;
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

    const-string v1, "expireTs"

    .line 12
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSilentModeResult;->getExpireTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSilentModeResult;->getConversationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "conversationId"

    .line 14
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSilentModeResult;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSilentModeResult;->getConversationType()Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSilentModeResult;->getConversationType()Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMConversationHelper;->typeToInt(Lcom/hyphenate/chat/EMConversation$EMConversationType;)I

    move-result v1

    const-string v2, "conversationType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSilentModeResult;->getSilentModeStartTime()Lcom/hyphenate/chat/EMSilentModeTime;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSilentModeResult;->getSilentModeStartTime()Lcom/hyphenate/chat/EMSilentModeTime;

    move-result-object v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMSilentModeTimeHelper;->toJson(Lcom/hyphenate/chat/EMSilentModeTime;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "startTime"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    :cond_3
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSilentModeResult;->getSilentModeEndTime()Lcom/hyphenate/chat/EMSilentModeTime;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 23
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSilentModeResult;->getSilentModeEndTime()Lcom/hyphenate/chat/EMSilentModeTime;

    move-result-object v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMSilentModeTimeHelper;->toJson(Lcom/hyphenate/chat/EMSilentModeTime;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "endTime"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    :cond_4
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSilentModeResult;->getRemindType()Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 25
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSilentModeResult;->getRemindType()Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    move-result-object p0

    invoke-static {p0}, Lcom/hyphenate/wrapper/helper/EMSilentModeParamHelper;->pushRemindTypeToInt(Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;)I

    move-result p0

    const-string v1, "remindType"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    return-object v0
.end method
