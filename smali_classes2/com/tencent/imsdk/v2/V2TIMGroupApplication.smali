.class public Lcom/tencent/imsdk/v2/V2TIMGroupApplication;
.super Ljava/lang/Object;
.source "V2TIMGroupApplication.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final V2TIM_GROUP_APPLICATION_GET_TYPE_INVITE:I = 0x1

.field public static final V2TIM_GROUP_APPLICATION_GET_TYPE_JOIN:I = 0x0

.field public static final V2TIM_GROUP_APPLICATION_HANDLE_RESULT_AGREE:I = 0x1

.field public static final V2TIM_GROUP_APPLICATION_HANDLE_RESULT_REFUSE:I = 0x0

.field public static final V2TIM_GROUP_APPLICATION_HANDLE_STATUS_HANDLED_BY_OTHER:I = 0x1

.field public static final V2TIM_GROUP_APPLICATION_HANDLE_STATUS_HANDLED_BY_SELF:I = 0x2

.field public static final V2TIM_GROUP_APPLICATION_HANDLE_STATUS_UNHANDLED:I


# instance fields
.field private groupApplication:Lcom/tencent/imsdk/group/GroupApplication;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Lcom/tencent/imsdk/group/GroupApplication;

    invoke-direct {v0}, Lcom/tencent/imsdk/group/GroupApplication;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->groupApplication:Lcom/tencent/imsdk/group/GroupApplication;

    return-void
.end method


# virtual methods
.method public getAddTime()J
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->groupApplication:Lcom/tencent/imsdk/group/GroupApplication;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupApplication;->getRequestTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFromUser()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->groupApplication:Lcom/tencent/imsdk/group/GroupApplication;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupApplication;->getFromUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromUserFaceUrl()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->groupApplication:Lcom/tencent/imsdk/group/GroupApplication;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupApplication;->getFromUserFaceUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromUserNickName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->groupApplication:Lcom/tencent/imsdk/group/GroupApplication;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupApplication;->getFromUserNickName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getGroupApplication()Lcom/tencent/imsdk/group/GroupApplication;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->groupApplication:Lcom/tencent/imsdk/group/GroupApplication;

    return-object v0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->groupApplication:Lcom/tencent/imsdk/group/GroupApplication;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupApplication;->getGroupID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandleResult()I
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->groupApplication:Lcom/tencent/imsdk/group/GroupApplication;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupApplication;->getResponseType()I

    move-result v0

    .line 157
    sget v1, Lcom/tencent/imsdk/group/GroupApplication;->RESPONSE_TYPE_AGREE:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 159
    :cond_0
    sget v1, Lcom/tencent/imsdk/group/GroupApplication;->RESPONSE_TYPE_REFUSE:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public getHandleStatus()I
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->groupApplication:Lcom/tencent/imsdk/group/GroupApplication;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupApplication;->getResponseStatus()I

    move-result v0

    .line 139
    sget v1, Lcom/tencent/imsdk/group/GroupApplication;->RESPONSE_STATUS_UNHANDLED:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 141
    :cond_0
    sget v1, Lcom/tencent/imsdk/group/GroupApplication;->RESPONSE_STATUS_HANDLED_BY_OTHER:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 143
    :cond_1
    sget v1, Lcom/tencent/imsdk/group/GroupApplication;->RESPONSE_STATUS_HANDLED_BY_SELF:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    return v2
.end method

.method public getHandledMsg()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->groupApplication:Lcom/tencent/imsdk/group/GroupApplication;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupApplication;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMsg()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->groupApplication:Lcom/tencent/imsdk/group/GroupApplication;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupApplication;->getRequestMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToUser()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->groupApplication:Lcom/tencent/imsdk/group/GroupApplication;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupApplication;->getToUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->groupApplication:Lcom/tencent/imsdk/group/GroupApplication;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupApplication;->getApplicationType()I

    move-result v0

    .line 123
    sget v1, Lcom/tencent/imsdk/group/GroupApplication;->REQUEST_TYPE_INVITE:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 125
    :cond_0
    sget v1, Lcom/tencent/imsdk/group/GroupApplication;->REQUEST_TYPE_JOIN:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method setGroupApplication(Lcom/tencent/imsdk/group/GroupApplication;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->groupApplication:Lcom/tencent/imsdk/group/GroupApplication;

    return-void
.end method
