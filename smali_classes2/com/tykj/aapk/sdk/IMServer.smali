.class public Lcom/tykj/aapk/sdk/IMServer;
.super Ljava/lang/Object;
.source "IMServer.java"


# static fields
.field public static final IMTAG:Ljava/lang/String; = "IMServer"

.field private static final STATE_LOGINING:I = 0x1

.field private static final STATE_LOGINSUCC:I = 0x2

.field private static final STATE_UNINIT:I = -0x1

.field private static final STATE_UNLOGIN:I

.field static conversationID:Ljava/lang/String;

.field static l_serverId:Ljava/lang/String;

.field private static lastMsg:Lcom/tencent/imsdk/v2/V2TIMMessage;


# instance fields
.field SoundPath:Ljava/lang/String;

.field private hsaGetHistory:I

.field imState:I

.field isEmjing:Z

.field l_identifier:Ljava/lang/String;

.field l_userSig:Ljava/lang/String;

.field mTIMSdkConfig:Lcom/tencent/imsdk/v2/V2TIMSDKConfig;

.field private soundPath:Ljava/lang/String;

.field timConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/tykj/aapk/sdk/IMServer;->imState:I

    .line 69
    iput-boolean v0, p0, Lcom/tykj/aapk/sdk/IMServer;->isEmjing:Z

    return-void
.end method

