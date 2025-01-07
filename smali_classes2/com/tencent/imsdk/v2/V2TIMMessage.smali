.class public Lcom/tencent/imsdk/v2/V2TIMMessage;
.super Ljava/lang/Object;
.source "V2TIMMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final V2TIM_ELEM_TYPE_CUSTOM:I = 0x2

.field public static final V2TIM_ELEM_TYPE_FACE:I = 0x8

.field public static final V2TIM_ELEM_TYPE_FILE:I = 0x6

.field public static final V2TIM_ELEM_TYPE_GROUP_TIPS:I = 0x9

.field public static final V2TIM_ELEM_TYPE_IMAGE:I = 0x3

.field public static final V2TIM_ELEM_TYPE_LOCATION:I = 0x7

.field public static final V2TIM_ELEM_TYPE_MERGER:I = 0xa

.field public static final V2TIM_ELEM_TYPE_NONE:I = 0x0

.field public static final V2TIM_ELEM_TYPE_SOUND:I = 0x4

.field public static final V2TIM_ELEM_TYPE_TEXT:I = 0x1

.field public static final V2TIM_ELEM_TYPE_VIDEO:I = 0x5

.field public static final V2TIM_GROUP_MESSAGE_READ_MEMBERS_FILTER_READ:I = 0x0

.field public static final V2TIM_GROUP_MESSAGE_READ_MEMBERS_FILTER_UNREAD:I = 0x1

.field public static final V2TIM_MSG_STATUS_HAS_DELETED:I = 0x4

.field public static final V2TIM_MSG_STATUS_LOCAL_IMPORTED:I = 0x5

.field public static final V2TIM_MSG_STATUS_LOCAL_REVOKED:I = 0x6

.field public static final V2TIM_MSG_STATUS_SENDING:I = 0x1

.field public static final V2TIM_MSG_STATUS_SEND_FAIL:I = 0x3

.field public static final V2TIM_MSG_STATUS_SEND_SUCC:I = 0x2

.field public static final V2TIM_NOT_RECEIVE_MESSAGE:I = 0x1

.field public static final V2TIM_PRIORITY_DEFAULT:I = 0x0

.field public static final V2TIM_PRIORITY_HIGH:I = 0x1

.field public static final V2TIM_PRIORITY_LOW:I = 0x3

.field public static final V2TIM_PRIORITY_NORMAL:I = 0x2

.field public static final V2TIM_RECEIVE_MESSAGE:I = 0x0

.field public static final V2TIM_RECEIVE_NOT_NOTIFY_MESSAGE:I = 0x2


# instance fields
.field private message:Lcom/tencent/imsdk/message/Message;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcom/tencent/imsdk/message/Message;

    invoke-direct {v0}, Lcom/tencent/imsdk/message/Message;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    .line 142
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/imsdk/manager/BaseManager;->getServerTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/message/Message;->setClientTime(J)V

    return-void
.end method


# virtual methods
.method public getCloudCustomData()Ljava/lang/String;
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 546
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getCloudCustomString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;
    .locals 3

    .line 341
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 345
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;-><init>()V

    .line 346
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 347
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getElemType()I
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 291
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMessageBaseElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return v1

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMessageBaseElements()Ljava/util/List;

    move-result-object v0

    .line 295
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/MessageBaseElement;

    .line 296
    instance-of v2, v0, Lcom/tencent/imsdk/message/TextElement;

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 298
    :cond_2
    instance-of v2, v0, Lcom/tencent/imsdk/message/ImageElement;

    if-eqz v2, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    .line 300
    :cond_3
    instance-of v2, v0, Lcom/tencent/imsdk/message/VideoElement;

    if-eqz v2, :cond_4

    const/4 v1, 0x5

    goto :goto_0

    .line 302
    :cond_4
    instance-of v2, v0, Lcom/tencent/imsdk/message/SoundElement;

    if-eqz v2, :cond_5

    const/4 v1, 0x4

    goto :goto_0

    .line 304
    :cond_5
    instance-of v2, v0, Lcom/tencent/imsdk/message/FaceElement;

    if-eqz v2, :cond_6

    const/16 v1, 0x8

    goto :goto_0

    .line 306
    :cond_6
    instance-of v2, v0, Lcom/tencent/imsdk/message/FileElement;

    if-eqz v2, :cond_7

    const/4 v1, 0x6

    goto :goto_0

    .line 308
    :cond_7
    instance-of v2, v0, Lcom/tencent/imsdk/message/CustomElement;

    if-eqz v2, :cond_8

    const/4 v1, 0x2

    goto :goto_0

    .line 310
    :cond_8
    instance-of v2, v0, Lcom/tencent/imsdk/message/LocationElement;

    if-eqz v2, :cond_9

    const/4 v1, 0x7

    goto :goto_0

    .line 312
    :cond_9
    instance-of v2, v0, Lcom/tencent/imsdk/message/GroupTipsElement;

    if-eqz v2, :cond_a

    const/16 v1, 0x9

    goto :goto_0

    .line 314
    :cond_a
    instance-of v0, v0, Lcom/tencent/imsdk/message/MergerElement;

    if-eqz v0, :cond_b

    const/16 v1, 0xa

    :cond_b
    :goto_0
    return v1
