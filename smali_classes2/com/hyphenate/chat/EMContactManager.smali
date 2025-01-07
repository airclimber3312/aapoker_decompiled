.class public Lcom/hyphenate/chat/EMContactManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMContactManager$EMAContactListenerImpl;
    }
.end annotation


# instance fields
.field private contactImpl:Lcom/hyphenate/chat/EMContactManager$EMAContactListenerImpl;

.field private contactListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyphenate/EMContactListener;",
            ">;"
        }
    .end annotation
.end field

.field emaObject:Lcom/hyphenate/chat/adapter/EMAContactManager;

.field mClient:Lcom/hyphenate/chat/EMClient;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/adapter/EMAContactManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/EMContactManager;->contactListeners:Ljava/util/List;

    new-instance v0, Lcom/hyphenate/chat/EMContactManager$EMAContactListenerImpl;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMContactManager$EMAContactListenerImpl;-><init>(Lcom/hyphenate/chat/EMContactManager;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMContactManager;->contactImpl:Lcom/hyphenate/chat/EMContactManager$EMAContactListenerImpl;

    iput-object p1, p0, Lcom/hyphenate/chat/EMContactManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance p1, Lcom/hyphenate/chat/adapter/EMAContactManager;

    invoke-direct {p1, p2}, Lcom/hyphenate/chat/adapter/EMAContactManager;-><init>(Lcom/hyphenate/chat/adapter/EMAContactManager;)V

    iput-object p1, p0, Lcom/hyphenate/chat/EMContactManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAContactManager;

    iget-object p2, p0, Lcom/hyphenate/chat/EMContactManager;->contactImpl:Lcom/hyphenate/chat/EMContactManager$EMAContactListenerImpl;

    invoke-virtual {p1, p2}, Lcom/hyphenate/chat/adapter/EMAContactManager;->registerContactListener(Lcom/hyphenate/chat/adapter/EMAContactListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hyphenate/chat/EMContactManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMContactManager;->contactListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hyphenate/chat/EMContactManager;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMContactManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method private handleError(Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hyphenate/exceptions/HyphenateException;

    invoke-direct {v0, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(Lcom/hyphenate/chat/adapter/EMAError;)V

    throw v0
.end method


# virtual methods
.method public acceptInvitation(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAContactManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAContactManager;->acceptInvitation(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMContactManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public addContact(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAContactManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAContactManager;->inviteContact(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMContactManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public addUserToBlackList(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAContactManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAContactManager;->addToBlackList(Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMContactManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public asyncAcceptInvitation(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMContactManager$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMContactManager$8;-><init>(Lcom/hyphenate/chat/EMContactManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncAddContact(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMContactManager$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMContactManager$1;-><init>(Lcom/hyphenate/chat/EMContactManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncAddUserToBlackList(Ljava/lang/String;ZLcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMContactManager$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMContactManager$4;-><init>(Lcom/hyphenate/chat/EMContactManager;Ljava/lang/String;ZLcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncDeclineInvitation(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMContactManager$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMContactManager$9;-><init>(Lcom/hyphenate/chat/EMContactManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncDeleteContact(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMContactManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMContactManager$2;-><init>(Lcom/hyphenate/chat/EMContactManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchAllContactsFromLocal(Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMContact;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMContactManager$12;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMContactManager$12;-><init>(Lcom/hyphenate/chat/EMContactManager;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchAllContactsFromServer(ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMContact;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMContactManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMContactManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMContactManager$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/chat/EMContactManager;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchAllContactsFromServer(Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMContact;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMContactManager$13;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMContactManager$13;-><init>(Lcom/hyphenate/chat/EMContactManager;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncGetAllContactsFromServer(Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMContactManager$3;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMContactManager$3;-><init>(Lcom/hyphenate/chat/EMContactManager;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncGetBlackListFromServer(Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMContactManager$7;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMContactManager$7;-><init>(Lcom/hyphenate/chat/EMContactManager;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncGetSelfIdsOnOtherPlatform(Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMContactManager$10;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMContactManager$10;-><init>(Lcom/hyphenate/chat/EMContactManager;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncRemoveUserFromBlackList(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMContactManager$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMContactManager$6;-><init>(Lcom/hyphenate/chat/EMContactManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncSaveBlackList(Ljava/util/List;Lcom/hyphenate/EMCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMContactManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMContactManager$5;-><init>(Lcom/hyphenate/chat/EMContactManager;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncSetContactRemark(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMContactManager$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMContactManager$11;-><init>(Lcom/hyphenate/chat/EMContactManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declineInvitation(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAContactManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAContactManager;->declineInvitation(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMContactManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public deleteContact(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hyphenate/chat/EMContactManager;->deleteContact(Ljava/lang/String;Z)V

    return-void
.end method

.method public deleteContact(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAContactManager;

    invoke-virtual {v1, p1, v0, p2}, Lcom/hyphenate/chat/adapter/EMAContactManager;->deleteContact(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;Z)V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p2

    iget-object p2, p2, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMContactManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public fetchContactFromLocal(Ljava/lang/String;)Lcom/hyphenate/chat/EMContact;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAContactManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAContactManager;->fetchContactFromLocal(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAContact;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMContactManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/hyphenate/chat/EMContact;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/EMContact;-><init>(Lcom/hyphenate/chat/adapter/EMAContact;)V

    return-object v0
.end method

.method public getAllContactsFromServer()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAContactManager;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/adapter/EMAContactManager;->getContactsFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMContactManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-object v1
.end method

.method public getBlackListFromServer()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAContactManager;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/adapter/EMAContactManager;->getBlackListFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMContactManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-object v1
.end method

.method public getBlackListUsernames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAContactManager;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/adapter/EMAContactManager;->getBlackListFromDB(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getContactsFromDB(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMContactManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAContactManager;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAContactManager;->getContactsFromDB(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getContactsFromLocal()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hyphenate/chat/EMContactManager;->getContactsFromDB(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMContactManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-object v1
.end method

.method public getSelfIdsOnOtherPlatform()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAContactManager;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/adapter/EMAContactManager;->getSelfIdsOnOtherPlatform(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMContactManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-object v1
.end method

.method synthetic lambda$asyncFetchAllContactsFromServer$0$com-hyphenate-chat-EMContactManager(ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAContactManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAContactManager;->fetchAllContactsFromServer(ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMContactManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/hyphenate/chat/EMContact;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hyphenate/chat/adapter/EMAContact;

    invoke-direct {v2, v3}, Lcom/hyphenate/chat/EMContact;-><init>(Lcom/hyphenate/chat/adapter/EMAContact;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/hyphenate/chat/EMCursorResult;

    invoke-direct {p2}, Lcom/hyphenate/chat/EMCursorResult;-><init>()V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getCursor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMCursorResult;->setCursor(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/hyphenate/chat/EMCursorResult;->setData(Ljava/lang/Object;)V

    if-eqz p3, :cond_2

    invoke-interface {p3, p2}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method onLogout()V
    .locals 0

    return-void
.end method

.method public removeContactListener(Lcom/hyphenate/EMContactListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMContactManager;->contactListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeUserFromBlackList(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAContactManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAContactManager;->removeFromBlackList(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMContactManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public saveBlackList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMContactManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAContactManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAContactManager;->saveBlackList(Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMContactManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public setContactListener(Lcom/hyphenate/EMContactListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMContactManager;->contactListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMContactManager;->contactListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
