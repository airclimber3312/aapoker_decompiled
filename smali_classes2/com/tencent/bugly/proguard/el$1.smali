.class final Lcom/tencent/bugly/proguard/el$1;
.super Landroid/os/FileObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/el;->dC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nu:Lcom/tencent/bugly/proguard/el;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/el;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/el$1;->nu:Lcom/tencent/bugly/proguard/el;

    const/16 p1, 0x8

    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "/data/anr/"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "watching file %s"

    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "trace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "not anr file %s"

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/el$1;->nu:Lcom/tencent/bugly/proguard/el;

    invoke-static {p2}, Lcom/tencent/bugly/proguard/el;->a(Lcom/tencent/bugly/proguard/el;)Lcom/tencent/bugly/proguard/ds;

    move-result-object p2

    new-instance v0, Lcom/tencent/bugly/proguard/el$1$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/bugly/proguard/el$1$1;-><init>(Lcom/tencent/bugly/proguard/el$1;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/tencent/bugly/proguard/ds;->b(Ljava/lang/Runnable;)Z

    return-void
.end method
