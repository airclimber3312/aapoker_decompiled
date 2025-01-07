.class Landroidx/media2/MediaPlayer2Impl$26;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl;->notifyPlayerEvent(Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaPlayer2Impl;

.field final synthetic val$cb:Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

.field final synthetic val$notifier:Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V
    .locals 0

    .line 1418
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$26;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$26;->val$notifier:Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;

    iput-object p3, p0, Landroidx/media2/MediaPlayer2Impl$26;->val$cb:Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1421
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$26;->val$notifier:Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$26;->val$cb:Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    invoke-interface {v0, v1}, Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;->notify(Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V

    return-void
.end method
