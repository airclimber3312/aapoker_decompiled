.class public Lcom/netease/cloud/nos/yidun/core/CallRet;
.super Ljava/lang/Object;
.source "CallRet.java"


# instance fields
.field private callbackRetMsg:Ljava/lang/String;

.field private exception:Ljava/lang/Exception;

.field private fileParam:Ljava/lang/Object;

.field private httpCode:I

.field private requestId:Ljava/lang/String;

.field private response:Ljava/lang/String;

.field private uploadContext:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->fileParam:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->uploadContext:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->httpCode:I

    .line 5
    iput-object p4, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->requestId:Ljava/lang/String;

    .line 6
    new-instance p1, Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p5, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->callbackRetMsg:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->response:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getCallbackRetMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->callbackRetMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getFileParam()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->fileParam:Ljava/lang/Object;

    return-object v0
.end method

.method public getHttpCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->httpCode:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadContext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->uploadContext:Ljava/lang/String;

    return-object v0
.end method

.method public isOK()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->httpCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCallbackRetMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->callbackRetMsg:Ljava/lang/String;

    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public setFileParam(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->fileParam:Ljava/lang/Object;

    return-void
.end method

.method public setHttpCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->httpCode:I

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->requestId:Ljava/lang/String;

    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->response:Ljava/lang/String;

    return-void
.end method

.method public setUploadContext(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/CallRet;->uploadContext:Ljava/lang/String;

    return-void
.end method
