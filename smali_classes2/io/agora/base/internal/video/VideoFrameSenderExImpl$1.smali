.class Lio/agora/base/internal/video/VideoFrameSenderExImpl$1;
.super Ljava/lang/Object;
.source "VideoFrameSenderExImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/VideoFrameSenderExImpl;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/video/VideoFrameSenderExImpl;


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/VideoFrameSenderExImpl;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lio/agora/base/internal/video/VideoFrameSenderExImpl$1;->this$0:Lio/agora/base/internal/video/VideoFrameSenderExImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 209
    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameSenderExImpl$1;->this$0:Lio/agora/base/internal/video/VideoFrameSenderExImpl;

    invoke-static {v0}, Lio/agora/base/internal/video/VideoFrameSenderExImpl;->access$000(Lio/agora/base/internal/video/VideoFrameSenderExImpl;)Lio/agora/base/internal/video/YuvConverter;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/base/internal/video/YuvConverter;->release()V

    return-void
.end method
