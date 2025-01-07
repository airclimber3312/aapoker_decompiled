.class public Lcom/hyphenate/chat/adapter/EMABase;
.super Ljava/lang/Object;


# instance fields
.field nativeHandler:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hyphenate/chat/adapter/EMABase;->nativeHandler:J

    return-void
.end method


# virtual methods
.method native _equals(Lcom/hyphenate/chat/adapter/EMABase;)Z
.end method

.method native _hashCode()I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/hyphenate/chat/adapter/EMABase;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/hyphenate/chat/adapter/EMABase;->nativeHandler:J

    check-cast p1, Lcom/hyphenate/chat/adapter/EMABase;

    iget-wide v2, p1, Lcom/hyphenate/chat/adapter/EMABase;->nativeHandler:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMABase;->_equals(Lcom/hyphenate/chat/adapter/EMABase;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getNativeHandler()J
    .locals 2

    iget-wide v0, p0, Lcom/hyphenate/chat/adapter/EMABase;->nativeHandler:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMABase;->_hashCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_0
    return v0
.end method
