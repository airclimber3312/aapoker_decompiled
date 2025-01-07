.class public abstract Landroidx/media2/DataSourceDesc2$Builder;
.super Ljava/lang/Object;
.source "DataSourceDesc2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/DataSourceDesc2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/media2/DataSourceDesc2$Builder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mEndPositionMs:J

.field mMediaId:Ljava/lang/String;

.field mStartPositionMs:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 103
    iput-wide v0, p0, Landroidx/media2/DataSourceDesc2$Builder;->mStartPositionMs:J

    const-wide v0, 0x7ffffffffffffffL

    .line 105
    iput-wide v0, p0, Landroidx/media2/DataSourceDesc2$Builder;->mEndPositionMs:J

    return-void
.end method

.method constructor <init>(Landroidx/media2/DataSourceDesc2;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 103
    iput-wide v0, p0, Landroidx/media2/DataSourceDesc2$Builder;->mStartPositionMs:J

    const-wide v0, 0x7ffffffffffffffL

    .line 105
    iput-wide v0, p0, Landroidx/media2/DataSourceDesc2$Builder;->mEndPositionMs:J

    .line 120
    iget-object v0, p1, Landroidx/media2/DataSourceDesc2;->mMediaId:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/DataSourceDesc2$Builder;->mMediaId:Ljava/lang/String;

    .line 121
    iget-wide v0, p1, Landroidx/media2/DataSourceDesc2;->mStartPositionMs:J

    iput-wide v0, p0, Landroidx/media2/DataSourceDesc2$Builder;->mStartPositionMs:J

    .line 122
    iget-wide v0, p1, Landroidx/media2/DataSourceDesc2;->mEndPositionMs:J

    iput-wide v0, p0, Landroidx/media2/DataSourceDesc2$Builder;->mEndPositionMs:J

    return-void
.end method


# virtual methods
.method public setEndPosition(J)Landroidx/media2/DataSourceDesc2$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-wide p1, 0x7ffffffffffffffL

    .line 163
    :cond_0
    iput-wide p1, p0, Landroidx/media2/DataSourceDesc2$Builder;->mEndPositionMs:J

    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Landroidx/media2/DataSourceDesc2$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Landroidx/media2/DataSourceDesc2$Builder;->mMediaId:Ljava/lang/String;

    return-object p0
.end method

.method public setStartPosition(J)Landroidx/media2/DataSourceDesc2$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 148
    :cond_0
    iput-wide p1, p0, Landroidx/media2/DataSourceDesc2$Builder;->mStartPositionMs:J

    return-object p0
.end method
