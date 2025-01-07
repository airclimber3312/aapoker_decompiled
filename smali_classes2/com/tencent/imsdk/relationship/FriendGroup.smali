.class public Lcom/tencent/imsdk/relationship/FriendGroup;
.super Ljava/lang/Object;
.source "FriendGroup.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private groupName:Ljava/lang/String;

.field private userCount:I

.field private userIDList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/relationship/FriendGroup;->userIDList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected addUserID(Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendGroup;->userIDList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendGroup;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCount()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/tencent/imsdk/relationship/FriendGroup;->userCount:I

    return v0
.end method

.method public getUserIDList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendGroup;->userIDList:Ljava/util/List;

    return-object v0
.end method
