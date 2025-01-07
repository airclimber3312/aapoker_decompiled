.class Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$7;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->onStartedAsNext(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

.field final synthetic val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V
    .locals 0

    .line 2234
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$7;->this$1:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$7;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/MediaPlayer2$EventCallback;)V
    .locals 4

    .line 2237
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$7;->this$1:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$7;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/media2/MediaPlayer2$EventCallback;->onInfo(Landroidx/media2/MediaPlayer2;Landroidx/media2/DataSourceDesc2;II)V

    return-void
.end method
