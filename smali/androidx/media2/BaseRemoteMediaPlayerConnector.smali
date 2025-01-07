.class public abstract Landroidx/media2/BaseRemoteMediaPlayerConnector;
.super Landroidx/media2/MediaPlayerConnector;
.source "BaseRemoteMediaPlayerConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/BaseRemoteMediaPlayerConnector$RemotePlayerEventCallback;,
        Landroidx/media2/BaseRemoteMediaPlayerConnector$VolumeControlType;
    }
.end annotation


# static fields
.field public static final VOLUME_CONTROL_ABSOLUTE:I = 0x2

.field public static final VOLUME_CONTROL_FIXED:I = 0x0

.field public static final VOLUME_CONTROL_RELATIVE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/media2/MediaPlayerConnector;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract adjustPlayerVolume(I)V
.end method

.method public abstract getVolumeControlType()I
.end method
