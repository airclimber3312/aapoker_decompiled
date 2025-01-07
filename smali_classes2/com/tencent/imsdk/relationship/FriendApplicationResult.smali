.class public Lcom/tencent/imsdk/relationship/FriendApplicationResult;
.super Ljava/lang/Object;
.source "FriendApplicationResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private friendApplicationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/relationship/FriendApplication;",
            ">;"
        }
    .end annotation
.end field

.field private unreadCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/relationship/FriendApplicationResult;->friendApplicationList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFriendApplicationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/relationship/FriendApplication;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendApplicationResult;->friendApplicationList:Ljava/util/List;

    return-object v0
.end method

.method public getUnreadCount()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/tencent/imsdk/relationship/FriendApplicationResult;->unreadCount:I

    return v0
.end method
