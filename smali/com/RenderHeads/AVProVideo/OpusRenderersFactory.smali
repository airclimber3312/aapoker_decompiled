.class public Lcom/RenderHeads/AVProVideo/OpusRenderersFactory;
.super Ljava/lang/Object;
.source "OpusRenderersFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/RenderersFactory;


# instance fields
.field private m_RenderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

.field private m_Sink:Lcom/google/android/exoplayer2/audio/AudioSink;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/AudioSink;Lcom/google/android/exoplayer2/RenderersFactory;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/OpusRenderersFactory;->m_Sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 37
    iput-object p2, p0, Lcom/RenderHeads/AVProVideo/OpusRenderersFactory;->m_RenderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

    return-void
.end method


# virtual methods
.method public createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)[Lcom/google/android/exoplayer2/Renderer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "Lcom/google/android/exoplayer2/text/TextOutput;",
            "Lcom/google/android/exoplayer2/metadata/MetadataOutput;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)[",
            "Lcom/google/android/exoplayer2/Renderer;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/OpusRenderersFactory;->m_RenderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/RenderersFactory;->createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)[Lcom/google/android/exoplayer2/Renderer;

    move-result-object p1

    const/4 p2, 0x0

    .line 51
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_1

    .line 55
    aget-object p3, p1, p2

    invoke-interface {p3}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    .line 57
    new-instance p3, Lcom/twobigears/audio360exo2/OpusRenderer;

    iget-object p4, p0, Lcom/RenderHeads/AVProVideo/OpusRenderersFactory;->m_Sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-direct {p3, p4}, Lcom/twobigears/audio360exo2/OpusRenderer;-><init>(Lcom/google/android/exoplayer2/audio/AudioSink;)V

    aput-object p3, p1, p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method
