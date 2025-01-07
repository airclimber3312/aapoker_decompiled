.class public Lcom/hyphenate/chat/EMChatService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMChatService$LocalBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "chatservice"


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/EMChatService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMChatService$LocalBinder;-><init>(Lcom/hyphenate/chat/EMChatService;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatService;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "chatservice"

    const-string v0, "onBind"

    invoke-static {p1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMChatService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "chatservice"

    const-string v1, "chat service created"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "chatservice"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/push/EMPushHelper;->getPushType()Lcom/hyphenate/push/EMPushType;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/push/EMPushType;->NORMAL:Lcom/hyphenate/push/EMPushType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isLoggedInBefore()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hyphenate/chat/EMChatService$1;

    invoke-direct {v1, p0}, Lcom/hyphenate/chat/EMChatService$1;-><init>(Lcom/hyphenate/chat/EMChatService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/push/EMPushHelper;->getPushType()Lcom/hyphenate/push/EMPushType;

    move-result-object p1

    sget-object p2, Lcom/hyphenate/push/EMPushType;->FCM:Lcom/hyphenate/push/EMPushType;

    const-string p3, "chatservice"

    if-ne p1, p2, :cond_0

    const-string p1, "start not sticky!"

    invoke-static {p3, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1

    :cond_0
    const-string p1, "start sticky!"

    invoke-static {p3, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
