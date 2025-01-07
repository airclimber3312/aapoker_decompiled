.class public Lcom/hyphenate/chat/adapter/EMAContactManager;
.super Lcom/hyphenate/chat/adapter/EMABase;


# instance fields
.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/hyphenate/chat/adapter/EMAContactListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/adapter/EMAContactManager;->listeners:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAContactManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/adapter/EMAContactManager;->listeners:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeInit(Lcom/hyphenate/chat/adapter/EMAContactManager;)V

    return-void
.end method


# virtual methods
.method public acceptInvitation(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeAcceptInvitation(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public addToBlackList(Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeAddToBlackList(Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public declineInvitation(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeDeclineInvitation(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public deleteContact(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeDeleteContact(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;Z)V

    return-void
.end method

.method public fetchAllContactsFromLocal(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAContact;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeFetchAllContactsFromLocal(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public fetchAllContactsFromServer(ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAContact;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeFetchAllContactsFromServer_(ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    return-object p1
.end method

.method public fetchAllContactsFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAContact;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeFetchAllContactsFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public fetchContactFromLocal(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAContact;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeFetchContactFromLocal(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAContact;

    move-result-object p1

    return-object p1
.end method

.method public getBlackListFromDB(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
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

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeGetBlackListFromDB(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBlackListFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
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

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeGetBlackListFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getContactsFromDB(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
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

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeGetContactsFromDB(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getContactsFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
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

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeGetContactsFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSelfIdsOnOtherPlatform(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
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

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeGetSelfIdsOnOtherPlatform(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public inviteContact(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeInviteContact(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method native nativeAcceptInvitation(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeAddToBlackList(Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeDeclineInvitation(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeDeleteContact(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;Z)V
.end method

.method native nativeFetchAllContactsFromLocal(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAContact;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchAllContactsFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAContact;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchAllContactsFromServer_(ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAContact;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchContactFromLocal(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAContact;
.end method

.method native nativeGetBlackListFromDB(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
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
.end method

.method native nativeGetBlackListFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
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
.end method

.method native nativeGetContactsFromDB(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
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
.end method

.method native nativeGetContactsFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
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
.end method

.method native nativeGetSelfIdsOnOtherPlatform(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
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
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/EMAContactManager;)V
.end method

.method native nativeInviteContact(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeRegisterContactListener(Lcom/hyphenate/chat/adapter/EMAContactListener;)V
.end method

.method native nativeRemoveContactListener(Lcom/hyphenate/chat/adapter/EMAContactListener;)V
.end method

.method native nativeRemoveFromBlackList(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeSaveBlackList(Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)V
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

.method native nativeSetContactRemark(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeSetSupportRosterVersion(Z)V
.end method

.method public registerContactListener(Lcom/hyphenate/chat/adapter/EMAContactListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAContactManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeRegisterContactListener(Lcom/hyphenate/chat/adapter/EMAContactListener;)V

    return-void
.end method

.method public removeContactListener(Lcom/hyphenate/chat/adapter/EMAContactListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAContactManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeRemoveContactListener(Lcom/hyphenate/chat/adapter/EMAContactListener;)V

    return-void
.end method

.method public removeFromBlackList(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeRemoveFromBlackList(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public saveBlackList(Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)V
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

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeSaveBlackList(Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public setContactRemark(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeSetContactRemark(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public setSupportRosterVersion(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAContactManager;->nativeSetSupportRosterVersion(Z)V

    return-void
.end method
