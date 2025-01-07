.class Lcom/tykj/aapk/sdk/IMServer$12;
.super Ljava/lang/Object;
.source "IMServer.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tykj/aapk/sdk/IMServer;->IMGetHistoryInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Ljava/util/List<",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tykj/aapk/sdk/IMServer;


# direct methods
.method constructor <init>(Lcom/tykj/aapk/sdk/IMServer;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/tykj/aapk/sdk/IMServer$12;->this$0:Lcom/tykj/aapk/sdk/IMServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u83b7\u53d6\u5386\u53f2\u8bb0\u5f55\u5931\u8d25\uff1a, code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", desc:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IMServer"

    invoke-static {p2, p1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 685
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/tykj/aapk/sdk/IMServer$12;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u83b7\u53d6\u5386\u53f2\u8bb0\u5f55\u6210\u529f,\u603b\u5171\u7684\u6570\u636e\u4e2a\u6570\u662f\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  hsaGetHistory=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tykj/aapk/sdk/IMServer$12;->this$0:Lcom/tykj/aapk/sdk/IMServer;

    invoke-static {v1}, Lcom/tykj/aapk/sdk/IMServer;->access$100(Lcom/tykj/aapk/sdk/IMServer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMServer"

    invoke-static {v1, v0}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 691
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-static {v0}, Lcom/tykj/aapk/sdk/IMServer;->access$202(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/tencent/imsdk/v2/V2TIMMessage;

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/tykj/aapk/sdk/IMServer$12;->this$0:Lcom/tykj/aapk/sdk/IMServer;

    invoke-static {v0, v1}, Lcom/tykj/aapk/sdk/IMServer;->access$102(Lcom/tykj/aapk/sdk/IMServer;I)I

    .line 697
    new-instance v0, Lcom/tykj/aapk/sdk/IMServer$12$1;

    invoke-direct {v0, p0}, Lcom/tykj/aapk/sdk/IMServer$12$1;-><init>(Lcom/tykj/aapk/sdk/IMServer$12;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    const-string v2, ""

    move-object v3, v2

    move-object v4, v3

    const/4 v5, 0x0

    .line 703
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 704
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/imsdk/v2/V2TIMMessage;

    .line 705
    invoke-virtual {v6}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCloudCustomData()Ljava/lang/String;

    move-result-object v7

    .line 706
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-lez v8, :cond_1

    const-string v8, ","

    .line 708
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 709
    array-length v8, v7

    if-lt v8, v9, :cond_1

    .line 711
    aget-object v3, v7, v0

    .line 712
    aget-object v4, v7, v1

    .line 715
    :cond_1
    invoke-virtual {v6}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v7

    const-string/jumbo v8, "|"

    if-ne v7, v1, :cond_2

    .line 716
    new-instance v7, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;

    invoke-direct {v7}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;-><init>()V

    .line 717
    invoke-virtual {v6}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setSender(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v7, v3}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setNick(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v7, v4}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setHeadPic(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v7, v9}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setMesType(I)V

    .line 721
    invoke-virtual {v6}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTextElem()Lcom/tencent/imsdk/v2/V2TIMTextElem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/imsdk/v2/V2TIMTextElem;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setMesContent(Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    .line 722
    invoke-virtual {v7, v9, v10}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setDuration(J)V

    .line 724
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 725
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    if-ge v5, v6, :cond_4

    .line 726
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 728
    :cond_2
    invoke-virtual {v6}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v7

    const/4 v9, 0x4

    if-ne v7, v9, :cond_4

    .line 730
    invoke-virtual {v6}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSoundElem()Lcom/tencent/imsdk/v2/V2TIMSoundElem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getDuration()I

    move-result v7

    int-to-long v9, v7

    .line 732
    invoke-virtual {v6}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSoundElem()Lcom/tencent/imsdk/v2/V2TIMSoundElem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->getUUID()Ljava/lang/String;

    move-result-object v7

    .line 733
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SoundFiles"

    invoke-static {v12}, Lcom/tykj/aapk/sdk/voice/FileUtil;->getCacheFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/cz_record_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 734
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 736
    invoke-virtual {v6}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSoundElem()Lcom/tencent/imsdk/v2/V2TIMSoundElem;

    move-result-object v11

    new-instance v12, Lcom/tykj/aapk/sdk/IMServer$12$2;

    invoke-direct {v12, p0}, Lcom/tykj/aapk/sdk/IMServer$12$2;-><init>(Lcom/tykj/aapk/sdk/IMServer$12;)V

    invoke-virtual {v11, v7, v12}, Lcom/tencent/imsdk/v2/V2TIMSoundElem;->downloadSound(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V

    .line 753
    :cond_3
    new-instance v11, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;

    invoke-direct {v11}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;-><init>()V

    .line 754
    invoke-virtual {v6}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setSender(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v11, v3}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setNick(Ljava/lang/String;)V

    .line 756
    invoke-virtual {v11, v4}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setHeadPic(Ljava/lang/String;)V

    .line 757
    invoke-virtual {v11, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setMesType(I)V

    .line 758
    invoke-virtual {v11, v7}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setMesContent(Ljava/lang/String;)V

    const-wide/16 v6, 0x3e8

    mul-long v9, v9, v6

    .line 759
    invoke-virtual {v11, v9, v10}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMMes;->setDuration(J)V

    .line 761
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 762
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    if-ge v5, v6, :cond_4

    .line 763
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 767
    :cond_5
    new-instance p1, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;

    invoke-direct {p1}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;-><init>()V

    const/16 v0, 0x12c

    .line 768
    invoke-virtual {p1, v0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setType(I)V

    .line 770
    invoke-virtual {p1, v2}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 771
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tykj/aapk/sdk/SdkServer;->CallRespond(Ljava/lang/String;)V

    return-void
.end method
