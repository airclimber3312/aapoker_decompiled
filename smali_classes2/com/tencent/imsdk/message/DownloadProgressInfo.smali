.class public Lcom/tencent/imsdk/message/DownloadProgressInfo;
.super Ljava/lang/Object;
.source "DownloadProgressInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private currentSize:J

.field private totalSize:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/tencent/imsdk/message/DownloadProgressInfo;->currentSize:J

    .line 11
    iput-wide p3, p0, Lcom/tencent/imsdk/message/DownloadProgressInfo;->totalSize:J

    return-void
.end method


# virtual methods
.method public getCurrentSize()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/tencent/imsdk/message/DownloadProgressInfo;->currentSize:J

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/tencent/imsdk/message/DownloadProgressInfo;->totalSize:J

    return-wide v0
.end method
