.class public Lcom/hyphenate/wrapper/helper/EMGroupHelper;
.super Ljava/lang/Object;
.source "EMGroupHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static intTypeFromGroupPermissionType(Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;)I
    .locals 4

    .line 36
    sget-object v0, Lcom/hyphenate/wrapper/helper/EMGroupHelper$1;->$SwitchMap$com$hyphenate$chat$EMGroup$EMGroupPermissionType:[I

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->ordinal()I

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

.method public static toJson(Lcom/hyphenate/chat/EMGroup;)Lorg/json/JSONObject;
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

    const-string v1, "groupId"

    .line 13
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 14
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "desc"

    .line 15
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "owner"

    .line 16
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "announcement"

    .line 17
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->getAnnouncement()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "memberCount"

    .line 18
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->getMemberCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "memberList"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->getAdminList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "adminList"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->getBlackList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "blockList"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->getMuteList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "muteList"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "block"

    .line 23
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->isMsgBlocked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isDisabled"

    .line 24
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->isDisabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isMuteAll"

    .line 25
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->isAllMemberMuted()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->getGroupPermissionType()Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    move-result-object v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMGroupHelper;->intTypeFromGroupPermissionType(Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;)I

    move-result v1

    const-string v2, "permissionType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "maxUserCount"

    .line 27
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->getMemberCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "isMemberOnly"

    .line 28
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->isMemberOnly()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isMemberAllowToInvite"

    .line 29
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->isMemberAllowToInvite()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "ext"

    .line 30
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->getGroupId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
