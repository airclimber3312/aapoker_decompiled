.class final Lcom/tencent/bugly/proguard/nx$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/nx;->a(Lcom/tencent/bugly/proguard/nz;)V
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
.field final synthetic CA:Lcom/tencent/bugly/proguard/nx;

.field final synthetic CB:Lcom/tencent/bugly/proguard/nz;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/nx;Lcom/tencent/bugly/proguard/nz;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/nx$b;->CA:Lcom/tencent/bugly/proguard/nx;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/nx$b;->CB:Lcom/tencent/bugly/proguard/nz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nx$b;->CA:Lcom/tencent/bugly/proguard/nx;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/nx;->a(Lcom/tencent/bugly/proguard/nx;)Lcom/tencent/bugly/proguard/oc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/nx$b;->CB:Lcom/tencent/bugly/proguard/nz;

    invoke-interface {v0, v1}, Lcom/tencent/bugly/proguard/oc;->a(Lcom/tencent/bugly/proguard/nz;)V

    :cond_0
    return-void
.end method
