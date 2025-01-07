.class public abstract Lcom/tencent/imsdk/v2/V2TIMConversationListener;
.super Ljava/lang/Object;
.source "V2TIMConversationListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConversationChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onConversationGroupCreated(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onConversationGroupDeleted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onConversationGroupNameChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onConversationsAddedToGroup(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onConversationsDeletedFromGroup(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onNewConversation(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSyncServerFailed()V
    .locals 0

    return-void
.end method

.method public onSyncServerFinish()V
    .locals 0

    return-void
.end method

.method public onSyncServerStart()V
    .locals 0

    return-void
.end method

.method public onTotalUnreadMessageCountChanged(J)V
    .locals 0

    return-void
.end method
