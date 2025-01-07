.class final Lcom/tencent/bugly/proguard/cq$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic fc:Lcom/tencent/bugly/proguard/cq;

.field private fg:J


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/cq;J)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/cq$c;->fc:Lcom/tencent/bugly/proguard/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/tencent/bugly/proguard/cq$c;->fg:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/cq$c;->fc:Lcom/tencent/bugly/proguard/cq;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/cq;->bm()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/cq$c;->fc:Lcom/tencent/bugly/proguard/cq;

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/cq$c;->fg:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/cq;->a(J)V

    return-void
.end method
