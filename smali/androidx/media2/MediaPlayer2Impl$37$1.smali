.class Landroidx/media2/MediaPlayer2Impl$37$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl$37;->onInfo(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaPlayer2Impl$37;

.field final synthetic val$extra:I

.field final synthetic val$mp:Landroid/media/MediaPlayer;

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl$37;ILandroid/media/MediaPlayer;I)V
    .locals 0

    .line 1642
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$37$1;->this$1:Landroidx/media2/MediaPlayer2Impl$37;

    iput p2, p0, Landroidx/media2/MediaPlayer2Impl$37$1;->val$what:I

    iput-object p3, p0, Landroidx/media2/MediaPlayer2Impl$37$1;->val$mp:Landroid/media/MediaPlayer;

    iput p4, p0, Landroidx/media2/MediaPlayer2Impl$37$1;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/MediaPlayer2$EventCallback;)V
    .locals 4

    .line 1645
    iget v0, p0, Landroidx/media2/MediaPlayer2Impl$37$1;->val$what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1646
    iget-object p1, p0, Landroidx/media2/MediaPlayer2Impl$37$1;->this$1:Landroidx/media2/MediaPlayer2Impl$37;

    iget-object p1, p1, Landroidx/media2/MediaPlayer2Impl$37;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object p1, p1, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$37$1;->val$mp:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->onStartedAsNext(Landroid/media/MediaPlayer;)V

    return-void

    .line 1649
    :cond_0
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sInfoEventMap:Landroidx/collection/ArrayMap;

    iget v1, p0, Landroidx/media2/MediaPlayer2Impl$37$1;->val$what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1650
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$37$1;->this$1:Landroidx/media2/MediaPlayer2Impl$37;

    iget-object v1, v1, Landroidx/media2/MediaPlayer2Impl$37;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$37$1;->this$1:Landroidx/media2/MediaPlayer2Impl$37;

    iget-object v2, v2, Landroidx/media2/MediaPlayer2Impl$37;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {v2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v2

    iget v3, p0, Landroidx/media2/MediaPlayer2Impl$37$1;->val$extra:I

    invoke-virtual {p1, v1, v2, v0, v3}, Landroidx/media2/MediaPlayer2$EventCallback;->onInfo(Landroidx/media2/MediaPlayer2;Landroidx/media2/DataSourceDesc2;II)V

    return-void
.end method
