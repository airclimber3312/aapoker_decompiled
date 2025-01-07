.class public final Lcom/google/android/gms/internal/zzbcc;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;


# instance fields
.field private zzfhf:Z

.field private final zzfhy:Landroid/widget/SeekBar;

.field private final zzfim:J


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbcc;->zzfhf:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcc;->zzfhy:Landroid/widget/SeekBar;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzbcc;->zzfim:J

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final onProgressUpdated(JJ)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbcc;->zzfhf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcc;->zzfhy:Landroid/widget/SeekBar;

    long-to-int p4, p3

    invoke-virtual {v0, p4}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbcc;->zzfhy:Landroid/widget/SeekBar;

    long-to-int p2, p1

    invoke-virtual {p3, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbcc;->zzfhy:Landroid/widget/SeekBar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final onSendingRemoteMediaRequest()V
    .locals 0

    return-void
.end method

.method public final onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbcc;->zzfim:J

    invoke-virtual {p1, p0, v1, v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->addProgressListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;J)Z

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcc;->zzfhy:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getStreamDuration()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcc;->zzfhy:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbcc;->zzfhy:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbcc;->zzfhy:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbcc;->zzfhy:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public final onSessionEnded()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->removeProgressListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcc;->zzfhy:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcc;->zzfhy:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcc;->zzfhy:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    return-void
.end method

.method public final zzbf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbcc;->zzfhf:Z

    return-void
.end method
