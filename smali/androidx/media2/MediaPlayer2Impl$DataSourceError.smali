.class Landroidx/media2/MediaPlayer2Impl$DataSourceError;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataSourceError"
.end annotation


# instance fields
.field final mDSD:Landroidx/media2/DataSourceDesc2;

.field final mExtra:I

.field final mWhat:I


# direct methods
.method constructor <init>(Landroidx/media2/DataSourceDesc2;II)V
    .locals 0

    .line 1933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1934
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$DataSourceError;->mDSD:Landroidx/media2/DataSourceDesc2;

    .line 1935
    iput p2, p0, Landroidx/media2/MediaPlayer2Impl$DataSourceError;->mWhat:I

    .line 1936
    iput p3, p0, Landroidx/media2/MediaPlayer2Impl$DataSourceError;->mExtra:I

    return-void
.end method
