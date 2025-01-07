.class public Lcom/RenderHeads/AVProVideo/AVPro_AssetSourceFactory;
.super Ljava/lang/Object;
.source "AVPro_AssetSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private m_Context:Landroid/content/Context;

.field private m_FileOffset:J

.field private m_FilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLandroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetSourceFactory;->m_FileOffset:J

    .line 16
    iput-object p3, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetSourceFactory;->m_Context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 4

    .line 21
    new-instance v0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;

    iget-wide v1, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetSourceFactory;->m_FileOffset:J

    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetSourceFactory;->m_Context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;-><init>(JLandroid/content/Context;)V

    return-object v0
.end method
