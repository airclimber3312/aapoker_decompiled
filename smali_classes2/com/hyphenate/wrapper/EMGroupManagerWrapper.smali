.class public Lcom/hyphenate/wrapper/EMGroupManagerWrapper;
.super Lcom/hyphenate/wrapper/EMBaseWrapper;
.source "EMGroupManagerWrapper.java"


# instance fields
.field public wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMBaseWrapper;-><init>()V

    .line 34
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->registerEaseListener()V

    return-void
.end method

.method private acceptInvitationFromGroup(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 954
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    .line 957
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 958
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 960
    :goto_0
    new-instance v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$17;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$17;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 974
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object p2

    invoke-virtual {p2, v0, p1, v1}, Lcom/hyphenate/chat/EMGroupManager;->asyncAcceptInvitation(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    return-object v3
.end method

.method private acceptJoinApplication(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 925
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    .line 928
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 929
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 932
    :goto_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/hyphenate/chat/EMGroupManager;->asyncAcceptApplication(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    return-object v3
.end method

.method private addAdmin(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 642
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    .line 643
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 645
    new-instance v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$11;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$11;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 659
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object p2

    invoke-virtual {p2, v0, p1, v1}, Lcom/hyphenate/chat/EMGroupManager;->asyncAddGroupAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private addMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 491
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "userIds"

    .line 494
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 497
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 498
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v7

    :cond_1
    if-nez v1, :cond_2

    new-array v0, v2, [Ljava/lang/String;

    move-object v4, v0

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    const-string v0, "msg"

    .line 506
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 507
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_2

    :cond_3
    move-object v5, v7

    .line 511
    :goto_2
    new-instance p1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$$ExternalSyntheticLambda3;

    move-object v1, p1

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    return-object v7
.end method

.method private addWhiteList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 787
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userIds"

    .line 789
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 790
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 792
    :goto_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMGroupManager;->addToGroupWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V

    return-object v3
.end method

.method private blockGroup(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 604
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 605
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMGroupManager;->asyncBlockGroupMessage(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private blockMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 537
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userIds"

    .line 539
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 540
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 543
    :goto_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMGroupManager;->asyncBlockUsers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V

    return-object v3
.end method

.method private createGroup(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "name"

    .line 241
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    const-string v0, "desc"

    .line 246
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v2

    :goto_1
    const-string v0, "userIds"

    .line 251
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 252
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 254
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 255
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :cond_3
    if-nez v1, :cond_4

    new-array v0, v3, [Ljava/lang/String;

    move-object v6, v0

    goto :goto_3

    :cond_4
    move-object v6, v1

    :goto_3
    const-string v0, "msg"

    .line 263
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 264
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_4

    :cond_5
    move-object v7, v2

    :goto_4
    const-string v0, "options"

    .line 268
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 269
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMGroupOptionsHelper;->fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMGroupOptions;

    move-result-object p1

    move-object v8, p1

    goto :goto_5

    :cond_6
    move-object v8, v2

    .line 272
    :goto_5
    new-instance v9, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$3;

    invoke-direct {v9, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$3;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 286
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v3

    invoke-virtual/range {v3 .. v9}, Lcom/hyphenate/chat/EMGroupManager;->asyncCreateGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMGroupOptions;Lcom/hyphenate/EMValueCallBack;)V

    return-object v2
.end method

.method private declineInvitationFromGroup(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 980
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    .line 982
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 983
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "msg"

    .line 986
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 987
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v3

    .line 990
    :goto_1
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v2

    new-instance v4, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v4, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v2, v0, v1, p1, v4}, Lcom/hyphenate/chat/EMGroupManager;->asyncDeclineInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    return-object v3
.end method

.method private declineJoinApplication(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 938
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    .line 940
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 941
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "msg"

    .line 944
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 945
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v3

    .line 948
    :goto_1
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v2

    new-instance v4, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v4, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v2, v1, v0, p1, v4}, Lcom/hyphenate/chat/EMGroupManager;->asyncDeclineApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    return-object v3
.end method

.method private destroyGroup(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 596
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 597
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMGroupManager;->asyncDestroyGroup(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private downloadGroupSharedFile(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 827
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fileId"

    .line 829
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 830
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "savePath"

    .line 833
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 834
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v3

    .line 836
    :goto_1
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v2

    new-instance v4, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v4, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v2, v0, v1, p1, v4}, Lcom/hyphenate/chat/EMGroupManager;->asyncDownloadGroupSharedFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    return-object v3
.end method

.method private fetchMemberAttributes(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 1035
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userIds"

    .line 1036
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "attrs"

    .line 1037
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1038
    invoke-static {v1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 1039
    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 1040
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v2

    new-instance v3, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$19;

    invoke-direct {v3, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$19;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/hyphenate/chat/EMGroupManager;->asyncFetchGroupMembersAttributes(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchMyGroupsCount(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1

    .line 1060
    new-instance v0, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$20;

    invoke-direct {v0, p0, p1}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$20;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 1071
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/EMGroupManager;->asyncGetJoinedGroupsCountFromServer(Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getGroupAnnouncementFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 460
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 461
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMGroupManager;->asyncFetchGroupAnnouncement(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getGroupBlockListFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 346
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pageSize"

    .line 348
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 349
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "pageNum"

    .line 352
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 356
    :cond_1
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object p1

    new-instance v2, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$5;

    invoke-direct {v2, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$5;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/hyphenate/chat/EMGroupManager;->asyncGetBlockedUsers(Ljava/lang/String;IILcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getGroupFileListFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 427
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pageNum"

    .line 429
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 430
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "pageSize"

    .line 433
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 434
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 437
    :cond_1
    new-instance p1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$9;

    invoke-direct {p1, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$9;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 454
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object p2

    invoke-virtual {p2, v0, v1, v3, p1}, Lcom/hyphenate/chat/EMGroupManager;->asyncFetchGroupSharedFileList(Ljava/lang/String;IILcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getGroupMemberListFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 319
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cursor"

    .line 321
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "pageSize"

    .line 324
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 326
    new-instance v2, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$4;

    invoke-direct {v2, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$4;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 341
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object p2

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/hyphenate/chat/EMGroupManager;->asyncFetchGroupMembers(Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/EMValueCallBack;)V

    return-object v3
.end method

.method private getGroupMuteListFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 367
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pageSize"

    .line 369
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 370
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "pageNum"

    .line 373
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 374
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 378
    :cond_1
    new-instance p1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$6;

    invoke-direct {p1, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$6;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 392
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object p2

    invoke-virtual {p2, v0, v3, v1, p1}, Lcom/hyphenate/chat/EMGroupManager;->asyncFetchGroupMuteList(Ljava/lang/String;IILcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getGroupSpecificationFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 293
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fetchMembers"

    .line 295
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 299
    :goto_0
    new-instance v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Ljava/lang/String;ZLcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getGroupWhiteListFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 397
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$7;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$7;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMGroupManager;->fetchGroupWhiteList(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getGroupWithId(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 142
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMGroupManager;->getGroup(Ljava/lang/String;)Lcom/hyphenate/chat/EMGroup;

    move-result-object p1

    .line 144
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMGroupHelper;->toJson(Lcom/hyphenate/chat/EMGroup;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getJoinedGroups()Ljava/lang/String;
    .locals 4

    .line 148
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMGroupManager;->loadAllGroups()V

    .line 149
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMGroupManager;->getAllGroups()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 152
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 153
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hyphenate/chat/EMGroup;

    .line 154
    invoke-static {v3}, Lcom/hyphenate/wrapper/helper/EMGroupHelper;->toJson(Lcom/hyphenate/chat/EMGroup;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {v2}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    return-object v1

    .line 163
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 158
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v1
.end method

.method private getJoinedGroupsFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "pageSize"

    .line 172
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const-string v0, "pageNum"

    .line 176
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v0, "needAffiliations"

    .line 181
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    move v6, v0

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    const-string v0, "needRole"

    .line 186
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move v7, v2

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 190
    :goto_3
    new-instance v8, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$1;

    invoke-direct {v8, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$1;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 206
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v3

    invoke-virtual/range {v3 .. v8}, Lcom/hyphenate/chat/EMGroupManager;->asyncGetJoinedGroupsFromServer(IIZZLcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getJoinedGroupsFromServerSimple(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "pageSize"

    .line 997
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 998
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "pageNum"

    .line 1001
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1002
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1005
    :cond_1
    new-instance p1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$18;

    invoke-direct {p1, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$18;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 1021
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object p2

    invoke-virtual {p2, v2, v0, p1}, Lcom/hyphenate/chat/EMGroupManager;->asyncGetJoinedGroupsFromServer(IILcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getPublicGroupsFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "pageSize"

    .line 212
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "cursor"

    .line 216
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 217
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v3

    .line 219
    :goto_1
    new-instance v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$2;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$2;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 234
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object p2

    invoke-virtual {p2, v0, p1, v1}, Lcom/hyphenate/chat/EMGroupManager;->asyncGetPublicGroupsFromServer(ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    return-object v3
.end method

.method private inviterUser(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 468
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg"

    .line 470
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 471
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "userIds"

    .line 474
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 475
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 476
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 477
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 478
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :cond_2
    if-nez v2, :cond_3

    new-array v2, v5, [Ljava/lang/String;

    .line 484
    :cond_3
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object p1

    new-instance v4, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v4, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0, v2, v1, v4}, Lcom/hyphenate/chat/EMGroupManager;->asyncInviteUser(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    return-object v3
.end method

.method private isMemberInWhiteListFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 410
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 411
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$8;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$8;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMGroupManager;->checkIfInGroupWhiteList(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private joinPublicGroup(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 895
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 896
    new-instance v0, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private leaveGroup(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 588
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 589
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMGroupManager;->asyncLeaveGroup(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private muteAllMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 743
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 745
    new-instance v0, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$15;

    invoke-direct {v0, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$15;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 759
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/hyphenate/chat/EMGroupManager;->muteAllMembers(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private muteMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 688
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "expireTime"

    .line 691
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const-string v1, "userIds"

    .line 695
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    .line 696
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    move-object v3, p1

    goto :goto_1

    :cond_1
    move-object v3, v7

    .line 698
    :goto_1
    new-instance v6, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$13;

    invoke-direct {v6, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$13;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 712
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v1

    int-to-long v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/hyphenate/chat/EMGroupManager;->asyncMuteGroupMembers(Ljava/lang/String;Ljava/util/List;JLcom/hyphenate/EMValueCallBack;)V

    return-object v7
.end method

.method private registerEaseListener()V
    .locals 2

    .line 1076
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    .line 1077
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMGroupManager;->addGroupChangeListener(Lcom/hyphenate/EMGroupChangeListener;)V

    return-void
.end method

.method private removeAdmin(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 665
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    .line 666
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 668
    new-instance v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$12;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$12;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 682
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object p2

    invoke-virtual {p2, v0, p1, v1}, Lcom/hyphenate/chat/EMGroupManager;->asyncRemoveGroupAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private removeGroupSharedFile(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 843
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fileId"

    .line 845
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 846
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 848
    :goto_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMGroupManager;->asyncDeleteGroupSharedFile(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    return-object v3
.end method

.method private removeMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 524
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userIds"

    .line 526
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 527
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 530
    :goto_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMGroupManager;->asyncRemoveUsersFromGroup(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V

    return-object v3
.end method

.method private removeWhiteList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 799
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "userIds"

    .line 801
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 802
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    .line 803
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 804
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 807
    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object p1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/hyphenate/chat/EMGroupManager;->removeFromGroupWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private requestToJoinPublicGroup(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 913
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg"

    .line 915
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 916
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 919
    :goto_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMGroupManager;->asyncApplyJoinToGroup(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    return-object v3
.end method

.method private setMemberAttributes(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 1026
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    .line 1027
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attrs"

    .line 1028
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1029
    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getMapStrStrFromJsonObject(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    .line 1030
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v2

    new-instance v3, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v3, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/hyphenate/chat/EMGroupManager;->asyncSetGroupMemberAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private unMuteAllMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 765
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 767
    new-instance v0, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$16;

    invoke-direct {v0, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$16;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 781
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/hyphenate/chat/EMGroupManager;->unmuteAllMembers(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private unMuteMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 718
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userIds"

    .line 720
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 721
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 723
    :goto_0
    new-instance v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$14;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$14;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 737
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object p2

    invoke-virtual {p2, v0, p1, v1}, Lcom/hyphenate/chat/EMGroupManager;->asyncUnMuteGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V

    return-object v3
.end method

.method private unblockGroup(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 611
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 613
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMGroupManager;->asyncUnblockGroupMessage(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private unblockMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 550
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userIds"

    .line 552
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 553
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 556
    :goto_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMGroupManager;->asyncUnblockUsers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V

    return-object v3
.end method

.method private updateDescription(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 576
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "desc"

    .line 578
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 579
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 582
    :goto_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMGroupManager;->asyncChangeGroupDescription(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private updateGroupAnnouncement(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 855
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "announcement"

    .line 857
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 858
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 861
    :goto_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMGroupManager;->asyncUpdateGroupAnnouncement(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    return-object v3
.end method

.method private updateGroupExt(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 867
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ext"

    .line 869
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 870
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 874
    :goto_0
    new-instance v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    return-object v3
.end method

.method private updateGroupOwner(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 619
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    .line 620
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 622
    new-instance v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$10;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper$10;-><init>(Lcom/hyphenate/wrapper/EMGroupManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 636
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object p2

    invoke-virtual {p2, v0, p1, v1}, Lcom/hyphenate/chat/EMGroupManager;->asyncChangeOwner(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private updateGroupSubject(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 563
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    .line 566
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 570
    :goto_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMGroupManager;->asyncChangeGroupName(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private uploadGroupSharedFile(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupId"

    .line 814
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "filePath"

    .line 816
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 817
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 820
    :goto_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMGroupManager;->asyncUploadGroupSharedFile(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    return-object v3
.end method


# virtual methods
.method synthetic lambda$addMembers$1$com-hyphenate-wrapper-EMGroupManagerWrapper(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 513
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager;->addUsersToGroup(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 514
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 516
    invoke-virtual {p0, p1, p4}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$getGroupSpecificationFromServer$0$com-hyphenate-wrapper-EMGroupManagerWrapper(Ljava/lang/String;ZLcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 301
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMGroupManager;->getGroupFromServer(Ljava/lang/String;Z)Lcom/hyphenate/chat/EMGroup;

    move-result-object p1
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 304
    :try_start_1
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMGroupHelper;->toJson(Lcom/hyphenate/chat/EMGroup;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :try_start_2
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 306
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 308
    :try_start_4
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 309
    throw p1
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 311
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$joinPublicGroup$3$com-hyphenate-wrapper-EMGroupManagerWrapper(Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 2

    .line 898
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMGroupManager;->getGroupFromServer(Ljava/lang/String;)Lcom/hyphenate/chat/EMGroup;

    move-result-object v0

    .line 899
    invoke-virtual {v0}, Lcom/hyphenate/chat/EMGroup;->isMemberOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 902
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMGroupManager;->joinGroup(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 903
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_0

    .line 900
    :cond_0
    new-instance p1, Lcom/hyphenate/exceptions/HyphenateException;

    const-string v0, "User has no permission for this operation"

    const/16 v1, 0x25b

    invoke-direct {p1, v1, v0}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 905
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$updateGroupExt$2$com-hyphenate-wrapper-EMGroupManagerWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 876
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMGroupManager;->updateGroupExtension(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMGroup;

    move-result-object p1
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 879
    :try_start_1
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMGroupHelper;->toJson(Lcom/hyphenate/chat/EMGroup;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 883
    :try_start_2
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 881
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 883
    :try_start_4
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 884
    throw p1
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 886
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_1
    return-void
.end method

.method public onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "getGroupWithId"

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-direct {p0, p2}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->getGroupWithId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    const-string v0, "getJoinedGroups"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->getJoinedGroups()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    const-string v0, "getJoinedGroupsFromServer"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->getJoinedGroupsFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    const-string v0, "getPublicGroupsFromServer"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->getPublicGroupsFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    const-string v0, "createGroup"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->createGroup(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    const-string v0, "getGroupSpecificationFromServer"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 50
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->getGroupSpecificationFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    const-string v0, "getGroupMemberListFromServer"

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 52
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->getGroupMemberListFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    const-string v0, "getGroupMuteListFromServer"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 54
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->getGroupMuteListFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    const-string v0, "getGroupWhiteListFromServer"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 56
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->getGroupWhiteListFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_8
    const-string v0, "isMemberInWhiteListFromServer"

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 58
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->isMemberInWhiteListFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_9
    const-string v0, "getGroupFileListFromServer"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 60
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->getGroupFileListFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_a
    const-string v0, "getGroupAnnouncementFromServer"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 62
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->getGroupAnnouncementFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_b
    const-string v0, "getGroupBlockListFromServer"

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 64
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->getGroupBlockListFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_c
    const-string v0, "addMembers"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 66
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->addMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_d
    const-string v0, "inviterUser"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 68
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->inviterUser(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_e
    const-string v0, "removeMembers"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 70
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->removeMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_f
    const-string v0, "blockMembers"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 72
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->blockMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_10
    const-string v0, "unblockMembers"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 74
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->unblockMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_11
    const-string v0, "updateGroupSubject"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 76
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->updateGroupSubject(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_12
    const-string v0, "updateDescription"

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 78
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->updateDescription(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_13
    const-string v0, "leaveGroup"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 80
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->leaveGroup(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_14
    const-string v0, "destroyGroup"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 82
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->destroyGroup(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_15
    const-string v0, "blockGroup"

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 84
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->blockGroup(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_16
    const-string v0, "unblockGroup"

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 86
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->unblockGroup(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_17
    const-string v0, "updateGroupOwner"

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 88
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->updateGroupOwner(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_18
    const-string v0, "addAdmin"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 90
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->addAdmin(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_19
    const-string v0, "removeAdmin"

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 92
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->removeAdmin(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1a
    const-string v0, "muteMembers"

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 94
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->muteMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1b
    const-string v0, "unMuteMembers"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 96
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->unMuteMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1c
    const-string v0, "muteAllMembers"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 98
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->muteAllMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1d
    const-string v0, "unMuteAllMembers"

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 100
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->unMuteAllMembers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1e
    const-string v0, "addWhiteList"

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 102
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->addWhiteList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1f
    const-string v0, "removeWhiteList"

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 104
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->removeWhiteList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_20
    const-string v0, "uploadGroupSharedFile"

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 106
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->uploadGroupSharedFile(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_21
    const-string v0, "downloadGroupSharedFile"

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 108
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->downloadGroupSharedFile(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_22
    const-string v0, "removeGroupSharedFile"

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 110
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->removeGroupSharedFile(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_23
    const-string v0, "updateGroupAnnouncement"

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 112
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->updateGroupAnnouncement(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_24
    const-string v0, "updateGroupExt"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 114
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->updateGroupExt(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_25
    const-string v0, "joinPublicGroup"

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 116
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->joinPublicGroup(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_26
    const-string v0, "requestToJoinGroup"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 118
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->requestToJoinPublicGroup(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_27
    const-string v0, "acceptJoinApplication"

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 120
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->acceptJoinApplication(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_28
    const-string v0, "declineJoinApplication"

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 122
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->declineJoinApplication(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_29
    const-string v0, "acceptInvitationFromGroup"

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 124
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->acceptInvitationFromGroup(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2a
    const-string v0, "declineInvitationFromGroup"

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 126
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->declineInvitationFromGroup(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2b
    const-string v0, "getJoinedGroupsFromServerSimple"

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 128
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->getJoinedGroupsFromServerSimple(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2c
    const-string v0, "setMemberAttributes"

    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 130
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->setMemberAttributes(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2d
    const-string v0, "fetchMemberAttributes"

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 132
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->fetchMemberAttributes(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2e
    const-string v0, "fetchMyGroupsCount"

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 134
    invoke-direct {p0, p3}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->fetchMyGroupsCount(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 136
    :cond_2f
    invoke-super {p0, p1, p2, p3}, Lcom/hyphenate/wrapper/EMBaseWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
