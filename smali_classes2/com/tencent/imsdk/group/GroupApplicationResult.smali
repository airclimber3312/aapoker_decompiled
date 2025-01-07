.class public Lcom/tencent/imsdk/group/GroupApplicationResult;
.super Ljava/lang/Object;
.source "GroupApplicationResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private groupApplicationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupApplication;",
            ">;"
        }
    .end annotation
.end field

.field private unreadCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupApplicationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupApplication;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupApplicationResult;->groupApplicationList:Ljava/util/List;

    return-object v0
.end method

.method public getUnreadCount()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupApplicationResult;->unreadCount:J

    return-wide v0
.end method

.method public setUnreadCount(J)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupApplicationResult;->unreadCount:J

    return-void
.end method
