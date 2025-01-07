.class public abstract Landroidx/media2/DataSourceDesc2;
.super Ljava/lang/Object;
.source "DataSourceDesc2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/DataSourceDesc2$Builder;
    }
.end annotation


# static fields
.field static final LONG_MAX:J = 0x7ffffffffffffffL

.field public static final POSITION_UNKNOWN:J = 0x7ffffffffffffffL

.field public static final TYPE_CALLBACK:I = 0x1

.field public static final TYPE_FD:I = 0x2

.field public static final TYPE_URI:I = 0x3


# instance fields
.field mEndPositionMs:J

.field mMediaId:Ljava/lang/String;

.field mStartPositionMs:J


# direct methods
.method constructor <init>(Landroidx/media2/DataSourceDesc2$Builder;)V
    .locals 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Landroidx/media2/DataSourceDesc2;->mStartPositionMs:J

    const-wide v0, 0x7ffffffffffffffL

    .line 50
    iput-wide v0, p0, Landroidx/media2/DataSourceDesc2;->mEndPositionMs:J

    .line 54
    iget-wide v0, p1, Landroidx/media2/DataSourceDesc2$Builder;->mStartPositionMs:J

    iget-wide v2, p1, Landroidx/media2/DataSourceDesc2$Builder;->mEndPositionMs:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 59
    iget-object v0, p1, Landroidx/media2/DataSourceDesc2$Builder;->mMediaId:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/DataSourceDesc2;->mMediaId:Ljava/lang/String;

    .line 60
    iget-wide v0, p1, Landroidx/media2/DataSourceDesc2$Builder;->mStartPositionMs:J

    iput-wide v0, p0, Landroidx/media2/DataSourceDesc2;->mStartPositionMs:J

    .line 61
    iget-wide v0, p1, Landroidx/media2/DataSourceDesc2$Builder;->mEndPositionMs:J

    iput-wide v0, p0, Landroidx/media2/DataSourceDesc2;->mEndPositionMs:J

    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal start/end position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Landroidx/media2/DataSourceDesc2$Builder;->mStartPositionMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Landroidx/media2/DataSourceDesc2$Builder;->mEndPositionMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getEndPosition()J
    .locals 2

    .line 86
    iget-wide v0, p0, Landroidx/media2/DataSourceDesc2;->mEndPositionMs:J

    return-wide v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/media2/DataSourceDesc2;->mMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPosition()J
    .locals 2

    .line 77
    iget-wide v0, p0, Landroidx/media2/DataSourceDesc2;->mStartPositionMs:J

    return-wide v0
.end method

.method public abstract getType()I
.end method
