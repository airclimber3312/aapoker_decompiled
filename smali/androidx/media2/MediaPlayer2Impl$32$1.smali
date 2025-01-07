.class Landroidx/media2/MediaPlayer2Impl$32$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl$32;->onInfo(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaPlayer2Impl$32;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl$32;)V
    .locals 0

    .line 1546
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$32$1;->this$1:Landroidx/media2/MediaPlayer2Impl$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/MediaPlayer2$EventCallback;)V
    .locals 4

    .line 1549
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$32$1;->this$1:Landroidx/media2/MediaPlayer2Impl$32;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$32;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$32$1;->this$1:Landroidx/media2/MediaPlayer2Impl$32;

    iget-object v1, v1, Landroidx/media2/MediaPlayer2Impl$32;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/media2/MediaPlayer2$EventCallback;->onInfo(Landroidx/media2/MediaPlayer2;Landroidx/media2/DataSourceDesc2;II)V

    return-void
.end method
