.class Landroidx/media2/MediaPlayer2Impl$39$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl$39;->onMediaTimeDiscontinuity(Landroid/media/MediaPlayer;Landroid/media/MediaTimestamp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaPlayer2Impl$39;

.field final synthetic val$timestamp:Landroid/media/MediaTimestamp;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl$39;Landroid/media/MediaTimestamp;)V
    .locals 0

    .line 1678
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$39$1;->this$1:Landroidx/media2/MediaPlayer2Impl$39;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$39$1;->val$timestamp:Landroid/media/MediaTimestamp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/MediaPlayer2$EventCallback;)V
    .locals 4

    .line 1681
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$39$1;->this$1:Landroidx/media2/MediaPlayer2Impl$39;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$39;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$39$1;->this$1:Landroidx/media2/MediaPlayer2Impl$39;

    iget-object v1, v1, Landroidx/media2/MediaPlayer2Impl$39;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    .line 1682
    invoke-virtual {v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v1

    new-instance v2, Landroidx/media2/MediaTimestamp2;

    iget-object v3, p0, Landroidx/media2/MediaPlayer2Impl$39$1;->val$timestamp:Landroid/media/MediaTimestamp;

    invoke-direct {v2, v3}, Landroidx/media2/MediaTimestamp2;-><init>(Landroid/media/MediaTimestamp;)V

    .line 1681
    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/MediaPlayer2$EventCallback;->onMediaTimeDiscontinuity(Landroidx/media2/MediaPlayer2;Landroidx/media2/DataSourceDesc2;Landroidx/media2/MediaTimestamp2;)V

    return-void
.end method
