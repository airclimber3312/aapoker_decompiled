.class public Lcom/tencent/imsdk/group/GroupApplication;
.super Ljava/lang/Object;
.source "GroupApplication.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static REQUEST_TYPE_INVITE:I = 0x2

.field public static REQUEST_TYPE_JOIN:I = 0x1

.field public static RESPONSE_STATUS_HANDLED_BY_OTHER:I = 0x2

.field public static RESPONSE_STATUS_HANDLED_BY_SELF:I = 0x3

.field public static RESPONSE_STATUS_UNHANDLED:I = 0x1

.field public static RESPONSE_TYPE_AGREE:I = 0x1

.field public static RESPONSE_TYPE_REFUSE:I = 0x2


# instance fields
.field private applicationType:I

.field private authentication:[B

.field private fromUserFaceUrl:Ljava/lang/String;

.field private fromUserID:Ljava/lang/String;

.field private fromUserNickName:Ljava/lang/String;

.field private groupID:Ljava/lang/String;

.field private requestMessage:Ljava/lang/String;

.field private requestTime:J

.field private responseMessage:Ljava/lang/String;

.field private responseStatus:I

.field private responseType:I

.field private toUserFaceUrl:Ljava/lang/String;

.field private toUserID:Ljava/lang/String;

.field private toUserNickName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationType()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/tencent/imsdk/group/GroupApplication;->applicationType:I

    return v0
.end method

.method public getFromUserFaceUrl()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupApplication;->fromUserFaceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFromUserID()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupApplication;->fromUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getFromUserNickName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupApplication;->fromUserNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupApplication;->groupID:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMessage()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupApplication;->requestMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTime()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupApplication;->requestTime:J

    return-wide v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupApplication;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseStatus()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/tencent/imsdk/group/GroupApplication;->responseStatus:I

    return v0
.end method

.method public getResponseType()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/tencent/imsdk/group/GroupApplication;->responseType:I

    return v0
.end method

.method public getToUserFaceUrl()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupApplication;->toUserFaceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getToUserID()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupApplication;->toUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getToUserNickName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupApplication;->toUserNickName:Ljava/lang/String;

    return-object v0
.end method

.method public setResponseMessage(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupApplication;->responseMessage:Ljava/lang/String;

    return-void
.end method

.method public setResponseType(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/tencent/imsdk/group/GroupApplication;->responseType:I

    return-void
.end method
