.class Landroidx/media2/MediaPlayer2Impl$37;
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

    .line 1639
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$37;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$37;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1642
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$37;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v1, Landroidx/media2/MediaPlayer2Impl$37$1;

    invoke-direct {v1, p0, p2, p1, p3}, Landroidx/media2/MediaPlayer2Impl$37$1;-><init>(Landroidx/media2/MediaPlayer2Impl$37;ILandroid/media/MediaPlayer;I)V

    invoke-virtual {v0, v1}, Landroidx/media2/MediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;)V

    const/4 p1, 0x1

    return p1
.end method
