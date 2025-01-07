.class public final Lcom/tencent/bugly/proguard/gq;
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

    const-string v0, "traffic_detail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/tencent/bugly/proguard/he;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/he;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final k(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