.end method

.method public getFaceElem()Lcom/tencent/imsdk/v2/V2TIMFaceElem;
    .locals 3

    .line 437
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 441
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFaceElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;-><init>()V

    .line 442
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 443
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getFaceUrl()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getFaceUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileElem()Lcom/tencent/imsdk/v2/V2TIMFileElem;
    .locals 3

    .line 405
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 409
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMFileElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMFileElem;-><init>()V

    .line 410
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMFileElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 411
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMFileElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getFriendRemark()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getFriendRemark()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupAtUserList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    .line 645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 648
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMessageGroupAtInfoList()Ljava/util/List;

    move-result-object v0

    .line 650
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 651
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/message/MessageAtInfo;

    .line 652
    invoke-virtual {v2}, Lcom/tencent/imsdk/message/MessageAtInfo;->getAtUserID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMessageType()I

    move-result v0

    sget v1, Lcom/tencent/imsdk/message/Message;->MESSAGE_TYPE_GROUP:I

    if-ne v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getGroupID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupTipsElem()Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;
    .locals 3

    .line 469
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 473
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;-><init>()V

    .line 474
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 475
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getImageElem()Lcom/tencent/imsdk/v2/V2TIMImageElem;
    .locals 3

    .line 357
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 361
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMImageElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMImageElem;-><init>()V

    .line 362
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 363
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getLocalCustomData()Ljava/lang/String;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 490
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getLocalCustomString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCustomInt()I
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 514
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getLocalCustomNumber()I

    move-result v0

    return v0
.end method

.method public getLocationElem()Lcom/tencent/imsdk/v2/V2TIMLocationElem;
    .locals 3

    .line 421
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    .line 425
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMLocationElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;-><init>()V

    .line 426
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 427
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getMergerElem()Lcom/tencent/imsdk/v2/V2TIMMergerElem;
    .locals 3

    .line 453
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 457
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMMergerElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMMergerElem;-><init>()V

    .line 458
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMergerElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 459
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMergerElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method getMessage()Lcom/tencent/imsdk/message/Message;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    return-object v0
.end method

.method public getMsgID()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMsgID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getNameCard()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getNameCard()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getNickName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOfflinePushInfo()Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 637
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getOfflinePushInfo()Lcom/tencent/imsdk/message/MessageOfflinePushInfo;

    move-result-object v0

    .line 638
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;-><init>()V

    .line 639
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->setMessageOfflinePushInfo(Lcom/tencent/imsdk/message/MessageOfflinePushInfo;)V

    return-object v1
.end method

.method public getPriority()I
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getPriority()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRandom()J
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 693
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getRandom()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getSenderUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeq()J
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 683
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getSeq()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSoundElem()Lcom/tencent/imsdk/v2/V2TIMSoundElem;
    .locals 3

    .line 373
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 377
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMSoundElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;-><init>()V

    .line 378
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 379
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getStatus()I
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 279
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMessageStatus()I

    move-result v0

    return v0
.end method

.method public getTextElem()Lcom/tencent/imsdk/v2/V2TIMTextElem;
    .locals 3

    .line 325
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 329
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMTextElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMTextElem;-><init>()V

    .line 330
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMTextElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 331
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMTextElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getTimestamp()J
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getTimestamp()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getMessageType()I

    move-result v0

    sget v1, Lcom/tencent/imsdk/message/Message;->MESSAGE_TYPE_C2C:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isMessageSender()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getReceiverUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->getSenderUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoElem()Lcom/tencent/imsdk/v2/V2TIMVideoElem;
    .locals 3

    .line 389
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 393
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;-><init>()V

    .line 394
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    const/4 v1, 0x0

    .line 395
    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->setElemIndex(I)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public isBroadcastMessage()Z
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isBroadcastMessage()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExcludedFromLastMessage()Z
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 730
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isExcludedFromLastMessage()Z

    move-result v0

    return v0
