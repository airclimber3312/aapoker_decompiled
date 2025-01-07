.class public Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;
.super Ljava/lang/Object;
.source "V2TIMSignalingInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SIGNALING_ACTION_TYPE_ACCEPT_INVITE:I = 0x3

.field public static final SIGNALING_ACTION_TYPE_CANCEL_INVITE:I = 0x2

.field public static final SIGNALING_ACTION_TYPE_INVITE:I = 0x1

.field public static final SIGNALING_ACTION_TYPE_INVITE_TIMEOUT:I = 0x5

.field public static final SIGNALING_ACTION_TYPE_REJECT_INVITE:I = 0x4


# instance fields
.field private signalingInfo:Lcom/tencent/imsdk/signaling/SignalingInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/tencent/imsdk/signaling/SignalingInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/signaling/SignalingInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->signalingInfo:Lcom/tencent/imsdk/signaling/SignalingInfo;

    return-void
.end method


# virtual methods
.method public getActionType()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->signalingInfo:Lcom/tencent/imsdk/signaling/SignalingInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/signaling/SignalingInfo;->getActionType()I

    move-result v0

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->signalingInfo:Lcom/tencent/imsdk/signaling/SignalingInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/signaling/SignalingInfo;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->signalingInfo:Lcom/tencent/imsdk/signaling/SignalingInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/signaling/SignalingInfo;->getGroupID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInviteID()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->signalingInfo:Lcom/tencent/imsdk/signaling/SignalingInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/signaling/SignalingInfo;->getInviteID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInviteeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->signalingInfo:Lcom/tencent/imsdk/signaling/SignalingInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/signaling/SignalingInfo;->getInviteeList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInviter()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->signalingInfo:Lcom/tencent/imsdk/signaling/SignalingInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/signaling/SignalingInfo;->getInviter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSignalingInfo()Lcom/tencent/imsdk/signaling/SignalingInfo;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->signalingInfo:Lcom/tencent/imsdk/signaling/SignalingInfo;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->signalingInfo:Lcom/tencent/imsdk/signaling/SignalingInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/signaling/SignalingInfo;->getTimeout()I

    move-result v0

    return v0
.end method

.method public setActionType(I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->signalingInfo:Lcom/tencent/imsdk/signaling/SignalingInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/signaling/SignalingInfo;->setActionType(I)V

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->signalingInfo:Lcom/tencent/imsdk/signaling/SignalingInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/signaling/SignalingInfo;->setData(Ljava/lang/String;)V

    return-void
.end method

.method public setGroupID(Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->signalingInfo:Lcom/tencent/imsdk/signaling/SignalingInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/signaling/SignalingInfo;->setGroupID(Ljava/lang/String;)V

    return-void
.end method

.method public setInviteID(Ljava/lang/String;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->signalingInfo:Lcom/tencent/imsdk/signaling/SignalingInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/signaling/SignalingInfo;->setInviteID(Ljava/lang/String;)V

    return-void
.end method

.method public setInviteeList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->signalingInfo:Lcom/tencent/imsdk/signaling/SignalingInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/signaling/SignalingInfo;->setInviteeList(Ljava/util/List;)V

    return-void
.end method

.method public setInviter(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->signalingInfo:Lcom/tencent/imsdk/signaling/SignalingInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/signaling/SignalingInfo;->setInviter(Ljava/lang/String;)V

    return-void
.end method

.method protected setSignalingInfo(Lcom/tencent/imsdk/signaling/SignalingInfo;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->signalingInfo:Lcom/tencent/imsdk/signaling/SignalingInfo;

    return-void
.end method

.method public setTimeout(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingInfo;->signalingInfo:Lcom/tencent/imsdk/signaling/SignalingInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/signaling/SignalingInfo;->setTimeout(I)V

    return-void
.end method
