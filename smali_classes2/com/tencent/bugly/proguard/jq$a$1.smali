.class final Lcom/tencent/bugly/proguard/jq$a$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/jq$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xp:Lcom/tencent/bugly/proguard/jq$a;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/jq$a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/jq$a$1;->xp:Lcom/tencent/bugly/proguard/jq$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/jq$a$1;->xp:Lcom/tencent/bugly/proguard/jq$a;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/jq$a;->g(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
