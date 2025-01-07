.class Lio/agora/base/internal/video/TextureBufferPool$1;
.super Ljava/lang/Object;
.source "TextureBufferPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/TextureBufferPool;->create(Ljava/lang/String;Lio/agora/base/internal/video/EglBase$Context;I)Lio/agora/base/internal/video/TextureBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bufferPool:[Lio/agora/base/internal/video/TextureBufferPool;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$maxBufferCnt:I

.field final synthetic val$sharedContext:Lio/agora/base/internal/video/EglBase$Context;

.field final synthetic val$threadName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/EglBase$Context;[Lio/agora/base/internal/video/TextureBufferPool;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lio/agora/base/internal/video/TextureBufferPool$1;->val$sharedContext:Lio/agora/base/internal/video/EglBase$Context;

    iput-object p2, p0, Lio/agora/base/internal/video/TextureBufferPool$1;->val$bufferPool:[Lio/agora/base/internal/video/TextureBufferPool;

    iput-object p3, p0, Lio/agora/base/internal/video/TextureBufferPool$1;->val$threadName:Ljava/lang/String;

    iput p4, p0, Lio/agora/base/internal/video/TextureBufferPool$1;->val$maxBufferCnt:I

    iput-object p5, p0, Lio/agora/base/internal/video/TextureBufferPool$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 109
    :try_start_0
    iget-object v0, p0, Lio/agora/base/internal/video/TextureBufferPool$1;->val$sharedContext:Lio/agora/base/internal/video/EglBase$Context;

    invoke-static {v0}, Lio/agora/base/internal/video/TextureBufferPool;->access$000(Lio/agora/base/internal/video/EglBase$Context;)Lio/agora/base/internal/video/EglBase;

    move-result-object v7

    .line 110
    iget-object v0, p0, Lio/agora/base/internal/video/TextureBufferPool$1;->val$bufferPool:[Lio/agora/base/internal/video/TextureBufferPool;

    new-instance v11, Lio/agora/base/internal/video/TextureBufferPool;

    iget-object v2, p0, Lio/agora/base/internal/video/TextureBufferPool$1;->val$threadName:Ljava/lang/String;

    iget v3, p0, Lio/agora/base/internal/video/TextureBufferPool$1;->val$maxBufferCnt:I

    const/16 v4, 0x1908

    iget-object v5, p0, Lio/agora/base/internal/video/TextureBufferPool$1;->val$handler:Landroid/os/Handler;

    const/4 v6, 0x1

    iget-object v8, p0, Lio/agora/base/internal/video/TextureBufferPool$1;->val$sharedContext:Lio/agora/base/internal/video/EglBase$Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lio/agora/base/internal/video/TextureBufferPool;-><init>(Ljava/lang/String;IILandroid/os/Handler;ZLio/agora/base/internal/video/EglBase;Lio/agora/base/internal/video/EglBase$Context;Lio/agora/base/internal/video/YuvConverter;Lio/agora/base/internal/video/TextureBufferPool$1;)V

    const/4 v1, 0x0

    aput-object v11, v0, v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    invoke-static {}, Lio/agora/base/internal/video/TextureBufferPool;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/agora/base/internal/video/TextureBufferPool$1;->val$threadName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed to initialize egl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    iget-object v0, p0, Lio/agora/base/internal/video/TextureBufferPool$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :goto_0
    return-void
.end method
