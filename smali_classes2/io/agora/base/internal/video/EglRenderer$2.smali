.class Lio/agora/base/internal/video/EglRenderer$2;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/EglRenderer;->init(Lio/agora/base/internal/video/EglBase$Context;[ILio/agora/base/internal/video/RendererCommon$GlDrawer;Z)V
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

    .line 248
    iput-object p1, p0, Lio/agora/base/internal/video/EglRenderer$2;->this$0:Lio/agora/base/internal/video/EglRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 251
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer$2;->this$0:Lio/agora/base/internal/video/EglRenderer;

    invoke-static {v0}, Lio/agora/base/internal/video/EglRenderer;->access$900(Lio/agora/base/internal/video/EglRenderer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer$2;->this$0:Lio/agora/base/internal/video/EglRenderer;

    const-string v2, "Initializing EglRenderer set surfaceValid."

    invoke-static {v1, v2}, Lio/agora/base/internal/video/EglRenderer;->access$1000(Lio/agora/base/internal/video/EglRenderer;Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer$2;->this$0:Lio/agora/base/internal/video/EglRenderer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/agora/base/internal/video/EglRenderer;->access$1102(Lio/agora/base/internal/video/EglRenderer;Z)Z

    .line 256
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
