.class public Lcom/hyphenate/chat/EMPushManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMPushManager$DisplayStyle;,
        Lcom/hyphenate/chat/EMPushManager$EMPushAction;,
        Lcom/hyphenate/chat/EMPushManager$EMPushRemindType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EMPushManager"


# instance fields
.field emaObject:Lcom/hyphenate/chat/adapter/EMAPushManager;

.field mClient:Lcom/hyphenate/chat/EMClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/adapter/EMAPushManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/hyphenate/chat/EMPushManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAPushManager;

    iput-object p1, p0, Lcom/hyphenate/chat/EMPushManager;->mClient:Lcom/hyphenate/chat/EMClient;

    return-void
.end method

.method static synthetic access$000(Lcom/hyphenate/chat/EMPushManager;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMPushManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method static synthetic access$200(Lcom/hyphenate/chat/EMPushManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMPushManager;->reportPushAction(Ljava/lang/String;)V

    return-void
.end method

.method private handleError(Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hyphenate/exceptions/HyphenateException;

    invoke-direct {v0, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(Lcom/hyphenate/chat/adapter/EMAError;)V

    throw v0
.end method

.method private reportPushAction(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMPushManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAPushManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAPushManager;->reportPushAction(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMPushManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method


# virtual methods
.method public asyncUpdatePushDisplayStyle(Lcom/hyphenate/chat/EMPushManager$DisplayStyle;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMPushManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMPushManager$2;-><init>(Lcom/hyphenate/chat/EMPushManager;Lcom/hyphenate/chat/EMPushManager$DisplayStyle;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncUpdatePushNickname(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMPushManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMPushManager$1;-><init>(Lcom/hyphenate/chat/EMPushManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method declared-synchronized bindDeviceToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    const-string v0, "uploadTokenInternal put json exception: "

    const-string v1, "uploadTokenInternal put json exception: "

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/hyphenate/chat/EMPushManager;->mClient:Lcom/hyphenate/chat/EMClient;

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->isSdkInited()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/hyphenate/chat/EMPushManager;->mClient:Lcom/hyphenate/chat/EMClient;

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->isLoggedInBefore()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/hyphenate/chat/a/b;->a()Lcom/hyphenate/chat/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/a/b;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/a/a;->J()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object p1, Lcom/hyphenate/chat/EMPushManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not first login, ignore token upload action."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v2, Lcom/hyphenate/chat/EMPushManager;->TAG:Ljava/lang/String;

    const-string v4, "push token not change, but last login is not on this device, upload to server"

    invoke-static {v2, v4}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/hyphenate/chat/a/a;->a(ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/users/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/push/binding"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/hyphenate/util/DeviceUuidFactory;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hyphenate/chat/EMClient;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/hyphenate/util/DeviceUuidFactory;-><init>(Landroid/content/Context;)V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v6, "device_token"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, ""

    goto :goto_0

    :cond_2
    move-object v7, p2

    :goto_0
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "notifier_name"

    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "device_id"

    invoke-virtual {v4}, Lcom/hyphenate/util/DeviceUuidFactory;->getDeviceUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x2

    const/4 v4, 0x1

    :goto_1
    :try_start_4
    sget-object v6, Lcom/hyphenate/chat/EMPushManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uploadTokenInternal, token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", notifier name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/cloud/EMHttpClient;->getInstance()Lcom/hyphenate/cloud/EMHttpClient;

    move-result-object v7

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/hyphenate/cloud/EMHttpClient;->PUT:Ljava/lang/String;

    invoke-virtual {v7, v2, v8, v9}, Lcom/hyphenate/cloud/EMHttpClient;->sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v0, 0xc8

    if-ne v4, v0, :cond_3

    :try_start_5
    invoke-static {}, Lcom/hyphenate/chat/a/b;->a()Lcom/hyphenate/chat/a/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hyphenate/chat/a/b;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/a/b;->a()Lcom/hyphenate/chat/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/b;->i(Ljava/lang/String;)V

    const-string v0, "uploadTokenInternal success."

    invoke-static {v6, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uploadTokenInternal failed: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v6

    invoke-virtual {v6, v3, v3}, Lcom/hyphenate/chat/a/a;->a(ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/users/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    :goto_2
    :try_start_7
    sget-object v6, Lcom/hyphenate/chat/EMPushManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uploadTokenInternal failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v6

    invoke-virtual {v6, v3, v3}, Lcom/hyphenate/chat/a/a;->a(ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/users/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_4

    goto/16 :goto_1

    :cond_4
    new-instance p1, Lcom/hyphenate/exceptions/HyphenateException;

    invoke-direct {p1, v4, v0}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    sget-object p2, Lcom/hyphenate/chat/EMPushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/hyphenate/exceptions/HyphenateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v3, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw p2

    :cond_5
    new-instance p1, Lcom/hyphenate/exceptions/HyphenateException;

    const-string p2, "Notifier name should not be empty!"

    const/16 v0, 0x6e

    invoke-direct {p1, v0, p2}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lcom/hyphenate/exceptions/HyphenateException;

    const-string p2, "You need to log in first!"

    invoke-direct {p1, v3, p2}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/hyphenate/exceptions/HyphenateException;

    const-string p2, "SDK should init first!"

    invoke-direct {p1, v3, p2}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bindDeviceToken(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager;->mClient:Lcom/hyphenate/chat/EMClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isSdkInited()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMPushManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMPushManager$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/chat/EMPushManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    const/4 p1, 0x1

    const-string p2, "SDK should init first!"

    invoke-interface {p3, p1, p2}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public clearRemindTypeForConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMPushManager$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMPushManager$4;-><init>(Lcom/hyphenate/chat/EMPushManager;Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disableOfflinePush(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMPushManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAPushManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAPushManager;->disableOfflineNotification(IILcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMPushManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public enableOfflinePush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMPushManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAPushManager;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/adapter/EMAPushManager;->enableOfflineNotification(Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMPushManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public getNoPushGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAPushManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAPushManager;->getNoPushGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNoPushUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAPushManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAPushManager;->getNoPushUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredNotificationLanguage(Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMPushManager$10;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMPushManager$10;-><init>(Lcom/hyphenate/chat/EMPushManager;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getPushConfigs()Lcom/hyphenate/chat/EMPushConfigs;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAPushManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAPushManager;->getPushConfigs()Lcom/hyphenate/chat/adapter/EMAPushConfigs;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/hyphenate/chat/EMPushConfigs;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMPushConfigs;-><init>(Lcom/hyphenate/chat/adapter/EMAPushConfigs;)V

    return-object v1
.end method

.method public getPushConfigsFromServer()Lcom/hyphenate/chat/EMPushConfigs;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMPushManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAPushManager;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/adapter/EMAPushManager;->getPushConfigsFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAPushConfigs;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMPushManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance v0, Lcom/hyphenate/chat/EMPushConfigs;

    invoke-direct {v0, v1}, Lcom/hyphenate/chat/EMPushConfigs;-><init>(Lcom/hyphenate/chat/adapter/EMAPushConfigs;)V

    return-object v0
.end method

.method public getPushTemplate(Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMPushManager$12;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMPushManager$12;-><init>(Lcom/hyphenate/chat/EMPushManager;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSilentModeForAll(Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMSilentModeResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMPushManager$7;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMPushManager$7;-><init>(Lcom/hyphenate/chat/EMPushManager;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSilentModeForConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation$EMConversationType;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMSilentModeResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMPushManager$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMPushManager$5;-><init>(Lcom/hyphenate/chat/EMPushManager;Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSilentModeForConversations(Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMConversation;",
            ">;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMSilentModeResult;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMPushManager$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMPushManager$8;-><init>(Lcom/hyphenate/chat/EMPushManager;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$bindDeviceToken$0$com-hyphenate-chat-EMPushManager(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/EMPushManager;->bindDeviceToken(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/hyphenate/EMCallBack;->onSuccess()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public reportPushAction(Lorg/json/JSONObject;Lcom/hyphenate/chat/EMPushManager$EMPushAction;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMPushManager$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMPushManager$13;-><init>(Lcom/hyphenate/chat/EMPushManager;Lorg/json/JSONObject;Lcom/hyphenate/chat/EMPushManager$EMPushAction;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPreferredNotificationLanguage(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMPushManager$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMPushManager$9;-><init>(Lcom/hyphenate/chat/EMPushManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPushTemplate(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMPushManager$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMPushManager$11;-><init>(Lcom/hyphenate/chat/EMPushManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSilentModeForAll(Lcom/hyphenate/chat/EMSilentModeParam;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/EMSilentModeParam;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMSilentModeResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMPushManager$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMPushManager$6;-><init>(Lcom/hyphenate/chat/EMPushManager;Lcom/hyphenate/chat/EMSilentModeParam;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSilentModeForConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Lcom/hyphenate/chat/EMSilentModeParam;Lcom/hyphenate/EMValueCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation$EMConversationType;",
            "Lcom/hyphenate/chat/EMSilentModeParam;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMSilentModeResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v7, Lcom/hyphenate/chat/EMPushManager$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMPushManager$3;-><init>(Lcom/hyphenate/chat/EMPushManager;Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Lcom/hyphenate/chat/EMSilentModeParam;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method unBindDeviceToken()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/a/b;->a()Lcom/hyphenate/chat/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/a/b;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/hyphenate/chat/EMPushManager;->bindDeviceToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updatePushDisplayStyle(Lcom/hyphenate/chat/EMPushManager$DisplayStyle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMPushManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAPushManager;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMPushManager$DisplayStyle;->ordinal()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAPushManager;->updatePushDisplayStyle(ILcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMPushManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "token is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "currentUser is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updatePushNickname(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMPushManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAPushManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAPushManager;->updatePushNickname(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMPushManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "token is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "currentUser is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "nick name is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updatePushServiceForGroup(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMPushManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAPushManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAPushManager;->updatePushServiceForGroup(Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMPushManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public updatePushServiceForUsers(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMPushManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAPushManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAPushManager;->updatePushServiceForUsers(Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMPushManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method
