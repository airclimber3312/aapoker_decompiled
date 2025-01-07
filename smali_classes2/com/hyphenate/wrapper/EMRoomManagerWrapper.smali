.class public Lcom/hyphenate/wrapper/EMRoomManagerWrapper;
.super Lcom/hyphenate/wrapper/EMBaseWrapper;
.source "EMRoomManagerWrapper.java"


# instance fields
.field public emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMBaseWrapper;-><init>()V

    .line 32
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->registerEaseListener()V

    return-void
.end method

.method private addChatRoomAdmin(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 425
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    .line 426
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 428
    new-instance v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda12;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private addMembersToChatRoomWhiteList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 628
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userIds"

    .line 629
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 630
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 631
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 632
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 635
    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object p1

    new-instance v2, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$4;

    invoke-direct {v2, p0, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$4;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/hyphenate/chat/EMChatRoomManager;->addToChatRoomWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private blockChatRoomMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 524
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userIds"

    .line 525
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 526
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 527
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 528
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 531
    :cond_0
    new-instance p1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda8;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private changeChatRoomDescription(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 290
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "desc"

    .line 291
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 293
    new-instance v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private changeChatRoomOwner(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 402
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    .line 403
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 405
    new-instance v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda19;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private changeChatRoomSubject(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 267
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    .line 268
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 270
    new-instance v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda21;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private createChatRoom(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "name"

    .line 210
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "count"

    .line 211
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v0, "desc"

    .line 213
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v9

    :goto_0
    const-string v0, "msg"

    .line 217
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v9

    .line 220
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "userIds"

    .line 222
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 224
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 225
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 231
    :cond_2
    new-instance p1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda3;

    move-object v1, p1

    move-object v2, p0

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    return-object v9
.end method

.method private destroyChatRoom(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 252
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 254
    new-instance v0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda7;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchChatRoomAnnouncement(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 614
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 616
    new-instance v0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda17;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchChatRoomAttributes(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 729
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 730
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "list"

    .line 731
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 732
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    .line 733
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 734
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 737
    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object p1

    new-instance v2, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$9;

    invoke-direct {v2, p0, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$9;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/hyphenate/chat/EMChatRoomManager;->asyncFetchChatroomAttributesFromServer(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchChatRoomBlockList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 580
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "pageNum"

    .line 581
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "pageSize"

    .line 582
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 584
    new-instance p1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda4;

    move-object v1, p1

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda4;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;IILcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchChatRoomInfoFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 164
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fetchMembers"

    .line 166
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 170
    :goto_0
    new-instance v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda13;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;ZLjava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchChatRoomMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 314
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "cursor"

    .line 316
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v7

    :goto_0
    const-string v0, "pageSize"

    .line 319
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 322
    new-instance p1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda6;

    move-object v1, p1

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda6;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    return-object v7
.end method

.method private fetchChatRoomMuteList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 471
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "pageNum"

    .line 472
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "pageSize"

    .line 473
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 475
    new-instance p1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda0;

    move-object v1, p1

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;IILcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchChatRoomWhiteListFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 682
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 683
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$6;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$6;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMChatRoomManager;->fetchChatRoomWhiteList(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchPublicChatRoomsFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "pageNum"

    .line 137
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "pageSize"

    .line 138
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 140
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$2;

    invoke-direct {v2, p0, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$2;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMChatRoomManager;->asyncFetchPublicChatRoomsFromServer(IILcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getAllChatRooms()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 200
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMChatRoomManager;->getAllChatRooms()Ljava/util/List;

    move-result-object v0

    .line 201
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/EMChatRoom;

    .line 203
    invoke-static {v2}, Lcom/hyphenate/wrapper/helper/EMChatRoomHelper;->toJson(Lcom/hyphenate/chat/EMChatRoom;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 205
    :cond_0
    invoke-static {v1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getChatRoom(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 194
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->getChatRoom(Ljava/lang/String;)Lcom/hyphenate/chat/EMChatRoom;

    move-result-object p1

    .line 196
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatRoomHelper;->toJson(Lcom/hyphenate/chat/EMChatRoom;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isMemberInChatRoomWhiteListFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 676
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 677
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMChatRoomManager;->checkIfInChatRoomWhiteList(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private joinChatRoom(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 108
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$1;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$1;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMChatRoomManager;->joinChatRoom(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic lambda$removeChatRoomAttributes$20(Ljava/util/Map;ILcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 810
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 820
    :cond_0
    new-instance p0, Lcom/hyphenate/exceptions/HyphenateException;

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    .line 821
    invoke-virtual {p2, p0, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 813
    :try_start_0
    invoke-static {p0}, Lcom/hyphenate/wrapper/util/EMHelper;->intMapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    invoke-virtual {p2, p0, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 815
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 817
    invoke-virtual {p2, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p2, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 818
    throw p0
.end method

.method static synthetic lambda$setChatRoomAttributes$18(Ljava/util/Map;ILcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 769
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 779
    :cond_0
    new-instance p0, Lcom/hyphenate/exceptions/HyphenateException;

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    .line 780
    invoke-virtual {p2, p0, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 772
    :try_start_0
    invoke-static {p0}, Lcom/hyphenate/wrapper/util/EMHelper;->intMapToJsonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    invoke-virtual {p2, p0, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 774
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 776
    invoke-virtual {p2, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p2, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 777
    throw p0
.end method

.method private leaveChatRoom(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 126
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    new-instance v0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda10;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private muteAllChatRoomsMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 693
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 694
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$7;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$7;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMChatRoomManager;->muteAllMembers(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private muteChatRoomMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 343
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "expireTime"

    .line 345
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const-string v1, "userIds"

    .line 349
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    .line 350
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    move-object v3, p1

    goto :goto_1

    :cond_1
    move-object v3, v7

    .line 352
    :goto_1
    new-instance v6, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$3;

    invoke-direct {v6, p0, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$3;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 366
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v1

    int-to-long v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatRoomManager;->asyncMuteChatRoomMembers(Ljava/lang/String;Ljava/util/List;JLcom/hyphenate/EMValueCallBack;)V

    return-object v7
.end method

.method private registerEaseListener()V
    .locals 2

    .line 833
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    .line 834
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMChatRoomManager;->addChatRoomChangeListener(Lcom/hyphenate/EMChatRoomChangeListener;)V

    return-void
.end method

.method private removeChatRoomAdmin(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 448
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    .line 449
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 451
    new-instance v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private removeChatRoomAttributes(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 794
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 795
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "list"

    .line 796
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 797
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 798
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 799
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "forced"

    .line 804
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 805
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 809
    :cond_1
    new-instance p1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0, p0, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda9;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    if-eqz v4, :cond_2

    .line 825
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object p2

    invoke-virtual {p2, v0, v1, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->asyncRemoveChatRoomAttributesFromServerForced(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMResultCallBack;)V

    goto :goto_1

    .line 827
    :cond_2
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object p2

    invoke-virtual {p2, v0, v1, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->asyncRemoveChatRoomAttributesFromServer(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMResultCallBack;)V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private removeChatRoomMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 497
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userIds"

    .line 498
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 499
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 500
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 501
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    :cond_0
    new-instance p1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda16;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private removeMembersFromChatRoomWhiteList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 652
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userIds"

    .line 653
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 654
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 655
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 656
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 659
    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object p1

    new-instance v2, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$5;

    invoke-direct {v2, p0, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$5;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/hyphenate/chat/EMChatRoomManager;->removeFromChatRoomWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private setChatRoomAttributes(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 754
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kv"

    .line 755
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 756
    invoke-static {v1}, Lcom/hyphenate/wrapper/util/EMHelper;->getMapStrStrFromJsonObject(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "deleteWhenExit"

    .line 758
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 759
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "forced"

    .line 762
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 763
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 768
    :cond_1
    new-instance p1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, p0, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda5;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    if-eqz v4, :cond_2

    .line 786
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object p2

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->asyncSetChatroomAttributesForced(Ljava/lang/String;Ljava/util/Map;ZLcom/hyphenate/EMResultCallBack;)V

    goto :goto_1

    .line 788
    :cond_2
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object p2

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->asyncSetChatroomAttributes(Ljava/lang/String;Ljava/util/Map;ZLcom/hyphenate/EMResultCallBack;)V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private unBlockChatRoomMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 552
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userIds"

    .line 553
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 554
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 555
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 556
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 559
    :cond_0
    new-instance p1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda15;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private unMuteAllChatRoomsMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 711
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 712
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$8;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$8;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMChatRoomManager;->unmuteAllMembers(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private unMuteChatRoomMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 374
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userIds"

    .line 375
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 376
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 377
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 378
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_0
    new-instance p1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda20;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda20;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private updateChatRoomAnnouncement(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "roomId"

    .line 598
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "announcement"

    .line 599
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 601
    new-instance v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda18;-><init>(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method synthetic lambda$addChatRoomAdmin$9$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 430
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager;->addChatRoomAdmin(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMChatRoom;

    move-result-object p1
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 433
    :try_start_1
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatRoomHelper;->toJson(Lcom/hyphenate/chat/EMChatRoom;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    :try_start_2
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 435
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 437
    :try_start_4
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 438
    throw p1
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 440
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$blockChatRoomMembers$13$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 533
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager;->blockChatroomMembers(Ljava/lang/String;Ljava/util/List;)Lcom/hyphenate/chat/EMChatRoom;

    move-result-object p1
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 537
    :try_start_1
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatRoomHelper;->toJson(Lcom/hyphenate/chat/EMChatRoom;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    :try_start_2
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 539
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 541
    :try_start_4
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 542
    throw p1
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 544
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$changeChatRoomDescription$5$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 295
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager;->changeChatroomDescription(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMChatRoom;

    move-result-object p1
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 299
    :try_start_1
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatRoomHelper;->toJson(Lcom/hyphenate/chat/EMChatRoom;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :try_start_2
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 301
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 303
    :try_start_4
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 304
    throw p1
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 306
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$changeChatRoomOwner$8$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 407
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager;->changeOwner(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMChatRoom;

    move-result-object p1
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 410
    :try_start_1
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatRoomHelper;->toJson(Lcom/hyphenate/chat/EMChatRoom;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    :try_start_2
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 412
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 414
    :try_start_4
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 415
    throw p1
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 417
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$changeChatRoomSubject$4$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 272
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager;->changeChatRoomSubject(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMChatRoom;

    move-result-object p1
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 275
    :try_start_1
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatRoomHelper;->toJson(Lcom/hyphenate/chat/EMChatRoom;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :try_start_2
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 277
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    :try_start_4
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 280
    throw p1
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 282
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$createChatRoom$2$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 7

    .line 233
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatRoomManager;->createChatRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Lcom/hyphenate/chat/EMChatRoom;

    move-result-object p1
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 237
    :try_start_1
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatRoomHelper;->toJson(Lcom/hyphenate/chat/EMChatRoom;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    :try_start_2
    invoke-virtual {p0, p1, p6}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 239
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    :try_start_4
    invoke-virtual {p0, p2, p6}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p2, p6}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 242
    throw p1
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 244
    invoke-virtual {p0, p1, p6}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$destroyChatRoom$3$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 256
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->destroyChatRoom(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$fetchChatRoomAnnouncement$17$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 618
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->fetchChatRoomAnnouncement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 619
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 621
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$fetchChatRoomBlockList$15$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;IILcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 586
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatRoomManager;->fetchChatRoomBlackList(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    .line 588
    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 590
    invoke-virtual {p0, p1, p4}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$fetchChatRoomInfoFromServer$1$com-hyphenate-wrapper-EMRoomManagerWrapper(ZLjava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 174
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->fetchChatRoomFromServer(Ljava/lang/String;Z)Lcom/hyphenate/chat/EMChatRoom;

    move-result-object p1

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager;->fetchChatRoomFromServer(Ljava/lang/String;)Lcom/hyphenate/chat/EMChatRoom;

    move-result-object p1
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 p2, 0x0

    .line 180
    :try_start_1
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatRoomHelper;->toJson(Lcom/hyphenate/chat/EMChatRoom;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :try_start_2
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 182
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    :try_start_4
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_2

    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 185
    throw p1
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 187
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_2
    return-void
.end method

.method synthetic lambda$fetchChatRoomMembers$6$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 324
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    .line 325
    invoke-virtual {v0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatRoomManager;->fetchChatRoomMembers(Ljava/lang/String;Ljava/lang/String;I)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 328
    :try_start_1
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMCursorResultHelper;->toJson(Lcom/hyphenate/chat/EMCursorResult;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    :try_start_2
    invoke-virtual {p0, p1, p4}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 330
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 332
    :try_start_4
    invoke-virtual {p0, p2, p4}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p2, p4}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 333
    throw p1
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 335
    invoke-virtual {p0, p1, p4}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$fetchChatRoomMuteList$11$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;IILcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 477
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatRoomManager;->fetchChatRoomMuteList(Ljava/lang/String;II)Ljava/util/Map;

    move-result-object p1

    .line 478
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 480
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 481
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 486
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {p0, p2, p4}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 484
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 486
    :goto_2
    :try_start_4
    invoke-virtual {p0, p2, p4}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 487
    throw p1
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 489
    invoke-virtual {p0, p1, p4}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_3
    return-void
.end method

.method synthetic lambda$leaveChatRoom$0$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 129
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->leaveChatRoom(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 130
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method

.method synthetic lambda$removeChatRoomAdmin$10$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 453
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager;->removeChatRoomAdmin(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMChatRoom;

    move-result-object p1
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 456
    :try_start_1
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatRoomHelper;->toJson(Lcom/hyphenate/chat/EMChatRoom;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    :try_start_2
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 458
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 460
    :try_start_4
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 461
    throw p1
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 463
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$removeChatRoomAttributes$21$com-hyphenate-wrapper-EMRoomManagerWrapper(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;ILjava/util/Map;)V
    .locals 1

    .line 809
    new-instance v0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda14;

    invoke-direct {v0, p4, p3, p1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda14;-><init>(Ljava/util/Map;ILcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$removeChatRoomMembers$12$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 506
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager;->removeChatRoomMembers(Ljava/lang/String;Ljava/util/List;)Lcom/hyphenate/chat/EMChatRoom;

    move-result-object p1
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 509
    :try_start_1
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatRoomHelper;->toJson(Lcom/hyphenate/chat/EMChatRoom;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    :try_start_2
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 511
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 513
    :try_start_4
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 514
    throw p1
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 516
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$setChatRoomAttributes$19$com-hyphenate-wrapper-EMRoomManagerWrapper(Lcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;ILjava/util/Map;)V
    .locals 1

    .line 768
    new-instance v0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda11;

    invoke-direct {v0, p4, p3, p1, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper$$ExternalSyntheticLambda11;-><init>(Ljava/util/Map;ILcom/hyphenate/wrapper/EMRoomManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$unBlockChatRoomMembers$14$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 561
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager;->unblockChatRoomMembers(Ljava/lang/String;Ljava/util/List;)Lcom/hyphenate/chat/EMChatRoom;

    move-result-object p1
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 565
    :try_start_1
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatRoomHelper;->toJson(Lcom/hyphenate/chat/EMChatRoom;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    :try_start_2
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 567
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 569
    :try_start_4
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 570
    throw p1
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 572
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$unMuteChatRoomMembers$7$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 383
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager;->unMuteChatRoomMembers(Ljava/lang/String;Ljava/util/List;)Lcom/hyphenate/chat/EMChatRoom;

    move-result-object p1
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 387
    :try_start_1
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatRoomHelper;->toJson(Lcom/hyphenate/chat/EMChatRoom;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    :try_start_2
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 389
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    :try_start_4
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 392
    throw p1
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 394
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$updateChatRoomAnnouncement$16$com-hyphenate-wrapper-EMRoomManagerWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 603
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager;->updateChatRoomAnnouncement(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 604
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 606
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method public onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "joinChatRoom"

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->joinChatRoom(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    const-string v0, "leaveChatRoom"

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->leaveChatRoom(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    const-string v0, "fetchPublicChatRoomsFromServer"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->fetchPublicChatRoomsFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    const-string v0, "fetchChatRoomInfoFromServer"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->fetchChatRoomInfoFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    const-string v0, "getChatRoom"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46
    invoke-direct {p0, p2}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->getChatRoom(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    const-string v0, "getAllChatRooms"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->getAllChatRooms()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    const-string v0, "createChatRoom"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->createChatRoom(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    const-string v0, "destroyChatRoom"

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 52
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->destroyChatRoom(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    const-string v0, "changeChatRoomSubject"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 54
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->changeChatRoomSubject(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_8
    const-string v0, "changeChatRoomDescription"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 56
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->changeChatRoomDescription(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_9
    const-string v0, "fetchChatRoomMembers"

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 58
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->fetchChatRoomMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_a
    const-string v0, "muteChatRoomMembers"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 60
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->muteChatRoomMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_b
    const-string v0, "unMuteChatRoomMembers"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 62
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->unMuteChatRoomMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_c
    const-string v0, "changeChatRoomOwner"

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 64
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->changeChatRoomOwner(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_d
    const-string v0, "addChatRoomAdmin"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 66
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->addChatRoomAdmin(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_e
    const-string v0, "removeChatRoomAdmin"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 68
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->removeChatRoomAdmin(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_f
    const-string v0, "fetchChatRoomMuteList"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 70
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->fetchChatRoomMuteList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_10
    const-string v0, "removeChatRoomMembers"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 72
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->removeChatRoomMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_11
    const-string v0, "blockChatRoomMembers"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 74
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->blockChatRoomMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_12
    const-string v0, "unBlockChatRoomMembers"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 76
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->unBlockChatRoomMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_13
    const-string v0, "fetchChatRoomBlockList"

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 78
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->fetchChatRoomBlockList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_14
    const-string v0, "updateChatRoomAnnouncement"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 80
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->updateChatRoomAnnouncement(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_15
    const-string v0, "fetchChatRoomAnnouncement"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 82
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->fetchChatRoomAnnouncement(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_16
    const-string v0, "addMembersToChatRoomWhiteList"

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 84
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->addMembersToChatRoomWhiteList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_17
    const-string v0, "removeMembersFromChatRoomWhiteList"

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 86
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->removeMembersFromChatRoomWhiteList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_18
    const-string v0, "isMemberInChatRoomWhiteListFromServer"

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 88
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->isMemberInChatRoomWhiteListFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_19
    const-string v0, "fetchChatRoomWhiteListFromServer"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 90
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->fetchChatRoomWhiteListFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1a
    const-string v0, "muteAllChatRoomMembers"

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 92
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->muteAllChatRoomsMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1b
    const-string v0, "unMuteAllChatRoomMembers"

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 94
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->unMuteAllChatRoomsMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1c
    const-string v0, "fetchChatRoomAttributes"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 96
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->fetchChatRoomAttributes(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1d
    const-string v0, "setChatRoomAttributes"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 98
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->setChatRoomAttributes(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1e
    const-string v0, "removeChatRoomAttributes"

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 100
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->removeChatRoomAttributes(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 102
    :cond_1f
    invoke-super {p0, p1, p2, p3}, Lcom/hyphenate/wrapper/EMBaseWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
