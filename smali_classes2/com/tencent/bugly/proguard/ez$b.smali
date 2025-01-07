.class final Lcom/tencent/bugly/proguard/ez$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/fa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field oI:Lcom/tencent/bugly/proguard/fd$b;

.field private oJ:Landroid/os/Bundle;

.field private final ot:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/fd$b;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/fd$b;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ez$b;->oI:Lcom/tencent/bugly/proguard/fd$b;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ez$b;->ot:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ez$b;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ez$b;->oJ:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ez$b;->oI:Lcom/tencent/bugly/proguard/fd$b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/fd$b;->a(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/String;I)Z
    .locals 5

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ez$b;->oI:Lcom/tencent/bugly/proguard/fd$b;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/fd$b;->pE:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ez$b;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ez$b;->oJ:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2}, Lcom/tencent/bugly/proguard/ez$b;->a(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "saving-path"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/ez$b;->ot:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "path-of-elf"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "elf-start-offset"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ez$b;->oI:Lcom/tencent/bugly/proguard/fd$b;

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/proguard/fd$b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "warm-up-result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, -0x64

    :goto_0
    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    invoke-static {p1, p2}, Lcom/tencent/bugly/matrix/backtrace/WeChatBacktraceNative;->notifyWarmedUp(Ljava/lang/String;I)V

    :cond_3
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    const/4 p1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const-string p1, "Matrix.WarmUpDelegate"

    const-string p2, "Warm-up %s:%s - retCode %s"

    invoke-static {p1, p2, v4}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method
