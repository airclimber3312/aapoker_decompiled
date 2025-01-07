.class Landroidx/media2/MediaPlayer2Impl$30;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

.field final synthetic val$preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field final synthetic val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 1518
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$30;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$30;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    iput-object p3, p0, Landroidx/media2/MediaPlayer2Impl$30;->val$preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    .line 1521
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$30;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/DataSourceDesc2;->getStartPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1522
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$30;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$30;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/DataSourceDesc2;->getStartPosition()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v0, v1

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_0

    .line 1526
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$30;->val$preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :goto_0
    return-void
.end method
