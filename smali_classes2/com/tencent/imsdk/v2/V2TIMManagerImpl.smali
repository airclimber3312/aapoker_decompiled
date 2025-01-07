.class public Lcom/tencent/imsdk/v2/V2TIMManagerImpl;
.super Lcom/tencent/imsdk/v2/V2TIMManager;
.source "V2TIMManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/v2/V2TIMManagerImpl$V2TIMManagerImplHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "V2TIMManagerImpl"


# instance fields
.field private mGroupInternalListener:Lcom/tencent/imsdk/group/GroupListener;

.field private final mGroupListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIMSDKListener:Lcom/tencent/imsdk/v2/V2TIMSDKListener;

.field private final mIMSDKListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMSDKListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockObject:Ljava/lang/Object;

.field private mMessageInternalListener:Lcom/tencent/imsdk/message/MessageListener;

.field private mV2TIMGroupListener:Lcom/tencent/imsdk/v2/V2TIMGroupListener;

.field private mV2TIMSimpleMsgListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMSimpleMsgListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMManager;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mLockObject:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mIMSDKListenerList:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mGroupListenerList:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mV2TIMSimpleMsgListenerList:Ljava/util/List;

    .line 67
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->initMessageListener()V

    .line 68
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->initGroupListener()V

    .line 69
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->getInstance()Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->initListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mIMSDKListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Lcom/tencent/imsdk/v2/V2TIMSDKListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mIMSDKListener:Lcom/tencent/imsdk/v2/V2TIMSDKListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMSDKListener;)Lcom/tencent/imsdk/v2/V2TIMSDKListener;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mIMSDKListener:Lcom/tencent/imsdk/v2/V2TIMSDKListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Lcom/tencent/imsdk/v2/V2TIMGroupListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mV2TIMGroupListener:Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMGroupListener;)Lcom/tencent/imsdk/v2/V2TIMGroupListener;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mV2TIMGroupListener:Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mGroupListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/lang/Object;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mLockObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mV2TIMSimpleMsgListenerList:Ljava/util/List;

    return-object p0
.end method

