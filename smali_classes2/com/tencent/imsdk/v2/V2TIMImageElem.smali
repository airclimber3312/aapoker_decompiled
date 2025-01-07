.class public Lcom/tencent/imsdk/v2/V2TIMImageElem;
.super Lcom/tencent/imsdk/v2/V2TIMElem;
.source "V2TIMImageElem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;
    }
.end annotation


# static fields
.field public static final V2TIM_IMAGE_TYPE_LARGE:I = 0x2

.field public static final V2TIM_IMAGE_TYPE_ORIGIN:I = 0x0

.field public static final V2TIM_IMAGE_TYPE_THUMB:I = 0x1


# instance fields
.field private timImageElem:Lcom/tencent/imsdk/message/ImageElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMElem;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/ImageElement;

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem;->timImageElem:Lcom/tencent/imsdk/message/ImageElement;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    invoke-direct {v1, p0}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;-><init>(Lcom/tencent/imsdk/v2/V2TIMImageElem;)V

    .line 56
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem;->timImageElem:Lcom/tencent/imsdk/message/ImageElement;

    invoke-virtual {v2}, Lcom/tencent/imsdk/message/ImageElement;->getOriginImageUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->setUUID(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 57
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->setType(I)V

    .line 58
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem;->timImageElem:Lcom/tencent/imsdk/message/ImageElement;

    invoke-virtual {v2}, Lcom/tencent/imsdk/message/ImageElement;->getOriginImageFileSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->setSize(I)V

    .line 59
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem;->timImageElem:Lcom/tencent/imsdk/message/ImageElement;

    invoke-virtual {v2}, Lcom/tencent/imsdk/message/ImageElement;->getOriginImageWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->setWidth(I)V

    .line 60
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem;->timImageElem:Lcom/tencent/imsdk/message/ImageElement;

    invoke-virtual {v2}, Lcom/tencent/imsdk/message/ImageElement;->getOriginImageHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->setHeight(I)V

    .line 61
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem;->timImageElem:Lcom/tencent/imsdk/message/ImageElement;

    invoke-virtual {v2}, Lcom/tencent/imsdk/message/ImageElement;->getOriginImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->setUrl(Ljava/lang/String;)V

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    invoke-direct {v1, p0}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;-><init>(Lcom/tencent/imsdk/v2/V2TIMImageElem;)V

    .line 65
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem;->timImageElem:Lcom/tencent/imsdk/message/ImageElement;

    invoke-virtual {v2}, Lcom/tencent/imsdk/message/ImageElement;->getLargeImageUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->setUUID(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 66
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->setType(I)V

    .line 67
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem;->timImageElem:Lcom/tencent/imsdk/message/ImageElement;

    invoke-virtual {v2}, Lcom/tencent/imsdk/message/ImageElement;->getLargeImageFileSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->setSize(I)V

    .line 68
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem;->timImageElem:Lcom/tencent/imsdk/message/ImageElement;

    invoke-virtual {v2}, Lcom/tencent/imsdk/message/ImageElement;->getLargeImageWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->setWidth(I)V

    .line 69
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem;->timImageElem:Lcom/tencent/imsdk/message/ImageElement;

    invoke-virtual {v2}, Lcom/tencent/imsdk/message/ImageElement;->getLargeImageHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->setHeight(I)V

    .line 70
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem;->timImageElem:Lcom/tencent/imsdk/message/ImageElement;

    invoke-virtual {v2}, Lcom/tencent/imsdk/message/ImageElement;->getLargeImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->setUrl(Ljava/lang/String;)V

    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    invoke-direct {v1, p0}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;-><init>(Lcom/tencent/imsdk/v2/V2TIMImageElem;)V

    .line 74
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem;->timImageElem:Lcom/tencent/imsdk/message/ImageElement;

    invoke-virtual {v2}, Lcom/tencent/imsdk/message/ImageElement;->getThumbImageUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->setUUID(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 75
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->setType(I)V

    .line 76
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem;->timImageElem:Lcom/tencent/imsdk/message/ImageElement;

    invoke-virtual {v2}, Lcom/tencent/imsdk/message/ImageElement;->getThumbImageFileSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->setSize(I)V

    .line 77
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem;->timImageElem:Lcom/tencent/imsdk/message/ImageElement;

    invoke-virtual {v2}, Lcom/tencent/imsdk/message/ImageElement;->getThumbImageWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->setWidth(I)V

    .line 78
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem;->timImageElem:Lcom/tencent/imsdk/message/ImageElement;

    invoke-virtual {v2}, Lcom/tencent/imsdk/message/ImageElement;->getThumbImageHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->setHeight(I)V

    .line 79
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem;->timImageElem:Lcom/tencent/imsdk/message/ImageElement;

    invoke-virtual {v2}, Lcom/tencent/imsdk/message/ImageElement;->getThumbImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->setUrl(Ljava/lang/String;)V

    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->getElement()Lcom/tencent/imsdk/message/MessageBaseElement;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/ImageElement;

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMImageElem;->timImageElem:Lcom/tencent/imsdk/message/ImageElement;

    .line 41
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/ImageElement;->getOriginImageFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "V2TIMImageElem--->, localPath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->getImageList()Ljava/util/List;

    move-result-object v1

    .line 209
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    const-string v3, ", type:"

    .line 210
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->getType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uuid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", height:"

    .line 211
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", width:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", size:"

    .line 212
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->getSize()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
