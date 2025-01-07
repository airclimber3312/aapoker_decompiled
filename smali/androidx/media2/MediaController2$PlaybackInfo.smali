.class public final Landroidx/media2/MediaController2$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaController2.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# static fields
.field private static final KEY_AUDIO_ATTRIBUTES:Ljava/lang/String; = "android.media.audio_info.audio_attrs"

.field private static final KEY_CONTROL_TYPE:Ljava/lang/String; = "android.media.audio_info.control_type"

.field private static final KEY_CURRENT_VOLUME:Ljava/lang/String; = "android.media.audio_info.current_volume"

.field private static final KEY_MAX_VOLUME:Ljava/lang/String; = "android.media.audio_info.max_volume"

.field private static final KEY_PLAYBACK_TYPE:Ljava/lang/String; = "android.media.audio_info.playback_type"

.field public static final PLAYBACK_TYPE_LOCAL:I = 0x1

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x2


# instance fields
.field mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

.field mControlType:I

.field mCurrentVolume:I

.field mMaxVolume:I

.field mPlaybackType:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILandroidx/media/AudioAttributesCompat;III)V
    .locals 0

    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1069
    iput p1, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mPlaybackType:I

    .line 1070
    iput-object p2, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    .line 1071
    iput p3, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mControlType:I

    .line 1072
    iput p4, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mMaxVolume:I

    .line 1073
    iput p5, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mCurrentVolume:I

    return-void
.end method

.method static createPlaybackInfo(ILandroidx/media/AudioAttributesCompat;III)Landroidx/media2/MediaController2$PlaybackInfo;
    .locals 7

    .line 1151
    new-instance v6, Landroidx/media2/MediaController2$PlaybackInfo;

    move-object v0, v6

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media2/MediaController2$PlaybackInfo;-><init>(ILandroidx/media/AudioAttributesCompat;III)V

    return-object v6
.end method

.method static fromBundle(Landroid/os/Bundle;)Landroidx/media2/MediaController2$PlaybackInfo;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.media.audio_info.playback_type"

    .line 1158
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "android.media.audio_info.control_type"

    .line 1159
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.media.audio_info.max_volume"

    .line 1160
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "android.media.audio_info.current_volume"

    .line 1161
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "android.media.audio_info.audio_attrs"

    .line 1163
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 1162
    invoke-static {p0}, Landroidx/media/AudioAttributesCompat;->fromBundle(Landroid/os/Bundle;)Landroidx/media/AudioAttributesCompat;

    move-result-object p0

    .line 1164
    invoke-static {v0, p0, v1, v2, v3}, Landroidx/media2/MediaController2$PlaybackInfo;->createPlaybackInfo(ILandroidx/media/AudioAttributesCompat;III)Landroidx/media2/MediaController2$PlaybackInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAudioAttributes()Landroidx/media/AudioAttributesCompat;
    .locals 1

    .line 1098
    iget-object v0, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    return-object v0
.end method

.method public getControlType()I
    .locals 1

    .line 1112
    iget v0, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mControlType:I

    return v0
.end method

.method public getCurrentVolume()I
    .locals 1

    .line 1134
    iget v0, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mCurrentVolume:I

    return v0
.end method

.method public getMaxVolume()I
    .locals 1

    .line 1123
    iget v0, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mMaxVolume:I

    return v0
.end method

.method public getPlaybackType()I
    .locals 1

    .line 1086
    iget v0, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mPlaybackType:I

    return v0
.end method

.method toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.media.audio_info.playback_type"

    .line 1139
    iget v2, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mPlaybackType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android.media.audio_info.control_type"

    .line 1140
    iget v2, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mControlType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android.media.audio_info.max_volume"

    .line 1141
    iget v2, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mMaxVolume:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android.media.audio_info.current_volume"

    .line 1142
    iget v2, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mCurrentVolume:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1143
    iget-object v1, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    if-eqz v1, :cond_0

    const-string v2, "android.media.audio_info.audio_attrs"

    .line 1144
    invoke-virtual {v1}, Landroidx/media/AudioAttributesCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method
