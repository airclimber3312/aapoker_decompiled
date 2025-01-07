.class public Lcom/hyphenate/wrapper/helper/EMFetchMessageOptionHelper;
.super Ljava/lang/Object;
.source "EMFetchMessageOptionHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMFetchMessageOption;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/hyphenate/chat/EMFetchMessageOption;

    invoke-direct {v0}, Lcom/hyphenate/chat/EMFetchMessageOption;-><init>()V

    const-string v1, "direction"

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 18
    sget-object v1, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMFetchMessageOption;->setDirection(Lcom/hyphenate/chat/EMConversation$EMSearchDirection;)V

    goto :goto_0

    .line 20
    :cond_0
    sget-object v1, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->DOWN:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMFetchMessageOption;->setDirection(Lcom/hyphenate/chat/EMConversation$EMSearchDirection;)V

    :goto_0
    const-string v1, "isSave"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMFetchMessageOption;->setIsSave(Z)V

    const-string v1, "startTime"

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/EMFetchMessageOption;->setStartTime(J)V

    const-string v1, "endTime"

    .line 24
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/EMFetchMessageOption;->setEndTime(J)V

    const-string v1, "from"

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMFetchMessageOption;->setFrom(Ljava/lang/String;)V

    :cond_1
    const-string v1, "types"

    .line 28
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 31
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 67
    :pswitch_0
    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->COMBINE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 63
    :pswitch_1
    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->CUSTOM:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 59
    :pswitch_2
    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->CMD:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 55
    :pswitch_3
    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->FILE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 51
    :pswitch_4
    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->VOICE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 43
    :pswitch_5
    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->LOCATION:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 47
    :pswitch_6
    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->VIDEO:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 39
    :pswitch_7
    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->IMAGE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 35
    :pswitch_8
    sget-object v3, Lcom/hyphenate/chat/EMMessage$Type;->TXT:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 72
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    .line 73
    invoke-virtual {v0, v2}, Lcom/hyphenate/chat/EMFetchMessageOption;->setMsgTypes(Ljava/util/List;)V

    :cond_3
    return-object v0

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
.end method
