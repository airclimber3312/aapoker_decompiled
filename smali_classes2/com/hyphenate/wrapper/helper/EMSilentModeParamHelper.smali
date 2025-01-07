.class public Lcom/hyphenate/wrapper/helper/EMSilentModeParamHelper;
.super Ljava/lang/Object;
.source "EMSilentModeParamHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMSilentModeParam;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "paramType"

    .line 13
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMSilentModeParamHelper;->paramTypeFromInt(I)Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/hyphenate/chat/EMSilentModeParam;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMSilentModeParam;-><init>(Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;)V

    const-string v0, "startTime"

    .line 15
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "endTime"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMSilentModeTimeHelper;->fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMSilentModeTime;

    move-result-object v0

    .line 17
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/hyphenate/wrapper/helper/EMSilentModeTimeHelper;->fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMSilentModeTime;

    move-result-object v2

    .line 18
    invoke-virtual {v1, v0, v2}, Lcom/hyphenate/chat/EMSilentModeParam;->setSilentModeInterval(Lcom/hyphenate/chat/EMSilentModeTime;Lcom/hyphenate/chat/EMSilentModeTime;)Lcom/hyphenate/chat/EMSilentModeParam;

    :cond_0
    const-string v0, "remindType"

    .line 21
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMSilentModeParamHelper;->pushRemindFromInt(I)Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/EMSilentModeParam;->setRemindType(Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;)Lcom/hyphenate/chat/EMSilentModeParam;

    :cond_1
    const-string v0, "duration"

    .line 25
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 26
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 27
    invoke-virtual {v1, p0}, Lcom/hyphenate/chat/EMSilentModeParam;->setSilentModeDuration(I)Lcom/hyphenate/chat/EMSilentModeParam;

    :cond_2
    return-object v1
.end method

.method public static paramTypeFromInt(I)Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;
    .locals 2

    .line 33
    sget-object v0, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;->REMIND_TYPE:Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    if-nez p0, :cond_0

    .line 35
    sget-object v0, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;->REMIND_TYPE:Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 37
    sget-object v0, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;->SILENT_MODE_DURATION:Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 39
    sget-object v0, Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;->SILENT_MODE_INTERVAL:Lcom/hyphenate/chat/EMSilentModeParam$EMSilentModeParamType;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static pushRemindFromInt(I)Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;
    .locals 2

    .line 57
    sget-object v0, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->ALL:Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    if-nez p0, :cond_0

    .line 59
    sget-object v0, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->ALL:Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 61
    sget-object v0, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->MENTION_ONLY:Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 63
    sget-object v0, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->NONE:Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static pushRemindTypeToInt(Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;)I
    .locals 2

    .line 46
    sget-object v0, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->ALL:Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    sget-object v0, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->MENTION_ONLY:Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 50
    :cond_1
    sget-object v0, Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;->NONE:Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;

    if-ne p0, v0, :cond_2

    const/4 v1, 0x2

    :cond_2
    :goto_0
    return v1
.end method
