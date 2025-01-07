.class public final Lcom/tencent/bugly/proguard/jx;
.super Ljava/lang/Object;


# instance fields
.field public iy:Ljava/lang/String;

.field public final timestamp:J

.field public final xA:Ljava/lang/String;

.field public final xB:Ljava/lang/String;

.field public final xC:I

.field public final xD:I

.field public final xE:I

.field public final xF:I

.field public final xG:I

.field public final xy:J

.field public final xz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIJLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/jx;->xz:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/jx;->xA:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/jx;->xB:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/bugly/proguard/jx;->xC:I

    iput p5, p0, Lcom/tencent/bugly/proguard/jx;->xD:I

    iput p6, p0, Lcom/tencent/bugly/proguard/jx;->xE:I

    iput p7, p0, Lcom/tencent/bugly/proguard/jx;->xF:I

    iput p8, p0, Lcom/tencent/bugly/proguard/jx;->xG:I

    iput-wide p9, p0, Lcom/tencent/bugly/proguard/jx;->xy:J

    iput-object p11, p0, Lcom/tencent/bugly/proguard/jx;->iy:Ljava/lang/String;

    iput-wide p12, p0, Lcom/tencent/bugly/proguard/jx;->timestamp:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/tencent/bugly/proguard/jx;

    iget v2, p0, Lcom/tencent/bugly/proguard/jx;->xC:I

    iget v3, p1, Lcom/tencent/bugly/proguard/jx;->xC:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/tencent/bugly/proguard/jx;->xD:I

    iget v3, p1, Lcom/tencent/bugly/proguard/jx;->xD:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/tencent/bugly/proguard/jx;->xE:I

    iget v3, p1, Lcom/tencent/bugly/proguard/jx;->xE:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/tencent/bugly/proguard/jx;->xF:I

    iget v3, p1, Lcom/tencent/bugly/proguard/jx;->xF:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/tencent/bugly/proguard/jx;->xG:I

    iget v3, p1, Lcom/tencent/bugly/proguard/jx;->xG:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/tencent/bugly/proguard/jx;->xz:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/bugly/proguard/jx;->xz:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/kw;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/bugly/proguard/jx;->xB:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/bugly/proguard/jx;->xB:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/kw;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/bugly/proguard/jx;->iy:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/jx;->iy:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/tencent/bugly/proguard/kw;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/bugly/proguard/jx;->xz:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/bugly/proguard/jx;->xB:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/tencent/bugly/proguard/jx;->xC:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/bugly/proguard/jx;->xD:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/bugly/proguard/jx;->xE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/bugly/proguard/jx;->xF:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/bugly/proguard/jx;->xG:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/bugly/proguard/jx;->iy:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/jx;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/bugly/proguard/jx;->xz:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v4, p0, Lcom/tencent/bugly/proguard/jx;->xE:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v4, p0, Lcom/tencent/bugly/proguard/jx;->xF:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v4, p0, Lcom/tencent/bugly/proguard/jx;->xC:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v4, p0, Lcom/tencent/bugly/proguard/jx;->xD:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/bugly/proguard/jx;->xB:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/bugly/proguard/jx;->xA:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v4, p0, Lcom/tencent/bugly/proguard/jx;->xG:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/jx;->xy:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/bugly/proguard/jx;->iy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ExceedBitmapInfo{%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
