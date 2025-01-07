.class public Lcom/tencent/imsdk/relationship/FriendAddApplication;
.super Ljava/lang/Object;
.source "FriendAddApplication.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private addSource:Ljava/lang/String;

.field private addType:I

.field private addWording:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field private remark:Ljava/lang/String;

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAddSource(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/tencent/imsdk/relationship/FriendAddApplication;->addSource:Ljava/lang/String;

    return-void
.end method

.method public setAddType(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/tencent/imsdk/relationship/FriendAddApplication;->addType:I

    return-void
.end method

.method public setAddWording(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/tencent/imsdk/relationship/FriendAddApplication;->addWording:Ljava/lang/String;

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/tencent/imsdk/relationship/FriendAddApplication;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/tencent/imsdk/relationship/FriendAddApplication;->remark:Ljava/lang/String;

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/tencent/imsdk/relationship/FriendAddApplication;->userID:Ljava/lang/String;

    return-void
.end method
