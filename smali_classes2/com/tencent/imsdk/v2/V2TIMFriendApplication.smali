.class public Lcom/tencent/imsdk/v2/V2TIMFriendApplication;
.super Ljava/lang/Object;
.source "V2TIMFriendApplication.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final V2TIM_FRIEND_ACCEPT_AGREE:I = 0x0

.field public static final V2TIM_FRIEND_ACCEPT_AGREE_AND_ADD:I = 0x1

.field public static final V2TIM_FRIEND_APPLICATION_BOTH:I = 0x3

.field public static final V2TIM_FRIEND_APPLICATION_COME_IN:I = 0x1

.field public static final V2TIM_FRIEND_APPLICATION_SEND_OUT:I = 0x2


# instance fields
.field private friendApplication:Lcom/tencent/imsdk/relationship/FriendApplication;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/tencent/imsdk/relationship/FriendApplication;

    invoke-direct {v0}, Lcom/tencent/imsdk/relationship/FriendApplication;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->friendApplication:Lcom/tencent/imsdk/relationship/FriendApplication;

    return-void
.end method


# virtual methods
.method public getAddSource()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->friendApplication:Lcom/tencent/imsdk/relationship/FriendApplication;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendApplication;->getAddSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddTime()J
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->friendApplication:Lcom/tencent/imsdk/relationship/FriendApplication;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendApplication;->getAddTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAddWording()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->friendApplication:Lcom/tencent/imsdk/relationship/FriendApplication;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendApplication;->getAddWording()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaceUrl()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->friendApplication:Lcom/tencent/imsdk/relationship/FriendApplication;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendApplication;->getFaceUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->friendApplication:Lcom/tencent/imsdk/relationship/FriendApplication;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendApplication;->getNickName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->friendApplication:Lcom/tencent/imsdk/relationship/FriendApplication;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendApplication;->getApplicationType()I

    move-result v0

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->friendApplication:Lcom/tencent/imsdk/relationship/FriendApplication;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendApplication;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setFriendApplication(Lcom/tencent/imsdk/relationship/FriendApplication;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->friendApplication:Lcom/tencent/imsdk/relationship/FriendApplication;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "V2TIMFriendApplication--->userID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nickName:"

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", faceUrl:"

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->getFaceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addSource:"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->getAddSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addWording:"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->getAddWording()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addTime:"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->getAddTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type:"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFriendApplication;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(1:comeIn, 2:sendOut, 3:both)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
