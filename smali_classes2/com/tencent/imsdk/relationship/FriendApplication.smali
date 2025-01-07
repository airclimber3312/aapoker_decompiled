.class public Lcom/tencent/imsdk/relationship/FriendApplication;
.super Ljava/lang/Object;
.source "FriendApplication.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private addSource:Ljava/lang/String;

.field private addTime:J

.field private addWording:Ljava/lang/String;

.field private applicationType:I

.field private faceUrl:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddSource()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendApplication;->addSource:Ljava/lang/String;

    return-object v0
.end method

.method public getAddTime()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/tencent/imsdk/relationship/FriendApplication;->addTime:J

    return-wide v0
.end method

.method public getAddWording()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendApplication;->addWording:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationType()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/tencent/imsdk/relationship/FriendApplication;->applicationType:I

    return v0
.end method

.method public getFaceUrl()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendApplication;->faceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendApplication;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendApplication;->userID:Ljava/lang/String;

    return-object v0
.end method
