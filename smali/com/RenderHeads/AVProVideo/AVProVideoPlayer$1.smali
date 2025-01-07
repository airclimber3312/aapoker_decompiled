.class final Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;
.super Ljava/lang/Object;
.source "AVProVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->Initialise(Landroid/content/Context;ZZIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;


# direct methods
.method constructor <init>(Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;->this$0:Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 320
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;->this$0:Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_WatermarkSizeHandler:Landroid/os/Handler;

    .line 321
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;->this$0:Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    new-instance v1, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1$1;

    invoke-direct {v1, p0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1$1;-><init>(Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;)V

    iput-object v1, v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_WatermarkPositionRunnable:Ljava/lang/Runnable;

    .line 331
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;->this$0:Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    iget-object v0, v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_WatermarkSizeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;->this$0:Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    iget-object v1, v1, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_WatermarkPositionRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;->this$0:Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    iget-object v2, v2, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Random:Ljava/util/Random;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
