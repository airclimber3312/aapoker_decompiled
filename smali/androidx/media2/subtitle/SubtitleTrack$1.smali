.class Landroidx/media2/subtitle/SubtitleTrack$1;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/subtitle/SubtitleTrack;->addCue(Landroidx/media2/subtitle/SubtitleTrack$Cue;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/subtitle/SubtitleTrack;

.field final synthetic val$thenMs:J

.field final synthetic val$track:Landroidx/media2/subtitle/SubtitleTrack;


# direct methods
.method constructor <init>(Landroidx/media2/subtitle/SubtitleTrack;Landroidx/media2/subtitle/SubtitleTrack;J)V
    .locals 0

    .line 339
    iput-object p1, p0, Landroidx/media2/subtitle/SubtitleTrack$1;->this$0:Landroidx/media2/subtitle/SubtitleTrack;

    iput-object p2, p0, Landroidx/media2/subtitle/SubtitleTrack$1;->val$track:Landroidx/media2/subtitle/SubtitleTrack;

    iput-wide p3, p0, Landroidx/media2/subtitle/SubtitleTrack$1;->val$thenMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 345
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleTrack$1;->val$track:Landroidx/media2/subtitle/SubtitleTrack;

    monitor-enter v0

    .line 346
    :try_start_0
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleTrack$1;->this$0:Landroidx/media2/subtitle/SubtitleTrack;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/media2/subtitle/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    .line 347
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleTrack$1;->this$0:Landroidx/media2/subtitle/SubtitleTrack;

    iget-wide v2, p0, Landroidx/media2/subtitle/SubtitleTrack$1;->val$thenMs:J

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroidx/media2/subtitle/SubtitleTrack;->updateActiveCues(ZJ)V

    .line 348
    iget-object v1, p0, Landroidx/media2/subtitle/SubtitleTrack$1;->this$0:Landroidx/media2/subtitle/SubtitleTrack;

    iget-object v2, v1, Landroidx/media2/subtitle/SubtitleTrack;->mActiveCues:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroidx/media2/subtitle/SubtitleTrack;->updateView(Ljava/util/ArrayList;)V

    .line 349
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
