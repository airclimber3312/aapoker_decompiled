.class Landroidx/media2/MediaPlayer2Impl$12$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl$12;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaPlayer2Impl$12;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl$12;)V
    .locals 0

    .line 531
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$12$1;->this$1:Landroidx/media2/MediaPlayer2Impl$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroidx/media2/MediaPlayer2$EventCallback;)V
    .locals 2

    .line 534
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$12$1;->this$1:Landroidx/media2/MediaPlayer2Impl$12;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl$12;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$12$1;->this$1:Landroidx/media2/MediaPlayer2Impl$12;

    iget-object v1, v1, Landroidx/media2/MediaPlayer2Impl$12;->val$label:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroidx/media2/MediaPlayer2$EventCallback;->onCommandLabelReached(Landroidx/media2/MediaPlayer2;Ljava/lang/Object;)V

    return-void
.end method
