.class Lio/agora/base/internal/video/TimerSurfaceTextureHelper$12;
.super Ljava/lang/Object;
.source "TimerSurfaceTextureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->setTextureSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

.field final synthetic val$textureHeight:I

.field final synthetic val$textureWidth:I


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;II)V
    .locals 0

    .line 422
    iput-object p1, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$12;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    iput p2, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$12;->val$textureWidth:I

    iput p3, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$12;->val$textureHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 425
    iget-object v0, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$12;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    iget v1, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$12;->val$textureWidth:I

    invoke-static {v0, v1}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$1802(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;I)I

    .line 426
    iget-object v0, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$12;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    iget v1, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$12;->val$textureHeight:I

    invoke-static {v0, v1}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$1902(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;I)I

    return-void
.end method
