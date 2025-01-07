.class public Lcom/hyphenate/wrapper/helper/EMOptionsHelper;
.super Ljava/lang/Object;
.source "EMOptionsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;Landroid/content/Context;)Lcom/hyphenate/chat/EMOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 13
    new-instance v0, Lcom/hyphenate/chat/EMOptions;

    invoke-direct {v0}, Lcom/hyphenate/chat/EMOptions;-><init>()V

    const-string v1, "appKey"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setAppKey(Ljava/lang/String;)V

    const-string v1, "autoLogin"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setAutoLogin(Z)V

    const-string v1, "requireAck"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setRequireAck(Z)V

    const-string v1, "requireDeliveryAck"

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setRequireDeliveryAck(Z)V

    const-string v1, "sortMessageByServerTime"

    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setSortMessageByServerTime(Z)V

    const-string v1, "acceptInvitationAlways"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setAcceptInvitationAlways(Z)V

    const-string v1, "autoAcceptGroupInvitation"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setAutoAcceptGroupInvitation(Z)V

    const-string v1, "deleteMessagesAsExitGroup"

    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setDeleteMessagesAsExitGroup(Z)V

    const-string v1, "deleteMessagesAsExitRoom"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setDeleteMessagesAsExitChatRoom(Z)V

    const-string v1, "isAutoDownload"

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setAutoDownloadThumbnail(Z)V

    const-string v1, "isRoomOwnerLeaveAllowed"

    .line 24
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->allowChatroomOwnerLeave(Z)V

    const-string v1, "serverTransfer"

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setAutoTransferMessageAttachments(Z)V

    const-string v1, "areaCode"

    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setAreaCode(I)V

    const-string v1, "usingHttpsOnly"

    .line 27
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setUsingHttpsOnly(Z)V

    const-string v1, "enableDnsConfig"

    .line 28
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hyphenate/chat/EMOptions;->enableDNSConfig(Z)V

    .line 29
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "imPort"

    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setImPort(I)V

    :cond_0
    const-string v1, "imServer"

    .line 33
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setIMServer(Ljava/lang/String;)V

    :cond_1
    const-string v1, "restServer"

    .line 36
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setRestServer(Ljava/lang/String;)V

    :cond_2
    const-string v1, "dnsUrl"

    .line 39
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 40
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setDnsUrl(Ljava/lang/String;)V

    :cond_3
    const-string v1, "enableEmptyConversation"

    .line 43
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 44
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setLoadEmptyConversations(Z)V

    :cond_4
    const-string v1, "useReplacedMessageContents"

    .line 46
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 47
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setUseReplacedMessageContents(Z)V

    :cond_5
    const-string v1, "deviceName"

    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 50
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setCustomDeviceName(Ljava/lang/String;)V

    :cond_6
    const-string v1, "osType"

    .line 52
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 53
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setCustomOSPlatform(I)V

    :cond_7
    const-string v1, "regardImportMsgAsRead"

    .line 55
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 56
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setRegardImportedMsgAsRead(Z)V

    :cond_8
    const-string v1, "includeSendMessageInMessageListener"

    .line 58
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 59
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMOptions;->setIncludeSendMessageInMessageListener(Z)V

    :cond_9
    const-string v1, "pushConfig"

    .line 62
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 63
    new-instance v2, Lcom/hyphenate/push/EMPushConfig$Builder;

    invoke-direct {v2, p1}, Lcom/hyphenate/push/EMPushConfig$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "enableMiPush"

    .line 65
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "miAppId"

    .line 66
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "miAppKey"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/hyphenate/push/EMPushConfig$Builder;->enableMiPush(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/push/EMPushConfig$Builder;

    :cond_a
    const-string p1, "enableFCM"

    .line 68
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "fcmId"

    .line 69
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/hyphenate/push/EMPushConfig$Builder;->enableFCM(Ljava/lang/String;)Lcom/hyphenate/push/EMPushConfig$Builder;

    :cond_b
    const-string p1, "enableOppoPush"

    .line 71
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "oppoAppKey"

    .line 72
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "oppoAppSecret"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/hyphenate/push/EMPushConfig$Builder;->enableOppoPush(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/push/EMPushConfig$Builder;

    :cond_c
    const-string p1, "enableHWPush"

    .line 74
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 75
    invoke-virtual {v2}, Lcom/hyphenate/push/EMPushConfig$Builder;->enableHWPush()Lcom/hyphenate/push/EMPushConfig$Builder;

    :cond_d
    const-string p1, "enableMeiZuPush"

    .line 77
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "mzAppId"

    .line 78
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mzAppKey"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/hyphenate/push/EMPushConfig$Builder;->enableMeiZuPush(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/push/EMPushConfig$Builder;

    :cond_e
    const-string p1, "enableVivoPush"

    .line 80
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 81
    invoke-virtual {v2}, Lcom/hyphenate/push/EMPushConfig$Builder;->enableVivoPush()Lcom/hyphenate/push/EMPushConfig$Builder;

    .line 83
    :cond_f
    invoke-virtual {v2}, Lcom/hyphenate/push/EMPushConfig$Builder;->build()Lcom/hyphenate/push/EMPushConfig;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hyphenate/chat/EMOptions;->setPushConfig(Lcom/hyphenate/push/EMPushConfig;)V

    :cond_10
    return-object v0
.end method
