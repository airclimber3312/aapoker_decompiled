.class public Lcom/hyphenate/wrapper/helper/EMPageResultHelper;
.super Ljava/lang/Object;
.source "EMPageResultHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJson(Lcom/hyphenate/chat/EMPageResult;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "count"

    .line 18
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMPageResult;->getPageCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMPageResult;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 21
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMPageResult;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 22
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 23
    instance-of v3, v2, Lcom/hyphenate/chat/EMMessage;

    if-eqz v3, :cond_2

    .line 24
    move-object v3, v2

    check-cast v3, Lcom/hyphenate/chat/EMMessage;

    invoke-static {v3}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 27
    :cond_2
    instance-of v3, v2, Lcom/hyphenate/chat/EMGroup;

    if-eqz v3, :cond_3

    .line 28
    move-object v3, v2

    check-cast v3, Lcom/hyphenate/chat/EMGroup;

    invoke-static {v3}, Lcom/hyphenate/wrapper/helper/EMGroupHelper;->toJson(Lcom/hyphenate/chat/EMGroup;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 31
    :cond_3
    instance-of v3, v2, Lcom/hyphenate/chat/EMChatRoom;

    if-eqz v3, :cond_1

    .line 32
    check-cast v2, Lcom/hyphenate/chat/EMChatRoom;

    invoke-static {v2}, Lcom/hyphenate/wrapper/helper/EMChatRoomHelper;->toJson(Lcom/hyphenate/chat/EMChatRoom;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_4
    const-string p0, "list"

    .line 36
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
