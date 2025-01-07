.class final Lcom/tencent/bugly/proguard/qv$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/qv;->J(Ljava/util/List;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic HB:Ljava/util/List;

.field final synthetic HC:Z

.field final synthetic Hz:Lcom/tencent/bugly/proguard/qv;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/qv;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/qv$d;->Hz:Lcom/tencent/bugly/proguard/qv;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/qv$d;->HB:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/qv$d;->HC:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qv$d;->HB:Ljava/util/List;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/qv$d;->HC:Z

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/qv;->d(Ljava/util/List;Z)Z

    return-void
.end method
