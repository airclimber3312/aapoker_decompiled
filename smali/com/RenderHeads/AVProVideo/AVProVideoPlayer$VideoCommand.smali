.class public final Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;
.super Ljava/lang/Object;
.source "AVProVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VideoCommand"
.end annotation


# instance fields
.field _command:I

.field _floatValue:F

.field _intValue:I

.field final synthetic this$0:Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;


# direct methods
.method protected constructor <init>(Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;->this$0:Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;->_command:I

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;->_intValue:I

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer$VideoCommand;->_floatValue:F

    return-void
.end method
