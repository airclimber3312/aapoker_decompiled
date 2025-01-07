.class Lio/agora/base/internal/video/EglRenderer$1;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/video/EglRenderer;


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/EglRenderer;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lio/agora/base/internal/video/EglRenderer$1;->this$0:Lio/agora/base/internal/video/EglRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 184
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer$1;->this$0:Lio/agora/base/internal/video/EglRenderer;

    invoke-static {v0}, Lio/agora/base/internal/video/EglRenderer;->access$200(Lio/agora/base/internal/video/EglRenderer;)Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;

    move-result-object v0

    invoke-static {v0}, Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;->access$300(Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;)V

    .line 185
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer$1;->this$0:Lio/agora/base/internal/video/EglRenderer;

    invoke-static {v0}, Lio/agora/base/internal/video/EglRenderer;->access$400(Lio/agora/base/internal/video/EglRenderer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 186
    :try_start_0
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer$1;->this$0:Lio/agora/base/internal/video/EglRenderer;

    invoke-static {v1}, Lio/agora/base/internal/video/EglRenderer;->access$500(Lio/agora/base/internal/video/EglRenderer;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer$1;->this$0:Lio/agora/base/internal/video/EglRenderer;

    invoke-static {v1}, Lio/agora/base/internal/video/EglRenderer;->access$500(Lio/agora/base/internal/video/EglRenderer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lio/agora/base/internal/video/EglRenderer$1;->this$0:Lio/agora/base/internal/video/EglRenderer;

    invoke-static {v2}, Lio/agora/base/internal/video/EglRenderer;->access$600(Lio/agora/base/internal/video/EglRenderer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer$1;->this$0:Lio/agora/base/internal/video/EglRenderer;

    invoke-static {v1}, Lio/agora/base/internal/video/EglRenderer;->access$500(Lio/agora/base/internal/video/EglRenderer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lio/agora/base/internal/video/EglRenderer$1;->this$0:Lio/agora/base/internal/video/EglRenderer;

    .line 189
    invoke-static {v2}, Lio/agora/base/internal/video/EglRenderer;->access$600(Lio/agora/base/internal/video/EglRenderer;)Ljava/lang/Runnable;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 188
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
