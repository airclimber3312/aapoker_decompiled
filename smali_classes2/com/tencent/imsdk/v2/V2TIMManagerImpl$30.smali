.class Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;
.super Lcom/tencent/imsdk/common/IMCallback;
.source "V2TIMManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->getOfflinePushState(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 0

    .line 1056
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-direct {p0, p2}, Lcom/tencent/imsdk/common/IMCallback;-><init>(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;)Lcom/tencent/imsdk/v2/V2TIMValueCallback;
    .locals 0

    .line 1056
    iget-object p0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;->valueCallback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;)Lcom/tencent/imsdk/v2/V2TIMValueCallback;
    .locals 0

    .line 1056
    iget-object p0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;->valueCallback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    return-object p0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0

    .line 1073
    invoke-super {p0, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 2

    .line 1059
    check-cast p1, Lcom/tencent/imsdk/offlinePush/OfflinePushConfig;

    .line 1060
    invoke-virtual {p1}, Lcom/tencent/imsdk/offlinePush/OfflinePushConfig;->getOpenOfflinePush()I

    move-result p1

    .line 1061
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30$1;-><init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
