.class final Lcom/tencent/bugly/proguard/gy$3;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/gy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic tL:Lcom/tencent/bugly/proguard/gy;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/gy;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/gy$3;->tL:Lcom/tencent/bugly/proguard/gy;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, ".*/librmonitor_memory.so$"

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/gy$3;->add(Ljava/lang/Object;)Z

    const-string p1, ".*/librmonitor_base.so$"

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/gy$3;->add(Ljava/lang/Object;)Z

    const-string p1, ".*/libBugly_Native.so$"

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/gy$3;->add(Ljava/lang/Object;)Z

    const-string p1, ".*/libbuglybacktrace.so$"

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/gy$3;->add(Ljava/lang/Object;)Z

    return-void
.end method
