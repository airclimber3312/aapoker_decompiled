.class public Lcom/tencent/imsdk/manager/BaseManager;
.super Ljava/lang/Object;
.source "BaseManager.java"

# interfaces
.implements Lcom/tencent/imsdk/common/NetworkInfoCenter$INetworkChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/manager/BaseManager$BaseManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseManager"

.field public static final TUI_COMPONENT_CHAT:I = 0x3

.field private static final TUI_COMPONENT_CHECK_COUNT_LIMIT:I = 0x5

.field public static final TUI_COMPONENT_COMMUNITY:I = 0x8

.field public static final TUI_COMPONENT_CONTACT:I = 0x4

.field public static final TUI_COMPONENT_CONVERSATION:I = 0x2

.field public static final TUI_COMPONENT_CORE:I = 0x1

.field public static final TUI_COMPONENT_GROUP:I = 0x5

.field public static final TUI_COMPONENT_OFFLINEPUSH:I = 0x7

.field public static final TUI_COMPONENT_SEARCH:I = 0x6

.field private static final TUI_COMPONENT_STACK_LAYER_LIMIT:I = 0xa

.field public static final TUI_COMPONENT_UNKNOWN:I = 0x0

.field private static final UI_PLATFORM_FLUTTER:I = 0x1

.field private static final UI_PLATFORM_FLUTTER_UIKIT:I = 0x2

.field private static final UI_PLATFORM_TUIKIT:I = 0xf

.field private static final UI_PLATFORM_UNITY:I = 0x5

.field private static final UI_PLATFORM_UNITY_UIKIT:I = 0x6

.field private static final UI_PLATFORM_UNKNOWN:I = 0x0

.field private static mLoadLibrarySuccess:Z = false


# instance fields
.field private forceUseQuicChannel:Z

.field private isIPv6Prior:Z

.field private isInit:Z

.field private isTestEnvironment:Z

.field private mDatabaseEncryptInfo:Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;

.field private mInvokeFromTUICore:Z

.field private mInvokeFromTUIKit:Z

.field private mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

.field private mNumberUIPlatform:I

.field private mPacketRetryInfo:Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;

.field private mProxyInfo:Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;

.field private mStringUIPlatform:Ljava/lang/String;

.field private mTUIComponentCheckCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTUIComponentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sdkListenerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/imsdk/manager/SDKListener;",
            ">;"
        }
    .end annotation
.end field

.field private userPreference:Lcom/tencent/imsdk/manager/UserPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    :try_start_0
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->loadIMLibrary()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/imsdk/manager/BaseManager;->mLoadLibrarySuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    sget-object v1, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUIKit:Z

    .line 53
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUICore:Z

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    .line 58
    new-instance v1, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-direct {v1}, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;-><init>()V

    iput-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    .line 60
    new-instance v1, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;

    invoke-direct {v1}, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;-><init>()V

    iput-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mProxyInfo:Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;

    .line 62
    new-instance v1, Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;

    invoke-direct {v1}, Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;-><init>()V

    iput-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mDatabaseEncryptInfo:Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;

    .line 64
    new-instance v1, Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;

    invoke-direct {v1}, Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;-><init>()V

    iput-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mPacketRetryInfo:Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;

    const-string v1, ""

    .line 77
    iput-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mStringUIPlatform:Ljava/lang/String;

    .line 78
    iput v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mNumberUIPlatform:I

    .line 80
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    .line 81
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isTestEnvironment:Z

    .line 82
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->forceUseQuicChannel:Z

    .line 83
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isIPv6Prior:Z

    .line 85
    new-instance v0, Lcom/tencent/imsdk/manager/UserPreference;

    invoke-direct {v0}, Lcom/tencent/imsdk/manager/UserPreference;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->userPreference:Lcom/tencent/imsdk/manager/UserPreference;

    return-void
.end method

.method public static getInstance()Lcom/tencent/imsdk/manager/BaseManager;
    .locals 1

    .line 92
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager$BaseManagerHolder;->access$000()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    return-object v0
.end method

