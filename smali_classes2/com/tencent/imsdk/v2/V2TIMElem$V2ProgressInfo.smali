.class public Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;
.super Ljava/lang/Object;
.source "V2TIMElem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/v2/V2TIMElem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "V2ProgressInfo"
.end annotation


# instance fields
.field private currentSize:J

.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMElem;

.field private totalSize:J


# direct methods
.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMElem;JJ)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;->this$0:Lcom/tencent/imsdk/v2/V2TIMElem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p2, p0, Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;->currentSize:J

    .line 31
    iput-wide p4, p0, Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;->totalSize:J

    return-void
.end method


# virtual methods
.method public getCurrentSize()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;->currentSize:J

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;->totalSize:J

    return-wide v0
.end method
