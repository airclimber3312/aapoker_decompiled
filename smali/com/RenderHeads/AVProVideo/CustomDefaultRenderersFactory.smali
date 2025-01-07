.class public Lcom/RenderHeads/AVProVideo/CustomDefaultRenderersFactory;
.super Ljava/lang/Object;
.source "CustomDefaultRenderersFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/RenderersFactory;


# instance fields
.field private m_CodecSelector:Lcom/RenderHeads/AVProVideo/CustomMediaCodecSelector;

.field private m_Context:Landroid/content/Context;

.field private m_DefaultRenderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

.field private m_DrmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private m_ExtensionRenderersMode:I

.field private m_PreferSoftware:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;IZ)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p4, p0, Lcom/RenderHeads/AVProVideo/CustomDefaultRenderersFactory;->m_PreferSoftware:Z

    .line 42
    new-instance v0, Lcom/RenderHeads/AVProVideo/CustomMediaCodecSelector;

    invoke-direct {v0, p4}, Lcom/RenderHeads/AVProVideo/CustomMediaCodecSelector;-><init>(Z)V

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/CustomDefaultRenderersFactory;->m_CodecSelector:Lcom/RenderHeads/AVProVideo/CustomMediaCodecSelector;

    .line 43
    new-instance p4, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {p4, p1, p2, p3}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;I)V

    iput-object p4, p0, Lcom/RenderHeads/AVProVideo/CustomDefaultRenderersFactory;->m_DefaultRenderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

    .line 44
    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/CustomDefaultRenderersFactory;->m_Context:Landroid/content/Context;

    .line 45
    iput p3, p0, Lcom/RenderHeads/AVProVideo/CustomDefaultRenderersFactory;->m_ExtensionRenderersMode:I

    .line 46
    iput-object p2, p0, Lcom/RenderHeads/AVProVideo/CustomDefaultRenderersFactory;->m_DrmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    return-void
.end method


# virtual methods
.method public createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)[Lcom/google/android/exoplayer2/Renderer;
    .locals 17
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

    move-object/from16 v1, p0

    .line 55
    iget-object v2, v1, Lcom/RenderHeads/AVProVideo/CustomDefaultRenderersFactory;->m_DefaultRenderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/RenderersFactory;->createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)[Lcom/google/android/exoplayer2/Renderer;

    move-result-object v0

    .line 58
    iget-boolean v2, v1, Lcom/RenderHeads/AVProVideo/CustomDefaultRenderersFactory;->m_PreferSoftware:Z

    if-nez v2, :cond_0

    return-object v0

    .line 62
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 65
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v4, v5, :cond_2

    .line 66
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/Renderer;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v5

    if-eq v5, v6, :cond_1

    .line 67
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    :cond_2
    new-instance v2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    iget-object v8, v1, Lcom/RenderHeads/AVProVideo/CustomDefaultRenderersFactory;->m_Context:Landroid/content/Context;

    iget-object v9, v1, Lcom/RenderHeads/AVProVideo/CustomDefaultRenderersFactory;->m_CodecSelector:Lcom/RenderHeads/AVProVideo/CustomMediaCodecSelector;

    const-wide/16 v10, 0x1388

    iget-object v12, v1, Lcom/RenderHeads/AVProVideo/CustomDefaultRenderersFactory;->m_DrmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    const/4 v13, 0x0

    const/16 v16, 0x32

    move-object v7, v2

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-direct/range {v7 .. v16}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget v2, v1, Lcom/RenderHeads/AVProVideo/CustomDefaultRenderersFactory;->m_ExtensionRenderersMode:I

    if-eqz v2, :cond_4

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 78
    iget v4, v1, Lcom/RenderHeads/AVProVideo/CustomDefaultRenderersFactory;->m_ExtensionRenderersMode:I

    if-ne v4, v6, :cond_3

    add-int/lit8 v2, v2, -0x1

    :cond_3
    :try_start_0
    const-string v4, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    .line 84
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x5

    new-array v7, v5, [Ljava/lang/Class;

    .line 85
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-class v8, Landroid/os/Handler;

    aput-object v8, v7, v6

    const-class v8, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    const/4 v10, 0x3

    aput-object v8, v7, v10

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x4

    aput-object v8, v7, v11

    .line 86
    invoke-virtual {v4, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 96
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v3

    const/16 v3, 0x1388

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v9

    aput-object p1, v5, v6

    aput-object p2, v5, v10

    const/16 v3, 0x32

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v11

    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/Renderer;

    .line 101
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 106
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating VP9 extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 110
    :catch_1
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer2/Renderer;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/Renderer;

    return-object v0
.end method
