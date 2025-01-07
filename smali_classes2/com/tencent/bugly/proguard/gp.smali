.class public final Lcom/tencent/bugly/proguard/gp;
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
    .locals 7

    const-string v0, "java_memory_ceiling_hprof"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/tencent/bugly/proguard/hc;

    const-string v2, "java_memory_ceiling_hprof"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x3dcccccd    # 0.1f

    const/16 v6, 0x55

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;IFFI)V

    goto :goto_0

    :cond_0
    const-string v0, "java_memory_ceiling_value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/tencent/bugly/proguard/hc;

    const-string v2, "java_memory_ceiling_value"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const v5, 0x3dcccccd    # 0.1f

    const/16 v6, 0x55

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;IFFI)V

    goto :goto_0

    :cond_1
    const-string v0, "big_bitmap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lcom/tencent/bugly/proguard/hc;

    const/4 v1, 0x0

    const/16 v2, 0x96

    invoke-direct {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;FI)V

    goto :goto_0

    :cond_2
    const-string v0, "activity_leak"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/tencent/bugly/proguard/gx;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/gx;-><init>()V

    goto :goto_0

    :cond_3
    const-string v0, "fd_leak"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lcom/tencent/bugly/proguard/gu;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/gu;-><init>()V

    goto :goto_0

    :cond_4
    const-string v0, "native_memory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/tencent/bugly/proguard/gy;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/gy;-><init>()V

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final k(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
