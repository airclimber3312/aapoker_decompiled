.class public final Lcom/tencent/bugly/proguard/ea;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/tencent/bugly/proguard/ea;",
        ">;"
    }
.end annotation


# instance fields
.field public Y:Z

.field public id:J

.field public kE:J

.field public kF:Ljava/lang/String;

.field public kG:Z

.field public kH:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ea;->id:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ea;->kE:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ea;->kF:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ea;->kG:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ea;->Y:Z

    iput v0, p0, Lcom/tencent/bugly/proguard/ea;->kH:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/tencent/bugly/proguard/ea;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ea;->kE:J

    iget-wide v2, p1, Lcom/tencent/bugly/proguard/ea;->kE:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
