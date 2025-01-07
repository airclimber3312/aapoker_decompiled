.class public Lcom/hyphenate/wrapper/helper/EMMessageReactionOperationHelper;
.super Ljava/lang/Object;
.source "EMMessageReactionOperationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toJson(Lcom/hyphenate/chat/EMMessageReactionOperation;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "userId"

    .line 14
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessageReactionOperation;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reaction"

    .line 15
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessageReactionOperation;->getReaction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessageReactionOperation;->getOperation()Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

    move-result-object p0

    sget-object v1, Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;->REMOVE:Lcom/hyphenate/chat/EMMessageReactionOperation$Operation;

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    const-string v1, "operate"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
