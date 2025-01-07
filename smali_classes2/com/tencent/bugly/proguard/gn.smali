.class public final Lcom/tencent/bugly/proguard/gn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/gi;


# instance fields
.field private final ta:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/hc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/gn;->ta:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/gn;->ta:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gn;->ta:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/bugly/proguard/gv;

    const-string v2, "list_metric"

    invoke-direct {v1, v2}, Lcom/tencent/bugly/proguard/gv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gn;->ta:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/bugly/proguard/gv;

    const-string v2, "looper_metric"

    invoke-direct {v1, v2}, Lcom/tencent/bugly/proguard/gv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gn;->ta:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/bugly/proguard/hc;

    const-string v2, "memory_quantile"

    const/16 v3, 0x64

    const v4, 0x3a83126f    # 0.001f

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;IF)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gn;->ta:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/bugly/proguard/hc;

    const-string v2, "sub_memory_quantile"

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;IF)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gn;->ta:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/bugly/proguard/gr;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/gr;-><init>()V

    const-string v2, "launch_metric"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gn;->ta:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/bugly/proguard/hc;

    const-string v2, "db"

    const/16 v3, 0xa

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;IF)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gn;->ta:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/bugly/proguard/hc;

    const-string v2, "io"

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;IF)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gn;->ta:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/bugly/proguard/hc;

    const-string v2, "battery"

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;IF)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gn;->ta:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/bugly/proguard/hc;

    const/4 v2, 0x1

    const-string v3, "device"

    invoke-direct {v1, v3, v2, v4}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;IF)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/gn;->ta:Ljava/util/HashMap;

    new-instance v7, Lcom/tencent/bugly/proguard/hc;

    const-string v2, "traffic"

    const/16 v3, 0x3e8

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/16 v6, 0x64

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;IFFI)V

    const-string v1, "traffic"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/gn;->ta:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/hc;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/hc;->eX()Lcom/tencent/bugly/proguard/hc;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public final k(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;
    .locals 1

    const-string v0, "atta"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/tencent/bugly/proguard/qq;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/qq;-><init>()V

    goto :goto_0

    :cond_0
    const-string v0, "safe_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/tencent/bugly/proguard/hd;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/hd;-><init>()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
