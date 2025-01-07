.class Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage$3;
.super Lcom/tencent/imsdk/common/IMCallback;
.source "V2TIMImageElem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->downloadImage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/imsdk/common/IMCallback<",
        "Lcom/tencent/imsdk/message/DownloadProgressInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage$3;->this$1:Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    invoke-direct {p0, p2}, Lcom/tencent/imsdk/common/IMCallback;-><init>(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0

    .line 187
    invoke-super {p0, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    return-void
.end method

.method public success(Lcom/tencent/imsdk/message/DownloadProgressInfo;)V
    .locals 0

    .line 182
    invoke-super {p0, p1}, Lcom/tencent/imsdk/common/IMCallback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .line 179
    check-cast p1, Lcom/tencent/imsdk/message/DownloadProgressInfo;

    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage$3;->success(Lcom/tencent/imsdk/message/DownloadProgressInfo;)V

    return-void
.end method
