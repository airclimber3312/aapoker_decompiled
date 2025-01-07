.class final Lcom/tencent/bugly/proguard/lf$2;
.super Lcom/tencent/bugly/proguard/li;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/lf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zJ:I

.field final synthetic zL:Lcom/tencent/bugly/proguard/lf;

.field final synthetic zM:I


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/lf;Lcom/tencent/bugly/proguard/lk;II)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/lf$2;->zL:Lcom/tencent/bugly/proguard/lf;

    iput p3, p0, Lcom/tencent/bugly/proguard/lf$2;->zM:I

    iput p4, p0, Lcom/tencent/bugly/proguard/lf$2;->zJ:I

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/li;-><init>(Lcom/tencent/bugly/proguard/lk;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/md;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/lf$2;->zL:Lcom/tencent/bugly/proguard/lf;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/lf;->gT()Lcom/tencent/bugly/proguard/lg;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/tencent/bugly/proguard/lf$2;->zM:I

    iget v2, p0, Lcom/tencent/bugly/proguard/lf$2;->zJ:I

    invoke-interface {v0, v1, v2}, Lcom/tencent/bugly/proguard/lg;->c(II)Ljava/util/ArrayList;

    move-result-object v1

    :cond_0
    iget-object v0, p1, Lcom/tencent/bugly/proguard/md;->zV:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/mm;->a(Ljava/util/List;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/md;->ha()V

    const-string v0, "RMonitor_FdLeak_Trigger"

    const-string v1, "zip dump files failed when analyzed"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/nb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/my;->a(Lcom/tencent/bugly/proguard/md;Ljava/lang/String;)V

    :goto_0
    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/li;->a(Lcom/tencent/bugly/proguard/md;)V

    return-void
.end method
