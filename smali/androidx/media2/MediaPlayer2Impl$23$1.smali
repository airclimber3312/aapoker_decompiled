.class Landroidx/media2/MediaPlayer2Impl$23$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/MediaPlayer2Impl$DrmEventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl$23;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaPlayer2Impl$23;

.field final synthetic val$prepareDrmStatus:I


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl$23;I)V
    .locals 0

    .line 1201
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$23$1;->this$1:Landroidx/media2/MediaPlayer2Impl$23;

    iput p2, p0, Landroidx/media2/MediaPlayer2Impl$23$1;->val$prepareDrmStatus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/MediaPlayer2$DrmEventCallback;)V
    .locals 3

    .line 1204
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$23$1;->this$1:Landroidx/media2/MediaPlayer2Impl$23;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$23;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$23$1;->this$1:Landroidx/media2/MediaPlayer2Impl$23;

    iget-object v1, v1, Landroidx/media2/MediaPlayer2Impl$23;->mDSD:Landroidx/media2/DataSourceDesc2;

    iget v2, p0, Landroidx/media2/MediaPlayer2Impl$23$1;->val$prepareDrmStatus:I

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/MediaPlayer2$DrmEventCallback;->onDrmPrepared(Landroidx/media2/MediaPlayer2;Landroidx/media2/DataSourceDesc2;I)V

    return-void
.end method
