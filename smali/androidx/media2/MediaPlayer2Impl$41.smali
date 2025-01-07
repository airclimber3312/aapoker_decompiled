.class Landroidx/media2/MediaPlayer2Impl$41;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnDrmInfoListener;


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

    .line 1701
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$41;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$41;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmInfo(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$DrmInfo;)V
    .locals 1

    .line 1704
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$41;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v0, Landroidx/media2/MediaPlayer2Impl$41$1;

    invoke-direct {v0, p0, p2}, Landroidx/media2/MediaPlayer2Impl$41$1;-><init>(Landroidx/media2/MediaPlayer2Impl$41;Landroid/media/MediaPlayer$DrmInfo;)V

    invoke-virtual {p1, v0}, Landroidx/media2/MediaPlayer2Impl;->notifyDrmEvent(Landroidx/media2/MediaPlayer2Impl$DrmEventNotifier;)V

    return-void
.end method
