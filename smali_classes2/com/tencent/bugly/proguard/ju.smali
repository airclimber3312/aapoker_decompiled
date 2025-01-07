.class public final Lcom/tencent/bugly/proguard/ju;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/jv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIII)Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/jo;->getThreshold()F

    move-result v0

    int-to-float p1, p1

    int-to-float p3, p3

    mul-float p3, p3, v0

    cmpl-float p1, p1, p3

    if-gtz p1, :cond_1

    int-to-float p1, p2

    int-to-float p2, p4

    mul-float p2, p2, v0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
