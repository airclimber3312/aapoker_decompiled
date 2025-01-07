.class public Lcom/tencent/imsdk/relationship/ReceiveMessageOptInfo;
.super Ljava/lang/Object;
.source "ReceiveMessageOptInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private userID:Ljava/lang/String;

.field private userReceiveMessageOpt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getC2CReceiveMessageOpt()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/tencent/imsdk/relationship/ReceiveMessageOptInfo;->userReceiveMessageOpt:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/ReceiveMessageOptInfo;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public setC2CReceiveMessageOpt(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/tencent/imsdk/relationship/ReceiveMessageOptInfo;->userReceiveMessageOpt:I

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/tencent/imsdk/relationship/ReceiveMessageOptInfo;->userID:Ljava/lang/String;

    return-void
.end method
