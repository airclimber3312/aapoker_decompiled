.class Landroidx/media2/MediaPlayer2Impl$22;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnDrmConfigHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl;->setOnDrmConfigHelper(Landroidx/media2/MediaPlayer2$OnDrmConfigHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaPlayer2Impl;

.field final synthetic val$listener:Landroidx/media2/MediaPlayer2$OnDrmConfigHelper;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2$OnDrmConfigHelper;)V
    .locals 0

    .line 1104
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$22;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$22;->val$listener:Landroidx/media2/MediaPlayer2$OnDrmConfigHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmConfig(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1107
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$22;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0, p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getSourceForPlayer(Landroid/media/MediaPlayer;)Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1108
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object p1

    .line 1109
    :goto_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$22;->val$listener:Landroidx/media2/MediaPlayer2$OnDrmConfigHelper;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$22;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-interface {v0, v1, p1}, Landroidx/media2/MediaPlayer2$OnDrmConfigHelper;->onDrmConfig(Landroidx/media2/MediaPlayer2;Landroidx/media2/DataSourceDesc2;)V

    return-void
.end method
