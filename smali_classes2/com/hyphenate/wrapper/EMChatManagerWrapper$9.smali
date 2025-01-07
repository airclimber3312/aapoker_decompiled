.class Lcom/hyphenate/wrapper/EMChatManagerWrapper$9;
.super Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;
.source "EMChatManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/wrapper/EMChatManagerWrapper;->getConversationsFromServerWithPage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/wrapper/callback/EMCommonValueCallback<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/hyphenate/chat/EMConversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/wrapper/EMChatManagerWrapper;


# direct methods
.method constructor <init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$9;->this$0:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    invoke-direct {p0, p2}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Lcom/hyphenate/chat/EMConversation;Lcom/hyphenate/chat/EMConversation;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    .line 542
    :cond_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getLastMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 546
    :cond_1
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMConversation;->getLastMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object v1

    const/4 v3, -0x1

    if-nez v1, :cond_2

    return v3

    .line 550
    :cond_2
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getLastMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage;->getMsgTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMConversation;->getLastMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage;->getMsgTime()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    return v0

    .line 554
    :cond_3
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMConversation;->getLastMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getMsgTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getLastMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getMsgTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long v4, v0, p0

    if-lez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    :goto_0
    return v2
.end method


# virtual methods
.method synthetic lambda$onSuccess$1$com-hyphenate-wrapper-EMChatManagerWrapper$9(Ljava/util/ArrayList;)V
    .locals 3

    .line 534
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 538
    :cond_0
    :try_start_0
    new-instance v1, Lcom/hyphenate/wrapper/EMChatManagerWrapper$9$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$9$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 556
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/EMConversation;

    .line 557
    invoke-static {v2}, Lcom/hyphenate/wrapper/helper/EMConversationHelper;->toJson(Lcom/hyphenate/chat/EMConversation;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_0

    .line 564
    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$9;->updateObject(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 528
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$9;->onSuccess(Ljava/util/Map;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation;",
            ">;)V"
        }
    .end annotation

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 532
    iget-object p1, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$9;->this$0:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    new-instance v1, Lcom/hyphenate/wrapper/EMChatManagerWrapper$9$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$9$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper$9;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
