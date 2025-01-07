.class Landroidx/media2/MediaPlayer2Impl$32;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl;->setUpListeners(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaPlayer2Impl;

.field final synthetic val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V
    .locals 0

    .line 1541
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$32;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$32;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p3, 0x3

    if-eq p2, p3, :cond_2

    const/16 p3, 0x2bd

    if-eq p2, p3, :cond_1

    const/16 p3, 0x2be

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 1559
    :cond_0
    iget-object p2, p0, Landroidx/media2/MediaPlayer2Impl$32;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object p2, p2, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setBufferingState(Landroid/media/MediaPlayer;I)V

    goto :goto_0

    .line 1555
    :cond_1
    iget-object p2, p0, Landroidx/media2/MediaPlayer2Impl$32;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object p2, p2, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    const/4 p3, 0x2

    invoke-virtual {p2, p1, p3}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setBufferingState(Landroid/media/MediaPlayer;I)V

    goto :goto_0

    .line 1546
    :cond_2
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$32;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance p2, Landroidx/media2/MediaPlayer2Impl$32$1;

    invoke-direct {p2, p0}, Landroidx/media2/MediaPlayer2Impl$32$1;-><init>(Landroidx/media2/MediaPlayer2Impl$32;)V

    invoke-virtual {p1, p2}, Landroidx/media2/MediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