.method private getUIPlatform()I
    .locals 2

    .line 180
    iget v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mNumberUIPlatform:I

    if-eqz v0, :cond_0

    return v0

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->isTUIKit()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUIKit:Z

    .line 185
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->isFlutter()Z

    move-result v0

    .line 186
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->isUnity()Z

    move-result v1

    if-eqz v0, :cond_2

    .line 188
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUIKit:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    if-eqz v1, :cond_4

    .line 194
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUIKit:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    return v0

    :cond_3
    const/4 v0, 0x5

    return v0

    .line 199
    :cond_4
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUIKit:Z

    if-eqz v0, :cond_5

    const/16 v0, 0xf

    return v0

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private hasTUIChat()Z
    .locals 1

    :try_start_0
    const-string v0, "com.tencent.qcloud.tuikit.tuichat.model.ChatProvider"

    .line 419
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasTUICommunity()Z
    .locals 1

    :try_start_0
    const-string v0, "com.tencent.qcloud.tuikit.tuicommunity.model.CommunityProvider"

    .line 479
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasTUIContact()Z
    .locals 1

    :try_start_0
    const-string v0, "com.tencent.qcloud.tuikit.tuicontact.model.ContactProvider"

    .line 431
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasTUIConversation()Z
    .locals 1

    :try_start_0
    const-string v0, "com.tencent.qcloud.tuikit.tuiconversation.model.ConversationProvider"

    .line 407
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasTUIGroup()Z
    .locals 1

    :try_start_0
    const-string v0, "com.tencent.qcloud.tuikit.tuigroup.model.GroupInfoProvider"

    .line 443
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasTUIOfflinePush()Z
    .locals 1

    :try_start_0
    const-string v0, "com.tencent.qcloud.tim.tuiofflinepush.TUIOfflinePushManager"

    .line 467
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasTUISearch()Z
    .locals 1

    :try_start_0
    const-string v0, "com.tencent.qcloud.tuikit.tuisearch.model.SearchDataProvider"

    .line 455
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isFlutter()Z
    .locals 1

    :try_start_0
    const-string v0, "com.qq.qcloud.tencent_im_sdk_plugin.tencent_im_sdk_plugin"

    .line 271
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTUICore()Z
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.tencent.qcloud.tuicore.TUICore"

    .line 244
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    .line 253
    :catch_0
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 255
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    const/16 v4, 0xf

    if-le v3, v4, :cond_1

    return v2

    .line 259
    :cond_1
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 260
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tuicore"

    .line 261
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private isTUIKit()Z
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.tencent.qcloud.tim.uikit.TUIKit"

    .line 208
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    :catch_0
    :cond_0
    :try_start_1
    const-string v1, "com.tencent.qcloud.tuicore.TUICore"

    .line 217
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_1

    return v0

    .line 226
    :catch_1
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 228
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_5

    const/16 v4, 0xf

    if-le v3, v4, :cond_2

    return v2

    .line 232
    :cond_2
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tuikitimpl"

    .line 234
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "tuicore"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0

    :cond_5
    return v2
.end method

