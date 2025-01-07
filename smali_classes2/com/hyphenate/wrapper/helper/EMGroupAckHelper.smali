.class public Lcom/hyphenate/wrapper/helper/EMGroupAckHelper;
.super Ljava/lang/Object;
.source "EMGroupAckHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJson(Lcom/hyphenate/chat/EMGroupReadAck;)Lorg/json/JSONObject;
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

    const-string v1, "msgId"

    .line 12
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroupReadAck;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ackId"

    .line 13
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroupReadAck;->getAckId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "from"

    .line 14
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroupReadAck;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "count"

    .line 15
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroupReadAck;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    .line 16
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroupReadAck;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroupReadAck;->getContent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "content"

    .line 18
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroupReadAck;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method
