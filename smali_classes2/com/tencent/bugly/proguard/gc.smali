.class public final Lcom/tencent/bugly/proguard/gc;
.super Lcom/tencent/bugly/proguard/kj;


# instance fields
.field private final rV:J

.field private final rW:J

.field public rX:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/kj;-><init>()V

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/gc;->rX:J

    iput-wide p3, p0, Lcom/tencent/bugly/proguard/gc;->rV:J

    const-wide/16 p1, 0x7530

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/gc;->rW:J

    return-void
.end method


# virtual methods
.method public final eg()V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/gc;->rV:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/gc;->rX:J

    return-void
.end method

.method public final eh()V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/gc;->rW:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/gc;->rX:J

    return-void
.end method
