.class Lio/agora/base/TextureBuffer$1;
.super Ljava/lang/Object;
.source "TextureBuffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/TextureBuffer;->applyNewI420Handler(Landroid/os/Handler;Lio/agora/base/internal/video/YuvConverter;)Lio/agora/base/VideoFrame$Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/TextureBuffer;


# direct methods
.method constructor <init>(Lio/agora/base/TextureBuffer;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lio/agora/base/TextureBuffer$1;->this$0:Lio/agora/base/TextureBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 222
    iget-object v0, p0, Lio/agora/base/TextureBuffer$1;->this$0:Lio/agora/base/TextureBuffer;

    invoke-virtual {v0}, Lio/agora/base/TextureBuffer;->release()V

    return-void
.end method
