.class final Lcom/tencent/bugly/proguard/eb$2;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/tencent/bugly/proguard/eb$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/eb$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/eb$b;-><init>(B)V

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/eb$2;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/bugly/proguard/eb$c;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/eb$c;-><init>(B)V

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/eb$2;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/bugly/proguard/eb$d;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/eb$d;-><init>(B)V

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/eb$2;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/bugly/proguard/eb$e;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/eb$e;-><init>(B)V

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/eb$2;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/bugly/proguard/eb$h;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/eb$h;-><init>(B)V

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/eb$2;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/bugly/proguard/eb$i;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/eb$i;-><init>(B)V

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/eb$2;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/bugly/proguard/eb$f;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/eb$f;-><init>(B)V

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/eb$2;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/bugly/proguard/eb$g;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/eb$g;-><init>(B)V

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/eb$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