.method private isUnity()Z
    .locals 1

    :try_start_0
    const-string v0, "com.qcloud.tencentimsdk.TencentImSDKPluginUnity"

    .line 283
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private reportTUIComponentUsage()V
    .locals 9

    .line 357
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->isTUICore()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUICore:Z

    .line 359
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUIKit:Z

    if-eqz v0, :cond_8

    .line 368
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUICore:Z

    if-eqz v0, :cond_6

    .line 369
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->hasTUIConversation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->hasTUIChat()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_1
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->hasTUIContact()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_2
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->hasTUIGroup()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 383
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_3
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->hasTUISearch()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 387
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_4
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->hasTUIOfflinePush()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 391
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_5
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->hasTUICommunity()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 395
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 398
    :cond_6
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/tencent/imsdk/manager/BaseManager;->nativeReportTUIComponentUsage(Ljava/util/List;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public checkTUIComponent(I)V
    .locals 4

    .line 294
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUICore:Z

    if-nez v0, :cond_1

    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x2

    const/4 v1, 0x5

    if-ne p1, v0, :cond_4

    const-string v0, "conversationprovider"

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const-string v0, "chatprovider"

    goto :goto_0

    :cond_5
    if-ne p1, v1, :cond_6

    const-string v0, "groupInfoprovider"

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    const-string v0, "contactprovider"

    goto :goto_0

    :cond_7
    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    const-string v0, "searchdataprovider"

    goto :goto_0

    :cond_8
    const/4 v0, 0x7

    if-ne p1, v0, :cond_9

    const-string v0, "tuiofflinepushmanager"

    goto :goto_0

    :cond_9
    const/16 v0, 0x8

    if-ne p1, v0, :cond_d

    const-string v0, "communityprovider"

    .line 329
    :goto_0
    iget-object v2, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v1, :cond_c

    add-int/lit8 v2, v2, 0x1

    .line 332
    iget-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    .line 337
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_c

    const/16 v3, 0xa

    if-lt v2, v3, :cond_a

    return-void

    .line 342
    :cond_a
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {p0, v0}, Lcom/tencent/imsdk/manager/BaseManager;->nativeReportTUIComponentUsage(Ljava/util/List;)V

    .line 349
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_c
    :goto_2
    return-void

    .line 325
    :cond_d
    sget-object v0, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown tui component type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableSignaling(Z)V
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->userPreference:Lcom/tencent/imsdk/manager/UserPreference;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/manager/UserPreference;->setEnableSignaling(Ljava/lang/Boolean;)V

    .line 654
    iget-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->userPreference:Lcom/tencent/imsdk/manager/UserPreference;

    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/manager/BaseManager;->nativeSetUserPreference(Lcom/tencent/imsdk/manager/UserPreference;)V

    return-void
.end method

.method public getClockTickInHz()J
    .locals 2

    .line 580
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_0

    .line 581
    sget-object v0, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string v1, "sdk not init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0

    .line 584
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/manager/BaseManager;->nativeGetClockTickInHz()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLoginStatus()I
    .locals 2

    .line 560
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_0

    .line 561
    sget-object v0, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string v1, "sdk not init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    return v0

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/manager/BaseManager;->nativeGetLoginStatus()I

    move-result v0

    return v0
.end method

.method public getLoginUser()Ljava/lang/String;
    .locals 2

    .line 552
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_0

    .line 553
    sget-object v0, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string v1, "sdk not init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/manager/BaseManager;->nativeGetLoginUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTime()J
    .locals 2

    .line 596
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_0

    .line 597
    sget-object v0, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string v1, "sdk not init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0

    .line 600
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/manager/BaseManager;->nativeGetServerTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeTick()J
    .locals 2

    .line 588
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_0

    .line 589
    sget-object v0, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string v1, "sdk not init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0

    .line 592
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/manager/BaseManager;->nativeGetTimeTick()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 568
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_0

    .line 569
    sget-object v0, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string v1, "sdk not init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/manager/BaseManager;->nativeGetSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initLocalStorage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 604
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 606
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 611
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/manager/BaseManager;->nativeInitLocalStorage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public initSDK(Landroid/content/Context;Lcom/tencent/imsdk/manager/SDKConfig;ZLcom/tencent/imsdk/manager/SDKListener;)Z
    .locals 6

    .line 97
    sget-boolean v0, Lcom/tencent/imsdk/manager/BaseManager;->mLoadLibrarySuccess:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    sget-object p1, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string p2, "libimsdk.so is not loaded"

    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 102
    :cond_0
    iget-wide v2, p2, Lcom/tencent/imsdk/manager/SDKConfig;->sdkAppId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 103
    sget-object p1, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "invalid sdkAppID:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p2, Lcom/tencent/imsdk/manager/SDKConfig;->sdkAppId:J

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    if-nez p1, :cond_2

    .line 108
    sget-object p1, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string p2, "null context"

    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 112
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 113
    sget-object p1, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string p2, "Has initSDK"

    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 117
    :cond_3
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/imsdk/common/IMContext;->init(Landroid/content/Context;)V

    .line 118
    invoke-static {}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInstance()Lcom/tencent/imsdk/common/NetworkInfoCenter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->init(Landroid/content/Context;Lcom/tencent/imsdk/common/NetworkInfoCenter$INetworkChangeListener;)V

    .line 119
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/message/MessageCenter;->init()V

    .line 120
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/group/GroupManager;->init()V

    .line 121
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/conversation/ConversationManager;->init()V

    .line 122
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->init()V

    .line 123
    invoke-static {}, Lcom/tencent/imsdk/signaling/SignalingManager;->getInstance()Lcom/tencent/imsdk/signaling/SignalingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/signaling/SignalingManager;->init()V

    .line 125
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getSDKInitPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->sdkInitPath:Ljava/lang/String;

    .line 126
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getInstanceType()I

    move-result p1

    int-to-long v2, p1

    iput-wide v2, p2, Lcom/tencent/imsdk/manager/SDKConfig;->sdkInstanceType:J

    .line 127
    iget-boolean p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->isTestEnvironment:Z

    iput-boolean p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->isTestEnvironment:Z

    .line 128
    iget-boolean p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->forceUseQuicChannel:Z

    iput-boolean p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->forceUseQuicChannel:Z

    .line 129
    iget-boolean p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->isIPv6Prior:Z

    iput-boolean p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->isIPv6Prior:Z

    .line 130
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->deviceInfo:Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;->deviceType:Ljava/lang/String;

    .line 131
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->deviceInfo:Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;->deviceId:Ljava/lang/String;

    .line 132
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->deviceInfo:Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getInstanceType()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p1, Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;->deviceBrand:J

    .line 133
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->deviceInfo:Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getSystemVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;->systemVersion:Ljava/lang/String;

    .line 134
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->networkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInstance()Lcom/tencent/imsdk/common/NetworkInfoCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getNetworkType()I

    move-result v0

    iput v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkType:I

    .line 135
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->networkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInstance()Lcom/tencent/imsdk/common/NetworkInfoCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getIPType()I

    move-result v0

    iput v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->ipType:I

    .line 136
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->networkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInstance()Lcom/tencent/imsdk/common/NetworkInfoCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getNetworkID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkId:Ljava/lang/String;

    .line 137
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->networkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInstance()Lcom/tencent/imsdk/common/NetworkInfoCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getWifiNetworkHandle()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->wifiNetworkHandle:J

    .line 138
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->networkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInstance()Lcom/tencent/imsdk/common/NetworkInfoCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getXgNetworkHandle()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->xgNetworkHandle:J

    .line 139
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->networkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInstance()Lcom/tencent/imsdk/common/NetworkInfoCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInitializeCostTime()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->initializeCostTime:J

    .line 140
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->networkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInstance()Lcom/tencent/imsdk/common/NetworkInfoCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->isNetworkConnected()Z

    move-result v0

    iput-boolean v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkConnected:Z

    .line 141
    iget-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mProxyInfo:Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;

    iput-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->proxyInfo:Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;

    .line 142
    iget-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mDatabaseEncryptInfo:Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;

    iput-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->databaseEncryptInfo:Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;

    .line 143
    iget-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mPacketRetryInfo:Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;

    iput-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->packetRetryInfo:Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;

    .line 144
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->logSetting:Lcom/tencent/imsdk/manager/SDKConfig$LogSetting;

    iput-boolean v1, p1, Lcom/tencent/imsdk/manager/SDKConfig$LogSetting;->enableConsoleLog:Z

    .line 145
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->logSetting:Lcom/tencent/imsdk/manager/SDKConfig$LogSetting;

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getSDKLogPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$LogSetting;->logFilePath:Ljava/lang/String;

    .line 146
    iget-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mStringUIPlatform:Ljava/lang/String;

    iput-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->stringUIPlatform:Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->getUIPlatform()I

    move-result p1

    iput p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->numberUIPlatform:I

    .line 149
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->networkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    iput-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    .line 151
    invoke-virtual {p0, p2, p3, p4}, Lcom/tencent/imsdk/manager/BaseManager;->nativeInitSDK(Lcom/tencent/imsdk/manager/SDKConfig;ZLcom/tencent/imsdk/manager/SDKListener;)V

    .line 153
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->sdkListenerWeakReference:Ljava/lang/ref/WeakReference;

    .line 155
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->reportTUIComponentUsage()V

    .line 157
    iput-boolean v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    return v1
.end method

.method public isCommercialAbilityEnabled(JLcom/tencent/imsdk/common/IMCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 544
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/manager/BaseManager;->nativeIsCommercialAbilityEnabled(JLcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public isInited()Z
    .locals 1

    .line 576
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    return v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 490
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 492
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 496
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/manager/BaseManager;->nativeLogin(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public logout(Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 2

    .line 500
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x177d

    const-string v1, "sdk not init"

    .line 502
    invoke-virtual {p1, v0, v1}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 506
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/manager/BaseManager;->nativeLogout(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method protected native nativeGetClockTickInHz()J
.end method

.method protected native nativeGetLoginStatus()I
.end method

.method protected native nativeGetLoginUser()Ljava/lang/String;
.end method

.method protected native nativeGetSDKVersion()Ljava/lang/String;
.end method

.method protected native nativeGetServerTime()J
.end method

.method protected native nativeGetTimeTick()J
.end method

.method protected native nativeInitLocalStorage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeInitSDK(Lcom/tencent/imsdk/manager/SDKConfig;ZLcom/tencent/imsdk/manager/SDKListener;)V
.end method

.method protected native nativeIsCommercialAbilityEnabled(JLcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeLogin(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeLogout(Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeNotifyNetworkChange(ZIILjava/lang/String;JJJ)V
.end method

.method protected native nativeReportTUIComponentUsage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method protected native nativeSetCustomServerInfo(Lcom/tencent/imsdk/manager/CustomServerInfo;)V
.end method

.method protected native nativeSetUserPreference(Lcom/tencent/imsdk/manager/UserPreference;)V
.end method

.method protected native nativeUninitSDK()V
.end method

.method public notifySelfInfoUpdated(Lcom/tencent/imsdk/relationship/UserInfo;)V
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->sdkListenerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/manager/SDKListener;

    if-eqz v0, :cond_0

    .line 638
    invoke-interface {v0, p1}, Lcom/tencent/imsdk/manager/SDKListener;->onSelfInfoUpdated(Lcom/tencent/imsdk/relationship/UserInfo;)V

    :cond_0
    return-void
.end method

.method public notifyUserStatusChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/relationship/UserStatus;",
            ">;)V"
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->sdkListenerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/manager/SDKListener;

    if-eqz v0, :cond_0

    .line 647
    invoke-interface {v0, p1}, Lcom/tencent/imsdk/manager/SDKListener;->onUserStatusChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onNetworkChange(ZIILjava/lang/String;JJJ)V
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    iget-boolean v0, v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkConnected:Z

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    iget v0, v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkType:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    iget v0, v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->ipType:I

    if-ne p3, v0, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    iget-object v0, v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkId:Ljava/lang/String;

    .line 620
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    sget-object p1, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string p2, "onNetworkChange, networkinfo is same"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    iput-boolean p1, v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkConnected:Z

    .line 626
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    iput p2, v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkType:I

    .line 627
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    iput p3, v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->ipType:I

    .line 628
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    iput-object p4, v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkId:Ljava/lang/String;

    .line 629
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    iput-wide p9, v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->initializeCostTime:J

    .line 630
    invoke-virtual/range {p0 .. p10}, Lcom/tencent/imsdk/manager/BaseManager;->nativeNotifyNetworkChange(ZIILjava/lang/String;JJJ)V

    return-void
.end method

.method public setCustomServerInfo(Lcom/tencent/imsdk/manager/CustomServerInfo;)V
    .locals 0

    .line 532
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/manager/BaseManager;->nativeSetCustomServerInfo(Lcom/tencent/imsdk/manager/CustomServerInfo;)V

    return-void
.end method

.method public setCustomUIPlatform(Ljava/lang/String;I)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mStringUIPlatform:Ljava/lang/String;

    .line 516
    iput p2, p0, Lcom/tencent/imsdk/manager/BaseManager;->mNumberUIPlatform:I

    return-void
.end method

.method public setDatabaseEncryptInfo(Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mDatabaseEncryptInfo:Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;

    return-void
.end method

.method public setForceUseQuicChannel(Z)V
    .locals 0

    .line 524
    iput-boolean p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->forceUseQuicChannel:Z

    return-void
.end method

.method public setIPv6Prior(Z)V
    .locals 0

    .line 528
    iput-boolean p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->isIPv6Prior:Z

    return-void
.end method

.method public setLibraryPath(Ljava/lang/String;)Z
    .locals 0

    .line 510
    invoke-static {p1}, Lcom/tencent/imsdk/common/SystemUtil;->loadIMLibrary(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/tencent/imsdk/manager/BaseManager;->mLoadLibrarySuccess:Z

    return p1
.end method

.method public setPacketRetryInfo(Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mPacketRetryInfo:Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;

    return-void
.end method

.method public setProxyInfo(Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mProxyInfo:Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;

    return-void
.end method

.method public setTestEnvironment(Z)V
    .locals 0

    .line 520
    iput-boolean p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->isTestEnvironment:Z

    return-void
.end method

.method public unInitSDK()V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/tencent/imsdk/manager/BaseManager;->nativeUninitSDK()V

    const-string v0, ""

    .line 163
    iput-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mStringUIPlatform:Ljava/lang/String;

    const/4 v0, 0x0

    .line 164
    iput v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mNumberUIPlatform:I

    .line 165
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    .line 166
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isTestEnvironment:Z

    .line 167
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->forceUseQuicChannel:Z

    .line 168
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isIPv6Prior:Z

    .line 169
    iget-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-virtual {v1}, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->clean()V

    .line 170
    iget-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mProxyInfo:Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;

    invoke-virtual {v1}, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;->clean()V

    .line 171
    iget-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mDatabaseEncryptInfo:Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;

    invoke-virtual {v1}, Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;->clean()V

    .line 172
    iget-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mPacketRetryInfo:Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;

    invoke-virtual {v1}, Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;->clean()V

    .line 173
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUIKit:Z

    .line 174
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUICore:Z

    .line 175
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 176
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
