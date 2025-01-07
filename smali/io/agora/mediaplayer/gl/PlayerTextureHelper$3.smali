.class Lio/agora/mediaplayer/gl/PlayerTextureHelper$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/mediaplayer/gl/PlayerTextureHelper;->setTextureSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/mediaplayer/gl/PlayerTextureHelper;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lio/agora/mediaplayer/gl/PlayerTextureHelper;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$height",
            "val$width"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper$3;->this$0:Lio/agora/mediaplayer/gl/PlayerTextureHelper;

    iput p2, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper$3;->val$width:I

    iput p3, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper$3;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper$3;->this$0:Lio/agora/mediaplayer/gl/PlayerTextureHelper;

    iget v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper$3;->val$width:I

    invoke-static {v0, v1}, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->access$302(Lio/agora/mediaplayer/gl/PlayerTextureHelper;I)I

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper$3;->this$0:Lio/agora/mediaplayer/gl/PlayerTextureHelper;

    iget v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper$3;->val$height:I

    invoke-static {v0, v1}, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->access$402(Lio/agora/mediaplayer/gl/PlayerTextureHelper;I)I

    return-void
.end method
