.class Landroidx/media2/MediaPlayer2Impl$29$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl$29;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaPlayer2Impl$29;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl$29;)V
    .locals 0

    .line 1492
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$29$1;->this$1:Landroidx/media2/MediaPlayer2Impl$29;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/MediaPlayer2$EventCallback;)V
    .locals 4

    .line 1495
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$29$1;->this$1:Landroidx/media2/MediaPlayer2Impl$29;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$29;->this$0:Landroidx/media2/MediaPlayer2Impl;

    .line 1496
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$29$1;->this$1:Landroidx/media2/MediaPlayer2Impl$29;

    iget-object v1, v1, Landroidx/media2/MediaPlayer2Impl$29;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    .line 1497
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/media2/MediaPlayer2$EventCallback;->onInfo(Landroidx/media2/MediaPlayer2;Landroidx/media2/DataSourceDesc2;II)V

    return-void
.end method
