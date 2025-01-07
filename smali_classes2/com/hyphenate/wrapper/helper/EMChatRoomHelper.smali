.class public Lcom/hyphenate/wrapper/helper/EMChatRoomHelper;
.super Ljava/lang/Object;
.source "EMChatRoomHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static intTypeFromPermissionType(Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;)I
    .locals 4

    .line 30
    sget-object v0, Lcom/hyphenate/wrapper/helper/EMChatRoomHelper$1;->$SwitchMap$com$hyphenate$chat$EMChatRoom$EMChatRoomPermissionType:[I

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p0, v0, :cond_0

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v3, 0x3

    if-eq p0, v3, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public static toJson(Lcom/hyphenate/chat/EMChatRoom;)Lorg/json/JSONObject;
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

    const-string v1, "roomId"

    .line 12
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatRoom;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 13
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatRoom;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "desc"

    .line 14
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatRoom;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "owner"

    .line 15
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatRoom;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "maxUsers"

    .line 16
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatRoom;->getMaxUsers()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "memberCount"

    .line 17
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatRoom;->getMemberCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "adminList"

    .line 18
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatRoom;->getAdminList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "memberList"

    .line 19
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatRoom;->getMemberList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "blockList"

    .line 20
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatRoom;->getBlacklist()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatRoom;->getMuteList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "muteList"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isMuteAll"

    .line 22
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatRoom;->isAllMemberMuted()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "announcement"

    .line 23
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatRoom;->getAnnouncement()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatRoom;->getChatRoomPermissionType()Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    move-result-object p0

    invoke-static {p0}, Lcom/hyphenate/wrapper/helper/EMChatRoomHelper;->intTypeFromPermissionType(Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;)I

    move-result p0

    const-string v1, "permissionType"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
