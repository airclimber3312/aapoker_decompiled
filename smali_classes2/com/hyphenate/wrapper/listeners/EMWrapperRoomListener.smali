.class public Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;
.super Ljava/lang/Object;
.source "EMWrapperRoomListener.java"

# interfaces
.implements Lcom/hyphenate/EMChatRoomChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAdminAdded$10(Lorg/json/JSONObject;)V
    .locals 3

    .line 139
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onAdminAddedFromRoom"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatRoomListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdminRemoved$11(Lorg/json/JSONObject;)V
    .locals 3

    .line 151
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onAdminRemovedFromRoom"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatRoomListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAllMemberMuteStateChanged$2(Lorg/json/JSONObject;)V
    .locals 3

    .line 47
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onAllMemberMuteChangedFromRoom"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatRoomListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAnnouncementChanged$13(Lorg/json/JSONObject;)V
    .locals 3

    .line 176
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onAnnouncementChangedFromRoom"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatRoomListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAttributesRemoved$16(Lorg/json/JSONObject;)V
    .locals 3

    .line 213
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onAttributesRemovedFromRoom"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatRoomListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAttributesUpdate$15(Lorg/json/JSONObject;)V
    .locals 3

    .line 200
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onAttributesChangedFromRoom"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatRoomListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onChatRoomDestroyed$3(Lorg/json/JSONObject;)V
    .locals 3

    .line 59
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onDestroyedFromRoom"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatRoomListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onMemberExited$5(Lorg/json/JSONObject;)V
    .locals 3

    .line 84
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onMemberExitedFromRoom"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatRoomListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onMemberJoined$4(Lorg/json/JSONObject;)V
    .locals 3

    .line 71
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onMemberJoinedFromRoom"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatRoomListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onMuteListAdded$8(Lorg/json/JSONObject;)V
    .locals 3

    .line 115
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onMuteListAddedFromRoom"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatRoomListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onMuteListRemoved$9(Lorg/json/JSONObject;)V
    .locals 3

    .line 127
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onMuteListRemovedFromRoom"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatRoomListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onOwnerChanged$12(Lorg/json/JSONObject;)V
    .locals 3

    .line 164
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onOwnerChangedFromRoom"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatRoomListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onRemovedFromChatRoom$6(Lorg/json/JSONObject;)V
    .locals 3

    .line 99
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onRemovedFromRoom"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatRoomListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onRemovedFromChatRoom$7(Lorg/json/JSONObject;)V
    .locals 3

    .line 101
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onRemoveFromRoomByOffline"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatRoomListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onSpecificationChanged$14(Lorg/json/JSONObject;)V
    .locals 3

    .line 187
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onSpecificationChangedFromRoom"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatRoomListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onWhiteListAdded$0(Lorg/json/JSONObject;)V
    .locals 3

    .line 23
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onAddWhiteListMembersFromRoom"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatRoomListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onWhiteListRemoved$1(Lorg/json/JSONObject;)V
    .locals 3

    .line 35
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onRemoveWhiteListMembersFromRoom"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatRoomListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAdminAdded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "roomId"

    .line 137
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "userId"

    .line 138
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda4;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda4;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onAdminRemoved(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 147
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "roomId"

    .line 149
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "userId"

    .line 150
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda10;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda10;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onAllMemberMuteStateChanged(Ljava/lang/String;Z)V
    .locals 2

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "roomId"

    .line 45
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "isAllMuted"

    .line 46
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 47
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda6;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda6;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onAnnouncementChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 172
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "roomId"

    .line 174
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "announcement"

    .line 175
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda3;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda3;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onAttributesRemoved(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 208
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "roomId"

    .line 210
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "list"

    .line 211
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "userId"

    .line 212
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda5;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda5;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 215
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onAttributesUpdate(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 195
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "roomId"

    .line 197
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "kv"

    .line 198
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "userId"

    .line 199
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda11;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda11;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 202
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onChatRoomDestroyed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "roomId"

    .line 57
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "name"

    .line 58
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda9;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda9;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onMemberExited(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 79
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "roomId"

    .line 81
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "name"

    .line 82
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "userId"

    .line 83
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda12;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda12;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onMemberJoined(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "roomId"

    .line 69
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "userId"

    .line 70
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda2;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onMuteListAdded(Ljava/lang/String;Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 110
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "roomId"

    .line 112
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "userIds"

    .line 113
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "expireTime"

    .line 114
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda8;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda8;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onMuteListRemoved(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 123
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "roomId"

    .line 125
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "userIds"

    .line 126
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda0;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onOwnerChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 159
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "roomId"

    .line 161
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "newOwner"

    .line 162
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "oldOwner"

    .line 163
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda1;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onRemovedFromChatRoom(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 92
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "roomId"

    .line 95
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "name"

    .line 96
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "userId"

    .line 97
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p1, :cond_0

    .line 99
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda14;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda14;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 101
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda15;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda15;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSpecificationChanged(Lcom/hyphenate/chat/EMChatRoom;)V
    .locals 2

    .line 184
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "room"

    .line 186
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatRoomHelper;->toJson(Lcom/hyphenate/chat/EMChatRoom;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda13;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda13;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 189
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onWhiteListAdded(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "roomId"

    .line 21
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "userIds"

    .line 22
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda16;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda16;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onWhiteListRemoved(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "roomId"

    .line 33
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "userIds"

    .line 34
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda7;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener$$ExternalSyntheticLambda7;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 0

    .line 220
    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMWrapperThreadUtil;->mainThreadExecute(Ljava/lang/Runnable;)V

    return-void
.end method
