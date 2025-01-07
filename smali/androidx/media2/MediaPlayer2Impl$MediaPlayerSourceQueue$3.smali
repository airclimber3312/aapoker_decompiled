.class Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$3;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->onCompletion(Landroid/media/MediaPlayer;)Landroidx/media2/MediaPlayer2Impl$DataSourceError;
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

    .line 2170
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$3;->this$1:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$3;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/MediaPlayer2$EventCallback;)V
    .locals 4

    .line 2173
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$3;->this$1:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->this$0:Landroidx/media2/MediaPlayer2Impl;

    .line 2174
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue$3;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    .line 2175
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/media2/MediaPlayer2$EventCallback;->onInfo(Landroidx/media2/MediaPlayer2;Landroidx/media2/DataSourceDesc2;II)V

    return-void
.end method
