.class public final Lcom/tencent/bugly/proguard/nj$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/nj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic AP:Lcom/tencent/bugly/proguard/nj;

.field private final AZ:Lcom/tencent/bugly/proguard/nj$a;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/nj;Lcom/tencent/bugly/proguard/nj$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/nj$b;->AP:Lcom/tencent/bugly/proguard/nj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/bugly/proguard/nj$b;->AZ:Lcom/tencent/bugly/proguard/nj$a;

    return-void
.end method


# virtual methods
.method public final onWindowFocusChanged(Z)V
    .locals 7

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/bugly/proguard/nj$b;->AZ:Lcom/tencent/bugly/proguard/nj$a;

    iget-boolean p1, p1, Lcom/tencent/bugly/proguard/nj$a;->AR:Z

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/tencent/bugly/proguard/nj$b;->AZ:Lcom/tencent/bugly/proguard/nj$a;

    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/tencent/bugly/proguard/nj$a;->AR:Z

    iget-object p1, p0, Lcom/tencent/bugly/proguard/nj$b;->AZ:Lcom/tencent/bugly/proguard/nj$a;

    iget-boolean p1, p1, Lcom/tencent/bugly/proguard/nj$a;->AS:Z

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/bugly/proguard/nj$b;->AZ:Lcom/tencent/bugly/proguard/nj$a;

    iput-boolean v2, p1, Lcom/tencent/bugly/proguard/nj$a;->AS:Z

    iget-object p1, p0, Lcom/tencent/bugly/proguard/nj$b;->AZ:Lcom/tencent/bugly/proguard/nj$a;

    iget-wide v5, p1, Lcom/tencent/bugly/proguard/nj$a;->AW:J

    cmp-long p1, v5, v3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/bugly/proguard/nj$b;->AZ:Lcom/tencent/bugly/proguard/nj$a;

    iget-wide v2, p1, Lcom/tencent/bugly/proguard/nj$a;->AW:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tencent/bugly/proguard/nj$a;->AT:J

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tencent/bugly/proguard/nj$b;->AZ:Lcom/tencent/bugly/proguard/nj$a;

    iget-wide v5, p1, Lcom/tencent/bugly/proguard/nj$a;->AX:J

    cmp-long p1, v5, v3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/bugly/proguard/nj$b;->AZ:Lcom/tencent/bugly/proguard/nj$a;

    iget v2, p1, Lcom/tencent/bugly/proguard/nj$a;->AV:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/tencent/bugly/proguard/nj$a;->AV:I

    iget-object p1, p0, Lcom/tencent/bugly/proguard/nj$b;->AZ:Lcom/tencent/bugly/proguard/nj$a;

    iget-wide v2, p1, Lcom/tencent/bugly/proguard/nj$a;->AU:J

    iget-object v4, p0, Lcom/tencent/bugly/proguard/nj$b;->AZ:Lcom/tencent/bugly/proguard/nj$a;

    iget-wide v4, v4, Lcom/tencent/bugly/proguard/nj$a;->AX:J

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p1, Lcom/tencent/bugly/proguard/nj$a;->AU:J

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tencent/bugly/proguard/nj$b;->AP:Lcom/tencent/bugly/proguard/nj;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nj$b;->AZ:Lcom/tencent/bugly/proguard/nj$a;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/nj;->AO:Lcom/tencent/bugly/proguard/nj$c;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/tencent/bugly/proguard/nj;->AO:Lcom/tencent/bugly/proguard/nj$c;

    invoke-interface {p1, v0}, Lcom/tencent/bugly/proguard/nj$c;->a(Lcom/tencent/bugly/proguard/nj$a;)V

    :cond_2
    return-void
.end method
