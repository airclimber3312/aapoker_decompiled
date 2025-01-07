.class Lio/agora/base/TextureBuffer$2;
.super Ljava/lang/Object;
.source "TextureBuffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/TextureBuffer;->toI420()Lio/agora/base/VideoFrame$I420Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/TextureBuffer;

.field final synthetic val$i420Buffer:[Lio/agora/base/VideoFrame$I420Buffer;


# direct methods
.method constructor <init>(Lio/agora/base/TextureBuffer;[Lio/agora/base/VideoFrame$I420Buffer;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lio/agora/base/TextureBuffer$2;->this$0:Lio/agora/base/TextureBuffer;

    iput-object p2, p0, Lio/agora/base/TextureBuffer$2;->val$i420Buffer:[Lio/agora/base/VideoFrame$I420Buffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 239
    iget-object v0, p0, Lio/agora/base/TextureBuffer$2;->val$i420Buffer:[Lio/agora/base/VideoFrame$I420Buffer;

    iget-object v1, p0, Lio/agora/base/TextureBuffer$2;->this$0:Lio/agora/base/TextureBuffer;

    invoke-static {v1}, Lio/agora/base/TextureBuffer;->access$000(Lio/agora/base/TextureBuffer;)Lio/agora/base/internal/video/YuvConverter;

    move-result-object v1

    iget-object v2, p0, Lio/agora/base/TextureBuffer$2;->this$0:Lio/agora/base/TextureBuffer;

    invoke-virtual {v1, v2}, Lio/agora/base/internal/video/YuvConverter;->convert(Lio/agora/base/VideoFrame$TextureBuffer;)Lio/agora/base/VideoFrame$I420Buffer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method
