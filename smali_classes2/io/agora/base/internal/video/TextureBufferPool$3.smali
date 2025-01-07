.class Lio/agora/base/internal/video/TextureBufferPool$3;
.super Ljava/lang/Object;
.source "TextureBufferPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/TextureBufferPool;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/video/TextureBufferPool;


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/TextureBufferPool;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lio/agora/base/internal/video/TextureBufferPool$3;->this$0:Lio/agora/base/internal/video/TextureBufferPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 222
    iget-object v0, p0, Lio/agora/base/internal/video/TextureBufferPool$3;->this$0:Lio/agora/base/internal/video/TextureBufferPool;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/agora/base/internal/video/TextureBufferPool;->access$402(Lio/agora/base/internal/video/TextureBufferPool;Z)Z

    .line 223
    iget-object v0, p0, Lio/agora/base/internal/video/TextureBufferPool$3;->this$0:Lio/agora/base/internal/video/TextureBufferPool;

    invoke-virtual {v0}, Lio/agora/base/internal/video/TextureBufferPool;->anyTextureInUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Lio/agora/base/internal/video/TextureBufferPool;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/agora/base/internal/video/TextureBufferPool$3;->this$0:Lio/agora/base/internal/video/TextureBufferPool;

    invoke-static {v2}, Lio/agora/base/internal/video/TextureBufferPool;->access$500(Lio/agora/base/internal/video/TextureBufferPool;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ready to release since no more buffer in flight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lio/agora/base/internal/video/TextureBufferPool$3;->this$0:Lio/agora/base/internal/video/TextureBufferPool;

    invoke-static {v0}, Lio/agora/base/internal/video/TextureBufferPool;->access$600(Lio/agora/base/internal/video/TextureBufferPool;)V

    :cond_0
    return-void
.end method
