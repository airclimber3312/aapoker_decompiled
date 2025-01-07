.class Lio/agora/base/internal/video/YuvConverter$1;
.super Ljava/lang/Object;
.source "YuvConverter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/YuvConverter;->convert(Lio/agora/base/VideoFrame$TextureBuffer;Lio/agora/base/VideoFrame$ColorSpace;)Lio/agora/base/VideoFrame$I420Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/video/YuvConverter;

.field final synthetic val$i420ByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/YuvConverter;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lio/agora/base/internal/video/YuvConverter$1;->this$0:Lio/agora/base/internal/video/YuvConverter;

    iput-object p2, p0, Lio/agora/base/internal/video/YuvConverter$1;->val$i420ByteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 383
    iget-object v0, p0, Lio/agora/base/internal/video/YuvConverter$1;->val$i420ByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/agora/base/internal/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method
