.class Lcom/tencent/imsdk/v2/V2TIMVideoElem$1;
.super Ljava/lang/Object;
.source "V2TIMVideoElem.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMVideoElem;->downloadVideo(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Lcom/tencent/imsdk/message/DownloadProgressInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMVideoElem;

.field final synthetic val$v2TIMDownloadCallback:Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMVideoElem;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMVideoElem$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMVideoElem$1;->val$v2TIMDownloadCallback:Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMVideoElem$1;->val$v2TIMDownloadCallback:Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/tencent/imsdk/message/DownloadProgressInfo;)V
    .locals 7

    .line 92
    new-instance v6, Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMVideoElem$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    invoke-virtual {p1}, Lcom/tencent/imsdk/message/DownloadProgressInfo;->getCurrentSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/tencent/imsdk/message/DownloadProgressInfo;->getTotalSize()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;-><init>(Lcom/tencent/imsdk/v2/V2TIMElem;JJ)V

    .line 93
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMVideoElem$1;->val$v2TIMDownloadCallback:Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;

    if-eqz p1, :cond_0

    .line 94
    invoke-interface {p1, v6}, Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;->onProgress(Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p1, Lcom/tencent/imsdk/message/DownloadProgressInfo;

    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMVideoElem$1;->onSuccess(Lcom/tencent/imsdk/message/DownloadProgressInfo;)V

    return-void
.end method
