.class final Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1$1;
.super Ljava/lang/Object;
.source "AVProVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;


# direct methods
.method constructor <init>(Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1$1;->this$1:Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1$1;->this$1:Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;

    iget-object v0, v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;->this$0:Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    invoke-static {v0}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->access$000(Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;)V

    .line 327
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1$1;->this$1:Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;

    iget-object v0, v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;->this$0:Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    iget-object v0, v0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_Random:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 328
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1$1;->this$1:Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;

    iget-object v1, v1, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$1;->this$0:Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    iget-object v1, v1, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;->m_WatermarkSizeHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
