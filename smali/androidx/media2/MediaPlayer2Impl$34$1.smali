.class Landroidx/media2/MediaPlayer2Impl$34$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl$34;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaPlayer2Impl$34;

.field final synthetic val$extra:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl$34;II)V
    .locals 0

    .line 1586
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$34$1;->this$1:Landroidx/media2/MediaPlayer2Impl$34;

    iput p2, p0, Landroidx/media2/MediaPlayer2Impl$34$1;->val$what:I

    iput p3, p0, Landroidx/media2/MediaPlayer2Impl$34$1;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/MediaPlayer2$EventCallback;)V
    .locals 4

    .line 1589
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sErrorEventMap:Landroidx/collection/ArrayMap;

    iget v1, p0, Landroidx/media2/MediaPlayer2Impl$34$1;->val$what:I

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

    .line 1590
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$34$1;->this$1:Landroidx/media2/MediaPlayer2Impl$34;

    iget-object v1, v1, Landroidx/media2/MediaPlayer2Impl$34;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl$34$1;->this$1:Landroidx/media2/MediaPlayer2Impl$34;

    iget-object v2, v2, Landroidx/media2/MediaPlayer2Impl$34;->val$src:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    invoke-virtual {v2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v2

    iget v3, p0, Landroidx/media2/MediaPlayer2Impl$34$1;->val$extra:I

    invoke-virtual {p1, v1, v2, v0, v3}, Landroidx/media2/MediaPlayer2$EventCallback;->onError(Landroidx/media2/MediaPlayer2;Landroidx/media2/DataSourceDesc2;II)V

    return-void
.end method
