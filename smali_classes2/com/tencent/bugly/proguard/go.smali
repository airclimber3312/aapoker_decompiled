.class public final Lcom/tencent/bugly/proguard/go;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/gi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;
    .locals 1

    const-string v0, "looper_stack"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/tencent/bugly/proguard/gw;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/gw;-><init>()V

    goto :goto_0

    :cond_0
    const-string v0, "work_thread_lag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/tencent/bugly/proguard/hf;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/hf;-><init>()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final k(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
