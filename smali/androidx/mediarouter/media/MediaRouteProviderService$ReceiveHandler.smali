.class final Landroidx/mediarouter/media/MediaRouteProviderService$ReceiveHandler;
.super Landroid/os/Handler;
.source "MediaRouteProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiveHandler"
.end annotation


# instance fields
.field private final mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/mediarouter/media/MediaRouteProviderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouteProviderService;)V
    .locals 1

    .line 651
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 652
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$ReceiveHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private processMessage(ILandroid/os/Messenger;IILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 7

    .line 681
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$ReceiveHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/mediarouter/media/MediaRouteProviderService;

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    const-string/jumbo v2, "volume"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz p5, :cond_0

    .line 739
    instance-of p1, p5, Landroid/os/Bundle;

    if-eqz p1, :cond_3

    .line 740
    :cond_0
    check-cast p5, Landroid/os/Bundle;

    .line 741
    invoke-static {p5}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 744
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isValid()Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 742
    :goto_0
    invoke-virtual {v1, p2, p3, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->onSetDiscoveryRequest(Landroid/os/Messenger;ILandroidx/mediarouter/media/MediaRouteDiscoveryRequest;)Z

    move-result p1

    return p1

    .line 732
    :pswitch_1
    instance-of p1, p5, Landroid/content/Intent;

    if-eqz p1, :cond_3

    .line 733
    check-cast p5, Landroid/content/Intent;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroidx/mediarouter/media/MediaRouteProviderService;->onRouteControlRequest(Landroid/os/Messenger;IILandroid/content/Intent;)Z

    move-result p1

    return p1

    .line 723
    :pswitch_2
    invoke-virtual {p6, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    .line 725
    invoke-virtual {v1, p2, p3, p4, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->onUpdateRouteVolume(Landroid/os/Messenger;III)Z

    move-result p1

    return p1

    :pswitch_3
    const/4 p1, -0x1

    .line 714
    invoke-virtual {p6, v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_3

    .line 716
    invoke-virtual {v1, p2, p3, p4, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->onSetRouteVolume(Landroid/os/Messenger;III)Z

    move-result p1

    return p1

    :pswitch_4
    if-nez p6, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "unselectReason"

    .line 709
    invoke-virtual {p6, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 711
    :goto_1
    invoke-virtual {v1, p2, p3, p4, v0}, Landroidx/mediarouter/media/MediaRouteProviderService;->onUnselectRoute(Landroid/os/Messenger;III)Z

    move-result p1

    return p1

    .line 704
    :pswitch_5
    invoke-virtual {v1, p2, p3, p4}, Landroidx/mediarouter/media/MediaRouteProviderService;->onSelectRoute(Landroid/os/Messenger;II)Z

    move-result p1

    return p1

    .line 701
    :pswitch_6
    invoke-virtual {v1, p2, p3, p4}, Landroidx/mediarouter/media/MediaRouteProviderService;->onReleaseRouteController(Landroid/os/Messenger;II)Z

    move-result p1

    return p1

    :pswitch_7
    const-string p1, "routeId"

    .line 691
    invoke-virtual {p6, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "routeGroupId"

    .line 692
    invoke-virtual {p6, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_3

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 694
    invoke-virtual/range {v1 .. v6}, Landroidx/mediarouter/media/MediaRouteProviderService;->onCreateRouteController(Landroid/os/Messenger;IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 688
    :pswitch_8
    invoke-virtual {v1, p2, p3}, Landroidx/mediarouter/media/MediaRouteProviderService;->onUnregisterClient(Landroid/os/Messenger;I)Z

    move-result p1

    return p1

    .line 685
    :pswitch_9
    invoke-virtual {v1, p2, p3, p4}, Landroidx/mediarouter/media/MediaRouteProviderService;->onRegisterClient(Landroid/os/Messenger;II)Z

    move-result p1

    return p1

    :cond_3
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 657
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 658
    invoke-static {v7}, Landroidx/mediarouter/media/MediaRouteProviderProtocol;->isValidRemoteMessenger(Landroid/os/Messenger;)Z

    move-result v0

    const-string v8, "MediaRouteProviderSrv"

    if-eqz v0, :cond_1

    .line 659
    iget v9, p1, Landroid/os/Message;->what:I

    .line 660
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 661
    iget v11, p1, Landroid/os/Message;->arg2:I

    .line 662
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 663
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object p1

    move-object v0, p0

    move v1, v9

    move-object v2, v7

    move v3, v10

    move v4, v11

    move-object v5, v12

    move-object v6, p1

    .line 664
    invoke-direct/range {v0 .. v6}, Landroidx/mediarouter/media/MediaRouteProviderService$ReceiveHandler;->processMessage(ILandroid/os/Messenger;IILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 665
    sget-boolean v0, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Landroidx/mediarouter/media/MediaRouteProviderService;->getClientId(Landroid/os/Messenger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Message failed, what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", arg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_0
    invoke-static {v7, v10}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendGenericFailure(Landroid/os/Messenger;I)V

    goto :goto_0

    .line 673
    :cond_1
    sget-boolean p1, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "Ignoring message without valid reply messenger."

    .line 674
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
