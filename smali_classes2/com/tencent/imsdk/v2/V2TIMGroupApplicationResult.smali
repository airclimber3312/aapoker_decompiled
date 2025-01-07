.class public Lcom/tencent/imsdk/v2/V2TIMGroupApplicationResult;
.super Ljava/lang/Object;
.source "V2TIMGroupApplicationResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private reportedTimestamp:J

.field private unreadCount:I

.field private v2TIMGroupApplicationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupApplication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplicationResult;->unreadCount:I

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplicationResult;->reportedTimestamp:J

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplicationResult;->v2TIMGroupApplicationList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getGroupApplicationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupApplication;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplicationResult;->v2TIMGroupApplicationList:Ljava/util/List;

    return-object v0
.end method

.method public getUnreadCount()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplicationResult;->unreadCount:I

    return v0
.end method

.method setGroupApplicationResult(Lcom/tencent/imsdk/group/GroupApplicationResult;)V
    .locals 3

    .line 36
    invoke-virtual {p1}, Lcom/tencent/imsdk/group/GroupApplicationResult;->getUnreadCount()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplicationResult;->unreadCount:I

    .line 38
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplicationResult;->v2TIMGroupApplicationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    invoke-virtual {p1}, Lcom/tencent/imsdk/group/GroupApplicationResult;->getGroupApplicationList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 41
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 42
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;-><init>()V

    .line 43
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/group/GroupApplication;

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMGroupApplication;->setGroupApplication(Lcom/tencent/imsdk/group/GroupApplication;)V

    .line 44
    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplicationResult;->v2TIMGroupApplicationList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setReportedTimestamp(J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplicationResult;->reportedTimestamp:J

    return-void
.end method

.method setUnreadCount(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupApplicationResult;->unreadCount:I

    return-void
.end method
