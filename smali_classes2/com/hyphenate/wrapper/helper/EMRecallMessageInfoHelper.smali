.class public Lcom/hyphenate/wrapper/helper/EMRecallMessageInfoHelper;
.super Ljava/lang/Object;
.source "EMRecallMessageInfoHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJson(Lcom/hyphenate/chat/EMRecallMessageInfo;)Lorg/json/JSONObject;
    .locals 3
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

    const-string v1, "recallBy"

    .line 12
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMRecallMessageInfo;->getRecallBy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "recallMessageId"

    .line 13
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMRecallMessageInfo;->getRecallMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ext"

    .line 14
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMRecallMessageInfo;->getExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMRecallMessageInfo;->getRecallMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMRecallMessageInfo;->getRecallMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object p0

    invoke-static {p0}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "recallMessage"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method
