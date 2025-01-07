.class public Lcom/tencent/imsdk/signaling/SignalingInfo;
.super Ljava/lang/Object;
.source "SignalingInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actionType:I

.field private data:Ljava/lang/String;

.field private groupID:Ljava/lang/String;

.field private inviteID:Ljava/lang/String;

.field private inviteeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inviter:Ljava/lang/String;

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/signaling/SignalingInfo;->inviteeList:Ljava/util/List;

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/tencent/imsdk/signaling/SignalingInfo;->actionType:I

    return-void
.end method


# virtual methods
.method public addInvitee(Ljava/lang/String;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/tencent/imsdk/signaling/SignalingInfo;->inviteeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getActionType()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/tencent/imsdk/signaling/SignalingInfo;->actionType:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/tencent/imsdk/signaling/SignalingInfo;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/tencent/imsdk/signaling/SignalingInfo;->groupID:Ljava/lang/String;

    return-object v0
.end method

.method public getInviteID()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/tencent/imsdk/signaling/SignalingInfo;->inviteID:Ljava/lang/String;

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

    .line 41
    iget-object v0, p0, Lcom/tencent/imsdk/signaling/SignalingInfo;->inviteeList:Ljava/util/List;

    return-object v0
.end method

.method public getInviter()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tencent/imsdk/signaling/SignalingInfo;->inviter:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/tencent/imsdk/signaling/SignalingInfo;->timeout:I

    return v0
.end method

.method public setActionType(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/tencent/imsdk/signaling/SignalingInfo;->actionType:I

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/tencent/imsdk/signaling/SignalingInfo;->data:Ljava/lang/String;

    return-void
.end method

.method public setGroupID(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tencent/imsdk/signaling/SignalingInfo;->groupID:Ljava/lang/String;

    return-void
.end method

.method public setInviteID(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/tencent/imsdk/signaling/SignalingInfo;->inviteID:Ljava/lang/String;

    return-void
.end method

.method public setInviteeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/tencent/imsdk/signaling/SignalingInfo;->inviteeList:Ljava/util/List;

    return-void
.end method

.method public setInviter(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/tencent/imsdk/signaling/SignalingInfo;->inviter:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/tencent/imsdk/signaling/SignalingInfo;->timeout:I

    return-void
.end method
