.class Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage$2;
.super Ljava/lang/Object;
.source "V2TIMImageElem.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->downloadImage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

.field final synthetic val$v2TIMDownloadCallback:Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage$2;->this$1:Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage$2;->val$v2TIMDownloadCallback:Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage$2;->val$v2TIMDownloadCallback:Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage$2;->val$v2TIMDownloadCallback:Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0}, Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;->onSuccess()V

    :cond_0
    return-void
.end method
