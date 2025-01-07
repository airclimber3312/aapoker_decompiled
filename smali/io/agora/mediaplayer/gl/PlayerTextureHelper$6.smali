.class Lio/agora/mediaplayer/gl/PlayerTextureHelper$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/mediaplayer/gl/PlayerTextureHelper;->textureCopy(Lio/agora/base/VideoFrame$TextureBuffer;)Lio/agora/base/VideoFrame$TextureBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/agora/base/VideoFrame$TextureBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/mediaplayer/gl/PlayerTextureHelper;

.field final synthetic val$textureBuffer:Lio/agora/base/VideoFrame$TextureBuffer;


# direct methods
.method constructor <init>(Lio/agora/mediaplayer/gl/PlayerTextureHelper;Lio/agora/base/VideoFrame$TextureBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$textureBuffer"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper$6;->this$0:Lio/agora/mediaplayer/gl/PlayerTextureHelper;

    iput-object p2, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper$6;->val$textureBuffer:Lio/agora/base/VideoFrame$TextureBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/agora/base/VideoFrame$TextureBuffer;
    .locals 3

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper$6;->this$0:Lio/agora/mediaplayer/gl/PlayerTextureHelper;

    invoke-static {v0}, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->access$700(Lio/agora/mediaplayer/gl/PlayerTextureHelper;)Lio/agora/base/internal/video/TextureBufferPool;

    move-result-object v0

    iget-object v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper$6;->val$textureBuffer:Lio/agora/base/VideoFrame$TextureBuffer;

    new-instance v2, Lio/agora/mediaplayer/gl/PlayerTextureHelper$6$1;

    invoke-direct {v2, p0}, Lio/agora/mediaplayer/gl/PlayerTextureHelper$6$1;-><init>(Lio/agora/mediaplayer/gl/PlayerTextureHelper$6;)V

    invoke-virtual {v0, v1, v2}, Lio/agora/base/internal/video/TextureBufferPool;->textureCopy(Lio/agora/base/VideoFrame$TextureBuffer;Ljava/lang/Runnable;)Lio/agora/base/VideoFrame$TextureBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/agora/mediaplayer/gl/PlayerTextureHelper$6;->call()Lio/agora/base/VideoFrame$TextureBuffer;

    move-result-object v0

    return-object v0
.end method
