.class Landroidx/media2/MediaSession2Stub$28;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroidx/media2/MediaSession2Stub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2Stub;->skipToNextItem(Landroidx/media2/IMediaController2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2Stub;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2Stub;)V
    .locals 0

    .line 660
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub$28;->this$0:Landroidx/media2/MediaSession2Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 663
    iget-object p1, p0, Landroidx/media2/MediaSession2Stub$28;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object p1, p1, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media2/MediaSession2;->skipToNextItem()V

    return-void
.end method
