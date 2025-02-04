.class public final Landroidx/media2/PlaybackParams2$Builder;
.super Ljava/lang/Object;
.source "PlaybackParams2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/PlaybackParams2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioFallbackMode:Ljava/lang/Integer;

.field private mPitch:Ljava/lang/Float;

.field private mPlaybackParams:Landroid/media/PlaybackParams;

.field private mSpeed:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 172
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    iput-object v0, p0, Landroidx/media2/PlaybackParams2$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/media/PlaybackParams;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Landroidx/media2/PlaybackParams2$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    return-void
.end method


# virtual methods
.method public build()Landroidx/media2/PlaybackParams2;
    .locals 4

    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 235
    new-instance v0, Landroidx/media2/PlaybackParams2;

    iget-object v1, p0, Landroidx/media2/PlaybackParams2$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-direct {v0, v1}, Landroidx/media2/PlaybackParams2;-><init>(Landroid/media/PlaybackParams;)V

    return-object v0

    .line 237
    :cond_0
    new-instance v0, Landroidx/media2/PlaybackParams2;

    iget-object v1, p0, Landroidx/media2/PlaybackParams2$Builder;->mAudioFallbackMode:Ljava/lang/Integer;

    iget-object v2, p0, Landroidx/media2/PlaybackParams2$Builder;->mPitch:Ljava/lang/Float;

    iget-object v3, p0, Landroidx/media2/PlaybackParams2$Builder;->mSpeed:Ljava/lang/Float;

    invoke-direct {v0, v1, v2, v3}, Landroidx/media2/PlaybackParams2;-><init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V

    return-object v0
.end method

.method public setAudioFallbackMode(I)Landroidx/media2/PlaybackParams2$Builder;
    .locals 2

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Landroidx/media2/PlaybackParams2$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/PlaybackParams2$Builder;->mAudioFallbackMode:Ljava/lang/Integer;

    :goto_0
    return-object p0
.end method

.method public setPitch(F)Landroidx/media2/PlaybackParams2$Builder;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Landroidx/media2/PlaybackParams2$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    goto :goto_0

    .line 210
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/PlaybackParams2$Builder;->mPitch:Ljava/lang/Float;

    :goto_0
    return-object p0

    .line 205
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "pitch must not be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSpeed(F)Landroidx/media2/PlaybackParams2$Builder;
    .locals 2

    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Landroidx/media2/PlaybackParams2$Builder;->mPlaybackParams:Landroid/media/PlaybackParams;

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/PlaybackParams2$Builder;->mSpeed:Ljava/lang/Float;

    :goto_0
    return-object p0
.end method
