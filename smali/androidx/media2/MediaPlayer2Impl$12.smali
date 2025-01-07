.class Landroidx/media2/MediaPlayer2Impl$12;
.super Landroidx/media2/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl;->notifyWhenCommandLabelReached(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaPlayer2Impl;

.field final synthetic val$label:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;IZLjava/lang/Object;)V
    .locals 0

    .line 528
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$12;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p4, p0, Landroidx/media2/MediaPlayer2Impl$12;->val$label:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/MediaPlayer2Impl$Task;-><init>(Landroidx/media2/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 2

    .line 531
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$12;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v1, Landroidx/media2/MediaPlayer2Impl$12$1;

    invoke-direct {v1, p0}, Landroidx/media2/MediaPlayer2Impl$12$1;-><init>(Landroidx/media2/MediaPlayer2Impl$12;)V

    invoke-virtual {v0, v1}, Landroidx/media2/MediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;)V

    return-void
.end method
