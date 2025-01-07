.class public Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;
.super Ljava/lang/Object;
.source "V2TIMImageElem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/v2/V2TIMImageElem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "V2TIMImage"
.end annotation


# instance fields
.field private height:I

.field private size:I

.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMImageElem;

.field private type:I

.field private url:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMImageElem;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->this$0:Lcom/tencent/imsdk/v2/V2TIMImageElem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadImage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V
    .locals 3

    .line 141
    new-instance v0, Lcom/tencent/imsdk/message/DownloadParam;

    invoke-direct {v0}, Lcom/tencent/imsdk/message/DownloadParam;-><init>()V

    .line 142
    sget v1, Lcom/tencent/imsdk/message/DownloadParam;->DOWNLOAD_FLAG_REQUEST_DIRECT_DOWNLOAD:I

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/DownloadParam;->setDownloadFlag(I)V

    .line 143
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/message/DownloadParam;->setDownloadUrl(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/DownloadParam;->setFileSavePath(Ljava/lang/String;)V

    .line 146
    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage$1;

    invoke-direct {p1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage$1;-><init>(Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V

    .line 163
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage$2;

    invoke-direct {v1, p0, p2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage$2;-><init>(Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V

    .line 179
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p2

    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage$3;

    invoke-direct {v2, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage$3;-><init>(Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    new-instance p1, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage$4;

    invoke-direct {p1, p0, v1}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage$4;-><init>(Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {p2, v0, v2, p1}, Lcom/tencent/imsdk/message/MessageCenter;->downloadMessageElement(Lcom/tencent/imsdk/message/DownloadParam;Lcom/tencent/imsdk/common/IMCallback;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->height:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->size:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->type:I

    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->width:I

    return v0
.end method

.method protected setHeight(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->height:I

    return-void
.end method

.method protected setSize(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->size:I

    return-void
.end method

.method protected setType(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->type:I

    return-void
.end method

.method protected setUUID(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->uuid:Ljava/lang/String;

    return-void
.end method

.method protected setUrl(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->url:Ljava/lang/String;

    return-void
.end method

.method protected setWidth(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->width:I

    return-void
.end method
