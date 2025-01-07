.class public Lcom/RenderHeads/AVProVideo/JarDataSourceFactory;
.super Ljava/lang/Object;
.source "JarDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private m_FileOffset:J

.field private m_Path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/JarDataSourceFactory;->m_Path:Ljava/lang/String;

    .line 14
    iput-wide p2, p0, Lcom/RenderHeads/AVProVideo/JarDataSourceFactory;->m_FileOffset:J

    return-void
.end method


# virtual methods
.method public createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 4

    .line 19
    new-instance v0, Lcom/RenderHeads/AVProVideo/JarDataSource;

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/JarDataSourceFactory;->m_Path:Ljava/lang/String;

    iget-wide v2, p0, Lcom/RenderHeads/AVProVideo/JarDataSourceFactory;->m_FileOffset:J

    invoke-direct {v0, v1, v2, v3}, Lcom/RenderHeads/AVProVideo/JarDataSource;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method
