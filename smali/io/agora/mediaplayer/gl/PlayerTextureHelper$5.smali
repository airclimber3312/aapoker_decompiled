.class Lio/agora/mediaplayer/gl/PlayerTextureHelper$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/mediaplayer/gl/PlayerTextureHelper;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/mediaplayer/gl/PlayerTextureHelper;


# direct methods
.method constructor <init>(Lio/agora/mediaplayer/gl/PlayerTextureHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper$5;->this$0:Lio/agora/mediaplayer/gl/PlayerTextureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper$5;->this$0:Lio/agora/mediaplayer/gl/PlayerTextureHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->access$502(Lio/agora/mediaplayer/gl/PlayerTextureHelper;Z)Z

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper$5;->this$0:Lio/agora/mediaplayer/gl/PlayerTextureHelper;

    invoke-static {v0}, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->access$600(Lio/agora/mediaplayer/gl/PlayerTextureHelper;)V

    return-void
.end method
