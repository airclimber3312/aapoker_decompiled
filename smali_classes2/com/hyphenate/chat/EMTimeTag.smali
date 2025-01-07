.class Lcom/hyphenate/chat/EMTimeTag;
.super Ljava/lang/Object;


# instance fields
.field private oldTime:J

.field private timeSpent:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hyphenate/chat/EMTimeTag;->oldTime:J

    iput-wide v0, p0, Lcom/hyphenate/chat/EMTimeTag;->timeSpent:J

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hyphenate/chat/EMTimeTag;->oldTime:J

    return-void
.end method

.method public stop()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hyphenate/chat/EMTimeTag;->oldTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hyphenate/chat/EMTimeTag;->timeSpent:J

    return-wide v0
.end method

.method public timeSpent()J
    .locals 2

    iget-wide v0, p0, Lcom/hyphenate/chat/EMTimeTag;->timeSpent:J

    return-wide v0
.end method

.method public timeStr()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/hyphenate/chat/EMTimeTag;->timeSpent:J

    invoke-static {v0, v1}, Lcom/hyphenate/chat/EMCollector;->timeToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
