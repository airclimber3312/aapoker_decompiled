.class public Lcom/tencent/imsdk/v2/V2TIMReceiveMessageOptInfo;
.super Ljava/lang/Object;
.source "V2TIMReceiveMessageOptInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ReceiveMessageOptInfo:Lcom/tencent/imsdk/relationship/ReceiveMessageOptInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/tencent/imsdk/relationship/ReceiveMessageOptInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/relationship/ReceiveMessageOptInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMReceiveMessageOptInfo;->ReceiveMessageOptInfo:Lcom/tencent/imsdk/relationship/ReceiveMessageOptInfo;

    return-void
.end method


# virtual methods
.method public getC2CReceiveMessageOpt()I
    .locals 4

    .line 12
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMReceiveMessageOptInfo;->ReceiveMessageOptInfo:Lcom/tencent/imsdk/relationship/ReceiveMessageOptInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/ReceiveMessageOptInfo;->getC2CReceiveMessageOpt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    return v2

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMReceiveMessageOptInfo;->ReceiveMessageOptInfo:Lcom/tencent/imsdk/relationship/ReceiveMessageOptInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/ReceiveMessageOptInfo;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setC2CReceiveMessageOpt(I)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMReceiveMessageOptInfo;->ReceiveMessageOptInfo:Lcom/tencent/imsdk/relationship/ReceiveMessageOptInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/ReceiveMessageOptInfo;->setC2CReceiveMessageOpt(I)V

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMReceiveMessageOptInfo;->ReceiveMessageOptInfo:Lcom/tencent/imsdk/relationship/ReceiveMessageOptInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/ReceiveMessageOptInfo;->setUserID(Ljava/lang/String;)V

    return-void
.end method