.end method

.method public isExcludedFromUnreadCount()Z
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 706
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isExcludedFromUnreadCount()Z

    move-result v0

    return v0
.end method

.method public isNeedReadReceipt()Z
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isNeedReadReceipt()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPeerRead()Z
    .locals 3

    .line 573
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_1

    .line 580
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isPeerRead()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public isRead()Z
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isSelfRead()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSelf()Z
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isMessageSender()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportMessageExtension()Z
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 751
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/Message;->isSupportMessageExtension()Z

    move-result v0

    return v0
.end method

.method public setCloudCustomData(Ljava/lang/String;)V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    return-void

    .line 536
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/Message;->setCloudCustomString(Ljava/lang/String;)V

    return-void
.end method

.method public setExcludedFromLastMessage(Z)V
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    return-void

    .line 741
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/Message;->setExcludedFromLastMessage(Z)V

    return-void
.end method

.method public setExcludedFromUnreadCount(Z)V
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    return-void

    .line 717
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/Message;->setExcludedFromUnreadCount(Z)V

    return-void
.end method

.method protected setGroupAtUserList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 663
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 664
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 665
    new-instance v2, Lcom/tencent/imsdk/message/MessageAtInfo;

    invoke-direct {v2}, Lcom/tencent/imsdk/message/MessageAtInfo;-><init>()V

    .line 666
    invoke-virtual {v2, v1}, Lcom/tencent/imsdk/message/MessageAtInfo;->setAtUserID(Ljava/lang/String;)V

    .line 667
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 669
    :cond_1
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/message/Message;->setMessageGroupAtInfoList(Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLocalCustomData(Ljava/lang/String;)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    return-void

    .line 502
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/Message;->setLocalCustomString(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalCustomInt(I)V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    return-void

    .line 526
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/Message;->setLocalCustomNumber(I)V

    return-void
.end method

.method setMessage(Lcom/tencent/imsdk/message/Message;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 149
    :cond_0
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    return-void
.end method

.method public setNeedReadReceipt(Z)V
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/Message;->setNeedReadReceipt(Z)V

    :cond_0
    return-void
.end method

.method public setSupportMessageExtension(Z)V
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    if-nez v0, :cond_0

    return-void

    .line 764
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/message/Message;->setSupportMessageExtension(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "V2TIMMessage--->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 774
    :goto_0
    iget-object v4, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v4}, Lcom/tencent/imsdk/message/Message;->getMessageBaseElements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_14

    .line 775
    iget-object v4, p0, Lcom/tencent/imsdk/v2/V2TIMMessage;->message:Lcom/tencent/imsdk/message/Message;

    invoke-virtual {v4}, Lcom/tencent/imsdk/message/Message;->getMessageBaseElements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/imsdk/message/MessageBaseElement;

    .line 776
    instance-of v5, v4, Lcom/tencent/imsdk/message/TextElement;

    if-eqz v5, :cond_1

    if-nez v2, :cond_0

    .line 778
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTextElem()Lcom/tencent/imsdk/v2/V2TIMTextElem;

    move-result-object v2

    goto :goto_1

    .line 780
    :cond_0
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 782
    :goto_1
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMTextElem;

    .line 783
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMTextElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 784
    :cond_1
    instance-of v5, v4, Lcom/tencent/imsdk/message/CustomElement;

    if-eqz v5, :cond_3

    if-nez v2, :cond_2

    .line 786
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object v2

    goto :goto_2

    .line 788
    :cond_2
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 790
    :goto_2
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    .line 791
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 792
    :cond_3
    instance-of v5, v4, Lcom/tencent/imsdk/message/ImageElement;

    if-eqz v5, :cond_5

    if-nez v2, :cond_4

    .line 794
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getImageElem()Lcom/tencent/imsdk/v2/V2TIMImageElem;

    move-result-object v2

    goto :goto_3

    .line 796
    :cond_4
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 798
    :goto_3
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMImageElem;

    .line 799
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMImageElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 800
    :cond_5
    instance-of v5, v4, Lcom/tencent/imsdk/message/SoundElement;

    if-eqz v5, :cond_7

    if-nez v2, :cond_6

    .line 802
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSoundElem()Lcom/tencent/imsdk/v2/V2TIMSoundElem;

    move-result-object v2

    goto :goto_4

    .line 804
    :cond_6
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 806
    :goto_4
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMSoundElem;

    .line 807
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 808
    :cond_7
    instance-of v5, v4, Lcom/tencent/imsdk/message/VideoElement;

    if-eqz v5, :cond_9

    if-nez v2, :cond_8

    .line 810
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getVideoElem()Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    move-result-object v2

    goto :goto_5

    .line 812
    :cond_8
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 814
    :goto_5
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    .line 815
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMVideoElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 816
    :cond_9
    instance-of v5, v4, Lcom/tencent/imsdk/message/FileElement;

    if-eqz v5, :cond_b

    if-nez v2, :cond_a

    .line 818
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getFileElem()Lcom/tencent/imsdk/v2/V2TIMFileElem;

    move-result-object v2

    goto :goto_6

    .line 820
    :cond_a
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 822
    :goto_6
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMFileElem;

    .line 823
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMFileElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 824
    :cond_b
    instance-of v5, v4, Lcom/tencent/imsdk/message/LocationElement;

    if-eqz v5, :cond_d

    if-nez v2, :cond_c

    .line 826
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getLocationElem()Lcom/tencent/imsdk/v2/V2TIMLocationElem;

    move-result-object v2

    goto :goto_7

    .line 828
    :cond_c
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 830
    :goto_7
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMLocationElem;

    .line 831
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMLocationElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 832
    :cond_d
    instance-of v5, v4, Lcom/tencent/imsdk/message/FaceElement;

    if-eqz v5, :cond_f

    if-nez v2, :cond_e

    .line 834
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getFaceElem()Lcom/tencent/imsdk/v2/V2TIMFaceElem;

    move-result-object v2

    goto :goto_8

    .line 836
    :cond_e
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 838
    :goto_8
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMFaceElem;

    .line 839
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMFaceElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 840
    :cond_f
    instance-of v5, v4, Lcom/tencent/imsdk/message/MergerElement;

    if-eqz v5, :cond_11

    if-nez v2, :cond_10

    .line 842
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMergerElem()Lcom/tencent/imsdk/v2/V2TIMMergerElem;

    move-result-object v2

    goto :goto_9

    .line 844
    :cond_10
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 846
    :goto_9
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMMergerElem;

    .line 847
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMMergerElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 848
    :cond_11
    instance-of v4, v4, Lcom/tencent/imsdk/message/GroupTipsElement;

    if-eqz v4, :cond_13

    if-nez v2, :cond_12

    .line 850
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupTipsElem()Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;

    move-result-object v2

    goto :goto_a

    .line 852
    :cond_12
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v2

    .line 854
    :goto_a
    move-object v4, v2

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;

    .line 855
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    :goto_b
    const-string/jumbo v4, "|"

    .line 857
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_14
    const-string v2, "msgID:"

    .line 860
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getMsgID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", sender:"

    .line 861
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nickname:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", faceUrl:"

    .line 862
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getFaceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", friendRemark:"

    .line 863
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getFriendRemark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nameCard:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getNameCard()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", groupID:"

    .line 864
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", seq:"

    .line 865
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSeq()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", random:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getRandom()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", status:"

    .line 866
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isSelf:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isSelf()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isRead:"

    .line 867
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isRead()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isPeerRead:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isPeerRead()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needReadReceipt:"

    .line 868
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isNeedReadReceipt()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", priority:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getPriority()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", groupAtUserList:"

    .line 869
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupAtUserList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", elemType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", localCustomData:"

    .line 870
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getLocalCustomData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", localCustomInt:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getLocalCustomInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cloudCustomData:"

    .line 871
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCloudCustomData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isExcludeFromUnreadCount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isExcludedFromUnreadCount()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isExcludeFromLastMessage:"

    .line 872
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isExcludedFromLastMessage()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", offlinePushInfo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getOfflinePushInfo()Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isBroadcastMessage:"

    .line 873
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isBroadcastMessage()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", supportMessageExtension:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isSupportMessageExtension()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", elemDesc:"

    .line 874
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
