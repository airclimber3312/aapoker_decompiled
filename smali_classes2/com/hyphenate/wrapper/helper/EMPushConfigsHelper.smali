.class public Lcom/hyphenate/wrapper/helper/EMPushConfigsHelper;
.super Ljava/lang/Object;
.source "EMPushConfigsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJson(Lcom/hyphenate/chat/EMPushConfigs;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "noDisturb"

    .line 13
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMPushConfigs;->isNoDisturbOn()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "noDisturbEndHour"

    .line 14
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMPushConfigs;->getNoDisturbEndHour()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "noDisturbStartHour"

    .line 15
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMPushConfigs;->getNoDisturbStartHour()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMPushConfigs;->getDisplayStyle()Lcom/hyphenate/chat/EMPushManager$DisplayStyle;

    move-result-object v1

    sget-object v2, Lcom/hyphenate/chat/EMPushManager$DisplayStyle;->SimpleBanner:Lcom/hyphenate/chat/EMPushManager$DisplayStyle;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "pushStyle"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "displayName"

    .line 17
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMPushConfigs;->getDisplayNickname()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
