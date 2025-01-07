.class public Lcom/hyphenate/wrapper/helper/EMSilentModeTimeHelper;
.super Ljava/lang/Object;
.source "EMSilentModeTimeHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMSilentModeTime;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "hour"

    .line 10
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "minute"

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 12
    new-instance v1, Lcom/hyphenate/chat/EMSilentModeTime;

    invoke-direct {v1, v0, p0}, Lcom/hyphenate/chat/EMSilentModeTime;-><init>(II)V

    return-object v1
.end method

.method public static toJson(Lcom/hyphenate/chat/EMSilentModeTime;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 18
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "hour"

    .line 19
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSilentModeTime;->getHour()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "minute"

    .line 20
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSilentModeTime;->getMinute()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
