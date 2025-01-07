.class public Lcom/hyphenate/push/EMPushHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/push/EMPushHelper$InstanceHolder;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "EMPushHelper"

.field private static final b:I = 0x3

.field private static final c:I = 0x0

.field private static final d:I = 0x1

.field private static final e:I = 0x2


# instance fields
.field private f:Landroid/content/Context;

.field private g:Lcom/hyphenate/push/EMPushConfig;

.field private h:Lcom/hyphenate/push/platform/a;

.field private i:Landroid/os/Handler;

.field private j:Lcom/hyphenate/push/EMPushType;

.field private k:Ljava/lang/String;

.field private l:Z

.field private final m:Ljava/lang/Object;

.field private final n:Ljava/lang/Object;

.field private o:Lcom/hyphenate/push/PushListener;

.field private p:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/push/EMPushHelper;->m:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/push/EMPushHelper;->n:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hyphenate/push/EMPushHelper;->p:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "token-uploader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/hyphenate/push/EMPushHelper$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/hyphenate/push/EMPushHelper$1;-><init>(Lcom/hyphenate/push/EMPushHelper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/hyphenate/push/EMPushHelper;->i:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/hyphenate/push/EMPushHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/push/EMPushHelper;-><init>()V

    return-void
.end method

.method private a(Lcom/hyphenate/push/EMPushConfig;)Lcom/hyphenate/push/EMPushType;
    .locals 6

    const/4 v0, 0x7

    new-array v1, v0, [Lcom/hyphenate/push/EMPushType;

    sget-object v2, Lcom/hyphenate/push/EMPushType;->FCM:Lcom/hyphenate/push/EMPushType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v4, Lcom/hyphenate/push/EMPushType;->MIPUSH:Lcom/hyphenate/push/EMPushType;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    sget-object v4, Lcom/hyphenate/push/EMPushType;->HMSPUSH:Lcom/hyphenate/push/EMPushType;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    sget-object v4, Lcom/hyphenate/push/EMPushType;->MEIZUPUSH:Lcom/hyphenate/push/EMPushType;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    sget-object v4, Lcom/hyphenate/push/EMPushType;->OPPOPUSH:Lcom/hyphenate/push/EMPushType;

    aput-object v4, v1, v2

    const/4 v2, 0x5

    sget-object v4, Lcom/hyphenate/push/EMPushType;->VIVOPUSH:Lcom/hyphenate/push/EMPushType;

    aput-object v4, v1, v2

    const/4 v2, 0x6

    sget-object v4, Lcom/hyphenate/push/EMPushType;->HONORPUSH:Lcom/hyphenate/push/EMPushType;

    aput-object v4, v1, v2

    invoke-virtual {p1}, Lcom/hyphenate/push/EMPushConfig;->getEnabledPushTypes()Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v4, p1}, Lcom/hyphenate/push/EMPushHelper;->a(Lcom/hyphenate/push/EMPushType;Lcom/hyphenate/push/EMPushConfig;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/hyphenate/push/EMPushType;->NORMAL:Lcom/hyphenate/push/EMPushType;

    return-object p1
.end method

.method static synthetic a(Lcom/hyphenate/push/EMPushHelper;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/push/EMPushHelper;->m:Ljava/lang/Object;

    return-object p0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/push/EMPushHelper;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic a(Lcom/hyphenate/push/EMPushHelper;Lcom/hyphenate/push/EMPushType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/push/EMPushHelper;->a(Lcom/hyphenate/push/EMPushType;)V

    return-void
.end method

.method static synthetic a(Lcom/hyphenate/push/EMPushHelper;Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hyphenate/push/EMPushHelper;->c(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/hyphenate/push/EMPushType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hyphenate/push/EMPushHelper;->a(Lcom/hyphenate/push/EMPushType;Z)V

    return-void
.end method

.method private a(Lcom/hyphenate/push/EMPushType;Z)V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/push/EMPushHelper;->j:Lcom/hyphenate/push/EMPushType;

    const-string v1, "EMPushHelper"

    if-ne v0, p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Push type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " no change, return. "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/push/EMPushHelper;->h:Lcom/hyphenate/push/platform/a;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hyphenate/push/EMPushHelper;->h:Lcom/hyphenate/push/platform/a;

    invoke-virtual {v2}, Lcom/hyphenate/push/platform/a;->b()Lcom/hyphenate/push/EMPushType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " push already exists, unregister it and change to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " push."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/push/EMPushHelper;->h:Lcom/hyphenate/push/platform/a;

    iget-object v1, p0, Lcom/hyphenate/push/EMPushHelper;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hyphenate/push/platform/a;->a(Landroid/content/Context;)V

    :cond_1
    iput-object p1, p0, Lcom/hyphenate/push/EMPushHelper;->j:Lcom/hyphenate/push/EMPushType;

    sget-object v0, Lcom/hyphenate/push/EMPushHelper$2;->a:[I

    invoke-virtual {p1}, Lcom/hyphenate/push/EMPushType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lcom/hyphenate/push/platform/d/a;

    invoke-direct {p1}, Lcom/hyphenate/push/platform/d/a;-><init>()V

    goto :goto_0

    :pswitch_0
    new-instance p1, Lcom/hyphenate/push/platform/c/a;

    invoke-direct {p1}, Lcom/hyphenate/push/platform/c/a;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lcom/hyphenate/push/platform/b/a;

    invoke-direct {p1}, Lcom/hyphenate/push/platform/b/a;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lcom/hyphenate/push/platform/meizu/a;

    invoke-direct {p1}, Lcom/hyphenate/push/platform/meizu/a;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance p1, Lcom/hyphenate/push/platform/vivo/a;

    invoke-direct {p1}, Lcom/hyphenate/push/platform/vivo/a;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance p1, Lcom/hyphenate/push/platform/oppo/a;

    invoke-direct {p1}, Lcom/hyphenate/push/platform/oppo/a;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance p1, Lcom/hyphenate/push/platform/mi/a;

    invoke-direct {p1}, Lcom/hyphenate/push/platform/mi/a;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance p1, Lcom/hyphenate/push/platform/a/a;

    invoke-direct {p1}, Lcom/hyphenate/push/platform/a/a;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/hyphenate/push/EMPushHelper;->h:Lcom/hyphenate/push/platform/a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hyphenate/push/EMPushHelper;->p:Z

    if-eqz p2, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/hyphenate/push/EMPushHelper;->h:Lcom/hyphenate/push/platform/a;

    iget-object p2, p0, Lcom/hyphenate/push/EMPushHelper;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/hyphenate/push/EMPushHelper;->g:Lcom/hyphenate/push/EMPushConfig;

    iget-object v1, p0, Lcom/hyphenate/push/EMPushHelper;->o:Lcom/hyphenate/push/PushListener;

    invoke-virtual {p1, p2, v0, v1}, Lcom/hyphenate/push/platform/a;->a(Landroid/content/Context;Lcom/hyphenate/push/EMPushConfig;Lcom/hyphenate/push/PushListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/hyphenate/push/EMPushHelper;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hyphenate/push/EMPushHelper;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/hyphenate/push/EMPushHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hyphenate/push/EMPushHelper;->l:Z

    return p1
.end method

.method private a(Lcom/hyphenate/push/EMPushType;Lcom/hyphenate/push/EMPushConfig;)Z
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/push/EMPushHelper;->o:Lcom/hyphenate/push/PushListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/push/PushListener;->isSupportPush(Lcom/hyphenate/push/EMPushType;Lcom/hyphenate/push/EMPushConfig;)Z

    move-result p2

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/hyphenate/push/a/a;->a(Lcom/hyphenate/push/EMPushType;Lcom/hyphenate/push/EMPushConfig;)Z

    move-result p2

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isSupportPush: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EMPushHelper"

    invoke-static {v0, p1}, Lcom/hyphenate/util/EMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method private a(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/push/EMPushHelper;->getPushTokenWithType(Lcom/hyphenate/push/EMPushType;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "EMPushHelper"

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "uploadTokenInternal notifierName is null, return. current push type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/push/EMPushHelper;->j:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/hyphenate/chat/a/a;->a(ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/users/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/push/binding"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/hyphenate/util/DeviceUuidFactory;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hyphenate/chat/EMClient;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/hyphenate/util/DeviceUuidFactory;-><init>(Landroid/content/Context;)V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v7, "device_token"

    invoke-virtual {v6, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "notifier_name"

    invoke-virtual {v6, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "device_id"

    invoke-virtual {v5}, Lcom/hyphenate/util/DeviceUuidFactory;->getDeviceUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "uploadTokenInternal put json exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v5, 0x2

    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uploadTokenInternal, token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", notifier name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/cloud/EMHttpClient;->getInstance()Lcom/hyphenate/cloud/EMHttpClient;

    move-result-object v7

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/hyphenate/cloud/EMHttpClient;->PUT:Ljava/lang/String;

    invoke-virtual {v7, v0, v8, v9}, Lcom/hyphenate/cloud/EMHttpClient;->sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_2

    const-string v0, "uploadTokenInternal success."

    invoke-static {v2, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object v0

    iget-object v7, p0, Lcom/hyphenate/push/EMPushHelper;->j:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {v0, v7, p2}, Lcom/hyphenate/push/EMPushHelper;->setPushTokenWithType(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V

    return v4

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uploadTokenInternal failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v7

    invoke-virtual {v7, v4, v4}, Lcom/hyphenate/chat/a/a;->a(ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "uploadTokenInternal exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v7

    invoke-virtual {v7, v4, v4}, Lcom/hyphenate/chat/a/a;->a(ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v5, v5, -0x1

    if-gtz v5, :cond_1

    return v1
.end method

.method static synthetic b(Lcom/hyphenate/push/EMPushHelper;)Lcom/hyphenate/push/platform/a;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/push/EMPushHelper;->h:Lcom/hyphenate/push/platform/a;

    return-object p0
.end method

.method private b(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/push/EMPushHelper;->i:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/hyphenate/push/EMPushType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/hyphenate/push/EMPushHelper;->i:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic c(Lcom/hyphenate/push/EMPushHelper;)Lcom/hyphenate/push/EMPushType;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/push/EMPushHelper;->j:Lcom/hyphenate/push/EMPushType;

    return-object p0
.end method

.method private c(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/hyphenate/push/EMPushHelper;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/push/EMPushHelper;->i:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/hyphenate/push/EMPushHelper;->a(Lcom/hyphenate/push/EMPushType;Z)V

    const/4 p1, -0x1

    const/4 v1, -0x1

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/hyphenate/push/EMPushHelper;->i:Landroid/os/Handler;

    invoke-virtual {v3, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    if-ne v1, p1, :cond_0

    iget-object v4, p0, Lcom/hyphenate/push/EMPushHelper;->i:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/hyphenate/push/EMPushHelper;->randomDelay(I)I

    move-result v4

    const-string v5, "EMPushHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry upload after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "s if failed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hyphenate/util/EMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/hyphenate/push/EMPushHelper;->i:Landroid/os/Handler;

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v6, v4

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic d(Lcom/hyphenate/push/EMPushHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hyphenate/push/EMPushHelper;->l:Z

    return p0
.end method

.method static synthetic e(Lcom/hyphenate/push/EMPushHelper;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/push/EMPushHelper;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public static getInstance()Lcom/hyphenate/push/EMPushHelper;
    .locals 1

    sget-object v0, Lcom/hyphenate/push/EMPushHelper$InstanceHolder;->a:Lcom/hyphenate/push/EMPushHelper;

    return-object v0
.end method


# virtual methods
.method public getFCMPushToken()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hyphenate/chat/a/b;->a()Lcom/hyphenate/chat/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/a/b;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPushToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/push/EMPushHelper;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getPushTokenWithType(Lcom/hyphenate/push/EMPushType;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hyphenate/chat/a/b;->a()Lcom/hyphenate/chat/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/b;->a(Lcom/hyphenate/push/EMPushType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPushType()Lcom/hyphenate/push/EMPushType;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/push/EMPushHelper;->j:Lcom/hyphenate/push/EMPushType;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/hyphenate/push/EMPushConfig;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EMPushHelper init, config: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hyphenate/push/EMPushConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPushHelper"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/hyphenate/push/EMPushHelper;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/hyphenate/push/EMPushHelper;->g:Lcom/hyphenate/push/EMPushConfig;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Null parameters, context="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", config="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBindTokenSuccess(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBindTokenSuccess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPushHelper"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/push/EMPushHelper;->o:Lcom/hyphenate/push/PushListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/push/PushListener;->onBindTokenSuccess(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onErrorResponse(Lcom/hyphenate/push/EMPushType;J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onErrorResponse: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPushHelper"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hyphenate/push/EMPushHelper;->p:Z

    if-nez v0, :cond_0

    const-string p1, "EMPushHelper is not registered, abort error response action."

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x5dc

    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    sget-object v0, Lcom/hyphenate/push/EMPushType;->NORMAL:Lcom/hyphenate/push/EMPushType;

    invoke-direct {p0, v0}, Lcom/hyphenate/push/EMPushHelper;->a(Lcom/hyphenate/push/EMPushType;)V

    :cond_1
    iget-object v0, p0, Lcom/hyphenate/push/EMPushHelper;->o:Lcom/hyphenate/push/PushListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Lcom/hyphenate/push/PushListener;->onError(Lcom/hyphenate/push/EMPushType;J)V

    :cond_2
    return-void
.end method

.method public onReceiveToken(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceiveToken: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPushHelper"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hyphenate/push/EMPushHelper;->p:Z

    if-nez v0, :cond_1

    const-string p2, "EMPushHelper is not registered, abort token upload action."

    invoke-static {v1, p2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hyphenate/push/EMPushHelper;->o:Lcom/hyphenate/push/PushListener;

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/hyphenate/push/PushListener;->onError(Lcom/hyphenate/push/EMPushType;J)V

    :cond_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/hyphenate/push/EMPushHelper;->k:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/hyphenate/push/EMPushHelper;->a(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "push token changed, upload to server"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/hyphenate/push/EMPushHelper;->b(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->J()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "push token not change, but last login is not on this device, upload to server"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/hyphenate/push/EMPushHelper;->b(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "EMPushHelper not first login, ignore token upload action."

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public randomDelay(I)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v0

    return p1

    :cond_0
    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 v0, 0x36

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x6

    return p1

    :cond_1
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 v0, 0x21c

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x3c

    return p1
.end method

.method public register()V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/push/EMPushHelper;->f:Landroid/content/Context;

    const-string v1, "EMPushHelper"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hyphenate/push/EMPushHelper;->g:Lcom/hyphenate/push/EMPushConfig;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/hyphenate/push/EMPushHelper;->a(Lcom/hyphenate/push/EMPushConfig;)Lcom/hyphenate/push/EMPushType;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EMPushHelper register, prefer push type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/push/EMPushHelper;->a(Lcom/hyphenate/push/EMPushType;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "EMPushHelper#init(Context, EMPushConfig) method not call previously."

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFCMPushToken(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/hyphenate/chat/a/b;->a()Lcom/hyphenate/chat/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/a/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setPushListener(Lcom/hyphenate/push/PushListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/push/EMPushHelper;->o:Lcom/hyphenate/push/PushListener;

    return-void
.end method

.method public setPushTokenWithType(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/hyphenate/chat/a/b;->a()Lcom/hyphenate/chat/a/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/a/b;->a(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V

    return-void
.end method

.method public unregister(Z)Z
    .locals 4

    const-string v0, "EMPushHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EMPushHelper unregister, unbind token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hyphenate/push/EMPushHelper;->p:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p1, "EMPushHelper"

    const-string v0, "EMPushHelper is not registered previously, return true directly."

    invoke-static {p1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hyphenate/push/EMPushHelper;->p:Z

    iget-object v2, p0, Lcom/hyphenate/push/EMPushHelper;->h:Lcom/hyphenate/push/platform/a;

    iget-object v3, p0, Lcom/hyphenate/push/EMPushHelper;->f:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/hyphenate/push/platform/a;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/hyphenate/push/EMPushHelper;->i:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/hyphenate/push/EMPushHelper;->i:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/hyphenate/push/EMPushHelper;->j:Lcom/hyphenate/push/EMPushType;

    return v1

    :cond_1
    iget-object p1, p0, Lcom/hyphenate/push/EMPushHelper;->j:Lcom/hyphenate/push/EMPushType;

    if-eqz p1, :cond_2

    sget-object v2, Lcom/hyphenate/push/EMPushType;->NORMAL:Lcom/hyphenate/push/EMPushType;

    if-eq p1, v2, :cond_2

    invoke-direct {p0}, Lcom/hyphenate/push/EMPushHelper;->a()V

    iget-object p1, p0, Lcom/hyphenate/push/EMPushHelper;->n:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/push/EMPushHelper;->n:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p1, p0, Lcom/hyphenate/push/EMPushHelper;->l:Z

    if-eqz p1, :cond_3

    goto :goto_2

    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    iput-boolean v1, p0, Lcom/hyphenate/push/EMPushHelper;->l:Z

    :goto_2
    iput-object v0, p0, Lcom/hyphenate/push/EMPushHelper;->j:Lcom/hyphenate/push/EMPushType;

    :cond_3
    const-string p1, "EMPushHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Push type after unregister is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/push/EMPushHelper;->j:Lcom/hyphenate/push/EMPushType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/hyphenate/push/EMPushHelper;->l:Z

    return p1
.end method
