.class Lio/agora/base/TextureBufferHelper$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/TextureBufferHelper;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/TextureBufferHelper;


# direct methods
.method constructor <init>(Lio/agora/base/TextureBufferHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/base/TextureBufferHelper$4;->this$0:Lio/agora/base/TextureBufferHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/agora/base/TextureBufferHelper$4;->this$0:Lio/agora/base/TextureBufferHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/agora/base/TextureBufferHelper;->access$302(Lio/agora/base/TextureBufferHelper;Z)Z

    iget-object v0, p0, Lio/agora/base/TextureBufferHelper$4;->this$0:Lio/agora/base/TextureBufferHelper;

    invoke-virtual {v0}, Lio/agora/base/TextureBufferHelper;->isTextureInUse()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/base/TextureBufferHelper$4;->this$0:Lio/agora/base/TextureBufferHelper;

    invoke-static {v0}, Lio/agora/base/TextureBufferHelper;->access$400(Lio/agora/base/TextureBufferHelper;)V

    :cond_0
    return-void
.end method
