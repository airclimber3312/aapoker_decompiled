.class public Lcom/hyphenate/chat/EMUserInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;
    }
.end annotation


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private birth:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private ext:Ljava/lang/String;

.field private gender:I

.field private nickname:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hyphenate/chat/EMUserInfo;->gender:I

    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMUserInfo;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBirth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMUserInfo;->birth:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMUserInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMUserInfo;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/chat/EMUserInfo;->gender:I

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMUserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMUserInfo;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMUserInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMUserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMUserInfo;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setBirth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMUserInfo;->birth:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMUserInfo;->email:Ljava/lang/String;

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMUserInfo;->ext:Ljava/lang/String;

    return-void
.end method

.method public setGender(I)V
    .locals 0

    iput p1, p0, Lcom/hyphenate/chat/EMUserInfo;->gender:I

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMUserInfo;->setNickname(Ljava/lang/String;)V

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMUserInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMUserInfo;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMUserInfo;->signature:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMUserInfo;->userId:Ljava/lang/String;

    return-void
.end method
