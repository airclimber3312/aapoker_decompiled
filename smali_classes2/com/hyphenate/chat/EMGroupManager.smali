.class public Lcom/hyphenate/chat/EMGroupManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "group"


# instance fields
.field emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

.field groupChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyphenate/EMGroupChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field listenerImpl:Lcom/hyphenate/chat/adapter/EMAGroupManagerListener;

.field mClient:Lcom/hyphenate/chat/EMClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/adapter/EMAGroupManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/EMGroupManager$1;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMGroupManager$1;-><init>(Lcom/hyphenate/chat/EMGroupManager;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMGroupManager;->listenerImpl:Lcom/hyphenate/chat/adapter/EMAGroupManagerListener;

    iput-object p2, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    iput-object p1, p0, Lcom/hyphenate/chat/EMGroupManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    iget-object p1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    iget-object p2, p0, Lcom/hyphenate/chat/EMGroupManager;->listenerImpl:Lcom/hyphenate/chat/adapter/EMAGroupManagerListener;

    invoke-virtual {p1, p2}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->addListener(Lcom/hyphenate/chat/adapter/EMAGroupManagerListener;)V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    return-void
.end method

.method static synthetic access$000(Lcom/hyphenate/chat/EMGroupManager;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method private createGroup(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Lcom/hyphenate/chat/EMGroup;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    move-object v0, p0

    new-instance v5, Lcom/hyphenate/chat/adapter/EMAGroupSetting;

    move v1, p1

    move v2, p5

    move/from16 v7, p7

    move-object/from16 v3, p8

    invoke-direct {v5, p1, p5, v7, v3}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;-><init>(IIZLjava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p4

    invoke-static {v6, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v9, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v9}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, v0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p6

    move-object v8, v9

    invoke-virtual/range {v1 .. v8}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->createGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAGroupSetting;Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object v1

    invoke-direct {p0, v9}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance v2, Lcom/hyphenate/chat/EMGroup;

    invoke-direct {v2, v1}, Lcom/hyphenate/chat/EMGroup;-><init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V

    return-object v2
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
.method public acceptApplication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p2, p1, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->acceptJoinGroupApplication(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public acceptInvitation(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->acceptInvitationFromGroup(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMGroup;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMGroup;-><init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V

    return-object p2
.end method

.method public addGroupAdmin(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->addGroupAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMGroup;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMGroup;-><init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V

    return-object p2
.end method

.method public addGroupChangeListener(Lcom/hyphenate/EMGroupChangeListener;)V
    .locals 3

    sget-object v0, Lcom/hyphenate/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add group change listener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addToGroupWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$40;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$40;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addUsersToGroup(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    const-string v0, "welcome"

    invoke-virtual {p0, p1, p2, v0}, Lcom/hyphenate/chat/EMGroupManager;->addUsersToGroup(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addUsersToGroup(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {p2, p1, v1, p3, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->addGroupMembers(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public applyJoinToGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager;->mClient:Lcom/hyphenate/chat/EMClient;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v1}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v2, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v2, p1, v0, p2, v1}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->applyJoinPublicGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-direct {p0, v1}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public asyncAcceptApplication(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$20;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$20;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncAcceptInvitation(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$18;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$18;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncAddGroupAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$33;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/hyphenate/chat/EMGroupManager$33;-><init>(Lcom/hyphenate/chat/EMGroupManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncAddUsersToGroup(Ljava/lang/String;[Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$4;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;[Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncApplyJoinToGroup(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$23;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$23;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncBlockGroupMessage(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMGroupManager$24;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncBlockUser(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$26;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$26;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncBlockUsers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$27;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$27;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncChangeGroupDescription(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$17;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$17;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncChangeGroupName(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$16;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$16;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncChangeOwner(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$32;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$32;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method asyncCheckIfInMuteList(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$38;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMGroupManager$38;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncCreateGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMGroupOptions;Lcom/hyphenate/EMValueCallBack;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMGroupOptions;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v9, Lcom/hyphenate/chat/EMGroupManager$2;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/hyphenate/chat/EMGroupManager$2;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMGroupOptions;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v9}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncDeclineApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 8

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMGroupManager$21;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMGroupManager$21;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncDeclineInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 8

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMGroupManager$19;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMGroupManager$19;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncDeleteGroupSharedFile(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$51;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$51;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncDestroyGroup(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMGroupManager$3;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncDownloadGroupSharedFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 8

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMGroupManager$52;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMGroupManager$52;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchGroupAnnouncement(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$47;

    invoke-direct {v1, p0, p2, p1}, Lcom/hyphenate/chat/EMGroupManager$47;-><init>(Lcom/hyphenate/chat/EMGroupManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchGroupBlackList(Ljava/lang/String;IILcom/hyphenate/EMValueCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMGroupManager$39;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMGroupManager$39;-><init>(Lcom/hyphenate/chat/EMGroupManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;II)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchGroupMemberAllAttributes(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchGroupMembers(Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/EMValueCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMGroupManager$31;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMGroupManager$31;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchGroupMembersAttributes(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda2;-><init>(Lcom/hyphenate/chat/EMGroupManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchGroupMuteList(Ljava/lang/String;IILcom/hyphenate/EMValueCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMGroupManager$37;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMGroupManager$37;-><init>(Lcom/hyphenate/chat/EMGroupManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;II)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchGroupSharedFileList(Ljava/lang/String;IILcom/hyphenate/EMValueCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMucSharedFile;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMGroupManager$50;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMGroupManager$50;-><init>(Lcom/hyphenate/chat/EMGroupManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;II)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncGetBlockedUsers(Ljava/lang/String;IILcom/hyphenate/EMValueCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMGroupManager$30;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMGroupManager$30;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;IILcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncGetBlockedUsers(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xc8

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/hyphenate/chat/EMGroupManager;->asyncGetBlockedUsers(Ljava/lang/String;IILcom/hyphenate/EMValueCallBack;)V

    return-void
.end method

.method public asyncGetGroupFromServer(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMGroupManager$8;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method asyncGetGroupsFromServer(Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$9;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMGroupManager$9;-><init>(Lcom/hyphenate/chat/EMGroupManager;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncGetJoinedGroupsCountFromServer(Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$13;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMGroupManager$13;-><init>(Lcom/hyphenate/chat/EMGroupManager;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncGetJoinedGroupsFromServer(IILcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$11;-><init>(Lcom/hyphenate/chat/EMGroupManager;IILcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncGetJoinedGroupsFromServer(IIZZLcom/hyphenate/EMValueCallBack;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZ",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v8, Lcom/hyphenate/chat/EMGroupManager$12;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/hyphenate/chat/EMGroupManager$12;-><init>(Lcom/hyphenate/chat/EMGroupManager;IIZZLcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v8}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncGetJoinedGroupsFromServer(Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$10;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMGroupManager$10;-><init>(Lcom/hyphenate/chat/EMGroupManager;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncGetPublicGroupsFromServer(ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMGroupInfo;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$14;-><init>(Lcom/hyphenate/chat/EMGroupManager;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncInviteUser(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 8

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMGroupManager$22;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMGroupManager$22;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncJoinGroup(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMGroupManager$15;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncLeaveGroup(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMGroupManager$7;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncMuteGroupMembers(Ljava/lang/String;Ljava/util/List;JLcom/hyphenate/EMValueCallBack;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v8, Lcom/hyphenate/chat/EMGroupManager$35;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/hyphenate/chat/EMGroupManager$35;-><init>(Lcom/hyphenate/chat/EMGroupManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {v0, v8}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncRemoveGroupAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$34;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/hyphenate/chat/EMGroupManager$34;-><init>(Lcom/hyphenate/chat/EMGroupManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncRemoveUserFromGroup(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$5;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncRemoveUsersFromGroup(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$6;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncSetGroupMemberAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/EMCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMGroupManager$$ExternalSyntheticLambda1;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncUnMuteGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$36;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/hyphenate/chat/EMGroupManager$36;-><init>(Lcom/hyphenate/chat/EMGroupManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncUnblockGroupMessage(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$25;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMGroupManager$25;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncUnblockUser(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$28;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$28;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncUnblockUsers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$29;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$29;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncUpdateGroupAnnouncement(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$46;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$46;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncUploadGroupSharedFile(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$48;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$48;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncUploadGroupSharedFile(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMMucSharedFile;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$49;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$49;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blockGroupMessage(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->blockGroupMessage(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public blockUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    sget-object v0, Lcom/hyphenate/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "block user for groupid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " username:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    const-string v2, ""

    invoke-virtual {p2, p1, v1, v0, v2}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->blockGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public blockUsers(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    sget-object v0, Lcom/hyphenate/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "block user for groupid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " members:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->blockGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public changeGroupDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->changeGroupDescription(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public changeGroupName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->changeGroupSubject(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public changeOwner(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->transferGroupOwner(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMGroup;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMGroup;-><init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V

    return-object p2
.end method

.method public checkIfInGroupWhiteList(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$42;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMGroupManager$42;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cleanAllGroupsFromLocal()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->cleanAllGroupsFromLocal()V

    return-void
.end method

.method public createGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMGroupOptions;)Lcom/hyphenate/chat/EMGroup;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    move-object/from16 v0, p5

    sget-object v1, Lcom/hyphenate/chat/EMGroupManager$53;->$SwitchMap$com$hyphenate$chat$EMGroupManager$EMGroupStyle:[I

    iget-object v2, v0, Lcom/hyphenate/chat/EMGroupOptions;->style:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, 0x3

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    :goto_0
    iget v10, v0, Lcom/hyphenate/chat/EMGroupOptions;->maxUsers:I

    iget-boolean v12, v0, Lcom/hyphenate/chat/EMGroupOptions;->inviteNeedConfirm:Z

    iget-object v13, v0, Lcom/hyphenate/chat/EMGroupOptions;->extField:Ljava/lang/String;

    move-object v5, p0

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    invoke-direct/range {v5 .. v13}, Lcom/hyphenate/chat/EMGroupManager;->createGroup(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Lcom/hyphenate/chat/EMGroup;

    move-result-object v0

    return-object v0
.end method

.method public declineApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p2, p1, p3, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->declineJoinGroupApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public declineInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    const-string v2, ""

    if-nez p2, :cond_0

    move-object p2, v2

    :cond_0
    if-nez p3, :cond_1

    move-object p3, v2

    :cond_1
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->declineInvitationFromGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public deleteGroupSharedFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->deleteGroupShareFile(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public destroyGroup(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->destroyGroup(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public downloadGroupSharedFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v6, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v6}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    new-instance v4, Lcom/hyphenate/chat/adapter/EMACallback;

    invoke-direct {v4, p4}, Lcom/hyphenate/chat/adapter/EMACallback;-><init>(Lcom/hyphenate/EMCallBack;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->downloadGroupShareFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMACallback;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v6}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-interface {p4}, Lcom/hyphenate/EMCallBack;->onSuccess()V

    return-void
.end method

.method public fetchGroupAnnouncement(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->fetchGroupAnnouncement(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-object p1
.end method

.method public fetchGroupBlackList(Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
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

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->fetchGroupBlackList(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-object p1
.end method

.method public fetchGroupMembers(Ljava/lang/String;Ljava/lang/String;I)Lcom/hyphenate/chat/EMCursorResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/hyphenate/chat/EMCursorResult<",
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

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->fetchGroupMembers(Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-object p1
.end method

.method public fetchGroupMuteList(Ljava/lang/String;II)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
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

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->fetchGroupMutes(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-object p1
.end method

.method public fetchGroupSharedFileList(Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMucSharedFile;",
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

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->fetchGroupShareFiles(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hyphenate/chat/adapter/EMAMucShareFile;

    new-instance v0, Lcom/hyphenate/chat/EMMucSharedFile;

    invoke-direct {v0, p3}, Lcom/hyphenate/chat/EMMucSharedFile;-><init>(Lcom/hyphenate/chat/adapter/EMAMucShareFile;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public fetchGroupWhiteList(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$43;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMGroupManager$43;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected fetchMemberAllAttributes(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->fetchMemberAllAttributes(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-object p1
.end method

.method protected fetchMembersAttributes(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->fetchMembersAttributes(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-object p1
.end method

.method public getAllGroups()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->allMyGroups(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/adapter/EMAGroup;

    new-instance v3, Lcom/hyphenate/chat/EMGroup;

    invoke-direct {v3, v2}, Lcom/hyphenate/chat/EMGroup;-><init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBlockedUsers(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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

    const/4 v0, 0x0

    const/16 v1, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/hyphenate/chat/EMGroupManager;->getBlockedUsers(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBlockedUsers(Ljava/lang/String;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
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

    sget-object v0, Lcom/hyphenate/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get blocked users of the group: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->fetchGroupBlackList(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-object p1
.end method

.method public getGroup(Ljava/lang/String;)Lcom/hyphenate/chat/EMGroup;
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->allMyGroups(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Lcom/hyphenate/chat/EMGroup;

    invoke-direct {p1, v1}, Lcom/hyphenate/chat/EMGroup;-><init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGroupFromServer(Ljava/lang/String;)Lcom/hyphenate/chat/EMGroup;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->fetchGroupSpecification(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;Z)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance v0, Lcom/hyphenate/chat/EMGroup;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/EMGroup;-><init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V

    return-object v0

    :cond_0
    new-instance p1, Lcom/hyphenate/exceptions/HyphenateException;

    const/16 v0, 0x258

    const-string v1, "group id is null or empty"

    invoke-direct {p1, v0, v1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public getGroupFromServer(Ljava/lang/String;Z)Lcom/hyphenate/chat/EMGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, v0, p2}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->fetchGroupSpecification(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;Z)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMGroup;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMGroup;-><init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V

    return-object p2

    :cond_0
    new-instance p1, Lcom/hyphenate/exceptions/HyphenateException;

    const/16 p2, 0x258

    const-string v0, "group id is null or empty"

    invoke-direct {p1, p2, v0}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method declared-synchronized getGroupsFromServer()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->fetchAllMyGroups(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/adapter/EMAGroup;

    new-instance v3, Lcom/hyphenate/chat/EMGroup;

    invoke-direct {v3, v2}, Lcom/hyphenate/chat/EMGroup;-><init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getGroupsFromServer(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->fetchAllMyGroupsWithPage(IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    new-instance v1, Lcom/hyphenate/chat/EMGroup;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMGroup;-><init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getGroupsFromServer(IIZZ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZ)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v6, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v6}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->fetchAllMyGroupsWithPage(IIZZLcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v6}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hyphenate/chat/adapter/EMAGroup;

    new-instance p4, Lcom/hyphenate/chat/EMGroup;

    invoke-direct {p4, p3}, Lcom/hyphenate/chat/EMGroup;-><init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getJoinedGroupsCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->getJoinedGroupsCount(Lcom/hyphenate/chat/adapter/EMAError;)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return v1
.end method

.method public declared-synchronized getJoinedGroupsFromServer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroupManager;->getGroupsFromServer()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJoinedGroupsFromServer(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/EMGroupManager;->getGroupsFromServer(II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getJoinedGroupsFromServer(IIZZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZ)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/EMGroupManager;->getGroupsFromServer(IIZZ)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPublicGroupsFromServer(ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMGroupInfo;",
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

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p2, p1, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->fetchPublicGroupsWithCursor(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-object p1
.end method

.method public inviteUser(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {p2, p1, v1, p3, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->addGroupMembers(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public joinGroup(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->fetchGroupSpecification(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;Z)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupSetting()Lcom/hyphenate/chat/adapter/EMAGroupSetting;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupSetting()Lcom/hyphenate/chat/adapter/EMAGroupSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->style()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->joinPublicGroup(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    :goto_0
    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupSetting()Lcom/hyphenate/chat/adapter/EMAGroupSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->style()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMGroupManager;->mClient:Lcom/hyphenate/chat/EMClient;

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hello"

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->applyJoinPublicGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lcom/hyphenate/exceptions/HyphenateException;

    invoke-direct {p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>()V

    throw p1
.end method

.method synthetic lambda$asyncFetchGroupMemberAllAttributes$1$com-hyphenate-chat-EMGroupManager(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p3, v0}, Lcom/hyphenate/chat/EMGroupManager;->fetchMemberAllAttributes(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p3

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$asyncFetchGroupMembersAttributes$2$com-hyphenate-chat-EMGroupManager(Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/hyphenate/chat/EMGroupManager;->fetchMembersAttributes(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p3

    invoke-virtual {p2}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$asyncSetGroupMemberAttributes$0$com-hyphenate-chat-EMGroupManager(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/EMCallBack;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager;->setMemberAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p4}, Lcom/hyphenate/EMCallBack;->onSuccess()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p2, p1}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public leaveGroup(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->leaveGroup(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public declared-synchronized loadAllGroups()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->loadAllMyGroupsFromDB()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public muteAllMembers(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$44;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMGroupManager$44;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public muteGroupMembers(Ljava/lang/String;Ljava/util/List;J)Lcom/hyphenate/chat/EMGroup;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)",
            "Lcom/hyphenate/chat/EMGroup;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v6, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v6}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->muteGroupMembers(Ljava/lang/String;Ljava/util/List;JLcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    invoke-direct {p0, v6}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMGroup;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMGroup;-><init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V

    return-object p2
.end method

.method onLogout()V
    .locals 0

    return-void
.end method

.method public removeFromGroupWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$41;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMGroupManager$41;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeGroupAdmin(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->removeGroupAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMGroup;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMGroup;-><init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V

    return-object p2
.end method

.method public removeGroupChangeListener(Lcom/hyphenate/EMGroupChangeListener;)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/hyphenate/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove group change listener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroupManager;->groupChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeUserFromGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v1}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {p2, p1, v0, v1}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->removeGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-direct {p0, v1}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v1, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->fetchGroupSpecification(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;Z)Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-direct {p0, v1}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public removeUsersFromGroup(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->removeGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    iget-object p2, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->fetchGroupSpecification(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;Z)Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method protected setMemberAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
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

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->setMemberAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public unMuteGroupMembers(Ljava/lang/String;Ljava/util/List;)Lcom/hyphenate/chat/EMGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hyphenate/chat/EMGroup;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->unMuteGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMGroup;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMGroup;-><init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V

    return-object p2
.end method

.method public unblockGroupMessage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    sget-object v0, Lcom/hyphenate/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "try to unblock group msg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->unblockGroupMessage(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public unblockUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    sget-object v0, Lcom/hyphenate/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unblock user groupid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " username:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {p2, p1, v1, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->unblockGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public unblockUsers(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    sget-object v0, Lcom/hyphenate/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unblock user groupid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " members:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->unblockGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public unmuteAllMembers(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMGroup;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMGroupManager$45;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMGroupManager$45;-><init>(Lcom/hyphenate/chat/EMGroupManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateGroupAnnouncement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->updateGroupAnnouncement(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public updateGroupExtension(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->updateGroupExtension(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMGroup;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMGroup;-><init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V

    return-object p2
.end method

.method public uploadGroupSharedFile(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)Lcom/hyphenate/chat/EMMucSharedFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    new-instance v1, Lcom/hyphenate/chat/adapter/EMACallback;

    invoke-direct {v1, p3}, Lcom/hyphenate/chat/adapter/EMACallback;-><init>(Lcom/hyphenate/EMCallBack;)V

    iget-object v2, p0, Lcom/hyphenate/chat/EMGroupManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAGroupManager;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->uploadGroupShareFile(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMACallback;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAMucShareFile;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMGroupManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-interface {p3}, Lcom/hyphenate/EMCallBack;->onSuccess()V

    new-instance p2, Lcom/hyphenate/chat/EMMucSharedFile;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMMucSharedFile;-><init>(Lcom/hyphenate/chat/adapter/EMAMucShareFile;)V

    return-object p2
.end method
