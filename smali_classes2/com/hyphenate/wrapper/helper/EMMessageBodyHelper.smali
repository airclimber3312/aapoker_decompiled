.class public Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;
.super Ljava/lang/Object;
.source "EMMessageBodyHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bodyToJson(Lcom/hyphenate/chat/EMMessageBody;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "operationCount"

    .line 33
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessageBody;->operationCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "operationTime"

    .line 34
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessageBody;->operationTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "operatorId"

    .line 35
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessageBody;->operatorId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static cmdBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMCmdMessageBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "action"

    .line 102
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deliverOnlineOnly"

    .line 103
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 105
    new-instance v1, Lcom/hyphenate/chat/EMCmdMessageBody;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMCmdMessageBody;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, p0}, Lcom/hyphenate/chat/EMCmdMessageBody;->deliverOnlineOnly(Z)V

    return-object v1
.end method

.method public static cmdBodyToJson(Lcom/hyphenate/chat/EMCmdMessageBody;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->bodyToJson(Lcom/hyphenate/chat/EMMessageBody;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "deliverOnlineOnly"

    .line 114
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMCmdMessageBody;->isDeliverOnlineOnly()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "action"

    .line 115
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMCmdMessageBody;->action()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static combineBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMCombineMessageBody;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "title"

    .line 347
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-string v1, "summary"

    .line 351
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v3, "compatibleText"

    .line 355
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 356
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    const-string v4, "messageList"

    .line 358
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    const-string v5, "remotePath"

    .line 361
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 362
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v2

    :goto_3
    const-string v6, "secret"

    .line 365
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 366
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object v6, v2

    :goto_4
    const-string v7, "localPath"

    .line 369
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 370
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    :cond_5
    new-instance p0, Lcom/hyphenate/chat/EMCombineMessageBody;

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/hyphenate/chat/EMCombineMessageBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 374
    invoke-virtual {p0, v5}, Lcom/hyphenate/chat/EMCombineMessageBody;->setRemoteUrl(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0, v6}, Lcom/hyphenate/chat/EMCombineMessageBody;->setSecret(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0, v2}, Lcom/hyphenate/chat/EMCombineMessageBody;->setLocalUrl(Ljava/lang/String;)V

    return-object p0
.end method

.method public static combineBodyToJson(Lcom/hyphenate/chat/EMCombineMessageBody;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 382
    :cond_0
    invoke-static {p0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->bodyToJson(Lcom/hyphenate/chat/EMMessageBody;)Lorg/json/JSONObject;

    move-result-object v0

    .line 383
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMCombineMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remotePath"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "secret"

    .line 384
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMCombineMessageBody;->getSecret()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "localPath"

    .line 385
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMCombineMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    .line 386
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMCombineMessageBody;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "summary"

    .line 387
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMCombineMessageBody;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "compatibleText"

    .line 388
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMCombineMessageBody;->getCompatibleText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMCombineMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static customBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMCustomMessageBody;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "event"

    .line 120
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/hyphenate/chat/EMCustomMessageBody;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMCustomMessageBody;-><init>(Ljava/lang/String;)V

    const-string v0, "params"

    .line 123
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    .line 124
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 127
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/EMCustomMessageBody;->setParams(Ljava/util/Map;)V

    :cond_1
    return-object v1
.end method

.method public static customBodyToJson(Lcom/hyphenate/chat/EMCustomMessageBody;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 138
    :cond_0
    invoke-static {p0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->bodyToJson(Lcom/hyphenate/chat/EMMessageBody;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "event"

    .line 139
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMCustomMessageBody;->event()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMCustomMessageBody;->getParams()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 141
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 142
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMCustomMessageBody;->getParams()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string p0, "params"

    .line 145
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-object v0
.end method

.method public static downloadStatusFromInt(I)Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 404
    sget-object p0, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->DOWNLOADING:Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    return-object p0

    .line 402
    :cond_0
    sget-object p0, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->PENDING:Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    return-object p0

    .line 400
    :cond_1
    sget-object p0, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->FAILED:Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    return-object p0

    .line 398
    :cond_2
    sget-object p0, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->SUCCESSED:Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    return-object p0

    .line 396
    :cond_3
    sget-object p0, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->DOWNLOADING:Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    return-object p0
.end method

.method public static downloadStatusToInt(Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;)I
    .locals 2

    .line 408
    sget-object v0, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper$1;->$SwitchMap$com$hyphenate$chat$EMFileMessageBody$EMDownloadStatus:[I

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;->ordinal()I

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

.method public static fileBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMFileMessageBody;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "localPath"

    .line 151
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/hyphenate/chat/EMNormalFileMessageBody;

    invoke-direct {v0, v1}, Lcom/hyphenate/chat/EMNormalFileMessageBody;-><init>(Ljava/io/File;)V

    const-string v1, "displayName"

    .line 155
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMNormalFileMessageBody;->setFileName(Ljava/lang/String;)V

    :cond_0
    const-string v1, "remotePath"

    .line 158
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMNormalFileMessageBody;->setRemoteUrl(Ljava/lang/String;)V

    :cond_1
    const-string v1, "secret"

    .line 161
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMNormalFileMessageBody;->setSecret(Ljava/lang/String;)V

    :cond_2
    const-string v1, "fileStatus"

    .line 164
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->downloadStatusFromInt(I)Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMNormalFileMessageBody;->setDownloadStatus(Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;)V

    const-string v1, "fileSize"

    .line 165
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/EMNormalFileMessageBody;->setFileLength(J)V

    :cond_3
    return-object v0
.end method

.method public static fileBodyToJson(Lcom/hyphenate/chat/EMNormalFileMessageBody;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_0
    invoke-static {p0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->bodyToJson(Lcom/hyphenate/chat/EMMessageBody;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "localPath"

    .line 175
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMNormalFileMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fileSize"

    .line 176
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMNormalFileMessageBody;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "displayName"

    .line 177
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMNormalFileMessageBody;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "remotePath"

    .line 178
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMNormalFileMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "secret"

    .line 179
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMNormalFileMessageBody;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMNormalFileMessageBody;->downloadStatus()Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    move-result-object p0

    invoke-static {p0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->downloadStatusToInt(Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;)I

    move-result p0

    const-string v1, "fileStatus"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static imageBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMImageMessageBody;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "localPath"

    .line 185
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/hyphenate/chat/EMImageMessageBody;

    invoke-direct {v0, v1}, Lcom/hyphenate/chat/EMImageMessageBody;-><init>(Ljava/io/File;)V

    const-string v1, "displayName"

    .line 189
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMImageMessageBody;->setFileName(Ljava/lang/String;)V

    :cond_0
    const-string v1, "remotePath"

    .line 192
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMImageMessageBody;->setRemoteUrl(Ljava/lang/String;)V

    :cond_1
    const-string v1, "secret"

    .line 195
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMImageMessageBody;->setSecret(Ljava/lang/String;)V

    :cond_2
    const-string v1, "thumbnailLocalPath"

    .line 198
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMImageMessageBody;->setThumbnailLocalPath(Ljava/lang/String;)V

    :cond_3
    const-string v1, "thumbnailRemotePath"

    .line 201
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 202
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMImageMessageBody;->setThumbnailUrl(Ljava/lang/String;)V

    :cond_4
    const-string v1, "thumbnailSecret"

    .line 204
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 205
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMImageMessageBody;->setThumbnailSecret(Ljava/lang/String;)V

    :cond_5
    const-string v1, "fileSize"

    .line 207
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 208
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/EMImageMessageBody;->setFileLength(J)V

    :cond_6
    const-string v1, "width"

    .line 210
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "height"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 211
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 212
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 213
    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/EMImageMessageBody;->setThumbnailSize(II)V

    :cond_7
    const-string v1, "sendOriginalImage"

    .line 215
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 216
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMImageMessageBody;->setSendOriginalImage(Z)V

    :cond_8
    const-string v1, "fileStatus"

    .line 219
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 220
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->downloadStatusFromInt(I)Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hyphenate/chat/EMImageMessageBody;->setDownloadStatus(Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;)V

    :cond_9
    return-object v0
.end method

.method public static imageBodyToJson(Lcom/hyphenate/chat/EMImageMessageBody;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 232
    :cond_0
    invoke-static {p0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->bodyToJson(Lcom/hyphenate/chat/EMMessageBody;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "localPath"

    .line 233
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMImageMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "displayName"

    .line 234
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMImageMessageBody;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "remotePath"

    .line 235
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMImageMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "secret"

    .line 236
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMImageMessageBody;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMImageMessageBody;->downloadStatus()Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    move-result-object v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->downloadStatusToInt(Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;)I

    move-result v1

    const-string v2, "fileStatus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "thumbnailLocalPath"

    .line 238
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMImageMessageBody;->thumbnailLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "thumbnailRemotePath"

    .line 239
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMImageMessageBody;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "thumbnailSecret"

    .line 240
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMImageMessageBody;->getThumbnailSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMImageMessageBody;->thumbnailDownloadStatus()Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    move-result-object v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->downloadStatusToInt(Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;)I

    move-result v1

    const-string v2, "thumbnailStatus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "height"

    .line 242
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMImageMessageBody;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "width"

    .line 243
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMImageMessageBody;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sendOriginalImage"

    .line 244
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMImageMessageBody;->isSendOriginalImage()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "fileSize"

    .line 245
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMImageMessageBody;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static localBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMLocationMessageBody;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "latitude"

    .line 74
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string v0, "longitude"

    .line 75
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-string v0, "address"

    .line 78
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-string v1, "buildingName"

    .line 82
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 83
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v7, p0

    goto :goto_1

    :cond_1
    move-object v7, v2

    .line 86
    :goto_1
    new-instance p0, Lcom/hyphenate/chat/EMLocationMessageBody;

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/hyphenate/chat/EMLocationMessageBody;-><init>(Ljava/lang/String;DDLjava/lang/String;)V

    return-object p0
.end method

.method public static localBodyToJson(Lcom/hyphenate/chat/EMLocationMessageBody;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_0
    invoke-static {p0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->bodyToJson(Lcom/hyphenate/chat/EMMessageBody;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "latitude"

    .line 94
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMLocationMessageBody;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "longitude"

    .line 95
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMLocationMessageBody;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "buildingName"

    .line 96
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMLocationMessageBody;->getBuildingName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "address"

    .line 97
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMLocationMessageBody;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static textBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMTextMessageBody;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "content"

    .line 40
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "targetLanguages"

    .line 42
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v2, 0x0

    .line 44
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 45
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Lcom/hyphenate/chat/EMTextMessageBody;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMTextMessageBody;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, v1}, Lcom/hyphenate/chat/EMTextMessageBody;->setTargetLanguages(Ljava/util/List;)V

    return-object p0
.end method

.method public static textBodyToJson(Lcom/hyphenate/chat/EMTextMessageBody;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->bodyToJson(Lcom/hyphenate/chat/EMMessageBody;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "content"

    .line 56
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMTextMessageBody;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMTextMessageBody;->getTargetLanguages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "targetLanguages"

    .line 58
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMTextMessageBody;->getTargetLanguages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMTextMessageBody;->getTranslations()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 61
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMTextMessageBody;->getTranslations()Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x0

    .line 63
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 64
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hyphenate/chat/EMTextMessageBody$EMTranslationInfo;

    iget-object v3, v3, Lcom/hyphenate/chat/EMTextMessageBody$EMTranslationInfo;->languageCode:Ljava/lang/String;

    .line 65
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hyphenate/chat/EMTextMessageBody$EMTranslationInfo;

    iget-object v4, v4, Lcom/hyphenate/chat/EMTextMessageBody$EMTranslationInfo;->translationText:Ljava/lang/String;

    .line 66
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "translations"

    .line 68
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    return-object v0
.end method

.method public static videoBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMVideoMessageBody;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "localPath"

    .line 250
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "duration"

    .line 251
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 252
    new-instance v0, Lcom/hyphenate/chat/EMVideoMessageBody;

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMVideoMessageBody;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    const-string v1, "thumbnailRemotePath"

    .line 254
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMVideoMessageBody;->setThumbnailUrl(Ljava/lang/String;)V

    :cond_0
    const-string v1, "thumbnailLocalPath"

    .line 257
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMVideoMessageBody;->setLocalThumb(Ljava/lang/String;)V

    :cond_1
    const-string v1, "thumbnailSecret"

    .line 260
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMVideoMessageBody;->setThumbnailSecret(Ljava/lang/String;)V

    :cond_2
    const-string v1, "displayName"

    .line 263
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 264
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMVideoMessageBody;->setFileName(Ljava/lang/String;)V

    :cond_3
    const-string v1, "remotePath"

    .line 266
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 267
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMVideoMessageBody;->setRemoteUrl(Ljava/lang/String;)V

    :cond_4
    const-string v1, "secret"

    .line 269
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 270
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMVideoMessageBody;->setSecret(Ljava/lang/String;)V

    :cond_5
    const-string v1, "fileSize"

    .line 272
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 273
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/EMVideoMessageBody;->setVideoFileLength(J)V

    :cond_6
    const-string v1, "fileStatus"

    .line 276
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 277
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->downloadStatusFromInt(I)Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMVideoMessageBody;->setDownloadStatus(Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;)V

    :cond_7
    const-string v1, "width"

    .line 280
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "height"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 281
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 282
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 283
    invoke-virtual {v0, v1, p0}, Lcom/hyphenate/chat/EMVideoMessageBody;->setThumbnailSize(II)V

    :cond_8
    return-object v0
.end method

.method public static videoBodyToJson(Lcom/hyphenate/chat/EMVideoMessageBody;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 292
    :cond_0
    invoke-static {p0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->bodyToJson(Lcom/hyphenate/chat/EMMessageBody;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "localPath"

    .line 293
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVideoMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "thumbnailLocalPath"

    .line 294
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVideoMessageBody;->getLocalThumbUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "duration"

    .line 295
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVideoMessageBody;->getDuration()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "thumbnailRemotePath"

    .line 296
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVideoMessageBody;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "thumbnailSecret"

    .line 297
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVideoMessageBody;->getThumbnailSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVideoMessageBody;->thumbnailDownloadStatus()Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    move-result-object v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->downloadStatusToInt(Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;)I

    move-result v1

    const-string v2, "thumbnailStatus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "displayName"

    .line 299
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVideoMessageBody;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "height"

    .line 300
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVideoMessageBody;->getThumbnailHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "width"

    .line 301
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVideoMessageBody;->getThumbnailWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "remotePath"

    .line 302
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVideoMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVideoMessageBody;->downloadStatus()Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    move-result-object v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->downloadStatusToInt(Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;)I

    move-result v1

    const-string v2, "fileStatus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "secret"

    .line 304
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVideoMessageBody;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fileSize"

    .line 305
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVideoMessageBody;->getVideoFileLength()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static voiceBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMVoiceMessageBody;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "localPath"

    .line 311
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "duration"

    .line 313
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 314
    new-instance v2, Lcom/hyphenate/chat/EMVoiceMessageBody;

    invoke-direct {v2, v1, v0}, Lcom/hyphenate/chat/EMVoiceMessageBody;-><init>(Ljava/io/File;I)V

    const-string v0, "fileStatus"

    .line 315
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->downloadStatusFromInt(I)Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/hyphenate/chat/EMVoiceMessageBody;->setDownloadStatus(Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;)V

    const-string v0, "displayName"

    .line 316
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/hyphenate/chat/EMVoiceMessageBody;->setFileName(Ljava/lang/String;)V

    :cond_0
    const-string v0, "secret"

    .line 319
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/hyphenate/chat/EMVoiceMessageBody;->setSecret(Ljava/lang/String;)V

    :cond_1
    const-string v0, "remotePath"

    .line 322
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/hyphenate/chat/EMVoiceMessageBody;->setRemoteUrl(Ljava/lang/String;)V

    :cond_2
    const-string v0, "fileSize"

    .line 325
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 326
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/hyphenate/chat/EMVoiceMessageBody;->setFileLength(J)V

    :cond_3
    return-object v2
.end method

.method public static voiceBodyToJson(Lcom/hyphenate/chat/EMVoiceMessageBody;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 334
    :cond_0
    invoke-static {p0}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->bodyToJson(Lcom/hyphenate/chat/EMMessageBody;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "localPath"

    .line 335
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVoiceMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "duration"

    .line 336
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVoiceMessageBody;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "displayName"

    .line 337
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVoiceMessageBody;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "remotePath"

    .line 338
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVoiceMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVoiceMessageBody;->downloadStatus()Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;

    move-result-object v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->downloadStatusToInt(Lcom/hyphenate/chat/EMFileMessageBody$EMDownloadStatus;)I

    move-result v1

    const-string v2, "fileStatus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "secret"

    .line 340
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVoiceMessageBody;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fileSize"

    .line 341
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMVoiceMessageBody;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method
