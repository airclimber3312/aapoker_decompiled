.class final Landroidx/media2/MediaPlayer2Impl$14;
.super Landroid/media/MediaDataSource;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl;->handleDataSource(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field mDataSource:Landroidx/media2/CallbackDataSource2;

.field final synthetic val$dsd:Landroidx/media2/DataSourceDesc2;


# direct methods
.method constructor <init>(Landroidx/media2/DataSourceDesc2;)V
    .locals 0

    .line 616
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$14;->val$dsd:Landroidx/media2/DataSourceDesc2;

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    .line 617
    check-cast p1, Landroidx/media2/CallbackDataSourceDesc2;

    .line 618
    invoke-virtual {p1}, Landroidx/media2/CallbackDataSourceDesc2;->getCallbackDataSource2()Landroidx/media2/CallbackDataSource2;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$14;->mDataSource:Landroidx/media2/CallbackDataSource2;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 632
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$14;->mDataSource:Landroidx/media2/CallbackDataSource2;

    invoke-virtual {v0}, Landroidx/media2/CallbackDataSource2;->close()V

    return-void
.end method

.method public getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$14;->mDataSource:Landroidx/media2/CallbackDataSource2;

    invoke-virtual {v0}, Landroidx/media2/CallbackDataSource2;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$14;->mDataSource:Landroidx/media2/CallbackDataSource2;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/CallbackDataSource2;->readAt(J[BII)I

    move-result p1

    return p1
.end method
