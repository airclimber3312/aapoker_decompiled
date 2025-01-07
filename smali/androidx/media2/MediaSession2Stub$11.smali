.class Landroidx/media2/MediaSession2Stub$11;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroidx/media2/MediaSession2Stub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2Stub;->seekTo(Landroidx/media2/IMediaController2;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2Stub;

.field final synthetic val$pos:J


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2Stub;J)V
    .locals 0

    .line 394
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub$11;->this$0:Landroidx/media2/MediaSession2Stub;

    iput-wide p2, p0, Landroidx/media2/MediaSession2Stub$11;->val$pos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    iget-object p1, p0, Landroidx/media2/MediaSession2Stub$11;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object p1, p1, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    iget-wide v0, p0, Landroidx/media2/MediaSession2Stub$11;->val$pos:J

    invoke-interface {p1, v0, v1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->seekTo(J)V

    return-void
.end method
