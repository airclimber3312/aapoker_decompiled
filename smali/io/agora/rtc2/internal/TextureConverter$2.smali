.class Lio/agora/rtc2/internal/TextureConverter$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc2/internal/TextureConverter;->releaseEglEnv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc2/internal/TextureConverter;


# direct methods
.method constructor <init>(Lio/agora/rtc2/internal/TextureConverter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc2/internal/TextureConverter$2;->this$0:Lio/agora/rtc2/internal/TextureConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc2/internal/TextureConverter$2;->this$0:Lio/agora/rtc2/internal/TextureConverter;

    invoke-static {v0}, Lio/agora/rtc2/internal/TextureConverter;->access$200(Lio/agora/rtc2/internal/TextureConverter;)Lio/agora/base/internal/video/GlTextureFrameBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc2/internal/TextureConverter$2;->this$0:Lio/agora/rtc2/internal/TextureConverter;

    invoke-static {v0}, Lio/agora/rtc2/internal/TextureConverter;->access$200(Lio/agora/rtc2/internal/TextureConverter;)Lio/agora/base/internal/video/GlTextureFrameBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/base/internal/video/GlTextureFrameBuffer;->release()V

    :cond_0
    iget-object v0, p0, Lio/agora/rtc2/internal/TextureConverter$2;->this$0:Lio/agora/rtc2/internal/TextureConverter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/agora/rtc2/internal/TextureConverter;->access$202(Lio/agora/rtc2/internal/TextureConverter;Lio/agora/base/internal/video/GlTextureFrameBuffer;)Lio/agora/base/internal/video/GlTextureFrameBuffer;

    return-object v1
.end method
