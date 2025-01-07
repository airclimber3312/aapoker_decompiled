.class public abstract Lcom/tencent/imsdk/v2/V2TIMManager;
.super Ljava/lang/Object;
.source "V2TIMManager.java"


# static fields
.field public static final GROUP_TYPE_AVCHATROOM:Ljava/lang/String; = "AVChatRoom"

.field public static final GROUP_TYPE_COMMUNITY:Ljava/lang/String; = "Community"

.field public static final GROUP_TYPE_MEETING:Ljava/lang/String; = "Meeting"

.field public static final GROUP_TYPE_PUBLIC:Ljava/lang/String; = "Public"

.field public static final GROUP_TYPE_WORK:Ljava/lang/String; = "Work"

.field public static final V2TIM_STATUS_LOGINED:I = 0x1

.field public static final V2TIM_STATUS_LOGINING:I = 0x2

.field public static final V2TIM_STATUS_LOGOUT:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConversationManager()Lcom/tencent/imsdk/v2/V2TIMConversationManager;
    .locals 1

    .line 370
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->getInstance()Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getFriendshipManager()Lcom/tencent/imsdk/v2/V2TIMFriendshipManager;
    .locals 1

    .line 379
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->getInstance()Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getGroupManager()Lcom/tencent/imsdk/v2/V2TIMGroupManager;
    .locals 1

    .line 361
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMGroupManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMGroupManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;
    .locals 1

    .line 54
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;
    .locals 1

    .line 352
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->getInstance()Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getOfflinePushManager()Lcom/tencent/imsdk/v2/V2TIMOfflinePushManager;
    .locals 1

    .line 388
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMOfflinePushManager;

    move-result-object v0

    return-object v0
.end method

.method public static getSignalingManager()Lcom/tencent/imsdk/v2/V2TIMSignalingManager;
    .locals 1

    .line 396
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMSignalingManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMSignalingManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract addGroupListener(Lcom/tencent/imsdk/v2/V2TIMGroupListener;)V
.end method

.method public abstract addIMSDKListener(Lcom/tencent/imsdk/v2/V2TIMSDKListener;)V
.end method

.method public abstract addSimpleMsgListener(Lcom/tencent/imsdk/v2/V2TIMSimpleMsgListener;)V
.end method

.method public abstract callExperimentalAPI(Ljava/lang/String;Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dismissGroup(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract getLoginStatus()I
.end method

.method public abstract getLoginUser()Ljava/lang/String;
.end method

.method public abstract getServerTime()J
.end method

.method public abstract getUserStatus(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMUserStatus;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getUsersInfo(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract initSDK(Landroid/content/Context;ILcom/tencent/imsdk/v2/V2TIMSDKConfig;)Z
.end method

.method public abstract initSDK(Landroid/content/Context;ILcom/tencent/imsdk/v2/V2TIMSDKConfig;Lcom/tencent/imsdk/v2/V2TIMSDKListener;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract joinGroup(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract logout(Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract quitGroup(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract removeGroupListener(Lcom/tencent/imsdk/v2/V2TIMGroupListener;)V
.end method

.method public abstract removeIMSDKListener(Lcom/tencent/imsdk/v2/V2TIMSDKListener;)V
.end method

.method public abstract removeSimpleMsgListener(Lcom/tencent/imsdk/v2/V2TIMSimpleMsgListener;)V
.end method

.method public abstract sendC2CCustomMessage([BLjava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract sendC2CTextMessage(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract sendGroupCustomMessage([BLjava/lang/String;ILcom/tencent/imsdk/v2/V2TIMValueCallback;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "I",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract sendGroupTextMessage(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/v2/V2TIMValueCallback;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract setGroupListener(Lcom/tencent/imsdk/v2/V2TIMGroupListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setSelfInfo(Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract setSelfStatus(Lcom/tencent/imsdk/v2/V2TIMUserStatus;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract subscribeUserStatus(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract unInitSDK()V
.end method

.method public abstract unsubscribeUserStatus(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")V"
        }
    .end annotation
.end method
