.class final Lcom/tencent/bugly/proguard/qv$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/qv;->e(Lcom/tencent/bugly/proguard/qs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/tencent/rmonitor/sla/AttaEventReporter$addEvent$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic HA:Lcom/tencent/bugly/proguard/qs;

.field final synthetic Hy:Ljava/util/ArrayList;

.field final synthetic Hz:Lcom/tencent/bugly/proguard/qv;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/tencent/bugly/proguard/qv;Lcom/tencent/bugly/proguard/qs;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/qv$c;->Hy:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/qv$c;->Hz:Lcom/tencent/bugly/proguard/qv;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/qv$c;->HA:Lcom/tencent/bugly/proguard/qs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qv$c;->Hy:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/qv;->d(Ljava/util/List;Z)Z

    return-void
.end method
