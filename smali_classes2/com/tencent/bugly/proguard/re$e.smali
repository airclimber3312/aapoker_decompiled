.class final Lcom/tencent/bugly/proguard/re$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/re;-><init>()V
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
.field final synthetic Ie:Lcom/tencent/bugly/proguard/re;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/re;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/re$e;->Ie:Lcom/tencent/bugly/proguard/re;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/re$e;->Ie:Lcom/tencent/bugly/proguard/re;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/re;->a(Lcom/tencent/bugly/proguard/re;)V

    return-void
.end method
