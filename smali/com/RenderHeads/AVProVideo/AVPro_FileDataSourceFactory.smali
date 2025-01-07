.class public Lcom/RenderHeads/AVProVideo/AVPro_FileDataSourceFactory;
.super Ljava/lang/Object;
.source "AVPro_FileDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private m_FileOffset:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSourceFactory;->m_FileOffset:J

    return-void
.end method


# virtual methods
.method public createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 3

    .line 18
    new-instance v0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;

    iget-wide v1, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSourceFactory;->m_FileOffset:J

    invoke-direct {v0, v1, v2}, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;-><init>(J)V

    return-object v0
.end method
