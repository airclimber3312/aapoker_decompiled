.class Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2;
.super Lcom/tencent/imsdk/message/MessageUploadProgressCallback;
.source "V2TIMMessageManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

.field final synthetic val$sendCallback:Lcom/tencent/imsdk/v2/V2TIMSendCallback;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2;->val$sendCallback:Lcom/tencent/imsdk/v2/V2TIMSendCallback;

    invoke-direct {p0}, Lcom/tencent/imsdk/message/MessageUploadProgressCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadProgress(III)V
    .locals 1

    .line 536
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object p1

    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2$1;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2;II)V

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
