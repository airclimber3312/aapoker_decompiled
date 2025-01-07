.class final Lcom/tencent/bugly/proguard/fe$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/fe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static pG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static g(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/fe$a;->pG:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/fe;->I(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/tencent/bugly/proguard/fe$a;->pG:Ljava/util/Map;

    :cond_0
    sget-object p0, Lcom/tencent/bugly/proguard/fe$a;->pG:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
