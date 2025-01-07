.class Landroidx/media2/MediaPlayer2Impl$36;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;


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

    .line 1627
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$36;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$36;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimedMetaDataAvailable(Landroid/media/MediaPlayer;Landroid/media/TimedMetaData;)V
    .locals 1

    .line 1630
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$36;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v0, Landroidx/media2/MediaPlayer2Impl$36$1;

    invoke-direct {v0, p0, p2}, Landroidx/media2/MediaPlayer2Impl$36$1;-><init>(Landroidx/media2/MediaPlayer2Impl$36;Landroid/media/TimedMetaData;)V

    invoke-virtual {p1, v0}, Landroidx/media2/MediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;)V

    return-void
.end method
