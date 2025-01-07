.class public Landroidx/media2/FileDataSourceDesc2;
.super Landroidx/media2/DataSourceDesc2;
.source "FileDataSourceDesc2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/FileDataSourceDesc2$Builder;
    }
.end annotation


# static fields
.field public static final FD_LENGTH_UNKNOWN:J = 0x7ffffffffffffffL


# instance fields
.field mFD:Ljava/io/FileDescriptor;

.field mFDLength:J

.field mFDOffset:J


# direct methods
.method constructor <init>(Landroidx/media2/FileDataSourceDesc2$Builder;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Landroidx/media2/DataSourceDesc2;-><init>(Landroidx/media2/DataSourceDesc2$Builder;)V

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Landroidx/media2/FileDataSourceDesc2;->mFDOffset:J

    const-wide v0, 0x7ffffffffffffffL

    .line 43
    iput-wide v0, p0, Landroidx/media2/FileDataSourceDesc2;->mFDLength:J

    .line 48
    iget-object v0, p1, Landroidx/media2/FileDataSourceDesc2$Builder;->mFD:Ljava/io/FileDescriptor;

    iput-object v0, p0, Landroidx/media2/FileDataSourceDesc2;->mFD:Ljava/io/FileDescriptor;

    .line 49
    iget-wide v0, p1, Landroidx/media2/FileDataSourceDesc2$Builder;->mFDOffset:J

    iput-wide v0, p0, Landroidx/media2/FileDataSourceDesc2;->mFDOffset:J

    .line 50
    iget-wide v0, p1, Landroidx/media2/FileDataSourceDesc2$Builder;->mFDLength:J

    iput-wide v0, p0, Landroidx/media2/FileDataSourceDesc2;->mFDLength:J

    return-void
.end method


# virtual methods
.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/media2/FileDataSourceDesc2;->mFD:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getFileDescriptorLength()J
    .locals 2

    .line 85
    iget-wide v0, p0, Landroidx/media2/FileDataSourceDesc2;->mFDLength:J

    return-wide v0
.end method

.method public getFileDescriptorOffset()J
    .locals 2

    .line 76
    iget-wide v0, p0, Landroidx/media2/FileDataSourceDesc2;->mFDOffset:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
