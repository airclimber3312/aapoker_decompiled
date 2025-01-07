.class public final Landroidx/media2/FileDataSourceDesc2$Builder;
.super Landroidx/media2/DataSourceDesc2$Builder;
.source "FileDataSourceDesc2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/FileDataSourceDesc2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/DataSourceDesc2$Builder<",
        "Landroidx/media2/FileDataSourceDesc2$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field mFD:Ljava/io/FileDescriptor;

.field mFDLength:J

.field mFDOffset:J


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 4

    .line 107
    invoke-direct {p0}, Landroidx/media2/DataSourceDesc2$Builder;-><init>()V

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Landroidx/media2/FileDataSourceDesc2$Builder;->mFDOffset:J

    const-wide v2, 0x7ffffffffffffffL

    .line 97
    iput-wide v2, p0, Landroidx/media2/FileDataSourceDesc2$Builder;->mFDLength:J

    .line 108
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iput-object p1, p0, Landroidx/media2/FileDataSourceDesc2$Builder;->mFD:Ljava/io/FileDescriptor;

    .line 110
    iput-wide v0, p0, Landroidx/media2/FileDataSourceDesc2$Builder;->mFDOffset:J

    .line 111
    iput-wide v2, p0, Landroidx/media2/FileDataSourceDesc2$Builder;->mFDLength:J

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;JJ)V
    .locals 5

    .line 126
    invoke-direct {p0}, Landroidx/media2/DataSourceDesc2$Builder;-><init>()V

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Landroidx/media2/FileDataSourceDesc2$Builder;->mFDOffset:J

    const-wide v2, 0x7ffffffffffffffL

    .line 97
    iput-wide v2, p0, Landroidx/media2/FileDataSourceDesc2$Builder;->mFDLength:J

    .line 127
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v4, p2, v0

    if-gez v4, :cond_0

    move-wide p2, v0

    :cond_0
    cmp-long v4, p4, v0

    if-gez v4, :cond_1

    move-wide p4, v2

    .line 134
    :cond_1
    iput-object p1, p0, Landroidx/media2/FileDataSourceDesc2$Builder;->mFD:Ljava/io/FileDescriptor;

    .line 135
    iput-wide p2, p0, Landroidx/media2/FileDataSourceDesc2$Builder;->mFDOffset:J

    .line 136
    iput-wide p4, p0, Landroidx/media2/FileDataSourceDesc2$Builder;->mFDLength:J

    return-void
.end method


# virtual methods
.method public build()Landroidx/media2/FileDataSourceDesc2;
    .locals 1

    .line 143
    new-instance v0, Landroidx/media2/FileDataSourceDesc2;

    invoke-direct {v0, p0}, Landroidx/media2/FileDataSourceDesc2;-><init>(Landroidx/media2/FileDataSourceDesc2$Builder;)V

    return-object v0
.end method
