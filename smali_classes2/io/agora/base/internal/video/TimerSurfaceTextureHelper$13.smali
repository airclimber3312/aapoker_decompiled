.class Lio/agora/base/internal/video/TimerSurfaceTextureHelper$13;
.super Ljava/lang/Object;
.source "TimerSurfaceTextureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->setFrameRotation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

.field final synthetic val$rotation:I


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;I)V
    .locals 0

    .line 434
    iput-object p1, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$13;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    iput p2, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$13;->val$rotation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 437
    iget-object v0, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$13;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    iget v1, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$13;->val$rotation:I

    invoke-static {v0, v1}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$2002(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;I)I

    return-void
.end method
