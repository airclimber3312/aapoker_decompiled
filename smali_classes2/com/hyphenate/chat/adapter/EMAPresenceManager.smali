.class public Lcom/hyphenate/chat/adapter/EMAPresenceManager;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/hyphenate/chat/adapter/EMAPresenceManagerListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAPresenceManager;->nativeAddListener(Lcom/hyphenate/chat/adapter/EMAPresenceManagerListener;)V

    return-void
.end method

.method public fetchPresenceStatus(Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAPresence;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAPresenceManager;->nativeFetchPresenceStatus(Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public fetchSubscribedMembers(IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAPresenceManager;->nativeFetchSubscribedMembers(IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method native nativeAddListener(Lcom/hyphenate/chat/adapter/EMAPresenceManagerListener;)V
.end method

.method native nativeClearListener()V
.end method

.method native nativeFetchPresenceStatus(Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAPresence;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchSubscribedMembers(IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativePublishPresence(ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeRemoveListener(Lcom/hyphenate/chat/adapter/EMAPresenceManagerListener;)V
.end method

.method native nativeSubscribePresences(Ljava/util/List;JLcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAPresence;",
            ">;"
        }
    .end annotation
.end method

.method native nativeUnsubscribePresences(Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")V"
        }
    .end annotation
.end method

.method public publishPresence(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAPresenceManager;->nativePublishPresence(ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public subscribePresences(Ljava/util/List;JLcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAPresence;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAPresenceManager;->nativeSubscribePresences(Ljava/util/List;JLcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public unsubscribePresences(Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAPresenceManager;->nativeUnsubscribePresences(Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method
