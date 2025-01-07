.class Landroidx/media2/MediaPlayer2Impl$33;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;)V
    .locals 0

    .line 1567
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$33;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1570
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$33;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v1, v0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v1, p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->onCompletion(Landroid/media/MediaPlayer;)Landroidx/media2/MediaPlayer2Impl$DataSourceError;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media2/MediaPlayer2Impl;->handleDataSourceError(Landroidx/media2/MediaPlayer2Impl$DataSourceError;)V

    return-void
.end method