.method private callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1236
    invoke-interface {p1, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private callbackOnSuccess(Lcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1242
    invoke-interface {p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/tencent/imsdk/v2/V2TIMManagerImpl;
    .locals 1

    .line 62
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$V2TIMManagerImplHolder;->access$000()Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method private getMessageRevoker(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 980
    instance-of v0, p1, Ljava/util/List;

    const/16 v1, 0x1781

    if-nez v0, :cond_0

    const-string p1, "param is not list"

    .line 981
    invoke-direct {p0, p2, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void

    .line 984
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 985
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 986
    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string p1, "item is no String type"

    .line 987
    invoke-direct {p0, p2, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void

    .line 993
    :cond_1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$27;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$27;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 1019
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p2

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$28;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$28;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/message/MessageCenter;->findMessageByMessageId(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method private getOfflinePushState(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1056
    invoke-static {}, Lcom/tencent/imsdk/offlinePush/OfflinePushManager;->getInstance()Lcom/tencent/imsdk/offlinePush/OfflinePushManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/offlinePush/OfflinePushManager;->getOfflinePushConfig(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method private initGroupListener()V
    .locals 2

    .line 1539
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;

    invoke-direct {v0, p0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mGroupInternalListener:Lcom/tencent/imsdk/group/GroupListener;

    .line 1718
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mGroupInternalListener:Lcom/tencent/imsdk/group/GroupListener;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/group/GroupManager;->setGroupListener(Lcom/tencent/imsdk/group/GroupListener;)V

    return-void
.end method

.method private initLocalStorage(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1261
    instance-of v0, p1, Ljava/lang/String;

    const/16 v1, 0x1781

    if-nez v0, :cond_0

    const-string p1, "param is not string"

    .line 1262
    invoke-direct {p0, p2, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void

    .line 1266
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 1267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "invalid userID"

    .line 1268
    invoke-direct {p0, p2, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void

    .line 1272
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$33;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$33;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/manager/BaseManager;->initLocalStorage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method private initMessageListener()V
    .locals 2

    .line 1460
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$34;

    invoke-direct {v0, p0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$34;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mMessageInternalListener:Lcom/tencent/imsdk/message/MessageListener;

    .line 1535
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mMessageInternalListener:Lcom/tencent/imsdk/message/MessageListener;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/MessageCenter;->addMessageListener(Lcom/tencent/imsdk/message/MessageListener;)V

    return-void
.end method

.method private isCommercialAbilityEnabled(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1144
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1149
    :cond_0
    check-cast p1, Ljava/lang/Long;

    .line 1150
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$31;

    invoke-direct {p1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$31;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/imsdk/manager/BaseManager;->isCommercialAbilityEnabled(JLcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    const/16 p1, 0x1781

    const-string v0, "param is not int"

    .line 1145
    invoke-direct {p0, p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void
.end method

.method private setBuildInfo(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x1781

    if-eqz p1, :cond_2

    .line 1079
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1084
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 1085
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "param is empty"

    .line 1086
    invoke-direct {p0, p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void

    .line 1091
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "buildBrand"

    .line 1092
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "buildManufacturer"

    .line 1093
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "buildModel"

    .line 1094
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "buildVersionRelease"

    .line 1095
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "buildVersionSDKInt"

    .line 1096
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1098
    invoke-static {p1}, Lcom/tencent/imsdk/common/SystemUtil;->setBuildBrand(Ljava/lang/String;)V

    .line 1099
    invoke-static {v2}, Lcom/tencent/imsdk/common/SystemUtil;->setBuildManufacturer(Ljava/lang/String;)V

    .line 1100
    invoke-static {v3}, Lcom/tencent/imsdk/common/SystemUtil;->setBuildModel(Ljava/lang/String;)V

    .line 1101
    invoke-static {v4}, Lcom/tencent/imsdk/common/SystemUtil;->setBuildVersionRelease(Ljava/lang/String;)V

    .line 1102
    invoke-static {v1}, Lcom/tencent/imsdk/common/SystemUtil;->setBuildVersionSDKInt(I)V

    const/4 p1, 0x0

    .line 1104
    invoke-direct {p0, p2, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnSuccess(Lcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "convert param to json failed"

    .line 1106
    invoke-direct {p0, p2, v0, v1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    .line 1107
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p1, "param is not string"

    .line 1080
    invoke-direct {p0, p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void
.end method

.method private setCosSaveRegion(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x1781

    if-eqz p1, :cond_4

    .line 1195
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_2

    .line 1200
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 1201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "param is empty"

    .line 1202
    invoke-direct {p0, p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void

    .line 1207
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "conversationID"

    .line 1208
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "cosSaveRegion"

    .line 1209
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1215
    :cond_2
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->getInstance()Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/v2/V2TIMConversationManagerImpl;->getConversationKey(Ljava/lang/String;)Lcom/tencent/imsdk/conversation/ConversationKey;

    move-result-object p1

    .line 1216
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object v0

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$32;

    invoke-direct {v2, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$32;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/imsdk/conversation/ConversationManager;->setCosSaveRegionForConversation(Lcom/tencent/imsdk/conversation/ConversationKey;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "invalid param"

    .line 1211
    invoke-direct {p0, p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1229
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string p1, "param is not string"

    .line 1196
    invoke-direct {p0, p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void
.end method

.method private setCustomServerInfo(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "isQuic"

    const/16 v1, 0x1781

    if-eqz p1, :cond_9

    .line 1286
    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 1291
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 1292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "param is empty"

    .line 1293
    invoke-direct {p0, p2, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void

    .line 1297
    :cond_1
    new-instance v2, Lcom/tencent/imsdk/manager/CustomServerInfo;

    invoke-direct {v2}, Lcom/tencent/imsdk/manager/CustomServerInfo;-><init>()V

    .line 1300
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "longconnectionAddressList"

    .line 1301
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "port"

    const-string v5, "ip"

    const-string v6, "isIPv6"

    const/4 v7, 0x0

    if-eqz p1, :cond_5

    .line 1302
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 1303
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 1304
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 1305
    invoke-virtual {p1, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1306
    new-instance v11, Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;

    invoke-direct {v11}, Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;-><init>()V

    .line 1307
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;->ip:Ljava/lang/String;

    .line 1308
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;->port:I

    .line 1309
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    iput-boolean v12, v11, Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;->isIPv6:Z

    .line 1310
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    iput-boolean v10, v11, Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;->isQuic:Z

    .line 1312
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1314
    :cond_4
    iput-object v8, v2, Lcom/tencent/imsdk/manager/CustomServerInfo;->longconnectionAddressList:Ljava/util/List;

    :cond_5
    const-string p1, "shortconnectionAddressList"

    .line 1317
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1318
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 1319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 1320
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 1321
    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 1322
    new-instance v10, Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;

    invoke-direct {v10}, Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;-><init>()V

    .line 1323
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;->ip:Ljava/lang/String;

    .line 1324
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;->port:I

    .line 1325
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    :goto_4
    iput-boolean v9, v10, Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;->isIPv6:Z

    .line 1327
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1329
    :cond_7
    iput-object v0, v2, Lcom/tencent/imsdk/manager/CustomServerInfo;->shortconnectionAddressList:Ljava/util/List;

    :cond_8
    const-string p1, "serverPublicKey"

    .line 1332
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/tencent/imsdk/manager/CustomServerInfo;->serverPublicKey:Ljava/lang/String;

    .line 1334
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tencent/imsdk/manager/BaseManager;->setCustomServerInfo(Lcom/tencent/imsdk/manager/CustomServerInfo;)V

    const/4 p1, 0x0

    .line 1336
    invoke-direct {p0, p2, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnSuccess(Lcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    const-string v0, "convert param to json failed"

    .line 1338
    invoke-direct {p0, p2, v1, v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    .line 1339
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5
    return-void

    :cond_9
    :goto_6
    const-string p1, "param is not string"

    .line 1287
    invoke-direct {p0, p2, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void
.end method

.method private setDatabaseEncryptInfo(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "encryptKey"

    const-string v1, "encryptType"

    const/16 v2, 0x1781

    if-eqz p1, :cond_4

    .line 1112
    instance-of v3, p1, Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_2

    .line 1117
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 1118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "param is empty"

    .line 1119
    invoke-direct {p0, p2, v2, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void

    .line 1124
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 1130
    :cond_2
    new-instance p1, Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;

    invoke-direct {p1}, Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;-><init>()V

    .line 1131
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;->encryptType:I

    .line 1132
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;->encryptKey:Ljava/lang/String;

    .line 1134
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/manager/BaseManager;->setDatabaseEncryptInfo(Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;)V

    const/4 p1, 0x0

    .line 1136
    invoke-direct {p0, p2, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnSuccess(Lcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "encryptType and encryptKey must be set"

    .line 1126
    invoke-direct {p0, p2, v2, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "convert param to json failed"

    .line 1138
    invoke-direct {p0, p2, v2, v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    .line 1139
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string p1, "param is not string"

    .line 1113
    invoke-direct {p0, p2, v2, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void
.end method

.method private setIPv6Prior(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1452
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1453
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/manager/BaseManager;->setIPv6Prior(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 1456
    invoke-direct {p0, p2, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnSuccess(Lcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/lang/Object;)V

    return-void
.end method

.method private setLibraryPath(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1247
    instance-of v0, p1, Ljava/lang/String;

    const/16 v1, 0x1781

    if-nez v0, :cond_0

    const-string p1, "param is not string"

    .line 1248
    invoke-direct {p0, p2, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void

    .line 1251
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 1252
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/manager/BaseManager;->setLibraryPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1254
    invoke-direct {p0, p2, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnSuccess(Lcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "system load so library failed"

    .line 1256
    invoke-direct {p0, p2, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setOfflinePushState(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1035
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1040
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/offlinePush/OfflinePushConfig;

    invoke-direct {v0}, Lcom/tencent/imsdk/offlinePush/OfflinePushConfig;-><init>()V

    .line 1041
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/offlinePush/OfflinePushConfig;->setOpenOfflinePush(I)V

    .line 1042
    invoke-static {}, Lcom/tencent/imsdk/offlinePush/OfflinePushManager;->getInstance()Lcom/tencent/imsdk/offlinePush/OfflinePushManager;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$29;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$29;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p1, v0, v1}, Lcom/tencent/imsdk/offlinePush/OfflinePushManager;->setOfflinePushConfig(Lcom/tencent/imsdk/offlinePush/OfflinePushConfig;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    const/16 p1, 0x1781

    const-string v0, "param is not int"

    .line 1036
    invoke-direct {p0, p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void
.end method

.method private setPacketRetryInfo(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packetRequestTimeout"

    const-string v1, "maxRetryCount"

    const/16 v2, 0x1781

    if-eqz p1, :cond_4

    .line 1162
    instance-of v3, p1, Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_1

    .line 1167
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 1168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "param is empty"

    .line 1169
    invoke-direct {p0, p2, v2, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void

    .line 1174
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1175
    new-instance p1, Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;

    invoke-direct {p1}, Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;-><init>()V

    .line 1177
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1178
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;->maxRetryCount:I

    .line 1181
    :cond_2
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1182
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;->packetRequestTimeout:I

    .line 1185
    :cond_3
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/manager/BaseManager;->setPacketRetryInfo(Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;)V

    const/4 p1, 0x0

    .line 1187
    invoke-direct {p0, p2, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnSuccess(Lcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "convert param to json failed"

    .line 1189
    invoke-direct {p0, p2, v2, v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    .line 1190
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p1, "param is not string"

    .line 1163
    invoke-direct {p0, p2, v2, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void
.end method

.method private setProxyInfo(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "proxyPassword"

    const-string v1, "proxyUsername"

    const-string v2, "proxyType"

    const-string v3, "proxyHost"

    const/16 v4, 0x1781

    if-eqz p1, :cond_9

    .line 1369
    instance-of v5, p1, Ljava/lang/String;

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 1374
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 1375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p1, "param is empty"

    .line 1376
    invoke-direct {p0, p2, v4, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void

    .line 1381
    :cond_1
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1382
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "proxyType must be set"

    .line 1383
    invoke-direct {p0, p2, v4, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void

    .line 1390
    :cond_2
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "proxyPort"

    if-eqz p1, :cond_3

    :try_start_1
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1391
    :cond_3
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const-string p1, "proxyHost and proxyPort must be set together if need"

    .line 1392
    invoke-direct {p0, p2, v4, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void

    .line 1397
    :cond_5
    new-instance p1, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;

    invoke-direct {p1}, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;-><init>()V

    .line 1398
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;->proxyType:I

    .line 1400
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1401
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;->proxyHost:Ljava/lang/String;

    .line 1402
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;->proxyPort:I

    .line 1405
    :cond_6
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1406
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;->proxyUsername:Ljava/lang/String;

    .line 1409
    :cond_7
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1410
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;->proxyPassword:Ljava/lang/String;

    .line 1413
    :cond_8
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/manager/BaseManager;->setProxyInfo(Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;)V

    const/4 p1, 0x0

    .line 1415
    invoke-direct {p0, p2, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnSuccess(Lcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "convert param to json failed"

    .line 1417
    invoke-direct {p0, p2, v4, v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    .line 1418
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void

    :cond_9
    :goto_1
    const-string p1, "param is not string"

    .line 1370
    invoke-direct {p0, p2, v4, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void
.end method

.method private setQuicChannelInfo(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x1781

    if-eqz p1, :cond_2

    .line 1344
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1349
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 1350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "param is empty"

    .line 1351
    invoke-direct {p0, p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void

    .line 1356
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "forceUseQuicChannel"

    .line 1357
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 1359
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/manager/BaseManager;->setForceUseQuicChannel(Z)V

    const/4 p1, 0x0

    .line 1361
    invoke-direct {p0, p2, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnSuccess(Lcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "convert param to json failed"

    .line 1363
    invoke-direct {p0, p2, v0, v1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    .line 1364
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p1, "param is not string"

    .line 1345
    invoke-direct {p0, p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void
.end method

.method private setSDKListener(Lcom/tencent/imsdk/v2/V2TIMSDKListener;)V
    .locals 2

    .line 205
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$2;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMSDKListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setTestEnvironment(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1444
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1445
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/manager/BaseManager;->setTestEnvironment(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 1448
    invoke-direct {p0, p2, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnSuccess(Lcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/lang/Object;)V

    return-void
.end method

.method private setUIPlatform(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x1781

    if-nez p1, :cond_0

    const-string p1, "param is null"

    .line 1424
    invoke-direct {p0, p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void

    .line 1430
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1431
    check-cast p1, Ljava/lang/String;

    goto :goto_1

    .line 1432
    :cond_1
    instance-of v1, p1, Ljava/lang/Integer;

    const-string v3, ""

    if-eqz v1, :cond_2

    .line 1433
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_2
    const-string p1, "param is invalid"

    .line 1435
    invoke-direct {p0, p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    :goto_0
    move-object p1, v3

    .line 1438
    :goto_1
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/tencent/imsdk/manager/BaseManager;->setCustomUIPlatform(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 1440
    invoke-direct {p0, p2, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnSuccess(Lcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/lang/Object;)V

    return-void
.end method

.method private writeLog(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x1781

    if-eqz p1, :cond_7

    .line 934
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_2

    .line 939
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 940
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "param is empty"

    .line 941
    invoke-direct {p0, p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void

    .line 946
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "logLevel"

    .line 947
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "logContent"

    .line 948
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fileName"

    .line 949
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    const/4 v3, 0x3

    if-eq p1, v3, :cond_5

    const/4 v3, 0x4

    if-eq p1, v3, :cond_4

    const/4 v3, 0x5

    if-eq p1, v3, :cond_3

    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    const-string p1, "invalid logLevel"

    .line 968
    invoke-direct {p0, p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void

    .line 965
    :cond_2
    invoke-static {v1, v2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 962
    :cond_3
    invoke-static {v1, v2}, Lcom/tencent/imsdk/common/IMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 959
    :cond_4
    invoke-static {v1, v2}, Lcom/tencent/imsdk/common/IMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 956
    :cond_5
    invoke-static {v1, v2}, Lcom/tencent/imsdk/common/IMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 953
    :cond_6
    invoke-static {v1, v2}, Lcom/tencent/imsdk/common/IMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 972
    invoke-direct {p0, p2, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnSuccess(Lcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "convert param to json failed"

    .line 974
    invoke-direct {p0, p2, v0, v1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    .line 975
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void

    :cond_7
    :goto_2
    const-string p1, "param is not string"

    .line 935
    invoke-direct {p0, p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addGroupListener(Lcom/tencent/imsdk/v2/V2TIMGroupListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 572
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$13;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$13;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMGroupListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addIMSDKListener(Lcom/tencent/imsdk/v2/V2TIMSDKListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$3;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMSDKListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addSimpleMsgListener(Lcom/tencent/imsdk/v2/V2TIMSimpleMsgListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mV2TIMSimpleMsgListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    monitor-exit v0

    return-void

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mV2TIMSimpleMsgListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public callExperimentalAPI(Ljava/lang/String;Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
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

    .line 890
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1781

    if-eqz v0, :cond_0

    const-string p1, "invalid api"

    .line 891
    invoke-direct {p0, p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "setCustomServerInfo"

    .line 894
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    invoke-direct {p0, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->setCustomServerInfo(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "setQuicChannelInfo"

    .line 896
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 897
    invoke-direct {p0, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->setQuicChannelInfo(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "setProxyInfo"

    .line 898
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 899
    invoke-direct {p0, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->setProxyInfo(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "setLibraryPath"

    .line 900
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 901
    invoke-direct {p0, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->setLibraryPath(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "initLocalStorage"

    .line 902
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 903
    invoke-direct {p0, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->initLocalStorage(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "setTestEnvironment"

    .line 904
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 905
    invoke-direct {p0, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->setTestEnvironment(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "setIPv6Prior"

    .line 906
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 907
    invoke-direct {p0, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->setIPv6Prior(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "setCosSaveRegionForConversation"

    .line 908
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 909
    invoke-direct {p0, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->setCosSaveRegion(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "setUIPlatform"

    .line 910
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 911
    invoke-direct {p0, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->setUIPlatform(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "setBuildInfo"

    .line 912
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 913
    invoke-direct {p0, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->setBuildInfo(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto :goto_0

    :cond_a
    const-string v0, "setDatabaseEncryptInfo"

    .line 914
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 915
    invoke-direct {p0, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->setDatabaseEncryptInfo(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto :goto_0

    :cond_b
    const-string v0, "isCommercialAbilityEnabled"

    .line 916
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 917
    invoke-direct {p0, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->isCommercialAbilityEnabled(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto :goto_0

    :cond_c
    const-string v0, "setPacketRetryInfo"

    .line 918
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 919
    invoke-direct {p0, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->setPacketRetryInfo(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto :goto_0

    :cond_d
    const-string v0, "setOfflinePushState"

    .line 920
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 921
    invoke-direct {p0, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->setOfflinePushState(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto :goto_0

    :cond_e
    const-string v0, "getOfflinePushState"

    .line 922
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 923
    invoke-direct {p0, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->getOfflinePushState(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto :goto_0

    :cond_f
    const-string v0, "getMessageRevoker"

    .line 924
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 925
    invoke-direct {p0, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->getMessageRevoker(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto :goto_0

    :cond_10
    const-string v0, "writeLog"

    .line 926
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 927
    invoke-direct {p0, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->writeLog(Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto :goto_0

    :cond_11
    const-string p1, "unsupported api"

    .line 929
    invoke-direct {p0, p3, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->callbackOnError(Lcom/tencent/imsdk/v2/V2TIMValueCallback;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public createGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 3
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

    .line 598
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x1781

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    const-string p1, "groupType is empty"

    .line 600
    invoke-interface {p4, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 604
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_2

    const-string p1, "groupName is empty"

    .line 606
    invoke-interface {p4, v1, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "Work"

    .line 611
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Private"

    if-eqz v0, :cond_4

    :goto_0
    move-object p1, v1

    goto :goto_3

    :cond_4
    const-string v0, "Meeting"

    .line 613
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "ChatRoom"

    if-eqz v0, :cond_5

    :goto_1
    move-object p1, v2

    goto :goto_3

    .line 615
    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 617
    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    const-string v0, "Public"

    .line 619
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_2
    move-object p1, v0

    goto :goto_3

    :cond_8
    const-string v0, "AVChatRoom"

    .line 621
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    .line 625
    :cond_9
    :goto_3
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$15;

    invoke-direct {v1, p0, p4}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$15;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/tencent/imsdk/group/GroupManager;->createGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public dismissGroup(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 684
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string v0, "invalid groupID"

    .line 686
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 691
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$18;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$18;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/group/GroupManager;->dismissGroup(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getLoginStatus()I
    .locals 1

    .line 316
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->getLoginStatus()I

    move-result v0

    return v0
.end method

.method public getLoginUser()Ljava/lang/String;
    .locals 1

    .line 311
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->getLoginUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTime()J
    .locals 2

    .line 255
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->getServerTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserStatus(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
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

    if-eqz p1, :cond_1

    .line 780
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 787
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$22;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$22;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 809
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p2

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$23;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$23;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getUserStatus(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/16 p1, 0x1781

    const-string v0, "invalid userIDList"

    .line 782
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getUsersInfo(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 2
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

    if-eqz p1, :cond_1

    .line 706
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 713
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$19;

    invoke-direct {v0, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$19;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 735
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p2

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$20;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$20;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getUsersInfo(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/16 p1, 0x1781

    const-string v0, "invalid userIDList"

    .line 708
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 250
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initSDK(Landroid/content/Context;ILcom/tencent/imsdk/v2/V2TIMSDKConfig;)Z
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->initSDK(Landroid/content/Context;ILcom/tencent/imsdk/v2/V2TIMSDKConfig;Lcom/tencent/imsdk/v2/V2TIMSDKListener;)Z

    move-result p1

    return p1
.end method

.method public initSDK(Landroid/content/Context;ILcom/tencent/imsdk/v2/V2TIMSDKConfig;Lcom/tencent/imsdk/v2/V2TIMSDKListener;)Z
    .locals 5

    if-nez p3, :cond_0

    .line 80
    new-instance p3, Lcom/tencent/imsdk/v2/V2TIMSDKConfig;

    invoke-direct {p3}, Lcom/tencent/imsdk/v2/V2TIMSDKConfig;-><init>()V

    .line 82
    :cond_0
    invoke-virtual {p3}, Lcom/tencent/imsdk/v2/V2TIMSDKConfig;->getLogListener()Lcom/tencent/imsdk/v2/V2TIMLogListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 85
    :goto_0
    new-instance v2, Lcom/tencent/imsdk/manager/SDKConfig;

    invoke-direct {v2}, Lcom/tencent/imsdk/manager/SDKConfig;-><init>()V

    int-to-long v3, p2

    .line 86
    iput-wide v3, v2, Lcom/tencent/imsdk/manager/SDKConfig;->sdkAppId:J

    .line 87
    iget-object p2, v2, Lcom/tencent/imsdk/manager/SDKConfig;->logSetting:Lcom/tencent/imsdk/manager/SDKConfig$LogSetting;

    invoke-virtual {p3}, Lcom/tencent/imsdk/v2/V2TIMSDKConfig;->getLogLevel()I

    move-result p3

    iput p3, p2, Lcom/tencent/imsdk/manager/SDKConfig$LogSetting;->logLevel:I

    .line 88
    invoke-direct {p0, p4}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->setSDKListener(Lcom/tencent/imsdk/v2/V2TIMSDKListener;)V

    .line 89
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object p2

    new-instance p3, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;

    invoke-direct {p3, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMLogListener;)V

    invoke-virtual {p2, p1, v2, v1, p3}, Lcom/tencent/imsdk/manager/BaseManager;->initSDK(Landroid/content/Context;Lcom/tencent/imsdk/manager/SDKConfig;ZLcom/tencent/imsdk/manager/SDKListener;)Z

    move-result p1

    return p1
.end method

.method public joinGroup(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 640
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x1781

    const-string p2, "invalid groupID"

    .line 642
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 647
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$16;

    invoke-direct {v1, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$16;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/group/GroupManager;->joinGroup(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$5;

    invoke-direct {v0, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$5;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    .line 281
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object p3

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$6;

    invoke-direct {v1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$6;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {p3, p1, p2, v1}, Lcom/tencent/imsdk/manager/BaseManager;->login(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    const/16 p1, 0x1781

    const-string p2, "userID or userSig is empty"

    .line 261
    invoke-interface {p3, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public logout(Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 296
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$7;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$7;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/manager/BaseManager;->logout(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public quitGroup(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 662
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x1781

    const-string v0, "invalid groupID"

    .line 664
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 669
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$17;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$17;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/group/GroupManager;->quitGroup(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public removeGroupListener(Lcom/tencent/imsdk/v2/V2TIMGroupListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 588
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$14;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$14;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMGroupListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeIMSDKListener(Lcom/tencent/imsdk/v2/V2TIMSDKListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$4;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMSDKListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeSimpleMsgListener(Lcom/tencent/imsdk/v2/V2TIMSimpleMsgListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mV2TIMSimpleMsgListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 339
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendC2CCustomMessage([BLjava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)Ljava/lang/String;
    .locals 9
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

    const/16 v0, 0x1781

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "customData is null"

    .line 394
    invoke-interface {p3, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-object v1

    .line 398
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_2

    const-string p1, "userID is empty"

    .line 400
    invoke-interface {p3, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-object v1

    .line 404
    :cond_3
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->getInstance()Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->createCustomMessage([B)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    .line 406
    new-instance v8, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$9;

    invoke-direct {v8, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$9;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 427
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    new-instance v7, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;

    invoke-direct {v7}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;-><init>()V

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)Ljava/lang/String;

    .line 436
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sendC2CTextMessage(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)Ljava/lang/String;
    .locals 9
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

    const/16 v0, 0x1781

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "text is null"

    .line 346
    invoke-interface {p3, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-object v1

    .line 350
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_2

    const-string p1, "userID is empty"

    .line 352
    invoke-interface {p3, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-object v1

    .line 356
    :cond_3
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->getInstance()Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->createTextMessage(Ljava/lang/String;)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    .line 358
    new-instance v8, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$8;

    invoke-direct {v8, p0, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$8;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 379
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    new-instance v7, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;

    invoke-direct {v7}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;-><init>()V

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sendGroupCustomMessage([BLjava/lang/String;ILcom/tencent/imsdk/v2/V2TIMValueCallback;)Ljava/lang/String;
    .locals 9
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

    const/16 v0, 0x1781

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    const-string p1, "customData is null"

    .line 499
    invoke-interface {p4, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 503
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p4, :cond_2

    const-string p1, "groupID is empty"

    .line 505
    invoke-interface {p4, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    const-string p1, ""

    return-object p1

    .line 510
    :cond_3
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->getInstance()Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->createCustomMessage([B)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    const/4 v0, 0x2

    if-nez p3, :cond_5

    :cond_4
    const/4 v5, 0x2

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    if-eq p3, v1, :cond_6

    const/4 v1, 0x3

    if-ne p3, v1, :cond_4

    :cond_6
    move v5, p3

    .line 518
    :goto_0
    new-instance v8, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$11;

    invoke-direct {v8, p0, p4}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$11;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 539
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;

    invoke-direct {v7}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;-><init>()V

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)Ljava/lang/String;

    .line 548
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sendGroupTextMessage(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/v2/V2TIMValueCallback;)Ljava/lang/String;
    .locals 9
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

    const/16 v0, 0x1781

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    const-string p1, "text is null"

    .line 443
    invoke-interface {p4, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 447
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p4, :cond_2

    const-string p1, "groupID is empty"

    .line 449
    invoke-interface {p4, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_2
    const-string p1, ""

    return-object p1

    .line 454
    :cond_3
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->getInstance()Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->createTextMessage(Ljava/lang/String;)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    const/4 v0, 0x2

    if-nez p3, :cond_5

    :cond_4
    const/4 v5, 0x2

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    if-eq p3, v1, :cond_6

    const/4 v1, 0x3

    if-ne p3, v1, :cond_4

    :cond_6
    move v5, p3

    .line 462
    :goto_0
    new-instance v8, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$10;

    invoke-direct {v8, p0, p4}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$10;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 483
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;

    invoke-direct {v7}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;-><init>()V

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)Ljava/lang/String;

    .line 492
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setGroupListener(Lcom/tencent/imsdk/v2/V2TIMGroupListener;)V
    .locals 2

    .line 553
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$12;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$12;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMGroupListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSelfInfo(Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    const/16 v0, 0x1781

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "invalid params"

    .line 752
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 757
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getModifyParams()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 758
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 765
    :cond_2
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getModifyParams()Ljava/util/HashMap;

    move-result-object p1

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$21;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$21;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->setSelfInfo(Ljava/util/HashMap;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    const-string p1, "no changed info"

    .line 760
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setSelfStatus(Lcom/tencent/imsdk/v2/V2TIMUserStatus;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    const/16 v0, 0x1781

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "invalid params"

    .line 826
    invoke-interface {p2, v0, p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 831
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMUserStatus;->getUserStatus()Lcom/tencent/imsdk/relationship/UserStatus;

    move-result-object p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    const-string v1, "no userStatus"

    .line 834
    invoke-interface {p2, v0, v1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    .line 838
    :cond_2
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$24;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$24;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->setSelfStatus(Lcom/tencent/imsdk/relationship/UserStatus;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public subscribeUserStatus(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2
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

    if-eqz p1, :cond_1

    .line 853
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 860
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$25;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$25;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->subscribeUserStatus(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/16 p1, 0x1781

    const-string v0, "invalid userIDList"

    .line 855
    invoke-interface {p2, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public unInitSDK()V
    .locals 1

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->mIMSDKListener:Lcom/tencent/imsdk/v2/V2TIMSDKListener;

    .line 200
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->unInitSDK()V

    .line 201
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->getInstance()Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->unInit()V

    return-void
.end method

.method public unsubscribeUserStatus(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2
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

    .line 875
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$26;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$26;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->unsubscribeUserStatus(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method