.method public static IMGroupRespond(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 658
    new-instance v0, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;

    invoke-direct {v0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;-><init>()V

    const/16 v1, 0x64

    .line 659
    invoke-virtual {v0, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setType(I)V

    .line 662
    new-instance v1, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;

    invoke-direct {v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;-><init>()V

    .line 663
    invoke-virtual {v1, p0}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setSender(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v1, p5}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setNick(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v1, p6}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setHeadPic(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v1, p1}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setMesType(I)V

    .line 667
    invoke-virtual {v1, p2}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setMesContent(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v1, p3, p4}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setDuration(J)V

    .line 670
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 671
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tykj/aapk/sdk/SdkServer;->CallRespond(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tykj/aapk/sdk/IMServer;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tykj/aapk/sdk/IMServer;->soundPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tykj/aapk/sdk/IMServer;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/tykj/aapk/sdk/IMServer;->hsaGetHistory:I

    return p0
.end method

.method static synthetic access$102(Lcom/tykj/aapk/sdk/IMServer;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/tykj/aapk/sdk/IMServer;->hsaGetHistory:I

    return p1
.end method

.method static synthetic access$202(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 0

    .line 50
    sput-object p0, Lcom/tykj/aapk/sdk/IMServer;->lastMsg:Lcom/tencent/imsdk/v2/V2TIMMessage;

    return-object p0
.end method


# virtual methods
.method public ApplyJoinGroup(Ljava/lang/String;)V
    .locals 3

    .line 588
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v0

    new-instance v1, Lcom/tykj/aapk/sdk/IMServer$9;

    invoke-direct {v1, p0}, Lcom/tykj/aapk/sdk/IMServer$9;-><init>(Lcom/tykj/aapk/sdk/IMServer;)V

    const-string v2, "it\'s me!"

    invoke-virtual {v0, p1, v2, v1}, Lcom/tencent/imsdk/v2/V2TIMManager;->joinGroup(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    .line 609
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object p1

    new-instance v0, Lcom/tykj/aapk/sdk/IMServer$10;

    invoke-direct {v0, p0}, Lcom/tykj/aapk/sdk/IMServer$10;-><init>(Lcom/tykj/aapk/sdk/IMServer;)V

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMManager;->addGroupListener(Lcom/tencent/imsdk/v2/V2TIMGroupListener;)V

    return-void
.end method

.method public EmojiCall(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 7

    .line 287
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v1

    .line 289
    sget-object v2, Lcom/tykj/aapk/sdk/IMServer;->l_serverId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 295
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object v2

    .line 296
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 298
    sget-object v2, Lcom/tykj/aapk/sdk/IMServer;->conversationID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u6536\u5230\u4e00\u6761\u8868\u60c5\u6d88\u606f"

    .line 300
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "IMServer"

    invoke-static {v2, v0}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCloudCustomData()Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x0

    if-lez v0, :cond_1

    const-string v0, ","

    .line 306
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 307
    array-length v0, p1

    if-lt v0, v3, :cond_1

    .line 309
    aget-object v0, p1, v5

    const/4 v3, 0x1

    .line 310
    aget-object p1, p1, v3

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u83b7\u53d6\u81ea\u5b9a\u4e49\u4e91\u7aef\u6570\u636e\u6635\u79f0\uff1a"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "--\u5934\u50cf-\uff1a"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    move-object p1, v0

    .line 315
    :goto_0
    new-instance v2, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;

    invoke-direct {v2}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;-><init>()V

    const/16 v3, 0x64

    .line 316
    invoke-virtual {v2, v3}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setType(I)V

    .line 317
    new-instance v3, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;

    invoke-direct {v3}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;-><init>()V

    .line 318
    invoke-virtual {v3, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setSender(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v3, v5}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setMesType(I)V

    .line 320
    invoke-virtual {v3, v4}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setMesContent(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v3, p1}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setHeadPic(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v3, v0}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setNick(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 323
    invoke-virtual {v3, v0, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setDuration(J)V

    .line 324
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 325
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tykj/aapk/sdk/SdkServer;->CallRespond(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public GetImState()I
    .locals 1

    .line 467
    iget v0, p0, Lcom/tykj/aapk/sdk/IMServer;->imState:I

    return v0
.end method

.method public IMGetHistoryInfo(Ljava/lang/String;)V
    .locals 6

    .line 676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 677
    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;

    invoke-direct {v2}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;-><init>()V

    const/4 v3, 0x1

    .line 678
    invoke-virtual {v2, v3}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setGetType(I)V

    const-wide/16 v4, 0x3e8

    .line 679
    div-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setGetTimeBegin(J)V

    const-wide/32 v0, 0x15180

    .line 680
    invoke-virtual {v2, v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setGetTimePeriod(J)V

    .line 681
    invoke-virtual {v2, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setGroupID(Ljava/lang/String;)V

    const/16 p1, 0x14

    .line 682
    invoke-virtual {v2, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setCount(I)V

    .line 683
    sget-object p1, Lcom/tykj/aapk/sdk/IMServer;->lastMsg:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v2, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setLastMsg(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 684
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u83b7\u53d6\u5386\u53f2\u8bb0\u5f55\u6210\u529f,lastMsg == null\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tykj/aapk/sdk/IMServer;->lastMsg:Lcom/tencent/imsdk/v2/V2TIMMessage;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IMServer"

    invoke-static {v0, p1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object p1

    new-instance v0, Lcom/tykj/aapk/sdk/IMServer$12;

    invoke-direct {v0, p0}, Lcom/tykj/aapk/sdk/IMServer$12;-><init>(Lcom/tykj/aapk/sdk/IMServer;)V

    invoke-virtual {p1, v2, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->getHistoryMessageList(Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method

.method public IMSendMessageCustom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    .line 508
    iput-boolean v0, p0, Lcom/tykj/aapk/sdk/IMServer;->isEmjing:Z

    .line 510
    sget-object v4, Lcom/tykj/aapk/sdk/IMServer;->conversationID:Ljava/lang/String;

    .line 512
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->createCustomMessage([B)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v2

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 514
    invoke-virtual {v2, p2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setCloudCustomData(Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v8, Lcom/tykj/aapk/sdk/IMServer$7;

    invoke-direct {v8, p0, p1}, Lcom/tykj/aapk/sdk/IMServer$7;-><init>(Lcom/tykj/aapk/sdk/IMServer;Ljava/lang/String;)V

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)Ljava/lang/String;

    return-void
.end method

.method public IMSendMessageText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 473
    iput-boolean v0, p0, Lcom/tykj/aapk/sdk/IMServer;->isEmjing:Z

    .line 474
    sput-object p1, Lcom/tykj/aapk/sdk/IMServer;->conversationID:Ljava/lang/String;

    .line 475
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u53d1\u9001\u7fa4\u804a\u6587\u672c\u6d88\u606f userId:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tykj/aapk/sdk/IMServer;->l_identifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--receiver_groupID:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tykj/aapk/sdk/IMServer;->conversationID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IMServer"

    invoke-static {v0, p1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->createTextMessage(Ljava/lang/String;)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    .line 479
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 480
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setCloudCustomData(Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/tykj/aapk/sdk/IMServer;->conversationID:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/tykj/aapk/sdk/IMServer$6;

    invoke-direct {v7, p0}, Lcom/tykj/aapk/sdk/IMServer$6;-><init>(Lcom/tykj/aapk/sdk/IMServer;)V

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)Ljava/lang/String;

    return-void
.end method

.method public Init(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 3

    const-string v0, "RecordFiles"

    .line 77
    invoke-static {v0}, Lcom/tykj/aapk/sdk/voice/FileUtil;->getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    const-string v1, "IMServer"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u6587\u4ef6\u5939\u521b\u5efa\u6210\u529f:"

    .line 81
    invoke-static {v1, v0}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "SoundFiles"

    .line 84
    invoke-static {v0}, Lcom/tykj/aapk/sdk/voice/FileUtil;->getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "soundFile\u6587\u4ef6\u5939\u521b\u5efa\u6210\u529f:"

    .line 88
    invoke-static {v1, v0}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "im sdk\u521d\u59cb\u5316\u6210\u529f1-sdkAppID:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sput-object p3, Lcom/tykj/aapk/sdk/IMServer;->l_serverId:Ljava/lang/String;

    const-string p3, ""

    .line 93
    sput-object p3, Lcom/tykj/aapk/sdk/IMServer;->conversationID:Ljava/lang/String;

    .line 97
    new-instance p3, Lcom/tencent/imsdk/v2/V2TIMSDKConfig;

    invoke-direct {p3}, Lcom/tencent/imsdk/v2/V2TIMSDKConfig;-><init>()V

    .line 99
    iput-object p3, p0, Lcom/tykj/aapk/sdk/IMServer;->mTIMSdkConfig:Lcom/tencent/imsdk/v2/V2TIMSDKConfig;

    const/4 v0, 0x3

    .line 102
    invoke-virtual {p3, v0}, Lcom/tencent/imsdk/v2/V2TIMSDKConfig;->setLogLevel(I)V

    .line 115
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v0

    new-instance v2, Lcom/tykj/aapk/sdk/IMServer$1;

    invoke-direct {v2, p0}, Lcom/tykj/aapk/sdk/IMServer$1;-><init>(Lcom/tykj/aapk/sdk/IMServer;)V

    invoke-virtual {v0, v2}, Lcom/tencent/imsdk/v2/V2TIMManager;->addIMSDKListener(Lcom/tencent/imsdk/v2/V2TIMSDKListener;)V

    .line 167
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_2

    const-string v0, "im \u4e0a\u4e0b\u6587\u4e3a\u7a7a"

    .line 170
    invoke-static {v1, v0}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_2
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMManager;->initSDK(Landroid/content/Context;ILcom/tencent/imsdk/v2/V2TIMSDKConfig;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "im sdk\u521d\u59cb\u5316\u6210\u529f"

    .line 177
    invoke-static {v1, p1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "im sdk\u521d\u59cb\u5316\u5931\u8d25"

    .line 180
    invoke-static {v1, p1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object p1

    new-instance p2, Lcom/tykj/aapk/sdk/IMServer$2;

    invoke-direct {p2, p0}, Lcom/tykj/aapk/sdk/IMServer$2;-><init>(Lcom/tykj/aapk/sdk/IMServer;)V

    invoke-virtual {p1, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->addAdvancedMsgListener(Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;)V

    return-void
.end method

.method public LeaveConversation()V
    .locals 2

    const-string v0, "IMServer"

    const-string/jumbo v1, "\u79bb\u5f00\u5bf9\u8bdd\u7ec4"

    .line 646
    invoke-static {v0, v1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 647
    iput-object v0, p0, Lcom/tykj/aapk/sdk/IMServer;->timConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    const-string v1, ""

    .line 648
    sput-object v1, Lcom/tykj/aapk/sdk/IMServer;->conversationID:Ljava/lang/String;

    .line 649
    sput-object v0, Lcom/tykj/aapk/sdk/IMServer;->lastMsg:Lcom/tencent/imsdk/v2/V2TIMMessage;

    const/4 v0, 0x0

    .line 650
    iput v0, p0, Lcom/tykj/aapk/sdk/IMServer;->hsaGetHistory:I

    return-void
.end method

.method public Login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 417
    iput-object p1, p0, Lcom/tykj/aapk/sdk/IMServer;->l_identifier:Ljava/lang/String;

    .line 418
    iput-object p2, p0, Lcom/tykj/aapk/sdk/IMServer;->l_userSig:Ljava/lang/String;

    const/4 v0, 0x1

    .line 419
    iput v0, p0, Lcom/tykj/aapk/sdk/IMServer;->imState:I

    .line 422
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v0

    new-instance v1, Lcom/tykj/aapk/sdk/IMServer$4;

    invoke-direct {v1, p0}, Lcom/tykj/aapk/sdk/IMServer$4;-><init>(Lcom/tykj/aapk/sdk/IMServer;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/v2/V2TIMManager;->login(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public LoginOut()V
    .locals 2

    .line 446
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v0

    new-instance v1, Lcom/tykj/aapk/sdk/IMServer$5;

    invoke-direct {v1, p0}, Lcom/tykj/aapk/sdk/IMServer$5;-><init>(Lcom/tykj/aapk/sdk/IMServer;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMManager;->logout(Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public MessageSound(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 13

    .line 334
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v0

    .line 335
    sget-object v1, Lcom/tykj/aapk/sdk/IMServer;->l_serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 337
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "im \u63a5\u6536\u5230\u8bed\u97f3\u6d88\u606f==2=\uff1a  hsaGetHistory="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tykj/aapk/sdk/IMServer;->hsaGetHistory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  lastMsg==null=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tykj/aapk/sdk/IMServer;->lastMsg:Lcom/tencent/imsdk/v2/V2TIMMessage;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMServer"

    invoke-static {v1, v0}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 340
    iput-object v0, p0, Lcom/tykj/aapk/sdk/IMServer;->soundPath:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSoundElem()Lcom/tencent/imsdk/v2/V2TIMSoundElem;

    move-result-object v4

    .line 344
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getUUID()Ljava/lang/String;

    move-result-object v5

    .line 346
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v9

    .line 347
    iget v6, p0, Lcom/tykj/aapk/sdk/IMServer;->hsaGetHistory:I

    if-ne v6, v3, :cond_2

    sget-object v6, Lcom/tykj/aapk/sdk/IMServer;->lastMsg:Lcom/tencent/imsdk/v2/V2TIMMessage;

    if-nez v6, :cond_2

    .line 348
    sput-object p1, Lcom/tykj/aapk/sdk/IMServer;->lastMsg:Lcom/tencent/imsdk/v2/V2TIMMessage;

    .line 350
    :cond_2
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getDataSize()I

    .line 352
    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getDuration()I

    move-result v6

    int-to-long v10, v6

    .line 356
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RecordFiles"

    invoke-static {v7}, Lcom/tykj/aapk/sdk/voice/FileUtil;->getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/cz_record_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tykj/aapk/sdk/IMServer;->soundPath:Ljava/lang/String;

    .line 357
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/tykj/aapk/sdk/IMServer;->soundPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCloudCustomData()Ljava/lang/String;

    move-result-object v8

    .line 361
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 362
    iget-object p1, p0, Lcom/tykj/aapk/sdk/IMServer;->soundPath:Ljava/lang/String;

    new-instance v0, Lcom/tykj/aapk/sdk/IMServer$3;

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/tykj/aapk/sdk/IMServer$3;-><init>(Lcom/tykj/aapk/sdk/IMServer;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v4, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->downloadSound(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V

    goto :goto_2

    .line 396
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    const-string p1, ","

    .line 398
    invoke-virtual {v8, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 399
    array-length v4, p1

    const/4 v5, 0x2

    if-lt v4, v5, :cond_4

    .line 401
    aget-object v0, p1, v2

    .line 402
    aget-object p1, p1, v3

    move-object v12, p1

    goto :goto_1

    :cond_4
    move-object v12, v0

    .line 405
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4e0b\u8f7d\u6210\u529f path = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tykj/aapk/sdk/IMServer;->soundPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 407
    iget-object v8, p0, Lcom/tykj/aapk/sdk/IMServer;->soundPath:Ljava/lang/String;

    const-wide/16 v1, 0x3e8

    mul-long v1, v1, v10

    move-object v6, v9

    move-wide v9, v1

    move-object v11, v0

    invoke-static/range {v6 .. v12}, Lcom/tykj/aapk/sdk/IMServer;->IMGroupRespond(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public MessageSystem(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 5

    .line 204
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v0

    .line 205
    sget-object v1, Lcom/tykj/aapk/sdk/IMServer;->l_serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTextElem()Lcom/tencent/imsdk/v2/V2TIMTextElem;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMTextElem;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IMServer"

    const-string v1, "im \u63a5\u6536\u5230\u4e00\u6761\u7cfb\u7edf\u6d88\u606f"

    .line 209
    invoke-static {v0, v1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v0, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;

    invoke-direct {v0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;-><init>()V

    const/16 v1, 0xc8

    .line 212
    invoke-virtual {v0, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setType(I)V

    .line 215
    new-instance v2, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;

    invoke-direct {v2}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;-><init>()V

    .line 216
    sget-object v3, Lcom/tykj/aapk/sdk/IMServer;->l_serverId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setSender(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v2, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setMesType(I)V

    .line 218
    invoke-virtual {v2, p1}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setMesContent(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    .line 219
    invoke-virtual {v2, v3, v4}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setDuration(J)V

    .line 221
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 222
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tykj/aapk/sdk/SdkServer;->CallRespond(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public MessageText(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 8

    .line 230
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v1

    .line 233
    sget-object v2, Lcom/tykj/aapk/sdk/IMServer;->l_serverId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 240
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTextElem()Lcom/tencent/imsdk/v2/V2TIMTextElem;

    move-result-object v2

    .line 241
    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMTextElem;->getText()Ljava/lang/String;

    move-result-object v2

    .line 243
    iget v4, p0, Lcom/tykj/aapk/sdk/IMServer;->hsaGetHistory:I

    if-ne v4, v3, :cond_1

    sget-object v4, Lcom/tykj/aapk/sdk/IMServer;->lastMsg:Lcom/tencent/imsdk/v2/V2TIMMessage;

    if-nez v4, :cond_1

    .line 244
    sput-object p1, Lcom/tykj/aapk/sdk/IMServer;->lastMsg:Lcom/tencent/imsdk/v2/V2TIMMessage;

    .line 245
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "im \u63a5\u6536\u5230\u6587\u672c\u6d88\u606f senderId\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--l_identifier:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tykj/aapk/sdk/IMServer;->l_identifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--lastmsg==null\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tykj/aapk/sdk/IMServer;->lastMsg:Lcom/tencent/imsdk/v2/V2TIMMessage;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "---hsaGetHistory:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/tykj/aapk/sdk/IMServer;->hsaGetHistory:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IMServer"

    invoke-static {v5, v4}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    .line 247
    sget-object v4, Lcom/tykj/aapk/sdk/IMServer;->conversationID:Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_2

    .line 250
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 252
    new-instance v0, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;

    invoke-direct {v0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;-><init>()V

    const/16 v4, 0x64

    .line 253
    invoke-virtual {v0, v4}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setType(I)V

    .line 254
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCloudCustomData()Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x2

    if-lez v4, :cond_4

    const-string v4, ","

    .line 259
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 260
    array-length v4, p1

    if-lt v4, v7, :cond_4

    .line 262
    aget-object v4, p1, v6

    .line 263
    aget-object p1, p1, v3

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u83b7\u53d6\u81ea\u5b9a\u4e49\u4e91\u7aef\u6570\u636e\u6635\u79f0\uff1a"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "--\u5934\u50cf-\uff1a"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v4, ""

    move-object p1, v4

    .line 269
    :goto_1
    new-instance v3, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;

    invoke-direct {v3}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;-><init>()V

    .line 270
    invoke-virtual {v3, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setSender(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v3, v7}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setMesType(I)V

    .line 272
    invoke-virtual {v3, v2}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setMesContent(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 273
    invoke-virtual {v3, v1, v2}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setDuration(J)V

    .line 274
    invoke-virtual {v3, p1}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setHeadPic(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v3, v4}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setNick(Ljava/lang/String;)V

    .line 276
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 277
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tykj/aapk/sdk/SdkServer;->CallRespond(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public SendSoundMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 550
    iput-object p1, p0, Lcom/tykj/aapk/sdk/IMServer;->SoundPath:Ljava/lang/String;

    long-to-int p3, p2

    .line 551
    div-int/lit16 p3, p3, 0x3e8

    .line 555
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->createSoundMessage(Ljava/lang/String;I)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    .line 556
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 557
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setCloudCustomData(Ljava/lang/String;)V

    .line 560
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/tykj/aapk/sdk/IMServer$8;

    invoke-direct {v7, p0}, Lcom/tykj/aapk/sdk/IMServer$8;-><init>(Lcom/tykj/aapk/sdk/IMServer;)V

    move-object v3, p4

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)Ljava/lang/String;

    return-void
.end method

.method public SetConversation(Ljava/lang/String;)V
    .locals 3

    .line 621
    sput-object p1, Lcom/tykj/aapk/sdk/IMServer;->conversationID:Ljava/lang/String;

    .line 622
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->setGroupReceiveMessageOpt(Ljava/lang/String;ILcom/tencent/imsdk/v2/V2TIMCallback;)V

    .line 624
    iget-object v0, p0, Lcom/tykj/aapk/sdk/IMServer;->timConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/tykj/aapk/sdk/IMServer;->LeaveConversation()V

    .line 628
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u8fdb\u5165\u5bf9\u8bdd\u7ec4 groupId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IMServer"

    invoke-static {v0, p1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getConversationManager()Lcom/tencent/imsdk/v2/V2TIMConversationManager;

    move-result-object p1

    sget-object v0, Lcom/tykj/aapk/sdk/IMServer;->conversationID:Ljava/lang/String;

    new-instance v1, Lcom/tykj/aapk/sdk/IMServer$11;

    invoke-direct {v1, p0}, Lcom/tykj/aapk/sdk/IMServer$11;-><init>(Lcom/tykj/aapk/sdk/IMServer;)V

    invoke-virtual {p1, v0, v1}, Lcom/tencent/imsdk/v2/V2TIMConversationManager;->getConversation(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method
