.class public Lcom/tencent/imsdk/message/MessageExtensionResult;
.super Ljava/lang/Object;
.source "MessageExtensionResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private extension:Lcom/tencent/imsdk/message/MessageExtension;

.field private resultCode:I

.field private resultInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtension()Lcom/tencent/imsdk/message/MessageExtension;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageExtensionResult;->extension:Lcom/tencent/imsdk/message/MessageExtension;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/tencent/imsdk/message/MessageExtensionResult;->resultCode:I

    return v0
.end method

.method public getResultInfo()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageExtensionResult;->resultInfo:Ljava/lang/String;

    return-object v0
.end method
