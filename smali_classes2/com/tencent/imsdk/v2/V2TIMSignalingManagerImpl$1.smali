.class Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$1;
.super Lcom/tencent/imsdk/signaling/SignalingListener;
.source "V2TIMSignalingManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->initSignalingListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    invoke-direct {p0}, Lcom/tencent/imsdk/signaling/SignalingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvitationCancelled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    invoke-static {v1}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMSignalingListener;

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v2, p1, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMSignalingListener;->onInvitationCancelled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onInvitationModified(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    invoke-static {v1}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMSignalingListener;

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {v2, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMSignalingListener;->onInvitationModified(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onInvitationTimeout(Ljava/lang/String;Ljava/util/List;)V
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

    .line 87
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    invoke-static {v1}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMSignalingListener;

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v2, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMSignalingListener;->onInvitationTimeout(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 93
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onInviteeAccepted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    invoke-static {v1}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMSignalingListener;

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v2, p1, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMSignalingListener;->onInviteeAccepted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onInviteeRejected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    invoke-static {v1}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMSignalingListener;

    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v2, p1, p2, p3}, Lcom/tencent/imsdk/v2/V2TIMSignalingListener;->onInviteeRejected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onReceiveNewInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;

    invoke-static {v1}, Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;->access$200(Lcom/tencent/imsdk/v2/V2TIMSignalingManagerImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tencent/imsdk/v2/V2TIMSignalingListener;

    if-eqz v3, :cond_0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 46
    invoke-virtual/range {v3 .. v8}, Lcom/tencent/imsdk/v2/V2TIMSignalingListener;->onReceiveNewInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
