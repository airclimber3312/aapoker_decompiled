.class public Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaStreamInfoWrapper;
.super Lio/agora/mediaplayer/data/MediaStreamInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/internal/SimpleMediaPlayerSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MediaStreamInfoWrapper"
.end annotation


# instance fields
.field private format:Landroid/media/MediaFormat;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    invoke-direct {p0}, Lio/agora/mediaplayer/data/MediaStreamInfo;-><init>()V

    iput-object p1, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaStreamInfoWrapper;->format:Landroid/media/MediaFormat;

    return-void
.end method


# virtual methods
.method public getFormat()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaStreamInfoWrapper;->format:Landroid/media/MediaFormat;

    return-object v0
.end method
